Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK6casadi16SparsityInternal3amdEv:bb.a

bb.y:                                             ; preds = %.lr.ph
  %i.da = add nsw i64 %.14451485, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14451485
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !43
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.y
  %.2446 = phi i64 [ %i.da, %bb.y ], [ %.14451485, %.lr.ph ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.04411486
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !43 ; 2 uses
  %.not535.1 = icmp eq i64 %i.de, %.04421489
  br i1 %.not535.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.1
  %i.df = add nsw i64 %.2446, 1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.2446
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.1
  %.2446.1 = phi i64 [ %i.df, %bb.z ], [ %.2446, %.lr.ph.1 ] ; 2 uses
  %i.dh = add nsw i64 %.04411486, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dh, %i.cp
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !229

bb.ab:                                            ; preds = %.noexc567, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cl, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cj, %.noexc567 ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %.0.i.i.i.i.i.ph, ptr %i.di, align 8, !tbaa !55
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc575 unwind label %bb.ak ; 21 uses

.noexc575:                                        ; preds = %bb.ab
  %i.dk = ptrtoaddr ptr %i.dj to i64              ; 5 uses
  store i64 0, ptr %i.dj, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ac, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570: ; preds = %.noexc575
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc575, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc584 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread ; 24 uses

.noexc584:                                        ; preds = %bb.ac
  %i.dn = ptrtoaddr ptr %i.dm to i64              ; 5 uses
  store i64 0, ptr %i.dm, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ad, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579: ; preds = %.noexc584
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.do, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc584, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc593 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread ; 20 uses

.noexc593:                                        ; preds = %bb.ad
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ae, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588: ; preds = %.noexc593
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dq, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc593, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc602 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread ; 17 uses

.noexc602:                                        ; preds = %bb.ae
  store i64 0, ptr %i.dr, align 8, !tbaa !43
  br i1 %i.ck, label %bb.af, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597: ; preds = %.noexc602
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  %i.dt = icmp eq i64 %.idx.i, -8
  %i.du = select i1 %i.dt, ptr null, ptr %i.dr
  br label %bb.af

bb.af:                                            ; preds = %.noexc602, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597
  %.0.i.i.i.i.i599.ph = phi ptr [ %i.du, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597 ], [ %i.dr, %.noexc602 ]
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc611 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread ; 19 uses

.noexc611:                                        ; preds = %bb.af
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 5 uses
  store i64 0, ptr %i.dv, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ag, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606: ; preds = %.noexc611
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dx, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc611, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc620 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread ; 16 uses

.noexc620:                                        ; preds = %bb.ag
  %i.dz = ptrtoaddr ptr %i.dy to i64              ; 5 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ah, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615: ; preds = %.noexc620
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ea, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc620, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc629 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread ; 27 uses

.noexc629:                                        ; preds = %bb.ah
  %i.ec = ptrtoaddr ptr %i.eb to i64              ; 5 uses
  store i64 0, ptr %i.eb, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ai, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624: ; preds = %.noexc629
  %i.ed = getelementptr i8, ptr %i.eb, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ed, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  %i.ee = icmp eq i64 %.idx.i, -8
  %i.ef = select i1 %i.ee, ptr null, ptr %i.eb
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc629, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624
  %.0.i.i.i.i.i626.ph = phi ptr [ %i.ef, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624 ], [ %i.eb, %.noexc629 ] ; 3 uses
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc638 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit.thread ; 7 uses

.noexc638:                                        ; preds = %bb.ai
  store i64 0, ptr %i.eg, align 8, !tbaa !43
  br i1 %i.ck, label %.lr.ph1499, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639:            ; preds = %.noexc638
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eh, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br i1 %i.by, label %.lr.ph1494.preheader, label %._crit_edge1495.thread

._crit_edge1495.thread:                           ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.bb
  store i64 0, ptr %i.ei, align 8, !tbaa !43
  %i.ej = ptrtoint ptr %.sroa.39.0 to i64
  %i.ek = ptrtoint ptr %.sroa.0930.0 to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = ashr exact i64 %i.el, 3
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread

.lr.ph1494.preheader:                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %.pre = load i64, ptr %.sroa.0963.0, align 8, !tbaa !43 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph1494.preheader2120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1494.preheader
  %n.vec = and i64 %i.bb, 9223372036854775804     ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load2024, %vector.body ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !43 ; 3 uses
  %wide.load2024 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !43 ; 4 uses
  %i.eq = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.er = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load2024, <2 x i32> <i32 1, i32 2>
  %i.es = sub nsw <2 x i64> %wide.load, %i.eq
  %i.et = sub nsw <2 x i64> %wide.load2024, %i.er
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x i64> %i.es, ptr %i.eu, align 8, !tbaa !43
  store <2 x i64> %i.et, ptr %i.ev, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load2024, i64 1
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.lr.ph1499, label %.lr.ph1494.preheader2120

.lr.ph1494.preheader2120:                         ; preds = %.lr.ph1494.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph1494.preheader ], [ %vector.recur.extract, %middle.block ]
  %.04301493.ph = phi i64 [ 0, %.lr.ph1494.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1494

.lr.ph1499:                                       ; preds = %.lr.ph1494, %middle.block, %.noexc638
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.bb
  store i64 0, ptr %i.ex, align 8, !tbaa !43
  %i.ey = ptrtoint ptr %.sroa.39.0 to i64
  %i.ez = ptrtoint ptr %.sroa.0930.0 to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !53    ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  %min.iters.check2053 = icmp ult i64 %i.ce, 74
  br i1 %min.iters.check2053, label %scalar.ph2052.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1499
  %i.fd = ptrtoaddr ptr %i.fc to i64              ; 5 uses
  %i.fe = sub i64 %i.fd, %i.dn
  %diff.check = icmp ugt i64 %i.fe, -32
  %i.ff = sub i64 %i.fd, %i.ec
  %diff.check2054 = icmp ugt i64 %i.ff, -32
  %conflict.rdx = or i1 %diff.check, %diff.check2054
  %i.fg = sub i64 %i.fd, %i.dw
  %diff.check2055 = icmp ugt i64 %i.fg, -32
  %conflict.rdx2056 = or i1 %conflict.rdx, %diff.check2055
  %i.fh = sub i64 %i.fd, %i.dz
  %diff.check2057 = icmp ugt i64 %i.fh, -32
  %conflict.rdx2058 = or i1 %conflict.rdx2056, %diff.check2057
  %i.fi = sub i64 %i.fd, %i.dk
  %diff.check2059 = icmp ugt i64 %i.fi, -32
  %conflict.rdx2060 = or i1 %conflict.rdx2058, %diff.check2059
  %i.fj = sub i64 %i.dn, %i.ec
  %diff.check2061 = icmp ugt i64 %i.fj, -32
  %conflict.rdx2062 = or i1 %conflict.rdx2060, %diff.check2061
  %i.fk = sub i64 %i.dn, %i.dw
  %diff.check2063 = icmp ugt i64 %i.fk, -32
  %conflict.rdx2064 = or i1 %conflict.rdx2062, %diff.check2063
  %i.fl = sub i64 %i.dn, %i.dz
  %diff.check2065 = icmp ugt i64 %i.fl, -32
  %conflict.rdx2066 = or i1 %conflict.rdx2064, %diff.check2065
  %i.fm = sub i64 %i.dn, %i.dk
  %diff.check2067 = icmp ugt i64 %i.fm, -32
  %conflict.rdx2068 = or i1 %conflict.rdx2066, %diff.check2067
  %i.fn = sub i64 %i.ec, %i.dw
  %diff.check2069 = icmp ugt i64 %i.fn, -32
  %conflict.rdx2070 = or i1 %conflict.rdx2068, %diff.check2069
  %i.fo = sub i64 %i.ec, %i.dz
  %diff.check2071 = icmp ugt i64 %i.fo, -32
  %conflict.rdx2072 = or i1 %conflict.rdx2070, %diff.check2071
  %i.fp = sub i64 %i.ec, %i.dk
  %diff.check2073 = icmp ugt i64 %i.fp, -32
  %conflict.rdx2074 = or i1 %conflict.rdx2072, %diff.check2073
  %i.fq = sub i64 %i.dw, %i.dz
  %diff.check2075 = icmp ugt i64 %i.fq, -32
  %conflict.rdx2076 = or i1 %conflict.rdx2074, %diff.check2075
  %i.fr = sub i64 %i.dw, %i.dk
  %diff.check2077 = icmp ugt i64 %i.fr, -32
  %conflict.rdx2078 = or i1 %conflict.rdx2076, %diff.check2077
  %i.fs = sub i64 %i.dk, %i.dz
  %diff.check2079 = icmp ugt i64 %i.fs, -32
  %conflict.rdx2080 = or i1 %conflict.rdx2078, %diff.check2079
  br i1 %conflict.rdx2080, label %scalar.ph2052.preheader, label %vector.ph2081

vector.ph2081:                                    ; preds = %vector.memcheck
  %n.vec2082 = and i64 %i.ce, -4                  ; 3 uses
  br label %vector.body2083

vector.body2083:                                  ; preds = %vector.body2083, %vector.ph2081
  %index2084 = phi i64 [ 0, %vector.ph2081 ], [ %index.next2087, %vector.body2083 ] ; 7 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index2084 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ft, align 8, !tbaa !43
  store <2 x i64> splat (i64 -1), ptr %i.fu, align 8, !tbaa !43
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index2084 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <2 x i64> splat (i64 1), ptr %i.fv, align 8, !tbaa !43
  store <2 x i64> splat (i64 1), ptr %i.fw, align 8, !tbaa !43
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index2084 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <2 x i64> splat (i64 1), ptr %i.fx, align 8, !tbaa !43
  store <2 x i64> splat (i64 1), ptr %i.fy, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index2084 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x i64> zeroinitializer, ptr %i.fz, align 8, !tbaa !43
  store <2 x i64> zeroinitializer, ptr %i.ga, align 8, !tbaa !43
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index2084 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load2085 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !43
  %wide.load2086 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index2084 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <2 x i64> %wide.load2085, ptr %i.gd, align 8, !tbaa !43
  store <2 x i64> %wide.load2086, ptr %i.ge, align 8, !tbaa !43
  %index.next2087 = add nuw i64 %index2084, 4     ; 2 uses
  %i.gf = icmp eq i64 %index.next2087, %n.vec2082
  br i1 %i.gf, label %middle.block2088, label %vector.body2083, !llvm.loop !231

middle.block2088:                                 ; preds = %vector.body2083
  %cmp.n2089 = icmp eq i64 %i.ce, %n.vec2082
  br i1 %cmp.n2089, label %._crit_edge1500, label %scalar.ph2052.preheader

scalar.ph2052.preheader:                          ; preds = %vector.memcheck, %.lr.ph1499, %middle.block2088
  %.04291497.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1499 ], [ %n.vec2082, %middle.block2088 ] ; 9 uses
  %i.gg = and i64 %i.bb, 1
  %lcmp.mod2122.not.not = icmp eq i64 %i.gg, 0
  br i1 %lcmp.mod2122.not.not, label %scalar.ph2052.prol, label %scalar.ph2052.prol.loopexit

