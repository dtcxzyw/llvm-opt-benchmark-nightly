Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConstantFolding?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_122ConstantFoldStructCallEN4llvm9StringRefEjPNS0_10StructTypeENS0_8ArrayRefIPNS0_8ConstantEEERKNS0_10DataLayoutEPKNS0_17TargetLibraryInfoEPKNS0_8CallBaseE:bb.a
  %.pre.i161 = load ptr, ptr %12, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i.i153

.lr.ph.preheader.i.i.i153:                        ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i160, %bb.o
  %i.dg = phi ptr [ %.pre.i161, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i160 ], [ %i.cy, %bb.o ]
  %.pre-phi.i.i3.i154 = phi i64 [ %.pre13.i.i.i158, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i160 ], [ 0, %bb.o ] ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %.pre-phi.i.i3.i154
  %i.di = sub nsw i64 %i.cx, %.pre-phi.i.i3.i154
  %i.dj = shl nsw i64 %i.di, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dh, i8 0, i64 %i.dj, i1 false) #28, !tbaa !131
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i156, %.lr.ph.preheader.i.i.i153
  store i32 %i.cw, ptr %i.cz, align 8, !tbaa !106
  %.pre = load i32, ptr %i.cv, align 8, !tbaa !65 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dk = zext i32 %.pre to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.dl, ptr %13, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !106
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.dn, align 4, !tbaa !117
  %i.do = icmp eq i32 %.pre, 0
  br i1 %i.do, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit
  %i.dp = icmp ugt i32 %.pre, 6
  br i1 %i.dp, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i165, label %.lr.ph.preheader.i.i.i162

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i165: ; preds = %bb.p
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull %i.dl, i64 noundef %i.dk, i64 noundef 8) #26
  %.pre.i.i.i166 = load i32, ptr %i.dm, align 8, !tbaa !106 ; 2 uses
  %.not11.i.i.i168 = icmp eq i32 %.pre, %.pre.i.i.i166
  br i1 %.not11.i.i.i168, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i169

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i169: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i165
  %.pre13.i.i.i167 = zext i32 %.pre.i.i.i166 to i64
  %.pre.i170 = load ptr, ptr %13, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i.i162

.lr.ph.preheader.i.i.i162:                        ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i169, %bb.p
  %i.dq = phi ptr [ %.pre.i170, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i169 ], [ %i.dl, %bb.p ]
  %.pre-phi.i.i3.i163 = phi i64 [ %.pre13.i.i.i167, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i169 ], [ 0, %bb.p ] ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.pre-phi.i.i3.i163
  %i.ds = sub nsw i64 %i.dk, %.pre-phi.i.i3.i163
  %i.dt = shl nsw i64 %i.ds, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %i.dt, i1 false) #28, !tbaa !131
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171

_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i165, %.lr.ph.preheader.i.i.i162
  store i32 %.pre, ptr %i.dm, align 8, !tbaa !106
  %.pre79 = load i32, ptr %i.cv, align 8, !tbaa !65 ; 2 uses
  %.not12456 = icmp eq i32 %.pre79, 0
  br i1 %.not12456, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge, label %.critedge134.preheader

_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge: ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit.thread, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171
  %i.du = phi ptr [ %i.dl, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171 ], [ %i.dc, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit.thread ], [ %i.dl, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit ]
  %i.dv = phi ptr [ %i.dm, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171 ], [ %i.dd, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit.thread ], [ %i.dm, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit ]
  %.pre80 = load ptr, ptr %12, align 8, !tbaa !21
  br label %.critedge136

.critedge134.preheader:                           ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171
  %i.dw = zext i32 %.pre79 to i64
  br label %.critedge134

bb.q:                                             ; preds = %.critedge134
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %.not124 = icmp eq i64 %indvars.iv.next72, %i.dw
  br i1 %.not124, label %.critedge136, label %.critedge134, !llvm.loop !274

.critedge134:                                     ; preds = %.critedge134.preheader, %bb.q
  %indvars.iv71 = phi i64 [ 0, %.critedge134.preheader ], [ %indvars.iv.next72, %bb.q ] ; 4 uses
  %i.dx = load ptr, ptr %4, align 8, !tbaa !131
  %i.dy = trunc nuw i64 %indvars.iv71 to i32
  %i.dz = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i32 noundef %i.dy) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !131
  %.sroa.01.0.copyload.i = load ptr, ptr %8, align 8, !tbaa !275
  %.sroa.22.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !108
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !262
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !264
  %i.ed = call fastcc noundef ptr @_ZN12_GLOBAL__N_122ConstantFoldScalarCallEN4llvm9StringRefEjPNS0_4TypeENS0_8ArrayRefIPNS0_8ConstantEEEPKNS0_17TargetLibraryInfoEPKNS0_8CallBaseE(ptr %.sroa.01.0.copyload.i, i64 %.sroa.22.0.copyload.i, i32 noundef 349, ptr noundef %i.ea, ptr nonnull %i.c, i64 1, ptr noundef %i.eb, ptr noundef %i.ec) #28
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8, !tbaa !275
  %.sroa.2.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !108
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !262
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !264
  %i.eh = call fastcc noundef ptr @_ZN12_GLOBAL__N_122ConstantFoldScalarCallEN4llvm9StringRefEjPNS0_4TypeENS0_8ArrayRefIPNS0_8ConstantEEEPKNS0_17TargetLibraryInfoEPKNS0_8CallBaseE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef 72, ptr noundef %i.ee, ptr nonnull %i.c, i64 1, ptr noundef %i.ef, ptr noundef %i.eg) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ei = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv71 ; 2 uses
  %i.ek = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv71
  store ptr %i.ed, ptr %i.ej, align 8, !tbaa !131
  store ptr %i.eh, ptr %i.el, align 8, !tbaa !131
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !131
  %.not125 = icmp eq ptr %i.em, null
  %.not126 = icmp eq ptr %i.eh, null
  %or.cond = or i1 %.not126, %.not125
  br i1 %or.cond, label %.loopexit50, label %bb.q

