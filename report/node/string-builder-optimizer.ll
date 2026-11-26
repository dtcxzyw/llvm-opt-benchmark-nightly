Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/string-builder-optimizer?download=true
inline.NumInlined: 780
inline.NumDeleted: 386
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler22StringBuilderOptimizer9VisitNodeEPNS1_4NodeEPNS1_10BasicBlockE:bb.a
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.be, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit

bb.o:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 16777215
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 6 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3                 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.dd
  br i1 %i.dm, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit: ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dd
  %.sroa.0.0.copyload.i = load i64, ptr %i.dn, align 4 ; 2 uses
  %.sroa.034.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.sroa.5.0.extract.shift36 = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.5.0.extract.trunc37 = trunc i64 %.sroa.5.0.extract.shift36 to i8
  switch i8 %.sroa.5.0.extract.trunc37, label %bb.x [
    i8 1, label %bb.p
    i8 2, label %bb.p
    i8 3, label %bb.s
    i8 7, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread
    i8 0, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread
  ]

bb.p:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit
  %i.do = load i32, ptr %.phi.trans.insert344, align 4
  %i.dp = and i32 %i.do, 16777215                 ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not.i94 = icmp ugt i64 %i.dl, %i.dq
  br i1 %.not.i94, label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit110, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = uitofp nneg i32 %i.dp to double
  %i.dt = fmul nnan double %i.ds, 1.100000e+00
  %i.du = fptoui double %i.dt to i64              ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.dj
  %i.dz = ashr exact i64 %i.dy, 3
  %.not.i.i.i95 = icmp ult i64 %i.dz, %i.du
  br i1 %.not.i.i.i95, label %bb.r, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96, !prof !30

bb.r:                                             ; preds = %bb.q
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 noundef %i.du)
  %.pre.i.i108 = load ptr, ptr %i.dg, align 8
  %.pre.i109 = load ptr, ptr %i.de, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96: ; preds = %bb.r, %bb.q
  %i.ea = phi ptr [ %i.df, %bb.q ], [ %.pre.i109, %bb.r ] ; 2 uses
  %i.eb = phi ptr [ %i.dh, %bb.q ], [ %.pre.i.i108, %bb.r ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.du ; 3 uses
  %i.ed = icmp ult ptr %i.ea, %i.ec
  br i1 %i.ed, label %.lr.ph.i.i104, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i97

.lr.ph.i.i104:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96, %.lr.ph.i.i104
  %.01113.i.i105 = phi ptr [ %i.ee, %.lr.ph.i.i104 ], [ %i.ea, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96 ] ; 2 uses
  store i64 4294967295, ptr %.01113.i.i105, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.01113.i.i105, i64 8 ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.ec
  br i1 %i.ef, label %.lr.ph.i.i104, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i106, !llvm.loop !0

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i106: ; preds = %.lr.ph.i.i104
  %.pre6.pre.i107 = load ptr, ptr %i.dg, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i97

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i97: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i106, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96
  %.pre6.i98 = phi ptr [ %.pre6.pre.i107, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i106 ], [ %i.eb, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i96 ]
  store ptr %i.ec, ptr %i.de, align 8
  %.pre5.i99 = load i32, ptr %.phi.trans.insert344, align 4
  %.pre8.i100 = and i32 %.pre5.i99, 16777215
  %.pre9.i101 = zext nneg i32 %.pre8.i100 to i64
  br label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit110

_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit110: ; preds = %bb.p, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i97
  %.pre-phi10.i102 = phi i64 [ %.pre9.i101, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i97 ], [ %i.dq, %bb.p ]
  %i.eg = phi ptr [ %.pre6.i98, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i97 ], [ %i.dh, %bb.p ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.pre-phi10.i102 ; 2 uses
  store i32 %.sroa.034.0.extract.trunc, ptr %i.eh, align 4
  %.sroa.4.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i8 2, ptr %.sroa.4.0..sroa_idx.i103, align 4
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit.thread310

bb.s:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call noundef ptr @_ZNK2v88internal8compiler8Schedule5blockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ej, ptr noundef nonnull %i.j) #19
  %i.el = tail call noundef zeroext i1 @_ZNK2v88internal8compiler10BasicBlock12LoopContainsEPS2_(ptr noundef nonnull align 8 dereferenceable(168) %i.ek, ptr noundef %2) #19
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %1, i8 noundef zeroext 2, i32 noundef %.sroa.034.0.extract.trunc)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit.thread310

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.j, i8 noundef zeroext 7, i32 noundef -1)
  tail call void @_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %1, i8 noundef zeroext 7, i32 noundef -1)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit.thread310

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread: ; preds = %bb.o, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit
  %i.em = load i32, ptr %.phi.trans.insert344, align 4
  %i.en = and i32 %i.em, 16777215                 ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not.i111 = icmp ugt i64 %i.dl, %i.eo
  br i1 %.not.i111, label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit127, label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread
  %i.eq = uitofp nneg i32 %i.en to double
  %i.er = fmul nnan double %i.eq, 1.100000e+00
  %i.es = fptoui double %i.er to i64              ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.ev, %i.dj
  %i.ex = ashr exact i64 %i.ew, 3
  %.not.i.i.i112 = icmp ult i64 %i.ex, %i.es
  br i1 %.not.i.i.i112, label %bb.w, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113, !prof !30