scalar.ph2052.prol:                               ; preds = %scalar.ph2052.preheader
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.04291497.ph
  store i64 -1, ptr %i.gh, align 8, !tbaa !43
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.04291497.ph
  store i64 1, ptr %i.gi, align 8, !tbaa !43
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.04291497.ph
  store i64 1, ptr %i.gj, align 8, !tbaa !43
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.04291497.ph
  store i64 0, ptr %i.gk, align 8, !tbaa !43
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.04291497.ph
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !43
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.04291497.ph
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !43
  %i.go = or disjoint i64 %.04291497.ph, 1
  br label %scalar.ph2052.prol.loopexit

scalar.ph2052.prol.loopexit:                      ; preds = %scalar.ph2052.prol, %scalar.ph2052.preheader
  %.04291497.unr = phi i64 [ %.04291497.ph, %scalar.ph2052.preheader ], [ %i.go, %scalar.ph2052.prol ]
  %i.gp = icmp eq i64 %i.bb, %.04291497.ph
  br i1 %i.gp, label %._crit_edge1500, label %scalar.ph2052

bb.aj:                                            ; preds = %._crit_edge1491
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit699

bb.ak:                                            ; preds = %bb.ab
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit697

_ZNSt6vectorIxSaIxEED2Ev.exit695.thread:          ; preds = %bb.ac
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZNSt6vectorIxSaIxEED2Ev.exit693.thread:          ; preds = %bb.ad
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit695

_ZNSt6vectorIxSaIxEED2Ev.exit691.thread:          ; preds = %bb.ae
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit693

_ZNSt6vectorIxSaIxEED2Ev.exit689.thread:          ; preds = %bb.af
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit691

_ZNSt6vectorIxSaIxEED2Ev.exit687.thread:          ; preds = %bb.ag
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit689

_ZNSt6vectorIxSaIxEED2Ev.exit685.thread:          ; preds = %bb.ah
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit687

_ZNSt6vectorIxSaIxEED2Ev.exit.thread:             ; preds = %bb.ai
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit685

.lr.ph1494:                                       ; preds = %.lr.ph1494.preheader2120, %.lr.ph1494
  %i.gz = phi i64 [ %i.hc, %.lr.ph1494 ], [ %.ph, %.lr.ph1494.preheader2120 ]
  %.04301493 = phi i64 [ %i.ha, %.lr.ph1494 ], [ %.04301493.ph, %.lr.ph1494.preheader2120 ] ; 2 uses
  %i.ha = add nuw nsw i64 %.04301493, 1           ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !43 ; 2 uses
  %i.hd = sub nsw i64 %i.hc, %i.gz
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.04301493
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !43
  %exitcond1634.not = icmp eq i64 %i.ha, %i.bb
  br i1 %exitcond1634.not, label %.lr.ph1499, label %.lr.ph1494, !llvm.loop !232

._crit_edge1500:                                  ; preds = %scalar.ph2052.prol.loopexit, %scalar.ph2052, %middle.block2088
  %i.hf = icmp eq i64 %i.bb, 0
  br i1 %i.hf, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge1500
  %xtraiter2123 = and i64 %i.bb, 1
  %i.hg = icmp eq i64 %i.bb, 1
  br i1 %i.hg, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.hm, %bb.an ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.an ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !43
  %.not.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i
  store i64 1, ptr %i.hh, align 8, !tbaa !43
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.al, %.lr.ph.i
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !43
  %.not.i.1 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.1
  store i64 1, ptr %i.hk, align 8, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.1
  %i.hm = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread: ; preds = %._crit_edge1500, %._crit_edge1495.thread
  %.ph1913 = phi i64 [ %i.fa, %._crit_edge1500 ], [ %i.el, %._crit_edge1495.thread ]
  %.ph1914 = phi i64 [ %i.fb, %._crit_edge1500 ], [ %i.em, %._crit_edge1495.thread ]
  %.not149618101894.ph = phi i1 [ false, %._crit_edge1500 ], [ true, %._crit_edge1495.thread ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.bb
  store i64 -2, ptr %i.hn, align 8, !tbaa !43
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  store i64 -1, ptr %i.ho, align 8, !tbaa !43
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.bb
  store i64 0, ptr %i.hp, align 8, !tbaa !43
  br label %.preheader1484

_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa: ; preds = %bb.an
  %lcmp.mod2124.not = icmp eq i64 %xtraiter2123, 0
  br i1 %lcmp.mod2124.not, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.hm, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa ]
  %lcmp.mod2125 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod2125)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i.epil.init ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !43
  %.not.i.epil = icmp eq i64 %i.hr, 0
  br i1 %.not.i.epil, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.epil.preheader
  store i64 1, ptr %i.hq, align 8, !tbaa !43
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit

_ZN6casadi16SparsityInternal6wclearExxPxx.exit:   ; preds = %.lr.ph.i.epil.preheader, %bb.ao, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.bb
  store i64 -2, ptr %i.hs, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  store i64 -1, ptr %i.ht, align 8, !tbaa !43
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.bb
  store i64 0, ptr %i.hu, align 8, !tbaa !43
  br i1 %i.by, label %.lr.ph1503, label %.preheader1484

.lr.ph1503:                                       ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit
  %i.hv = load ptr, ptr %0, align 8
  %i.hw = sub nuw i64 -2, %i.bb
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.bb ; 2 uses
  br label %bb.ap

scalar.ph2052:                                    ; preds = %scalar.ph2052.prol.loopexit, %scalar.ph2052
  %.04291497 = phi i64 [ %i.in, %scalar.ph2052 ], [ %.04291497.unr, %scalar.ph2052.prol.loopexit ] ; 8 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.04291497
  store i64 -1, ptr %i.hy, align 8, !tbaa !43
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.04291497
  store i64 1, ptr %i.hz, align 8, !tbaa !43
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.04291497
  store i64 1, ptr %i.ia, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.04291497
  store i64 0, ptr %i.ib, align 8, !tbaa !43
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.04291497
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !43
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.04291497
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !43
  %i.if = add nuw i64 %.04291497, 1               ; 7 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.if
  store i64 -1, ptr %i.ig, align 8, !tbaa !43
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.if
  store i64 1, ptr %i.ih, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.if
  store i64 1, ptr %i.ii, align 8, !tbaa !43
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.if
  store i64 0, ptr %i.ij, align 8, !tbaa !43
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.if
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !43
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.if
  store i64 %i.il, ptr %i.im, align 8, !tbaa !43
  %i.in = add nuw i64 %.04291497, 2
  %exitcond1635.not.1 = icmp eq i64 %i.if, %i.bb
  br i1 %exitcond1635.not.1, label %._crit_edge1500, label %scalar.ph2052, !llvm.loop !233