.critedge136:                                     ; preds = %bb.q, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge
  %i.en = phi ptr [ %i.du, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge ], [ %i.dl, %bb.q ]
  %i.eo = phi ptr [ %i.dv, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge ], [ %i.dm, %bb.q ]
  %i.ep = phi ptr [ %.pre80, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EEC2Em.exit171..critedge136_crit_edge ], [ %i.ei, %bb.q ]
  %i.eq = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.er = zext i32 %i.eq to i64
  %i.es = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.ep, i64 %i.er) #26
  %i.et = load ptr, ptr %13, align 8, !tbaa !21
  %i.eu = load i32, ptr %i.eo, align 8, !tbaa !106
  %i.ev = zext i32 %i.eu to i64
  %i.ew = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.et, i64 %i.ev) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.es, ptr %i.b, align 8, !tbaa !131
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !131
  %i.ey = call noundef ptr @_ZN4llvm14ConstantStruct3getEPNS_10StructTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef nonnull %3, ptr nonnull %i.b, i64 2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.pre81 = load ptr, ptr %13, align 8, !tbaa !21
  br label %.loopexit50

.loopexit50:                                      ; preds = %.critedge134, %.critedge136
  %i.ez = phi ptr [ %i.en, %.critedge136 ], [ %i.dl, %.critedge134 ]
  %i.fa = phi ptr [ %.pre81, %.critedge136 ], [ %i.ek, %.critedge134 ] ; 2 uses
  %.10 = phi ptr [ %i.ey, %.critedge136 ], [ null, %.critedge134 ]
  %i.fb = icmp eq ptr %i.fa, %i.ez
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit50
  call void @free(ptr noundef %i.fa) #26
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit: ; preds = %.loopexit50, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.fc = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.cy
  br i1 %i.fd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit
  call void @free(ptr noundef %i.fc) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.v

.thread33:                                        ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit151
  %trunc.i.i = trunc i32 %i.cm to i8
  switch i8 %trunc.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit:         ; preds = %.thread33
  %i.fe = and i32 %i.cm, 253
  %spec.select.i = icmp eq i32 %i.fe, 4
  br i1 %spec.select.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %bb.v

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %.thread33, %.thread33, %.thread33, %.thread33, %.thread33, %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  %i.ff = load ptr, ptr %4, align 8, !tbaa !131
  %i.fg = call fastcc { ptr, ptr } @"_ZZN12_GLOBAL__N_122ConstantFoldStructCallEN4llvm9StringRefEjPNS0_10StructTypeENS0_8ArrayRefIPNS0_8ConstantEEERKNS0_10DataLayoutEPKNS0_17TargetLibraryInfoEPKNS0_8CallBaseEENK3$_0clES6_"(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.ff) #28 ; 2 uses
  %i.fh = extractvalue { ptr, ptr } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fg, 1      ; 2 uses
  %.not127 = icmp eq ptr %i.fh, null
  %.not128 = icmp eq ptr %i.fi, null
  %or.cond45 = select i1 %.not127, i1 true, i1 %.not128
  br i1 %or.cond45, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %i.fh, ptr %i.a, align 8, !tbaa !131
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !131
  %i.fk = call noundef ptr @_ZN4llvm14ConstantStruct3getEPNS_10StructTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef nonnull %3, ptr nonnull %i.a, i64 2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  %.13 = phi ptr [ null, %_ZNK4llvm4Type17isFloatingPointTyEv.exit ], [ %.10, %bb.t ], [ %i.fk, %bb.u ], [ null, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.ai

bb.w:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !102 ; 11 uses
  %i.fn = load ptr, ptr %4, align 8, !tbaa !131   ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !38 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !65 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = and i32 %i.ft, 255
  %.not47 = icmp eq i32 %i.fu, 19                 ; 2 uses
  %i.fv = udiv i32 %i.fr, %i.fm                   ; 5 uses
  %i.fw = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i1 noundef zeroext false) #26 ; 2 uses
  %.not = icmp eq ptr %i.fw, null
  br i1 %.not, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.insert.ext.i.i174 = zext i32 %i.fv to i64
  %.sroa.2.0.insert.shift.i.i173 = select i1 %.not47, i64 4294967296, i64 0
  %.sroa.0.0.insert.insert.i.i175 = or disjoint i64 %.sroa.2.0.insert.shift.i.i173, %.sroa.0.0.insert.ext.i.i174
  %i.fx = tail call noundef ptr @_ZN4llvm14ConstantVector8getSplatENS_12ElementCountEPNS_8ConstantE(i64 %.sroa.0.0.insert.insert.i.i175, ptr noundef nonnull %i.fw) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.fy = zext i32 %i.fm to i64                   ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.fz, ptr %14, align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 8, ptr %i.gb, align 4, !tbaa !117
  %i.gc = icmp ugt i32 %i.fm, 8
  br i1 %i.gc, label %vector.ph145, label %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i