bb.w:                                             ; preds = %bb.v
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 noundef %i.es)
  %.pre.i.i125 = load ptr, ptr %i.dg, align 8
  %.pre.i126 = load ptr, ptr %i.de, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113: ; preds = %bb.w, %bb.v
  %i.ey = phi ptr [ %i.df, %bb.v ], [ %.pre.i126, %bb.w ] ; 2 uses
  %i.ez = phi ptr [ %i.dh, %bb.v ], [ %.pre.i.i125, %bb.w ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.es ; 3 uses
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %.lr.ph.i.i121, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i114

.lr.ph.i.i121:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113, %.lr.ph.i.i121
  %.01113.i.i122 = phi ptr [ %i.fc, %.lr.ph.i.i121 ], [ %i.ey, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113 ] ; 2 uses
  store i64 4294967295, ptr %.01113.i.i122, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.01113.i.i122, i64 8 ; 2 uses
  %i.fd = icmp ult ptr %i.fc, %i.fa
  br i1 %i.fd, label %.lr.ph.i.i121, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i123, !llvm.loop !0

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i123: ; preds = %.lr.ph.i.i121
  %.pre6.pre.i124 = load ptr, ptr %i.dg, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i114

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i114: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i123, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113
  %.pre6.i115 = phi ptr [ %.pre6.pre.i124, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i123 ], [ %i.ez, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i113 ]
  store ptr %i.fa, ptr %i.de, align 8
  %.pre5.i116 = load i32, ptr %.phi.trans.insert344, align 4
  %.pre8.i117 = and i32 %.pre5.i116, 16777215
  %.pre9.i118 = zext nneg i32 %.pre8.i117 to i64
  br label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit127

_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit127: ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i114
  %.pre-phi10.i119 = phi i64 [ %.pre9.i118, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i114 ], [ %i.eo, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread ]
  %i.fe = phi ptr [ %.pre6.i115, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i114 ], [ %i.dh, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.pre-phi10.i119 ; 2 uses
  store i32 -1, ptr %i.ff, align 4
  %.sroa.4.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i8 7, ptr %.sroa.4.0..sroa_idx.i120, align 4
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit.thread310

bb.x:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.y:                                             ; preds = %bb.a
  %i.fg = and i32 %.pre345.a, 251658240           ; 2 uses
  %.not.i.i128 = icmp eq i32 %i.fg, 251658240     ; 4 uses
  br i1 %.not.i.i128, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.i

_ZNK2v88internal8compiler4Node10InputCountEv.exit.i: ; preds = %bb.y
  %i.fh = ptrtoint ptr %1 to i64
  %i.fi = add i64 %i.fh, 32
  %i.fj = inttoptr i64 %i.fi to ptr               ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8
  %i.fn = icmp eq i32 %i.fm, 3
  br i1 %i.fn, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.i: ; preds = %bb.y
  %i.fo = icmp eq i32 %i.fg, 50331648
  br i1 %i.fo, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i:  ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.i
  %i.fp = ptrtoint ptr %1 to i64
  %i.fq = add i64 %i.fp, 32
  %i.fr = inttoptr i64 %i.fq to ptr               ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i16, ptr %i.fu, align 8            ; 2 uses
  %i.fw = icmp eq i16 %i.fv, 36
  br i1 %i.fw, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.thread.i, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i: ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.i
  %i.fx = ptrtoint ptr %i.fk to i64
  %i.fy = add i64 %i.fx, 16
  %i.fz = inttoptr i64 %i.fy to ptr               ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i16, ptr %i.gc, align 8            ; 2 uses
  %i.ge = icmp eq i16 %i.gd, 36
  br i1 %i.ge, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.i, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit8.i: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i
  %i.gf = phi ptr [ %i.fs, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i ], [ %i.fk, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i ]
  %.val5.val.i = phi i16 [ %i.fv, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i ], [ %i.gd, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i ]
  %i.gg = phi ptr [ %i.fr, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i ], [ %i.fj, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i ]
  switch i16 %.val5.val.i, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread [
    i16 357, label %bb.z
    i16 317, label %bb.z
  ]

bb.z:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8.i
  br i1 %.not.i.i128, label %._ZNK2v88internal8compiler4Node7InputAtEi.exit11_crit_edge.i, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.thread.i

._ZNK2v88internal8compiler4Node7InputAtEi.exit11_crit_edge.i: ; preds = %bb.z
  %.pre.i131 = ptrtoint ptr %i.gf to i64
  %.pre23.i = add i64 %.pre.i131, 16
  %.pre25.i = inttoptr i64 %.pre23.i to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit11.i: ; preds = %._ZNK2v88internal8compiler4Node7InputAtEi.exit11_crit_edge.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i
  %.pre-phi26.i = phi ptr [ %.pre25.i, %._ZNK2v88internal8compiler4Node7InputAtEi.exit11_crit_edge.i ], [ %i.fz, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.pre-phi26.i, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load i16, ptr %i.gk, align 8            ; 2 uses
  %i.gm = icmp eq i16 %i.gl, 36
  br i1 %i.gm, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread324, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit11.thread.i: ; preds = %bb.z, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i
  %i.gn = phi ptr [ %i.gg, %bb.z ], [ %i.fr, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i16, ptr %i.gr, align 8            ; 2 uses
  %i.gt = icmp eq i16 %i.gs, 36
  br i1 %i.gt, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit

_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.thread.i
  %.val.val.i130 = phi i16 [ %i.gs, %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.thread.i ], [ %i.gl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.i ]
  switch i16 %.val.val.i130, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread [
    i16 357, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313
    i16 317, label %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313
  ]

_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit, %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8
  %.not326 = icmp eq ptr %i.gv, null
  br i1 %.not326, label %bb.aa, label %bb.ak

_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread324: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.i
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8
  %.not327 = icmp eq ptr %i.gx, null
  br i1 %.not327, label %bb.aa, label %.thread325

.thread325:                                       ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread324
  %i.gy = ptrtoint ptr %1 to i64
  %i.gz = add i64 %i.gy, 32
  %i.ha = inttoptr i64 %i.gz to ptr
  br label %bb.al

_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit11.thread.i
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8
  %.not = icmp eq ptr %i.hc, null
  br i1 %.not, label %bb.aa, label %.thread

.thread:                                          ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread
  %i.hd = ptrtoint ptr %1 to i64
  %i.he = add i64 %i.hd, 32
  %i.hf = inttoptr i64 %i.he to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit170

bb.aa:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread324, %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313.thread, %_ZN2v88internal8compiler12_GLOBAL__N_124PhiInputsAreConcatsOrPhiEPNS1_4NodeE.exit.thread313
  %i.hg = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.hh = load i32, ptr %i.hg, align 4            ; 3 uses
  %.not2133.i = icmp sgt i32 %i.hh, 0
  br i1 %.not2133.i, label %.lr.ph.i, label %._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge

._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge: ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert342 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre343 = load ptr, ptr %.phi.trans.insert342, align 8 ; 2 uses
  %.pre346.a = ptrtoint ptr %.pre to i64
  %.pre347 = ptrtoint ptr %.pre343 to i64         ; 2 uses
  %.pre349 = sub i64 %.pre346.a, %.pre347
  %.pre351 = ashr exact i64 %.pre349, 3
  br label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread

.lr.ph.i:                                         ; preds = %bb.aa
  %i.hi = ptrtoint ptr %1 to i64
  %i.hj = add i64 %i.hi, 32
  %i.hk = inttoptr i64 %i.hj to ptr               ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8            ; 11 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8            ; 14 uses
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = ptrtoint ptr %i.ho to i64               ; 11 uses
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 12 uses
  br i1 %.not.i.i128, label %.lr.ph.split.us.i, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.preheader.i

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.preheader.i: ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.hh to i64
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.ht = load ptr, ptr %i.hk, align 8
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = add i64 %i.hu, 16
  %i.hw = inttoptr i64 %i.hv to ptr
  %wide.trip.count53.i = zext nneg i32 %i.hh to i64
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i: ; preds = %.thread29.us.i, %.lr.ph.split.us.i
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %.thread29.us.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.01534.us.i = phi i32 [ %.232.us.i, %.thread29.us.i ], [ -1, %.lr.ph.split.us.i ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv50.i
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = and i32 %i.ia, 16777215
  %i.ic = zext nneg i32 %i.ib to i64              ; 2 uses
  %i.id = icmp ult i64 %i.hs, %i.ic
  br i1 %i.id, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ic
  %.sroa.0.0.copyload.i.us.i = load i64, ptr %i.ie, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.us.i = trunc i64 %.sroa.0.0.copyload.i.us.i to i32 ; 2 uses
  %.sroa.5.0.extract.shift.us.i = lshr i64 %.sroa.0.0.copyload.i.us.i, 32
  %.sroa.5.0.extract.trunc.us.i = trunc i64 %.sroa.5.0.extract.shift.us.i to i8
  switch i8 %.sroa.5.0.extract.trunc.us.i, label %.split.us.i [
    i8 1, label %bb.ab
    i8 2, label %bb.ab
    i8 3, label %bb.ab
    i8 7, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread
    i8 0, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread
  ]

bb.ab:                                            ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i
  %i.if = icmp eq i32 %.01534.us.i, -1
  br i1 %i.if, label %.thread29.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.us.i = icmp eq i32 %.01534.us.i, %.sroa.0.0.extract.trunc.us.i
  br i1 %.not.us.i, label %.thread29.us.i, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread

.thread29.us.i:                                   ; preds = %bb.ac, %bb.ab
  %.232.us.i = phi i32 [ %.01534.us.i, %bb.ac ], [ %.sroa.0.0.extract.trunc.us.i, %bb.ab ] ; 2 uses
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i, !llvm.loop !1

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i: ; preds = %.thread29.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.preheader.i ], [ %indvars.iv.next.i, %.thread29.i ] ; 2 uses
  %.01534.i = phi i32 [ -1, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.preheader.i ], [ %.232.i, %.thread29.i ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = and i32 %i.ij, 16777215
  %i.il = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.im = icmp ult i64 %i.hs, %i.il
  br i1 %i.im, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.il
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.in, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  switch i8 %.sroa.5.0.extract.trunc.i, label %.split.us.i [
    i8 1, label %bb.ad
    i8 2, label %bb.ad
    i8 3, label %bb.ad
    i8 7, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread
    i8 0, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread
  ]

bb.ad:                                            ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i
  %i.io = icmp eq i32 %.01534.i, -1
  br i1 %i.io, label %.thread29.i, label %bb.ae

.split.us.i:                                      ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %.not.i133 = icmp eq i32 %.01534.i, %.sroa.0.0.extract.trunc.i
  br i1 %.not.i133, label %.thread29.i, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread

.thread29.i:                                      ; preds = %bb.ae, %bb.ad
  %.232.i = phi i32 [ %.01534.i, %bb.ae ], [ %.sroa.0.0.extract.trunc.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i, !llvm.loop !1

_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit: ; preds = %.thread29.i, %.thread29.us.i
  %spec.select.i132 = phi i32 [ %.232.us.i, %.thread29.us.i ], [ %.232.i, %.thread29.i ] ; 2 uses
  %i.ip = icmp eq i32 %spec.select.i132, -1
  br i1 %i.ip, label %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread, label %bb.ah

_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread: ; preds = %bb.ae, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i, %bb.ac, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i, %._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge, %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit
  %.pre-phi352 = phi i64 [ %.pre351, %._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge ], [ %i.hs, %bb.ac ], [ %i.hs, %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit ], [ %i.hs, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i ], [ %i.hs, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.hs, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.hs, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i ], [ %i.hs, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.hs, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.hs, %bb.ae ]
  %.pre-phi348 = phi i64 [ %.pre347, %._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge ], [ %i.hq, %bb.ac ], [ %i.hq, %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit ], [ %i.hq, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i ], [ %i.hq, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.hq, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.hq, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i ], [ %i.hq, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.hq, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.hq, %bb.ae ]
  %i.iq = phi ptr [ %.pre343, %._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge ], [ %i.ho, %bb.ac ], [ %i.ho, %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit ], [ %i.ho, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i ], [ %i.ho, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.ho, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.ho, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i ], [ %i.ho, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.ho, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.ho, %bb.ae ] ; 2 uses
  %i.ir = phi ptr [ %.pre, %._ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread_crit_edge ], [ %i.hm, %bb.ac ], [ %i.hm, %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit ], [ %i.hm, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.us.i ], [ %i.hm, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.hm, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.us.i ], [ %i.hm, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.i ], [ %i.hm, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.hm, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.i ], [ %i.hm, %bb.ae ]
  %i.is = and i32 %.pre345.a, 16777215            ; 2 uses
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not.i134 = icmp ugt i64 %.pre-phi352, %i.it
  br i1 %.not.i134, label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit150, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal8compiler22StringBuilderOptimizer26GetPhiPredecessorsCommonIdEPNS1_4NodeE.exit.thread
  %i.ix = uitofp nneg i32 %i.is to double
  %i.iy = fmul nnan double %i.ix, 1.100000e+00
  %i.iz = fptoui double %i.iy to i64              ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %.pre-phi348
  %i.je = ashr exact i64 %i.jd, 3
  %.not.i.i.i135 = icmp ult i64 %i.je, %i.iz
  br i1 %.not.i.i.i135, label %bb.ag, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i136, !prof !30

bb.ag:                                            ; preds = %bb.af
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, i64 noundef %i.iz)
  %.pre.i.i148 = load ptr, ptr %i.iw, align 8
  %.pre.i149 = load ptr, ptr %i.iv, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i136

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i136: ; preds = %bb.ag, %bb.af
  %i.jf = phi ptr [ %i.ir, %bb.af ], [ %.pre.i149, %bb.ag ] ; 2 uses
end_hunk_0