.preheader1484:                                   ; preds = %bb.aw, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit
  %.not1496181018941950 = phi i1 [ false, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.not149618101894.ph, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ false, %bb.aw ] ; 2 uses
  %12 = phi i64 [ %i.fb, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.ph1914, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %i.fb, %bb.aw ]
  %13 = phi i64 [ %i.fa, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.ph1913, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %i.fa, %bb.aw ]
  %.0436.lcssa = phi i64 [ 0, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ 0, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %.1437, %bb.aw ] ; 2 uses
  %i.io = icmp slt i64 %.0436.lcssa, %i.bb
  br i1 %i.io, label %.preheader1483.lr.ph, label %.preheader1475

.preheader1483.lr.ph:                             ; preds = %.preheader1484
  %i.ip = load ptr, ptr %0, align 8
  %xtraiter2126 = and i64 %i.bb, 1
  %i.iq = icmp eq i64 %i.bb, 1
  %unroll_iter2129 = and i64 %i.bb, 9223372036854775806
  %lcmp.mod2127.not = icmp eq i64 %xtraiter2126, 0
  %lcmp.mod2128 = trunc i64 %i.bb to i1
  br label %.preheader1483

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.dc
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %.idx) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit685

bb.ap:                                            ; preds = %.lr.ph1503, %bb.aw
  %.04241502 = phi i64 [ 0, %.lr.ph1503 ], [ %i.jl, %bb.aw ] ; 11 uses
  %.04361501 = phi i64 [ 0, %.lr.ph1503 ], [ %.1437, %bb.aw ] ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.04241502
  %i.it = load i64, ptr %i.is, align 8, !tbaa !43 ; 3 uses
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.04241502
  store i64 -2, ptr %i.iv, align 8, !tbaa !43
  %i.iw = add nsw i64 %.04361501, 1
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04241502
  store i64 -1, ptr %i.ix, align 8, !tbaa !43
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.04241502
  store i64 0, ptr %i.iy, align 8, !tbaa !43
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.iz = icmp sgt i64 %i.it, %.sroa.speculated918
  br i1 %i.iz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.04241502
  store i64 0, ptr %i.ja, align 8, !tbaa !43
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.04241502
  store i64 -1, ptr %i.jb, align 8, !tbaa !43
  %i.jc = add nsw i64 %.04361501, 1
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04241502
  store i64 %i.hw, ptr %i.jd, align 8, !tbaa !43
  %i.je = load i64, ptr %i.hx, align 8, !tbaa !43
  %i.jf = add nsw i64 %i.je, 1
  store i64 %i.jf, ptr %i.hx, align 8, !tbaa !43
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.it ; 3 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !43 ; 2 uses
  %.not534 = icmp eq i64 %i.jh, -1
  br i1 %.not534, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.jh
  store i64 %.04241502, ptr %i.ji, align 8, !tbaa !43
  %.pre1653 = load i64, ptr %i.jg, align 8, !tbaa !43
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jj = phi i64 [ %.pre1653, %bb.au ], [ -1, %bb.at ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.04241502
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !43
  store i64 %.04241502, ptr %i.jg, align 8, !tbaa !43
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %bb.av, %bb.as
  %.1437 = phi i64 [ %i.iw, %bb.aq ], [ %i.jc, %bb.as ], [ %.04361501, %bb.av ] ; 2 uses
  %i.jl = add nuw nsw i64 %.04241502, 1           ; 2 uses
  %exitcond1636.not = icmp eq i64 %i.jl, %i.bb
  br i1 %exitcond1636.not, label %.preheader1484, label %bb.ap, !llvm.loop !234

.preheader1483:                                   ; preds = %.preheader1483.lr.ph, %bb.cu
  %.04251617 = phi i64 [ 2, %.preheader1483.lr.ph ], [ %.1426.lcssa19851994, %bb.cu ] ; 5 uses
  %.24381616 = phi i64 [ %.0436.lcssa, %.preheader1483.lr.ph ], [ %.3439.lcssa197119841996, %bb.cu ]
  %.34471615 = phi i64 [ %.0444.lcssa, %.preheader1483.lr.ph ], [ %spec.select538, %bb.cu ] ; 4 uses
  %.010061614 = phi i64 [ 0, %.preheader1483.lr.ph ], [ %.sroa.speculated711197319821998, %bb.cu ] ; 2 uses
  %.010071613 = phi i64 [ 0, %.preheader1483.lr.ph ], [ %.21009.lcssa2000, %bb.cu ] ; 3 uses
  %i.jm = icmp slt i64 %.010071613, %i.bb
  br i1 %i.jm, label %.lr.ph1506, label %.critedge

.preheader1475:                                   ; preds = %bb.cu, %.preheader1484
  br i1 %i.by, label %.lr.ph1619.preheader, label %.preheader1474

.lr.ph1619.preheader:                             ; preds = %.preheader1475
  %min.iters.check2107 = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check2107, label %.lr.ph1619.preheader2118, label %vector.ph2108

vector.ph2108:                                    ; preds = %.lr.ph1619.preheader
  %n.vec2109 = and i64 %i.bb, 9223372036854775804 ; 3 uses
  br label %vector.body2110

vector.body2110:                                  ; preds = %vector.body2110, %vector.ph2108
  %index2111 = phi i64 [ 0, %vector.ph2108 ], [ %index.next2114, %vector.body2110 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index2111 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load2112 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !43
  %wide.load2113 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !43
  %i.jp = sub <2 x i64> splat (i64 -2), %wide.load2112
  %i.jq = sub <2 x i64> splat (i64 -2), %wide.load2113
  store <2 x i64> %i.jp, ptr %i.jn, align 8, !tbaa !43
  store <2 x i64> %i.jq, ptr %i.jo, align 8, !tbaa !43
  %index.next2114 = add nuw i64 %index2111, 4     ; 2 uses
  %i.jr = icmp eq i64 %index.next2114, %n.vec2109
  br i1 %i.jr, label %middle.block2115, label %vector.body2110, !llvm.loop !235

middle.block2115:                                 ; preds = %vector.body2110
  %cmp.n2116 = icmp eq i64 %i.bb, %n.vec2109
  br i1 %cmp.n2116, label %.preheader1474, label %.lr.ph1619.preheader2118

.lr.ph1619.preheader2118:                         ; preds = %.lr.ph1619.preheader, %middle.block2115
  %.03751618.ph = phi i64 [ 0, %.lr.ph1619.preheader ], [ %n.vec2109, %middle.block2115 ]
  br label %.lr.ph1619

.lr.ph1506:                                       ; preds = %.preheader1483, %bb.ax
  %.110081505 = phi i64 [ %i.jv, %bb.ax ], [ %.010071613, %.preheader1483 ] ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.110081505
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !43 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, -1
  br i1 %i.ju, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %.lr.ph1506
  %i.jv = add i64 %.110081505, 1                  ; 2 uses
  %exitcond1637.not = icmp eq i64 %i.jv, %i.bb
  br i1 %exitcond1637.not, label %.critedge, label %.lr.ph1506, !llvm.loop !236

.critedge:                                        ; preds = %.lr.ph1506, %bb.ax, %.preheader1483
  %.11008.lcssa = phi i64 [ %.010071613, %.preheader1483 ], [ %i.bb, %bb.ax ], [ %.110081505, %.lr.ph1506 ] ; 4 uses
  %.1423 = phi i64 [ -1, %.preheader1483 ], [ -1, %bb.ax ], [ %i.jt, %.lr.ph1506 ] ; 15 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.1423 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !43 ; 2 uses
  %.not513 = icmp eq i64 %i.jx, -1
  br i1 %.not513, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jx
  store i64 -1, ptr %i.jy, align 8, !tbaa !43
  %.pre1654 = load i64, ptr %i.jw, align 8, !tbaa !43
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge
  %i.jz = phi i64 [ %.pre1654, %bb.ay ], [ -1, %.critedge ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.11008.lcssa
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !43
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.1423 ; 3 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !43 ; 6 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.1423 ; 4 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !43 ; 4 uses
  %i.kf = add nsw i64 %i.ke, %.24381616           ; 2 uses
  %i.kg = icmp slt i64 %i.kc, 1
  %i.kh = add nsw i64 %.11008.lcssa, %.34471615
  %.not514 = icmp slt i64 %i.kh, %12
  %or.cond = select i1 %i.kg, i1 true, i1 %.not514
  br i1 %or.cond, label %.loopexit1481, label %.preheader1482

.preheader1482:                                   ; preds = %bb.az
  br i1 %i.by, label %.lr.ph1513.preheader, label %.preheader1480

.lr.ph1513.preheader:                             ; preds = %.preheader1482
  br i1 %i.iq, label %.lr.ph1513.epil.preheader, label %.lr.ph1513

.preheader1480.loopexit.unr-lcssa:                ; preds = %bb.bd
  br i1 %lcmp.mod2127.not, label %.preheader1480, label %.lr.ph1513.epil.preheader

.lr.ph1513.epil.preheader:                        ; preds = %.preheader1480.loopexit.unr-lcssa, %.lr.ph1513.preheader
  %.04191512.epil.init = phi i64 [ 0, %.lr.ph1513.preheader ], [ %i.lc, %.preheader1480.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod2128)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04191512.epil.init ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !43 ; 2 uses
  %i.kk = icmp sgt i64 %i.kj, -1
  br i1 %i.kk, label %bb.ba, label %.preheader1480

bb.ba:                                            ; preds = %.lr.ph1513.epil.preheader
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %i.kj ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !43
  store i64 %i.km, ptr %i.ki, align 8, !tbaa !43
  %i.kn = sub nuw nsw i64 -2, %.04191512.epil.init
  store i64 %i.kn, ptr %i.kl, align 8, !tbaa !43
  br label %.preheader1480

.preheader1480:                                   ; preds = %.preheader1480.loopexit.unr-lcssa, %bb.ba, %.lr.ph1513.epil.preheader, %.preheader1482
  %i.ko = icmp sgt i64 %.34471615, 0
  br i1 %i.ko, label %.lr.ph1524, label %.loopexit1481

.lr.ph1513:                                       ; preds = %.lr.ph1513.preheader, %bb.bd
  %.04191512 = phi i64 [ %i.lc, %bb.bd ], [ 0, %.lr.ph1513.preheader ] ; 5 uses
  %niter2130 = phi i64 [ %niter2130.next.1, %bb.bd ], [ 0, %.lr.ph1513.preheader ]
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04191512 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !43 ; 2 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  br i1 %i.kr, label %bb.bb, label %.lr.ph1513.1

bb.bb:                                            ; preds = %.lr.ph1513
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal3amdEv:bb.a
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.5408.prol
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !43
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.tc
  store i64 %.24271595, ptr %i.td, align 8, !tbaa !43
  %prol.iter2135.next = add i64 %prol.iter2135, 1 ; 2 uses
  %prol.iter2135.cmp.not = icmp eq i64 %prol.iter2135.next, %xtraiter2133
  br i1 %prol.iter2135.cmp.not, label %.lr.ph1582.prol.loopexit, label %.lr.ph1582.prol, !llvm.loop !249

.lr.ph1582.prol.loopexit:                         ; preds = %.lr.ph1582.prol, %.lr.ph1582.preheader
  %.5408.in1580.unr = phi i64 [ %i.sw, %.lr.ph1582.preheader ], [ %.5408.prol, %.lr.ph1582.prol ]
  %i.te = icmp ult i64 %i.ta, 3
  br i1 %i.te, label %.lr.ph1592, label %.lr.ph1582

.lr.ph1592:                                       ; preds = %.lr.ph1582.prol.loopexit, %.lr.ph1582, %bb.cj
  %i.tf = sub nuw i64 -2, %.03831596
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.03831596 ; 2 uses
  br label %bb.ck

.lr.ph1582:                                       ; preds = %.lr.ph1582.prol.loopexit, %.lr.ph1582
  %.5408.in1580 = phi i64 [ %.5408.3, %.lr.ph1582 ], [ %.5408.in1580.unr, %.lr.ph1582.prol.loopexit ] ; 4 uses
  %i.th = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.5408.in1580
  %i.ti = getelementptr i8, ptr %i.th, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !43
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.tj
  store i64 %.24271595, ptr %i.tk, align 8, !tbaa !43
  %i.tl = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.5408.in1580
  %i.tm = getelementptr i8, ptr %i.tl, i64 16
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !43
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.tn
  store i64 %.24271595, ptr %i.to, align 8, !tbaa !43
  %i.tp = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.5408.in1580
  %i.tq = getelementptr i8, ptr %i.tp, i64 24
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !43
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.tr
  store i64 %.24271595, ptr %i.ts, align 8, !tbaa !43
  %.5408.3 = add nsw i64 %.5408.in1580, 4         ; 3 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.5408.3
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !43
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.tu
  store i64 %.24271595, ptr %i.tv, align 8, !tbaa !43
  %exitcond1647.not.3 = icmp eq i64 %.5408.3, %i.sy
  br i1 %exitcond1647.not.3, label %.lr.ph1592, label %.lr.ph1582, !llvm.loop !250

._crit_edge1593:                                  ; preds = %bb.cn
  %i.tw = load i64, ptr %i.sp, align 8, !tbaa !43 ; 2 uses
  %i.tx = add nuw nsw i64 %.24271595, 1           ; 2 uses
  %.not518 = icmp eq i64 %i.tw, -1
  br i1 %.not518, label %.critedge2, label %.lr.ph1598, !llvm.loop !251

bb.ck:                                            ; preds = %.lr.ph1592, %bb.cn
  %.03791591 = phi i64 [ %i.sq, %.lr.ph1592 ], [ %.1380, %bb.cn ] ; 8 uses
  %.03811590 = phi i64 [ %.03831596, %.lr.ph1592 ], [ %.1382, %bb.cn ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.03791591
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !43
  %i.ua = icmp eq i64 %i.tz, %i.ss
  br i1 %i.ua, label %bb.cl, label %.critedge537

bb.cl:                                            ; preds = %bb.ck
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03791591
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !43
  %.not = icmp eq i64 %i.uc, %i.su
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03791591 ; 2 uses
  br i1 %.not, label %.lr.ph1588, label %.critedge537

.lr.ph1588:                                       ; preds = %bb.cl
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !43 ; 4 uses
  %i.uf = add i64 %i.sx, %i.ue                    ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ue, i64 %i.uf)
  %exitcond1648.not2022.not = icmp slt i64 %i.ue, %i.uf
  br i1 %exitcond1648.not2022.not, label %select.unfold, label %.critedge4

bb.cm:                                            ; preds = %select.unfold
  %exitcond1648.not = icmp eq i64 %.64091586, %smax
  br i1 %exitcond1648.not, label %.critedge4, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph1588, %bb.cm
  %.6409.in15852023 = phi i64 [ %.64091586, %bb.cm ], [ %i.ue, %.lr.ph1588 ]
  %.64091586 = add i64 %.6409.in15852023, 1       ; 3 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.64091586
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !43
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.uh
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !43
  %.not524.not = icmp eq i64 %i.uj, %.24271595
  br i1 %.not524.not, label %bb.cm, label %.critedge537

.critedge4:                                       ; preds = %bb.cm, %.lr.ph1588
  store i64 %i.tf, ptr %i.ud, align 8, !tbaa !43
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.03791591 ; 2 uses
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !43
  %i.um = load i64, ptr %i.tg, align 8, !tbaa !43
  %i.un = add nsw i64 %i.um, %i.ul
  store i64 %i.un, ptr %i.tg, align 8, !tbaa !43
  store i64 0, ptr %i.uk, align 8, !tbaa !43
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03791591
  store i64 -1, ptr %i.uo, align 8, !tbaa !43
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.03791591
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !43 ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.03811590
  store i64 %i.uq, ptr %i.ur, align 8, !tbaa !43
  br label %bb.cn

.critedge537:                                     ; preds = %select.unfold, %bb.ck, %bb.cl
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.03791591
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !43
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge537, %.critedge4
  %.1382 = phi i64 [ %.03811590, %.critedge4 ], [ %.03791591, %.critedge537 ]
  %.1380 = phi i64 [ %i.uq, %.critedge4 ], [ %i.ut, %.critedge537 ] ; 2 uses
  %.not521 = icmp eq i64 %.1380, -1
  br i1 %.not521, label %._crit_edge1593, label %bb.ck, !llvm.loop !252

.critedge2:                                       ; preds = %._crit_edge1593, %.lr.ph1598, %bb.ci, %bb.ch
  %.3428 = phi i64 [ %.14261602, %bb.ch ], [ %.14261602, %bb.ci ], [ %i.tx, %._crit_edge1593 ], [ %.24271595, %.lr.ph1598 ] ; 3 uses
  %i.uu = add nsw i64 %.03841603, 1               ; 2 uses
  %exitcond1649.not = icmp eq i64 %i.uu, %.1401.lcssa
  br i1 %exitcond1649.not, label %.lr.ph1609, label %bb.ch, !llvm.loop !253

bb.co:                                            ; preds = %.lr.ph1609, %bb.cs
  %.03761608 = phi i64 [ %i.nk, %.lr.ph1609 ], [ %i.vn, %bb.cs ] ; 2 uses
  %.74101607 = phi i64 [ %i.nk, %.lr.ph1609 ], [ %.8411, %bb.cs ] ; 3 uses
  %.210091606 = phi i64 [ %.11008.lcssa, %.lr.ph1609 ], [ %.31010, %bb.cs ] ; 2 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.03761608
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !43 ; 7 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.uw ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !43 ; 3 uses
  %i.uz = icmp sgt i64 %i.uy, -1
  br i1 %i.uz, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.va = sub nsw i64 0, %i.uy
  store i64 %i.va, ptr %i.ux, align 8, !tbaa !43
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.uw ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !43
  %i.vd = add nsw i64 %i.vc, %.4
  %i.ve = tail call i64 @llvm.smin.i64(i64 %i.se, i64 %i.vd)
  %.sroa.speculated = add nsw i64 %i.ve, %i.uy    ; 3 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.sroa.speculated ; 3 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !43 ; 2 uses
  %.not517 = icmp eq i64 %i.vg, -1
  br i1 %.not517, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.vg
  store i64 %i.uw, ptr %i.vh, align 8, !tbaa !43
  %.pre1657 = load i64, ptr %i.vf, align 8, !tbaa !43
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.vi = phi i64 [ %.pre1657, %bb.cq ], [ -1, %bb.cp ]
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.uw
  store i64 %i.vi, ptr %i.vj, align 8, !tbaa !43
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.uw
  store i64 -1, ptr %i.vk, align 8, !tbaa !43
  store i64 %i.uw, ptr %i.vf, align 8, !tbaa !43
  %.sroa.speculated732 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated, i64 %.210091606)
  store i64 %.sroa.speculated, ptr %i.vb, align 8, !tbaa !43
  %i.vl = add nsw i64 %.74101607, 1
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.74101607
  store i64 %i.uw, ptr %i.vm, align 8, !tbaa !43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cr
  %.31010 = phi i64 [ %.210091606, %bb.co ], [ %.sroa.speculated732, %bb.cr ] ; 3 uses
  %.8411 = phi i64 [ %.74101607, %bb.co ], [ %i.vl, %bb.cr ] ; 5 uses
  %i.vn = add nsw i64 %.03761608, 1               ; 2 uses
  %exitcond1650.not = icmp eq i64 %i.vn, %.1401.lcssa
  br i1 %exitcond1650.not, label %._crit_edge1610, label %bb.co, !llvm.loop !254

._crit_edge1610:                                  ; preds = %bb.cs
  store i64 %.1421, ptr %i.kd, align 8, !tbaa !43
  %i.vo = sub nsw i64 %.8411, %i.nk
  store i64 %i.vo, ptr %i.ns, align 8, !tbaa !43
  %i.vp = icmp eq i64 %.8411, %i.nk
  br i1 %i.vp, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread, %._crit_edge1610
  %.7410.lcssa2003 = phi i64 [ %i.nk, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.8411, %._crit_edge1610 ]
  %.21009.lcssa2001 = phi i64 [ %.11008.lcssa, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.31010, %._crit_edge1610 ]
  %.sroa.speculated711197319821999 = phi i64 [ %.sroa.speculated7111968, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.sroa.speculated711, %._crit_edge1610 ]
  %.3439.lcssa197119841997 = phi i64 [ %i.kf, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.4440, %._crit_edge1610 ]
  %.1426.lcssa19851995 = phi i64 [ %i.py, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.3428, %._crit_edge1610 ]
  store i64 -1, ptr %i.nh, align 8, !tbaa !43
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.1423
  store i64 0, ptr %i.vq, align 8, !tbaa !43
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge1610
  %.7410.lcssa2002 = phi i64 [ %.7410.lcssa2003, %bb.ct ], [ %.8411, %._crit_edge1610 ]
  %.21009.lcssa2000 = phi i64 [ %.21009.lcssa2001, %bb.ct ], [ %.31010, %._crit_edge1610 ]
  %.sroa.speculated711197319821998 = phi i64 [ %.sroa.speculated711197319821999, %bb.ct ], [ %.sroa.speculated711, %._crit_edge1610 ]
  %.3439.lcssa197119841996 = phi i64 [ %.3439.lcssa197119841997, %bb.ct ], [ %.4440, %._crit_edge1610 ] ; 2 uses
  %.1426.lcssa19851994 = phi i64 [ %.1426.lcssa19851995, %bb.ct ], [ %.3428, %._crit_edge1610 ]
  %spec.select538 = select i1 %i.nj, i64 %.4448, i64 %.7410.lcssa2002
  %i.vr = icmp slt i64 %.3439.lcssa197119841996, %i.bb
  br i1 %i.vr, label %.preheader1483, label %.preheader1475, !llvm.loop !255

.preheader1474:                                   ; preds = %.lr.ph1619, %middle.block2115, %.preheader1475
  br i1 %.not1496181018941950, label %.preheader1473, label %.lr.ph1622.preheader

.lr.ph1622.preheader:                             ; preds = %.preheader1474
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  br label %.preheader1473

.lr.ph1619:                                       ; preds = %.lr.ph1619.preheader2118, %.lr.ph1619
  %.03751618 = phi i64 [ %i.vv, %.lr.ph1619 ], [ %.03751618.ph, %.lr.ph1619.preheader2118 ] ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03751618 ; 2 uses
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !43
  %i.vu = sub i64 -2, %i.vt
  store i64 %i.vu, ptr %i.vs, align 8, !tbaa !43
  %i.vv = add nuw nsw i64 %.03751618, 1           ; 2 uses
  %exitcond1651.not = icmp eq i64 %i.vv, %i.bb
  br i1 %exitcond1651.not, label %.preheader1474, label %.lr.ph1619, !llvm.loop !256

.preheader1473:                                   ; preds = %.lr.ph1622.preheader, %.preheader1474
  %i.vw = icmp sgt i64 %i.bb, -1
  br i1 %i.vw, label %.lr.ph1624.preheader, label %.preheader

.lr.ph1624.preheader:                             ; preds = %.preheader1473
  %i.vx = and i64 %i.bb, 1
  %lcmp.mod2137.not.not = icmp eq i64 %i.vx, 0
  br i1 %lcmp.mod2137.not.not, label %.lr.ph1624.prol, label %.lr.ph1624.prol.loopexit

.lr.ph1624.prol:                                  ; preds = %.lr.ph1624.preheader
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.bb
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !43
  %i.wa = icmp sgt i64 %i.vz, 0
  br i1 %i.wa, label %.lr.ph1624.prol.loopexit.unr-lcssa, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph1624.prol
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !43
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.wc ; 2 uses
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !43
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.bb
  store i64 %i.we, ptr %i.wf, align 8, !tbaa !43
  store i64 %i.bb, ptr %i.wd, align 8, !tbaa !43
  br label %.lr.ph1624.prol.loopexit.unr-lcssa

.lr.ph1624.prol.loopexit.unr-lcssa:               ; preds = %bb.cv, %.lr.ph1624.prol
  %i.wg = add nsw i64 %i.bb, -1
  br label %.lr.ph1624.prol.loopexit

.lr.ph1624.prol.loopexit:                         ; preds = %.lr.ph1624.prol.loopexit.unr-lcssa, %.lr.ph1624.preheader
  %.03731623.unr = phi i64 [ %i.bb, %.lr.ph1624.preheader ], [ %i.wg, %.lr.ph1624.prol.loopexit.unr-lcssa ]
  %i.wh = icmp eq i64 %i.bb, 0
  br i1 %i.wh, label %.lr.ph1626.preheader, label %.lr.ph1624

.lr.ph1624:                                       ; preds = %.lr.ph1624.prol.loopexit, %bb.cy
  %.03731623 = phi i64 [ %i.wz, %bb.cy ], [ %.03731623.unr, %.lr.ph1624.prol.loopexit ] ; 7 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.03731623
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !43
  %i.wk = icmp sgt i64 %i.wj, 0
  br i1 %i.wk, label %.lr.ph1624.1, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph1624
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03731623
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !43
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.wm ; 2 uses
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !43
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.03731623
  store i64 %i.wo, ptr %i.wp, align 8, !tbaa !43
  store i64 %.03731623, ptr %i.wn, align 8, !tbaa !43
  br label %.lr.ph1624.1

.lr.ph1624.1:                                     ; preds = %.lr.ph1624, %bb.cw
  %i.wq = add nsw i64 %.03731623, -1              ; 4 uses
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.wq
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.wt = icmp sgt i64 %i.ws, 0
  br i1 %i.wt, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph1624.1
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.wq
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !43
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.wv ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !43
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.wq
  store i64 %i.wx, ptr %i.wy, align 8, !tbaa !43
  store i64 %i.wq, ptr %i.ww, align 8, !tbaa !43
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph1624.1
  %i.wz = add nsw i64 %.03731623, -2
  %i.xa = icmp sgt i64 %.03731623, 1
  br i1 %i.xa, label %.lr.ph1624, label %.lr.ph1626.preheader, !llvm.loop !257

.lr.ph1626.preheader:                             ; preds = %bb.cy, %.lr.ph1624.prol.loopexit
  br label %.lr.ph1626

.preheader:                                       ; preds = %bb.db, %.preheader1473
  %.pre1659 = load ptr, ptr %0, align 8           ; 2 uses
  br i1 %.not1496181018941950, label %._crit_edge1631, label %.lr.ph1630.a

.lr.ph1626:                                       ; preds = %.lr.ph1626.preheader, %bb.db
  %.03721625 = phi i64 [ %i.xj, %bb.db ], [ %i.bb, %.lr.ph1626.preheader ] ; 6 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.03721625
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !43
  %i.xd = icmp slt i64 %i.xc, 1
  br i1 %i.xd, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph1626
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03721625
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !43 ; 2 uses
  %.not512 = icmp eq i64 %i.xf, -1
  br i1 %.not512, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.xf ; 2 uses
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !43
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.03721625
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !43
  store i64 %.03721625, ptr %i.xg, align 8, !tbaa !43
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %.lr.ph1626
  %i.xj = add nsw i64 %.03721625, -1
  %i.xk = icmp sgt i64 %.03721625, 0
  br i1 %i.xk, label %.lr.ph1626, label %.preheader, !llvm.loop !258

._crit_edge1631.loopexit:                         ; preds = %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit
  %.pre1658 = load ptr, ptr %0, align 8, !tbaa !53
  br label %._crit_edge1631

._crit_edge1631:                                  ; preds = %._crit_edge1631.loopexit, %.preheader
  %14 = phi ptr [ %.pre1658, %._crit_edge1631.loopexit ], [ %.pre1659, %.preheader ] ; 2 uses
  %i.xl = load ptr, ptr %i.di, align 8, !tbaa !55 ; 2 uses
  %i.xm = ptrtoint ptr %i.xl to i64
  %i.xn = ptrtoint ptr %14 to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = ashr exact i64 %i.xo, 3                 ; 3 uses
  %i.xq = icmp ugt i64 %i.bb, %i.xp
  br i1 %i.xq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %._crit_edge1631
  %i.xr = sub nuw i64 %i.bb, %i.xp
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.xr)
          to label %_ZNSt6vectorIxSaIxEE6resizeEm.exit unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.dd:                                            ; preds = %._crit_edge1631
  %i.xs = icmp ult i64 %i.bb, %i.xp
  br i1 %i.xs, label %bb.de, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.de:                                            ; preds = %bb.dd
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %i.bb ; 2 uses
  %.not.i.i = icmp eq ptr %i.xl, %i.xt
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.de
  store ptr %i.xt, ptr %i.di, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

.lr.ph1630.a:                                     ; preds = %.preheader, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit
  %.01629 = phi i64 [ %i.yk, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit ], [ 0, %.preheader ] ; 4 uses
  %.03711628 = phi i64 [ %.1, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.01629
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !43
  %i.xw = icmp eq i64 %i.xv, -1
  br i1 %i.xw, label %bb.df, label %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit

bb.df:                                            ; preds = %.lr.ph1630.a
  store i64 %.01629, ptr %i.eb, align 8, !tbaa !43
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dj, %bb.df
  %.023.i = phi i64 [ 0, %bb.df ], [ %.1.i, %bb.dj ] ; 3 uses
  %.01922.i = phi i64 [ %.03711628, %bb.df ], [ %.120.i, %bb.dj ] ; 3 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.023.i
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !43 ; 2 uses
  %i.xz = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i599.ph, i64 %i.xy ; 2 uses
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !43 ; 3 uses
  %i.yb = icmp eq i64 %i.ya, -1
  br i1 %i.yb, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.yc = add nsw i64 %.023.i, -1
  %i.yd = add nsw i64 %.01922.i, 1
  %i.ye = getelementptr inbounds [8 x i8], ptr %.pre1659, i64 %.01922.i
  store i64 %i.xy, ptr %i.ye, align 8, !tbaa !43
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.yf = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ya
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !43
  store i64 %i.yg, ptr %i.xz, align 8, !tbaa !43
  %i.yh = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.yh
  store i64 %i.ya, ptr %i.yi, align 8, !tbaa !43
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.120.i = phi i64 [ %i.yd, %bb.dh ], [ %.01922.i, %bb.di ] ; 2 uses
  %.1.i = phi i64 [ %i.yc, %bb.dh ], [ %i.yh, %bb.di ] ; 2 uses
  %i.yj = icmp sgt i64 %.1.i, -1
  br i1 %i.yj, label %bb.dg, label %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit, !llvm.loop !0

_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit: ; preds = %bb.dj, %.lr.ph1630.a
  %.1 = phi i64 [ %.03711628, %.lr.ph1630.a ], [ %.120.i, %bb.dj ]
  %i.yk = add nuw i64 %.01629, 1
  %exitcond1652.not = icmp eq i64 %.01629, %i.bb
  br i1 %exitcond1652.not, label %._crit_edge1631.loopexit, label %.lr.ph1630.a, !llvm.loop !259

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %bb.dc, %bb.dd, %bb.de, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %.idx2014 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %.idx2014) #30
  %.idx2015 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %.idx2015) #30
  %.idx2016 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %.idx2016) #30
  %.idx2017 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %.idx2017) #30
  %.idx2018 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %.idx2018) #30
  %.idx2019 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %.idx2019) #30
  %.idx2020 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %.idx2020) #30
  %.idx2021 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %.idx2021) #30
  %.not.i.i.i680 = icmp eq ptr %.sroa.0930.0, null
  br i1 %.not.i.i.i680, label %_ZNSt6vectorIxSaIxEED2Ev.exit681, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0930.0, i64 noundef %13) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit681