vector.ph145:                                     ; preds = %bb.x
  store i32 0, ptr %i.ga, align 8, !tbaa !106
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull %i.fz, i64 noundef %i.fy, i64 noundef 8) #26
  %i.gd = load ptr, ptr %14, align 8, !tbaa !21   ; 5 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fy, 3  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx.i.i.i.i.i.i.i
  %i.gf = add nsw i64 %.idx.i.i.i.i.i.i.i, -8
  %i.gg = lshr exact i64 %i.gf, 3
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %n.vec146 = and i64 %i.gh, 4611686018427387900  ; 3 uses
  %i.gi = shl i64 %n.vec146, 3
  %i.gj = getelementptr i8, ptr %i.gd, i64 %i.gi
  %broadcast.splatinsert147 = insertelement <2 x ptr> poison, ptr %i.fx, i64 0
  %broadcast.splat148 = shufflevector <2 x ptr> %broadcast.splatinsert147, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph145
  %index150 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body149 ] ; 2 uses
  %i.gk = shl i64 %index150, 3
  %next.gep151 = getelementptr i8, ptr %i.gd, i64 %i.gk ; 2 uses
  %i.gl = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x ptr> %broadcast.splat148, ptr %next.gep151, align 8, !tbaa !131
  store <2 x ptr> %broadcast.splat148, ptr %i.gl, align 8, !tbaa !131
  %index.next152 = add nuw i64 %index150, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next152, %n.vec146
  br i1 %i.gm, label %middle.block153, label %vector.body149, !llvm.loop !276

middle.block153:                                  ; preds = %vector.body149
  %cmp.n154 = icmp eq i64 %i.gh, %n.vec146
  br i1 %cmp.n154, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %middle.block153, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.gj, %middle.block153 ] ; 2 uses
  store ptr %i.fx, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !131
  %i.gn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !279

_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i: ; preds = %bb.x
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.fy, 3    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i.i.i.i.i.i
  %i.gp = add nsw i64 %.idx.i.i.i.i.i.i, -8       ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 3
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gp, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i
  %n.vec = and i64 %i.gr, 4611686018427387900     ; 3 uses
  %i.gs = shl i64 %n.vec, 3
  %i.gt = getelementptr i8, ptr %i.fz, i64 %i.gs
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.fx, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gu = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fz, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !131
  store <2 x ptr> %broadcast.splat, ptr %i.gv, align 8, !tbaa !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fz, %_ZSt6fill_nIPPN4llvm8ConstantEmS2_ET_S4_T0_RKT1_.exit.i.i ], [ %i.gt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.fx, ptr %.07.i.i.i.i.i.i.i.i, align 8, !tbaa !131
  %i.gx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, %i.go
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !281

_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %middle.block153
  %i.gy = phi ptr [ %i.gd, %middle.block153 ], [ %i.fz, %middle.block ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i ]
  store i32 %i.fm, ptr %i.ga, align 8, !tbaa !106
  %i.gz = call noundef ptr @_ZN4llvm14ConstantStruct3getEPNS_10StructTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef nonnull %3, ptr %i.gy, i64 %i.fy) #26
  %i.ha = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.fz
  br i1 %i.hb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit
  call void @free(ptr noundef %i.ha) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2EmRKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ai

bb.aa:                                            ; preds = %bb.w
  br i1 %.not47, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.hc = zext i32 %i.fm to i64                   ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.hd, ptr %15, align 8, !tbaa !21
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i32 0, ptr %i.he, align 8, !tbaa !106
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 8, ptr %i.hf, align 4, !tbaa !117
  %i.hg = icmp ugt i32 %i.fm, 8
  br i1 %i.hg, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i179, label %.lr.ph.preheader.i.i.i176

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i179: ; preds = %bb.ab
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull %i.hd, i64 noundef %i.hc, i64 noundef 8) #26
  %.pre.i.i.i180 = load i32, ptr %i.he, align 8, !tbaa !106 ; 2 uses
  %.not11.i.i.i182 = icmp eq i32 %i.fm, %.pre.i.i.i180
  br i1 %.not11.i.i.i182, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2Em.exit, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i183

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i183: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i179
  %.pre13.i.i.i181 = zext i32 %.pre.i.i.i180 to i64
  %.pre.i184 = load ptr, ptr %15, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i.i176