_ZNSt6vectorIxSaIxEED2Ev.exit681:                 ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit, %bb.dk
  %.not.i.i.i682 = icmp eq ptr %.sroa.0963.0, null
  br i1 %.not.i.i.i682, label %_ZNSt6vectorIxSaIxEED2Ev.exit683, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit681
  %i.yl = ptrtoint ptr %.sroa.42.0 to i64
  %i.ym = ptrtoint ptr %.sroa.0963.0 to i64
  %i.yn = sub i64 %i.yl, %i.ym
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0963.0, i64 noundef %i.yn) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit683

_ZNSt6vectorIxSaIxEED2Ev.exit683:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit681, %bb.dl
  ret void

_ZNSt6vectorIxSaIxEED2Ev.exit685:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread
  %.pn5001320 = phi { ptr, i32 } [ %i.gy, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread ], [ %i.ir, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.idx2007 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %.idx2007) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit687

_ZNSt6vectorIxSaIxEED2Ev.exit687:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit685, %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread
  %.pn500.pn1358 = phi { ptr, i32 } [ %i.gx, %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread ], [ %.pn5001320, %_ZNSt6vectorIxSaIxEED2Ev.exit685 ]
  %.idx2008 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %.idx2008) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit689

_ZNSt6vectorIxSaIxEED2Ev.exit689:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit687, %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread
  %.pn500.pn.pn1390 = phi { ptr, i32 } [ %i.gw, %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread ], [ %.pn500.pn1358, %_ZNSt6vectorIxSaIxEED2Ev.exit687 ]
  %.idx2009 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %.idx2009) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit691

_ZNSt6vectorIxSaIxEED2Ev.exit691:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit689, %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread
  %.pn500.pn.pn.pn1416 = phi { ptr, i32 } [ %i.gv, %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread ], [ %.pn500.pn.pn1390, %_ZNSt6vectorIxSaIxEED2Ev.exit689 ]
  %.idx2010 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %.idx2010) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit693

_ZNSt6vectorIxSaIxEED2Ev.exit693:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit691, %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread
  %.pn500.pn.pn.pn.pn1436 = phi { ptr, i32 } [ %i.gu, %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread ], [ %.pn500.pn.pn.pn1416, %_ZNSt6vectorIxSaIxEED2Ev.exit691 ]
  %.idx2011 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %.idx2011) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit695

_ZNSt6vectorIxSaIxEED2Ev.exit695:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit693, %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread
  %.pn500.pn.pn.pn.pn.pn1450 = phi { ptr, i32 } [ %i.gt, %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread ], [ %.pn500.pn.pn.pn.pn1436, %_ZNSt6vectorIxSaIxEED2Ev.exit693 ]
  %.idx2012 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %.idx2012) #30
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit695, %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread
  %.pn500.pn.pn.pn.pn.pn.pn1458 = phi { ptr, i32 } [ %i.gs, %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread ], [ %.pn500.pn.pn.pn.pn.pn1450, %_ZNSt6vectorIxSaIxEED2Ev.exit695 ]
  %.idx2013 = shl nuw nsw i64 %i.ce, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %.idx2013) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit697