.lr.ph.preheader.i.i.i176:                        ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i183, %bb.ab
  %i.hh = phi ptr [ %.pre.i184, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i183 ], [ %i.hd, %bb.ab ]
  %.pre-phi.i.i3.i177 = phi i64 [ %.pre13.i.i.i181, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i183 ], [ 0, %bb.ab ] ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %.pre-phi.i.i3.i177
  %i.hj = sub nsw i64 %i.hc, %.pre-phi.i.i3.i177
  %i.hk = shl nsw i64 %i.hj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hi, i8 0, i64 %i.hk, i1 false) #28, !tbaa !131
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i179, %.lr.ph.preheader.i.i.i176
  store i32 %i.fm, ptr %i.he, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.hl = zext i32 %i.fv to i64                   ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.hm, ptr %16, align 8, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i32 0, ptr %i.hn, align 8, !tbaa !106
  %i.ho = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 6, ptr %i.ho, align 4, !tbaa !117
  %i.hp = icmp ugt i32 %i.fm, %i.fr
  br i1 %i.hp, label %.preheader.us, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2Em.exit
  %i.hq = icmp ugt i32 %i.fv, 6
  br i1 %i.hq, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i188, label %.lr.ph.preheader.i.i.i185

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i188: ; preds = %bb.ac
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %i.hm, i64 noundef %i.hl, i64 noundef 8) #26
  %.pre.i.i.i189 = load i32, ptr %i.hn, align 8, !tbaa !106 ; 2 uses
  %.not11.i.i.i191 = icmp eq i32 %i.fv, %.pre.i.i.i189
  br i1 %.not11.i.i.i191, label %.preheader.preheader, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i192

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i192: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i188
  %.pre13.i.i.i190 = zext i32 %.pre.i.i.i189 to i64
  %.pre.i193 = load ptr, ptr %16, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i.i185

.lr.ph.preheader.i.i.i185:                        ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i192, %bb.ac
  %i.hr = phi ptr [ %.pre.i193, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i192 ], [ %i.hm, %bb.ac ]
  %.pre-phi.i.i3.i186 = phi i64 [ %.pre13.i.i.i190, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i192 ], [ 0, %bb.ac ] ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %.pre-phi.i.i3.i186
  %i.ht = sub nsw i64 %i.hl, %.pre-phi.i.i3.i186
  %i.hu = shl nsw i64 %i.ht, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hs, i8 0, i64 %i.hu, i1 false) #28, !tbaa !131
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.preheader.i.i.i185, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i188
  store i32 %i.fv, ptr %i.hn, align 8, !tbaa !106
  br label %.preheader

.preheader.us:                                    ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2Em.exit, %.preheader.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.preheader.us ], [ 0, %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EEC2Em.exit ] ; 2 uses
  %i.hv = load ptr, ptr %16, align 8, !tbaa !21
  %i.hw = load i32, ptr %i.hn, align 8, !tbaa !106
  %i.hx = zext i32 %i.hw to i64
  %i.hy = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.hv, i64 %i.hx) #26
  %i.hz = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv67
  store ptr %i.hy, ptr %i.ia, align 8, !tbaa !131
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %.not120.us = icmp eq i64 %indvars.iv.next68, %i.hc
  br i1 %.not120.us, label %.thread43, label %.preheader.us, !llvm.loop !282

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv63 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next64, %._crit_edge ] ; 3 uses
  %i.ib = trunc nuw i64 %indvars.iv63 to i32
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader, %bb.ae
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %i.ic = trunc nuw i64 %indvars.iv to i32
  %i.id = mul i32 %i.fm, %i.ic
  %i.ie = add i32 %i.id, %i.ib
  %i.if = call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i32 noundef %i.ie) #26 ; 2 uses
  %.not122.not = icmp eq ptr %i.if, null
  br i1 %.not122.not, label %.loopexit51, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ig = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not121 = icmp eq i64 %indvars.iv.next, %i.hl
  br i1 %.not121, label %._crit_edge, label %bb.ad, !llvm.loop !283

._crit_edge:                                      ; preds = %bb.ae
  %i.ii = load i32, ptr %i.hn, align 8, !tbaa !106
  %i.ij = zext i32 %i.ii to i64
  %i.ik = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr nonnull %i.ig, i64 %i.ij) #26
  %i.il = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv63
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !131
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next64 to i32
  %exitcond = icmp eq i32 %i.fm, %lftr.wideiv
  br i1 %exitcond, label %.thread43, label %.preheader, !llvm.loop !282

.thread43:                                        ; preds = %._crit_edge, %.preheader.us
  %i.in = phi ptr [ %i.hz, %.preheader.us ], [ %i.il, %._crit_edge ]
  %i.io = load i32, ptr %i.he, align 8, !tbaa !106
  %i.ip = zext i32 %i.io to i64
  %i.iq = call noundef ptr @_ZN4llvm14ConstantStruct3getEPNS_10StructTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef nonnull %3, ptr nonnull %i.in, i64 %i.ip) #26
  br label %.loopexit51