_ZNSt6vectorIxSaIxEED2Ev.exit697:                 ; preds = %bb.dm, %bb.ak
  %.pn500.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.ak ], [ %.pn500.pn.pn.pn.pn.pn.pn1458, %bb.dm ] ; 2 uses
  %i.yo = load ptr, ptr %0, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i698 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i.i698, label %_ZNSt6vectorIxSaIxEED2Ev.exit699, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit697
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !54
  %i.yr = ptrtoint ptr %i.yq to i64
  %i.ys = ptrtoint ptr %i.yo to i64
  %i.yt = sub i64 %i.yr, %i.ys
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef %i.yt) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit699

_ZNSt6vectorIxSaIxEED2Ev.exit699:                 ; preds = %bb.dn, %_ZNSt6vectorIxSaIxEED2Ev.exit697, %bb.aj
  %.pn500.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.aj ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit697 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn, %bb.dn ] ; 2 uses
  %.not.i.i.i700 = icmp eq ptr %.sroa.0930.0, null
  br i1 %.not.i.i.i700, label %_ZNSt6vectorIxSaIxEED2Ev.exit701, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit699
  %i.yu = ptrtoint ptr %.sroa.39.0 to i64
  %i.yv = ptrtoint ptr %.sroa.0930.0 to i64
  %i.yw = sub i64 %i.yu, %i.yv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0930.0, i64 noundef %i.yw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit701

_ZNSt6vectorIxSaIxEED2Ev.exit701:                 ; preds = %bb.do, %_ZNSt6vectorIxSaIxEED2Ev.exit699, %bb.w
  %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.w ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit699 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn, %bb.do ] ; 2 uses
  %.not.i.i.i702 = icmp eq ptr %.sroa.0963.0, null
  br i1 %.not.i.i.i702, label %_ZNSt6vectorIxSaIxEED2Ev.exit703, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit701
  %i.yx = ptrtoint ptr %.sroa.42.0 to i64
  %i.yy = ptrtoint ptr %.sroa.0963.0 to i64
  %i.yz = sub i64 %i.yx, %i.yy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0963.0, i64 noundef %i.yz) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit703

_ZNSt6vectorIxSaIxEED2Ev.exit703:                 ; preds = %bb.dp, %_ZNSt6vectorIxSaIxEED2Ev.exit701, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, %bb.q
  %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.pn.pn.pn.pn.pn.pn.pn1013, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit701 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dp ]
  resume { ptr, i32 } %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.dq:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6casadi16SparsityInternal12is_symmetricEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal12is_transposeERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret i1 %i.a
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !75   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !100
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !74
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !76
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !75
  store ptr %i.v, ptr %i.s, align 8, !tbaa !74
  store i64 0, ptr %i.ac, align 8, !tbaa !75
  store i8 0, ptr %i.v, align 8, !tbaa !76
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

end_hunk_1
begin_hunk_2_@_ZN6casadi16SparsityInternal8randpermExx:bb.a
  br label %bb.g

.lr.ph29:                                         ; preds = %bb.f, %.lr.ph29
  %.02327 = phi i64 [ %i.ah, %.lr.ph29 ], [ 0, %bb.f ] ; 3 uses
  %i.y = call i32 @rand_r(ptr noundef nonnull %i.a) #29
  %i.z = sext i32 %i.y to i64
  %i.aa = sub nuw nsw i64 %1, %.02327
  %i.ab = srem i64 %i.z, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !53
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %.02327 ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !43
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !43
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !43
  %i.ah = add nuw nsw i64 %.02327, 1              ; 2 uses
  %exitcond31.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond31.not, label %._crit_edge30, label %.lr.ph29, !llvm.loop !298

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge30, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal6dmpermERSt6vectorIxSaIxEES4_S4_S4_S4_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 14 uses
  %9 = alloca %"class.std::vector", align 8       ; 11 uses
  %10 = alloca %"class.std::vector", align 8      ; 8 uses
  %11 = alloca %"class.std::vector", align 8      ; 15 uses
  %12 = alloca %"class.std::vector", align 8      ; 16 uses
  %13 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %14 = alloca %"class.std::vector", align 8      ; 12 uses
  %15 = alloca %"class.std::vector", align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN6casadi8SparsityC1Ex(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %i.c, %i.j
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.l)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge unwind label %bb.t

._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge:    ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.c, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %i.o = phi ptr [ %.pre, %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge ], [ %i.b, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 3 uses
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.z = sub nuw i64 %i.q, %i.x
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.z)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit182_crit_edge unwind label %bb.t

._ZNSt6vectorIxSaIxEE6resizeEm.exit182_crit_edge: ; preds = %bb.e
  %.pre382 = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit182

bb.f:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.aa = icmp ult i64 %i.q, %i.x
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit182

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i179, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit182, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i180

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i180:     ; preds = %bb.g
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit182

_ZNSt6vectorIxSaIxEE6resizeEm.exit182:            ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit182_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i180, %bb.g, %bb.f
  %i.ac = phi ptr [ %.pre382, %._ZNSt6vectorIxSaIxEE6resizeEm.exit182_crit_edge ], [ %i.o, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i180 ], [ %i.o, %bb.g ], [ %i.o, %bb.f ] ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.ae = add nsw i64 %i.ad, 6                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 3 uses
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit182
  %i.an = sub nuw i64 %i.ae, %i.al
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.an)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit186_crit_edge unwind label %bb.t

._ZNSt6vectorIxSaIxEE6resizeEm.exit186_crit_edge: ; preds = %bb.h
  %.pre383 = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit186

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit182
  %i.ao = icmp ult i64 %i.ae, %i.al
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit186

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i183, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit186, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i184

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i184:     ; preds = %bb.j
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit186

_ZNSt6vectorIxSaIxEE6resizeEm.exit186:            ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit186_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i184, %bb.j, %bb.i
  %i.aq = phi ptr [ %.pre383, %._ZNSt6vectorIxSaIxEE6resizeEm.exit186_crit_edge ], [ %i.ac, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i184 ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = add nsw i64 %i.as, 6                    ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 3 uses
  %i.bb = icmp ugt i64 %i.at, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit186
  %i.bc = sub nuw i64 %i.at, %i.ba
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bc)
          to label %_ZNSt6vectorIxSaIxEE6resizeEm.exit190 unwind label %bb.t

bb.l:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit186
  %i.bd = icmp ult i64 %i.at, %i.ba
  br i1 %i.bd, label %bb.m, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit190

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  %.not.i.i187 = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i187, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit190, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i188

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i188:     ; preds = %bb.m
  store ptr %i.be, ptr %i.au, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit190

_ZNSt6vectorIxSaIxEE6resizeEm.exit190:            ; preds = %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i188, %bb.m, %bb.l, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !55 ; 4 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !53    ; 5 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 5
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit190
  %i.bn = sub nuw nsw i64 5, %i.bl
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bn)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit194_crit_edge unwind label %bb.t

._ZNSt6vectorIxSaIxEE6resizeEm.exit194_crit_edge: ; preds = %bb.n
  %.pre384 = load ptr, ptr %5, align 8, !tbaa !69
  %.pre385 = load ptr, ptr %i.bf, align 8, !tbaa !69
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit194

bb.o:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit190
  %.not340 = icmp eq i64 %i.bk, 40
  br i1 %.not340, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit194, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  %.not.i.i191 = icmp eq ptr %i.bg, %i.bo
  br i1 %.not.i.i191, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit194, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit194.thread

_ZNSt6vectorIxSaIxEE6resizeEm.exit194.thread:     ; preds = %bb.p
  store ptr %i.bo, ptr %i.bf, align 8, !tbaa !55
  br label %.lr.ph.i.i.i.i.preheader

_ZNSt6vectorIxSaIxEE6resizeEm.exit194:            ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit194_crit_edge, %bb.p, %bb.o
  %16 = phi ptr [ %.pre385, %._ZNSt6vectorIxSaIxEE6resizeEm.exit194_crit_edge ], [ %i.bg, %bb.o ], [ %i.bg, %bb.p ] ; 2 uses
  %17 = phi ptr [ %.pre384, %._ZNSt6vectorIxSaIxEE6resizeEm.exit194_crit_edge ], [ %i.bh, %bb.o ], [ %i.bh, %bb.p ] ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %17, %16
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit194.thread, %_ZNSt6vectorIxSaIxEE6resizeEm.exit194
  %18 = phi ptr [ %i.bh, %_ZNSt6vectorIxSaIxEE6resizeEm.exit194.thread ], [ %17, %_ZNSt6vectorIxSaIxEE6resizeEm.exit194 ] ; 2 uses
  %19 = phi ptr [ %i.bo, %_ZNSt6vectorIxSaIxEE6resizeEm.exit194.thread ], [ %16, %_ZNSt6vectorIxSaIxEE6resizeEm.exit194 ]
  %i.bp = ptrtoaddr ptr %19 to i64
  %i.bq = ptrtoaddr ptr %18 to i64
  %i.br = add i64 %i.bp, -8
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = and i64 %i.bs, -8
  %i.bu = add i64 %i.bt, 8
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %i.bu, i1 false), !tbaa !43
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIxSaIxEE6resizeEm.exit194
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !55 ; 4 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !53    ; 5 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = ashr exact i64 %i.ca, 3                 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 5
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit
  %i.cd = sub nuw nsw i64 5, %i.cb
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.cd)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit198_crit_edge unwind label %bb.t

._ZNSt6vectorIxSaIxEE6resizeEm.exit198_crit_edge: ; preds = %bb.q
  %.pre386 = load ptr, ptr %6, align 8, !tbaa !69
  %.pre387 = load ptr, ptr %i.bv, align 8, !tbaa !69
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit198

bb.r:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit
  %.not341 = icmp eq i64 %i.ca, 40
  br i1 %.not341, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit198, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.bw, %i.ce
  br i1 %.not.i.i195, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit198, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit198.thread

_ZNSt6vectorIxSaIxEE6resizeEm.exit198.thread:     ; preds = %bb.s
  store ptr %i.ce, ptr %i.bv, align 8, !tbaa !55
  br label %.lr.ph.i.i.i.i200.preheader