.loopexit51:                                      ; preds = %bb.ad, %.thread43
  %.20 = phi ptr [ %i.iq, %.thread43 ], [ null, %bb.ad ]
  %i.ir = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.hm
  br i1 %i.is, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit195, label %bb.af

bb.af:                                            ; preds = %.loopexit51
  call void @free(ptr noundef %i.ir) #26
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit195

_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit195: ; preds = %.loopexit51, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.it = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.hd
  br i1 %i.iu, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EED2Ev.exit196, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit195
  call void @free(ptr noundef %i.it) #26
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EED2Ev.exit196

_ZN4llvm11SmallVectorIPNS_8ConstantELj8EED2Ev.exit196: ; preds = %_ZN4llvm11SmallVectorIPNS_8ConstantELj6EED2Ev.exit195, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ai

bb.ah:                                            ; preds = %bb.a
  %i.iv = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_122ConstantFoldScalarCallEN4llvm9StringRefEjPNS0_4TypeENS0_8ArrayRefIPNS0_8ConstantEEEPKNS0_17TargetLibraryInfoEPKNS0_8CallBaseE(ptr %0, i64 %1, i32 noundef %2, ptr noundef nonnull %3, ptr %4, i64 %5, ptr noundef %6, ptr noundef %7) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.j, %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EED2Ev.exit196, %bb.aa, %bb.z, %bb.k, %.thread, %bb.ah, %bb.v
  %.22 = phi ptr [ %i.iv, %bb.ah ], [ null, %.thread ], [ %.13, %bb.v ], [ %.3, %bb.j ], [ %i.ch, %bb.k ], [ %.20, %_ZN4llvm11SmallVectorIPNS_8ConstantELj8EED2Ev.exit196 ], [ %i.gz, %bb.z ], [ null, %bb.aa ]
  ret ptr %.22
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17isMathLibCallNoopEPKNS_8CallBaseEPKNS_17TargetLibraryInfoE(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %3 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %4 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %7 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %8 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %9 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %10 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %11 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %12 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %13 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %14 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %15 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 24) #26
  br i1 %i.c, label %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.thread.i, label %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.i

_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.i: ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 24) #26
  br i1 %i.d, label %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.thread.i, label %_ZNK4llvm8CallBase11isNoBuiltinEv.exit.thread

_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.thread.i: ; preds = %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.i, %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 4) #26
  br i1 %i.e, label %_ZNK4llvm8CallBase11isNoBuiltinEv.exit.thread, label %_ZNK4llvm8CallBase11isNoBuiltinEv.exit

_ZNK4llvm8CallBase11isNoBuiltinEv.exit:           ; preds = %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.thread.i
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 4) #26
  br i1 %i.f, label %_ZNK4llvm8CallBase11isNoBuiltinEv.exit.thread, label %_ZNK4llvm8CallBase10isStrictFPEv.exit.thread

_ZNK4llvm8CallBase11isNoBuiltinEv.exit.thread:    ; preds = %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.thread.i, %_ZNK4llvm8CallBase13hasFnAttrImplINS_9Attribute8AttrKindEEEbT_.exit.i, %_ZNK4llvm8CallBase11isNoBuiltinEv.exit
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 77) #26
  br i1 %i.g, label %_ZNK4llvm8CallBase10isStrictFPEv.exit.thread, label %_ZNK4llvm8CallBase10isStrictFPEv.exit

_ZNK4llvm8CallBase10isStrictFPEv.exit:            ; preds = %_ZNK4llvm8CallBase11isNoBuiltinEv.exit.thread
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 77) #26
  br i1 %i.h, label %_ZNK4llvm8CallBase10isStrictFPEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm8CallBase10isStrictFPEv.exit
  %i.i = getelementptr inbounds i8, ptr %0, i64 -32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNK4llvm8CallBase10isStrictFPEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 8, !tbaa !23
  %i.l = icmp eq i8 %i.k, 14
  br i1 %i.l, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i, label %_ZNK4llvm8CallBase10isStrictFPEv.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit, label %_ZNK4llvm8CallBase10isStrictFPEv.exit.thread

_ZNK4llvm8CallBase17getCalledFunctionEv.exit:     ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not126 = icmp eq ptr %1, null
  br i1 %.not126, label %.thread185, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !237
  %i.s = call noundef zeroext i1 @_ZNK4llvm21TargetLibraryInfoImpl10getLibFuncERKNS_8FunctionERNS_7LibFuncE(ptr noundef nonnull align 8 dereferenceable(216) %i.r, ptr noundef nonnull align 8 dereferenceable(140) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26
  br i1 %i.s, label %bb.e, label %.thread185

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 268435455
  %i.x = zext nneg i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 137438953440
  %i.ae = icmp eq i64 %i.ad, 32
  br i1 %i.ae, label %bb.f, label %.thread179

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !31  ; 10 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !23
  %.not = icmp eq i8 %i.ag, 7
  br i1 %.not, label %bb.g, label %.thread179

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 25 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !236
  switch i32 %i.ai, label %.thread179 [
    i32 349, label %bb.h
    i32 332, label %bb.h
    i32 348, label %bb.h
    i32 341, label %bb.h
    i32 339, label %bb.h
    i32 340, label %bb.h
    i32 335, label %bb.h
    i32 333, label %bb.h
    i32 334, label %bb.h
    i32 342, label %switch.lookup
    i32 234, label %bb.j
    i32 226, label %bb.j
    i32 233, label %bb.j
    i32 232, label %bb.o
    i32 230, label %bb.o
    i32 231, label %bb.o
    i32 447, label %bb.t
    i32 442, label %bb.t
    i32 443, label %bb.t
    i32 210, label %bb.t
    i32 205, label %bb.t
    i32 206, label %bb.t
    i32 501, label %bb.u
    i32 496, label %bb.u
    i32 497, label %bb.u
    i32 172, label %.thread185
    i32 176, label %.thread185
    i32 180, label %.thread185
    i32 171, label %bb.w
    i32 166, label %bb.w
    i32 167, label %bb.w
    i32 164, label %bb.w
    i32 159, label %bb.w
    i32 160, label %bb.w
    i32 444, label %bb.y
    i32 207, label %bb.y
    i32 445, label %bb.y
    i32 208, label %bb.y
    i32 446, label %bb.y
    i32 209, label %bb.y
    i32 456, label %bb.ad
    i32 454, label %bb.ad
    i32 455, label %bb.ad
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !41
  %.not.i.i.i142 = icmp eq ptr %i.aj, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
end_hunk_0
begin_hunk_1_@_ZN4llvm7APFloat7StorageD1Ev
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !23      ; 2 uses
  %i.b = icmp ult i8 %i.a, 30
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.j [
    i8 43, label %.critedge
    i8 45, label %.critedge
    i8 47, label %.critedge
    i8 49, label %.critedge
    i8 52, label %.critedge
    i8 55, label %.critedge
    i8 76, label %.critedge
    i8 77, label %.critedge
    i8 74, label %.critedge
    i8 75, label %.critedge
    i8 86, label %.critedge
    i8 87, label %bb.c
    i8 89, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = and i32 %i.f, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i:         ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre.i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %trunc.i.i.i.i = trunc i32 %i.k to i8           ; 2 uses
  %i.l = icmp ult i8 %trunc.i.i.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  %i.m = and i32 %i.k, 253
  %spec.select.i.i.i = icmp eq i32 %i.m, 4
  %or.cond20 = or i1 %or.cond, %spec.select.i.i.i
  br i1 %or.cond20, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i
  %trunc.i = trunc i32 %i.f to i8
  switch i8 %trunc.i, label %.loopexit.i.i [
    i8 16, label %bb.f
    i8 17, label %.preheader.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.f, 1024
  %.not26.i.i = icmp eq i32 %i.n, 0
  br i1 %.not26.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #26
  br i1 %i.o, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %.phi.trans.insert.i2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i3.i = load i32, ptr %.phi.trans.insert.i2.i, align 8
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.t, %.preheader.i.i ], [ %i.d, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = and i32 %i.v, 255
  %i.x = icmp ne i32 %i.w, 17
  %.not1828.i.i = icmp eq ptr %i.t, null
  %.not18.i.i = or i1 %.not1828.i.i, %i.x
  br i1 %.not18.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !322

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.h, %bb.e
  %i.y = phi i32 [ %i.f, %bb.e ], [ %.pre.i3.i, %bb.h ], [ %i.v, %.preheader.i.i ] ; 2 uses
  %.2.ph.i.i = phi ptr [ %i.d, %bb.e ], [ %i.r, %bb.h ], [ %i.t, %.preheader.i.i ]
  %i.z = and i32 %i.y, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.z, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

bb.i:                                             ; preds = %.loopexit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.ph.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i:       ; preds = %bb.i, %.loopexit.i.i
  %i.ad = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.y, %.loopexit.i.i ] ; 2 uses
  %trunc.i.i.i.i.i = trunc i32 %i.ad to i8        ; 2 uses
  %i.ae = icmp ult i8 %trunc.i.i.i.i.i, 6
  %switch.shifted17 = lshr i8 47, %trunc.i.i.i.i.i
  %switch.lobit18 = trunc i8 %switch.shifted17 to i1
  %or.cond19 = select i1 %i.ae, i1 %switch.lobit18, i1 false
  br i1 %or.cond19, label %.critedge, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i

_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i:    ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i
  %i.af = and i32 %i.ad, 253
  %spec.select.i.i21.i.i = icmp eq i32 %i.af, 4
  br label %.critedge

bb.j:                                             ; preds = %bb.b
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i, %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i, %bb.g, %bb.f, %bb.a, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.j
  %.1 = phi i1 [ false, %bb.j ], [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i ], [ true, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i ], [ false, %bb.g ], [ false, %bb.f ], [ %spec.select.i.i21.i.i, %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i.i.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm8Constant21containsPoisonElementEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ConstantExpr10getBitCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #26
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #26
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind strictfp uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119foldMixesPoisonBitsEPN4llvm8ConstantEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = urem i32 %1, %2
  %i.b = udiv i32 %1, %2                          ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm8Constant21containsPoisonElementEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %.not4051 = icmp ugt i32 %2, %1
  br i1 %.not4051, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03457 = phi i32 [ %i.i, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.054 = phi i32 [ 0, %.preheader ], [ %i.h, %bb.e ] ; 2 uses
  %.02553 = phi i1 [ false, %.preheader ], [ %.025., %bb.e ]
  %.02652 = phi i1 [ false, %.preheader ], [ %..026, %bb.e ]
  %i.d = add i32 %.054, %.03457
  %i.e = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.d) #26 ; 2 uses
  %.not41.not = icmp eq ptr %i.e, null
  br i1 %.not41.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %i.e, align 8, !tbaa !23
  %i.g = icmp eq i8 %i.f, 1                       ; 2 uses
  %..026 = select i1 %i.g, i1 true, i1 %.02652    ; 2 uses
  %not. = xor i1 %i.g, true
  %.025. = select i1 %not., i1 true, i1 %.02553   ; 2 uses
  %i.h = add nuw i32 %.054, 1                     ; 2 uses
  %.not40 = icmp eq i32 %i.h, %i.b
  br i1 %.not40, label %._crit_edge, label %bb.d, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.e
  %or.cond = select i1 %..026, i1 %.025., i1 false ; 2 uses
  %i.i = add i32 %.03457, %i.b                    ; 2 uses
  %.not39.not = icmp eq i32 %i.i, %1
  %or.cond71 = or i1 %or.cond, %.not39.not
  br i1 %or.cond71, label %.critedge, label %.preheader, !llvm.loop !324

.critedge:                                        ; preds = %._crit_edge, %bb.d, %bb.c, %bb.b
  %.7 = phi i1 [ %i.c, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %or.cond, %._crit_edge ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm14SmallBitVectorC2Ejb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  store i64 1, ptr %0, align 8, !tbaa !325
  %i.a = icmp ult i32 %1, 58
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = shl nuw i64 %i.b, 58
  %i.d = shl nsw i64 -1, %i.b
  %i.e = xor i64 %i.d, -1
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = select i1 %2, i64 %i.f, i64 0
  %i.h = or i64 %i.c, %i.g
  %i.i = or disjoint i64 %i.h, 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 8 uses
  %i.k = add i32 %1, 63                           ; 2 uses
  %i.l = lshr i32 %i.k, 6                         ; 3 uses
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %.neg.i = sext i1 %2 to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 9 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 6, ptr %i.p, align 4, !tbaa !117
  %i.q = icmp ugt i32 %i.k, 447
  br i1 %i.q, label %vector.ph11, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

vector.ph11:                                      ; preds = %bb.c
  store i32 0, ptr %i.o, align 8, !tbaa !106
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.j, ptr noundef nonnull %i.n, i64 noundef %i.m, i64 noundef 8) #26
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !21   ; 5 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i
  %i.t = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8
  %i.u = lshr exact i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %n.vec12 = and i64 %i.v, 4611686018427387900    ; 3 uses
  %i.w = shl i64 %n.vec12, 3
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %.neg.i, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph11
  %index16 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body15 ] ; 2 uses
  %i.y = shl i64 %index16, 3
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x i64> %broadcast.splat14, ptr %next.gep17, align 8, !tbaa !108
  store <2 x i64> %broadcast.splat14, ptr %i.z, align 8, !tbaa !108
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next18, %n.vec12
  br i1 %i.aa, label %middle.block19, label %vector.body15, !llvm.loop !327

middle.block19:                                   ; preds = %vector.body15
  %cmp.n20 = icmp eq i64 %i.v, %n.vec12
  br i1 %cmp.n20, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %middle.block19, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.x, %middle.block19 ] ; 2 uses
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !328

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i
  %i.ad = add nsw i64 %.idx.i.i.i.i.i.i.i, -8     ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.ag
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.neg.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !108
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %bb.d ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %.neg.i, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !330

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %middle.block19, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %i.am = phi ptr [ %i.r, %middle.block19 ], [ %i.n, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %i.n, %middle.block ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store i32 %i.l, ptr %i.o, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 %1, ptr %i.an, align 8, !tbaa !331
  br i1 %2, label %bb.e, label %_ZN4llvm9BitVectorC2Ejb.exit

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i
  %i.ao = and i32 %1, 63                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nsw i64 -1, %i.ap
  %i.ar = xor i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.m
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !108
  %i.av = and i64 %i.au, %i.ar
  store i64 %i.av, ptr %i.at, align 8, !tbaa !108
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, %bb.e, %bb.f
  %i.aw = ptrtoint ptr %i.j to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %bb.b
  %storemerge = phi i64 [ %i.aw, %_ZN4llvm9BitVectorC2Ejb.exit ], [ %i.i, %bb.b ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121computePoisonDstLanesEPN4llvm8ConstantEjjRNS0_14SmallBitVectorE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %2, %1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = urem i32 %1, %2
  %i.c = udiv i32 %1, %2                          ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.d = urem i32 %2, %1
  %i.e = udiv i32 %2, %1                          ; 2 uses
  %.not70 = icmp eq i32 %i.d, 0
  br i1 %.not70, label %.thread71, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm8Constant21containsPoisonElementEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  %i.g = xor i1 %i.f, true
  br label %.critedge

.preheader:                                       ; preds = %bb.b, %.thread74
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread74 ], [ 0, %bb.b ] ; 5 uses
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = mul i32 %i.c, %i.h
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %i.j = add nuw i32 %.04888, 1                   ; 2 uses
  %.not67 = icmp eq i32 %i.j, %i.c
  br i1 %.not67, label %.thread74, label %bb.e, !llvm.loop !338

bb.e:                                             ; preds = %.preheader, %bb.d
  %.04888 = phi i32 [ 0, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = add i32 %.04888, %i.i
  %i.l = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.k) #26 ; 2 uses
  %.not68 = icmp eq ptr %i.l, null
  br i1 %.not68, label %.critedge, label %_ZN4llvm14SmallBitVector9referenceaSEb.exit

_ZN4llvm14SmallBitVector9referenceaSEb.exit:      ; preds = %bb.e
  %i.m = load i8, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.d

bb.f:                                             ; preds = %_ZN4llvm14SmallBitVector9referenceaSEb.exit
  %i.o = load i64, ptr %3, align 8, !tbaa !325    ; 5 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = lshr i64 %i.o, 1
  %i.r = lshr i64 %i.o, 58
  %i.s = shl nsw i64 -1, %i.r
  %i.t = xor i64 %i.s, -1
  %i.u = shl nuw i64 1, %indvars.iv
  %i.v = or i64 %i.q, %i.u
  %i.w = and i64 %i.v, %i.t
  %i.x = shl nuw i64 %i.w, 1
  %i.y = and i64 %i.o, -288230376151711743
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %3, align 8, !tbaa !325
  br label %.thread74

bb.h:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.o to ptr
  %i.ab = and i64 %indvars.iv, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = lshr i64 %indvars.iv, 6
  %i.ae = and i64 %i.ad, 67108863
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !108
  %i.ai = or i64 %i.ah, %i.ac
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !108
  br label %.thread74

.thread74:                                        ; preds = %bb.d, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond, label %.critedge, label %.preheader, !llvm.loop !339

.thread71:                                        ; preds = %.thread, %bb.k
  %.086 = phi i32 [ %.pre-phi, %bb.k ], [ 0, %.thread ] ; 4 uses
  %i.aj = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.086) #26 ; 2 uses
  %.not65.not.not.not = icmp ne ptr %i.aj, null   ; 3 uses
  br i1 %.not65.not.not.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.thread71
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !23
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = add i32 %.086, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = mul i32 %.086, %i.e
  %i.an = add i32 %.086, 1                        ; 2 uses
  %i.ao = mul i32 %i.an, %i.e
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm14SmallBitVector3setEjj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.am, i32 noundef %i.ao) #28 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.an, %bb.j ] ; 2 uses
  %.not64.not = icmp eq i32 %.pre-phi, %1
  br i1 %.not64.not, label %.critedge, label %.thread71, !llvm.loop !340

.critedge:                                        ; preds = %bb.k, %.thread71, %.thread74, %bb.e, %bb.c
  %.8 = phi i1 [ %i.g, %bb.c ], [ false, %bb.e ], [ true, %.thread74 ], [ %.not65.not.not.not, %.thread71 ], [ %.not65.not.not.not, %bb.k ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 65
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.neg = add i32 %1, 64
  %i.c = sub i32 %.neg, %2
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i64 -1, %i.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = shl i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %0, align 8, !tbaa !41
  %i.l = or i64 %i.k, %i.g
  store i64 %i.l, ptr %0, align 8, !tbaa !41
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !108
  %i.o = or i64 %i.n, %i.g
  store i64 %i.o, ptr %i.m, align 8, !tbaa !108
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZNK4llvm14SmallBitVector8set_bitsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !325    ; 4 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = lshr i64 %i.a, 58
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.c, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true) #28
  %i.j = trunc nuw nsw i64 %i.i to i32
  br label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit

bb.d:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !331  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i32 %i.m, -1                         ; 2 uses
  %i.p = lshr i32 %i.o, 6                         ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.r = and i32 %i.o, 63
  %i.s = xor i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t                        ; 2 uses
  %i.v = zext nneg i32 %i.p to i64
  %i.w = add nuw nsw i32 %i.p, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.w to i64
  %i.x = load i64, ptr %i.q, align 8, !tbaa !108
  %i.y = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.z = select i1 %i.y, i64 %i.u, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.x, %i.z       ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.y, label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.f, %bb.h
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.h ], [ 1, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !108
  %i.ac = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.v
  %i.ad = select i1 %i.ac, i64 %i.u, i64 -1
  %.230.i.i.i.i.i = and i64 %i.ad, %i.ab          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.h, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.ae = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %bb.g

bb.g:                                             ; preds = %.loopexit48.i.i.i.i.i, %bb.e
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.ae, %.loopexit48.i.i.i.i.i ], [ 0, %bb.e ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.e ]
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true) #28
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.ag
  br label %_ZNK4llvm14SmallBitVector14set_bits_beginEv.exit

end_hunk_1