_ZNSt6vectorIxSaIxEE6resizeEm.exit198:            ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit198_crit_edge, %bb.s, %bb.r
  %20 = phi ptr [ %.pre387, %._ZNSt6vectorIxSaIxEE6resizeEm.exit198_crit_edge ], [ %i.bw, %bb.r ], [ %i.bw, %bb.s ] ; 2 uses
  %21 = phi ptr [ %.pre386, %._ZNSt6vectorIxSaIxEE6resizeEm.exit198_crit_edge ], [ %i.bx, %bb.r ], [ %i.bx, %bb.s ] ; 2 uses
  %.not5.i.i.i.i199 = icmp eq ptr %21, %20
  br i1 %.not5.i.i.i.i199, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit203, label %.lr.ph.i.i.i.i200.preheader

.lr.ph.i.i.i.i200.preheader:                      ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit198.thread, %_ZNSt6vectorIxSaIxEE6resizeEm.exit198
  %22 = phi ptr [ %i.bx, %_ZNSt6vectorIxSaIxEE6resizeEm.exit198.thread ], [ %21, %_ZNSt6vectorIxSaIxEE6resizeEm.exit198 ] ; 2 uses
  %23 = phi ptr [ %i.ce, %_ZNSt6vectorIxSaIxEE6resizeEm.exit198.thread ], [ %20, %_ZNSt6vectorIxSaIxEE6resizeEm.exit198 ]
  %i.cf = ptrtoaddr ptr %23 to i64
  %i.cg = ptrtoaddr ptr %22 to i64
  %i.ch = add i64 %i.cf, -8
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = and i64 %i.ci, -8
  %i.ck = add i64 %i.cj, 8
  call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %i.ck, i1 false), !tbaa !43
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit203

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit203: ; preds = %.lr.ph.i.i.i.i200.preheader, %_ZNSt6vectorIxSaIxEE6resizeEm.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZNK6casadi16SparsityInternal8maxtransERSt6vectorIxSaIxEES4_RNS_8SparsityEx(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %.preheader350 unwind label %bb.bg

.preheader350:                                    ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEiEvT_S7_RKT0_.exit203
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph, label %.preheader349

.lr.ph:                                           ; preds = %.preheader350
  %i.cp = load ptr, ptr %4, align 8, !tbaa !53
  br label %bb.u

.preheader349:                                    ; preds = %bb.u, %.preheader350
  %i.cq = phi i64 [ %i.cn, %.preheader350 ], [ %i.cx, %bb.u ]
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph356, label %._crit_edge

.lr.ph356:                                        ; preds = %.preheader349
  %i.ct = load ptr, ptr %3, align 8, !tbaa !53
  br label %bb.v

bb.t:                                             ; preds = %bb.q, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.0154353 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.u ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.0154353
  store i64 -1, ptr %i.cv, align 8, !tbaa !43
  %i.cw = add nuw nsw i64 %.0154353, 1            ; 2 uses
  %i.cx = load i64, ptr %i.cm, align 8, !tbaa !43 ; 2 uses
  %i.cy = icmp slt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.u, label %.preheader349, !llvm.loop !299

._crit_edge.loopexit:                             ; preds = %bb.v
  %.pre388 = load i64, ptr %i.cm, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader349
  %i.cz = phi i64 [ %.pre388, %._crit_edge.loopexit ], [ %i.cq, %.preheader349 ]
  invoke void @_ZNK6casadi16SparsityInternal3bfsExRSt6vectorIxSaIxEES4_S4_RKS3_S6_x(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1)
          to label %bb.w unwind label %bb.bg

bb.v:                                             ; preds = %.lr.ph356, %bb.v
  %.0153355 = phi i64 [ 0, %.lr.ph356 ], [ %i.db, %bb.v ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.0153355
  store i64 -1, ptr %i.da, align 8, !tbaa !43
  %i.db = add nuw nsw i64 %.0153355, 1            ; 2 uses
  %i.dc = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.dd = icmp slt i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.v, label %._crit_edge.loopexit, !llvm.loop !300

bb.w:                                             ; preds = %._crit_edge
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.df = load i64, ptr %i.de, align 8, !tbaa !43
  invoke void @_ZNK6casadi16SparsityInternal3bfsExRSt6vectorIxSaIxEES4_S4_RKS3_S6_x(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 3)
          to label %bb.x unwind label %bb.bg

bb.x:                                             ; preds = %bb.w
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !43 ; 5 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !53    ; 5 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !43 ; 3 uses
  %i.dl = icmp sgt i64 %i.di, 0
  br i1 %i.dl, label %.lr.ph.i, label %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit

.lr.ph.i:                                         ; preds = %bb.x
  %i.dm = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  %i.dn = load ptr, ptr %2, align 8               ; 3 uses
  %xtraiter = and i64 %i.di, 1
  %i.do = icmp eq i64 %i.di, 1
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.di, 9223372036854775806
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.i.new
  %.014.i = phi i64 [ %i.dk, %.lr.ph.i.new ], [ %.1.i.1, %bb.ac ] ; 3 uses
  %.01213.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ea, %bb.ac ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ac ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.01213.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !43
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = add nsw i64 %.014.i, 1
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.014.i
  store i64 %.01213.i, ptr %i.dt, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.i = phi i64 [ %i.ds, %bb.z ], [ %.014.i, %bb.y ] ; 3 uses
  %i.du = or disjoint i64 %.01213.i, 1            ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !43
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = add nsw i64 %.1.i, 1
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.1.i
  store i64 %i.du, ptr %i.dz, align 8, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i.1 = phi i64 [ %i.dy, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %i.ea = add nuw nsw i64 %.01213.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !12

_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ %i.dk, %.lr.ph.i ], [ %.1.i.1, %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01213.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ea, %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod629 = trunc i64 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod629)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.01213.i.epil.init
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !43
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ad, label %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit

bb.ad:                                            ; preds = %.epil.preheader
  %i.ee = add nsw i64 %.014.i.epil.init, 1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.014.i.epil.init
  store i64 %.01213.i.epil.init, ptr %i.ef, align 8, !tbaa !43
  br label %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit

_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit: ; preds = %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa, %bb.ad, %.epil.preheader, %bb.x
  %.0.lcssa.i = phi i64 [ %i.dk, %bb.x ], [ %.1.i.1, %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit.loopexit.unr-lcssa ], [ %i.ee, %bb.ad ], [ %.014.i.epil.init, %.epil.preheader ] ; 4 uses
  %i.eg = getelementptr i8, ptr %i.dj, i64 8
  store i64 %.0.lcssa.i, ptr %i.eg, align 8, !tbaa !43
  %i.eh = load i64, ptr %i.dh, align 8, !tbaa !43 ; 5 uses
  %i.ei = load ptr, ptr %5, align 8, !tbaa !53    ; 5 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !43 ; 3 uses
  %i.el = icmp sgt i64 %i.eh, 0
  br i1 %i.el, label %.lr.ph.i204, label %_ZN6casadi16SparsityInternal7matchedExRKSt6vectorIxSaIxEES5_RS3_S6_S6_S6_xx.exit

.lr.ph.i204:                                      ; preds = %_ZN6casadi16SparsityInternal9unmatchedExRKSt6vectorIxSaIxEERS3_S6_x.exit
  %i.em = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  %i.en = load ptr, ptr %8, align 8               ; 3 uses
  %i.eo = load ptr, ptr %1, align 8               ; 3 uses
  %i.ep = load ptr, ptr %2, align 8               ; 3 uses
  %xtraiter631 = and i64 %i.eh, 1
  %i.eq = icmp eq i64 %i.eh, 1
  br i1 %i.eq, label %.epil.preheader630, label %.lr.ph.i204.new

.lr.ph.i204.new:                                  ; preds = %.lr.ph.i204
  %unroll_iter636 = and i64 %i.eh, 9223372036854775806
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %.lr.ph.i204.new
  %.027.i = phi i64 [ 0, %.lr.ph.i204.new ], [ %i.fi, %bb.ai ] ; 5 uses
  %.02226.i = phi i64 [ %i.ek, %.lr.ph.i204.new ], [ %.1.i205.1, %bb.ai ] ; 3 uses
  %.02325.i = phi i64 [ %.0.lcssa.i, %.lr.ph.i204.new ], [ %.124.i.1, %bb.ai ] ; 3 uses
  %niter637 = phi i64 [ 0, %.lr.ph.i204.new ], [ %niter637.next.1, %bb.ai ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.027.i
  %i.es = load i64, ptr %i.er, align 8, !tbaa !43
  %.not.i = icmp eq i64 %i.es, 1
  br i1 %.not.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.027.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !43
  %i.ev = add nsw i64 %.02226.i, 1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.02226.i
  store i64 %i.eu, ptr %i.ew, align 8, !tbaa !43
  %i.ex = add nsw i64 %.02325.i, 1
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.02325.i
  store i64 %.027.i, ptr %i.ey, align 8, !tbaa !43
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.124.i = phi i64 [ %.02325.i, %bb.ae ], [ %i.ex, %bb.af ] ; 3 uses
  %.1.i205 = phi i64 [ %.02226.i, %bb.ae ], [ %i.ev, %bb.af ] ; 3 uses
end_hunk_2
