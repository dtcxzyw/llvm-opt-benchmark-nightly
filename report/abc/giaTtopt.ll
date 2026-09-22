Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTtopt?download=true
inline.NumInlined: 1562
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5Ttopt10TruthTable7SiftReoEv:bb.a
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 0) #22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !94   ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp slt i32 %i.k, 0
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 11 uses
  store i32 0, ptr %i.o, align 4, !tbaa !80
  %i.p = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.q = add nsw i64 %i.l, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.c ], [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %.pr = load i32, ptr %i.j, align 8, !tbaa !94   ; 5 uses
  %i.t = icmp sgt i32 %.pr, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %wide.trip.count = zext nneg i32 %.pr to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.pr, 8
  br i1 %min.iters.check, label %.lr.ph.preheader209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !80
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit208, label %.lr.ph.preheader209

.lr.ph.preheader209:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader209, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader209 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit208, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.z = icmp slt i32 %.pr, 0
  br i1 %i.z, label %bb.d, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

.loopexit208:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = zext nneg i32 %.pr to i64               ; 3 uses
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #26 ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !80
  %i.ae = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.loopexit208
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %.idx.i.i.i.i.i.i.i65 = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i65, i1 false), !tbaa !80
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %._crit_edge, %.loopexit208, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.068.0.ph = phi ptr [ null, %._crit_edge ], [ %i.ac, %.loopexit208 ], [ %i.ac, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 6 uses
  %.sroa.10.0.ph = phi ptr [ null, %._crit_edge ], [ %i.ad, %.loopexit208 ], [ %i.ad, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %.pr164 = load i32, ptr %i.j, align 8, !tbaa !94 ; 4 uses
  %i.ah = icmp sgt i32 %.pr164, 0
  br i1 %i.ah, label %.lr.ph87, label %.preheader

.lr.ph87:                                         ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %wide.trip.count119 = zext nneg i32 %.pr164 to i64
  br label %bb.e

.preheader82:                                     ; preds = %bb.e
  %.not207 = icmp eq i32 %.pr164, 1
  br i1 %.not207, label %.preheader, label %.preheader81

bb.e:                                             ; preds = %.lr.ph87, %bb.e
  %indvars.iv116 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next117, %bb.e ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv116
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !80
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !87
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !87
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = sub nsw i64 %i.ay, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.ph, i64 %indvars.iv116
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !80
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %.preheader82, label %bb.e, !llvm.loop !259

.preheader81:                                     ; preds = %.preheader82, %.critedge
  %.25490 = phi i32 [ %i.ca, %.critedge ], [ 1, %.preheader82 ] ; 3 uses
  %.phi.trans.insert = zext nneg i32 %.25490 to i64
  %.phi.trans.insert122 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert122, align 4, !tbaa !80 ; 2 uses
  %.phi.trans.insert123 = sext i32 %.pre to i64
  %.phi.trans.insert124 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.ph, i64 %.phi.trans.insert123
  %.pre125 = load i32, ptr %.phi.trans.insert124, align 4, !tbaa !80
  br label %bb.f

.preheader:                                       ; preds = %.critedge, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, %.preheader82
  %i.bk = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bl = ptrtoint ptr %i.o to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %.not114 = icmp eq ptr %.0.i.i.i.i.i.ph, %i.o
  br i1 %.not114, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.h

bb.f:                                             ; preds = %.preheader81, %bb.g
  %.05189 = phi i32 [ %.25490, %.preheader81 ], [ %i.bp, %bb.g ] ; 3 uses
  %i.bp = add nsw i32 %.05189, -1                 ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0.ph, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80
  %i.bw = icmp ult i32 %i.bv, %.pre125
  br i1 %i.bw, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bx = zext nneg i32 %.05189 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bx
  store i32 %i.bs, ptr %i.by, align 4, !tbaa !80
  store i32 %.pre, ptr %i.br, align 4, !tbaa !80
  %i.bz = icmp sgt i32 %.05189, 1
  br i1 %i.bz, label %bb.f, label %.critedge, !llvm.loop !260

.critedge:                                        ; preds = %bb.g, %bb.f
  %i.ca = add nuw nsw i32 %.25490, 1              ; 2 uses
  %exitcond121.not = icmp eq i32 %i.ca, %.pr164
  br i1 %exitcond121.not, label %.preheader, label %.preheader81, !llvm.loop !261

bb.h:                                             ; preds = %.lr.ph110, %.loopexit
  %i.cb = phi i64 [ 0, %.lr.ph110 ], [ %i.ee, %.loopexit ]
  %.049109 = phi i32 [ 0, %.lr.ph110 ], [ %i.ed, %.loopexit ]
  %.050108 = phi i1 [ true, %.lr.ph110 ], [ %2, %.loopexit ] ; 4 uses
  %.055107 = phi i32 [ %i.d, %.lr.ph110 ], [ %.5, %.loopexit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !80
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !80 ; 5 uses
  %i.ci = load i32, ptr %i.j, align 8, !tbaa !94
  %i.cj = add nsw i32 %i.ci, -1
  %i.ck = icmp slt i32 %i.ch, %i.cj
  br i1 %i.ck, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.h
  %i.cl = zext i1 %.050108 to i32                 ; 2 uses
  br label %bb.i

._crit_edge96:                                    ; preds = %bb.k, %bb.h
  %.156.lcssa = phi i32 [ %.055107, %bb.h ], [ %.257, %bb.k ] ; 3 uses
  %.048.lcssa = phi i8 [ 0, %bb.h ], [ %.1, %bb.k ] ; 3 uses
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %.lr.ph95, %bb.k
  %.04793 = phi i32 [ %i.ch, %.lr.ph95 ], [ %i.cw, %bb.k ] ; 2 uses
  %.04892 = phi i8 [ 0, %.lr.ph95 ], [ %.1, %bb.k ]
  %.15691 = phi i32 [ %.055107, %.lr.ph95 ], [ %.257, %bb.k ] ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %.04793) #22 ; 2 uses
  %i.cq = icmp sgt i32 %.15691, %i.cp
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cr = load ptr, ptr %0, align 8, !tbaa !50
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.cl) #22
  %i.ct = load ptr, ptr %0, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.cl) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.257 = phi i32 [ %i.cp, %bb.j ], [ %.15691, %bb.i ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.j ], [ %.04892, %bb.i ]   ; 2 uses
  %i.cw = add nsw i32 %.04793, 1                  ; 2 uses
  %i.cx = load i32, ptr %i.j, align 8, !tbaa !94
  %i.cy = add nsw i32 %i.cx, -1
  %i.cz = icmp slt i32 %i.cw, %i.cy
  br i1 %i.cz, label %bb.i, label %._crit_edge96, !llvm.loop !262

bb.l:                                             ; preds = %._crit_edge96
  %i.da = xor i1 %.050108, true
  %i.db = zext i1 %i.da to i32                    ; 2 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.db) #22
  %i.df = load ptr, ptr %0, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.db) #22
  %i.di = icmp sgt i32 %i.ch, 0
  br i1 %i.di, label %.lr.ph104, label %.loopexit

.lr.ph104:                                        ; preds = %bb.l
  %i.dj = zext i1 %.050108 to i32                 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph104, %bb.o
  %.0102.in = phi i32 [ %i.ch, %.lr.ph104 ], [ %.0102, %bb.o ] ; 2 uses
  %.2101 = phi i8 [ %.048.lcssa, %.lr.ph104 ], [ %.3, %bb.o ]
  %.358100 = phi i32 [ %.156.lcssa, %.lr.ph104 ], [ %.459, %bb.o ] ; 2 uses
  %.0102 = add nsw i32 %.0102.in, -1              ; 2 uses
  %i.dk = load ptr, ptr %0, align 8, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = tail call noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %.0102) #22 ; 2 uses
  %i.do = icmp sgt i32 %.358100, %i.dn
  br i1 %i.do, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dp = load ptr, ptr %0, align 8, !tbaa !50
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.dj) #22
  %i.dr = load ptr, ptr %0, align 8, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.dj) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.459 = phi i32 [ %i.dn, %bb.n ], [ %.358100, %bb.m ] ; 2 uses
  %.3 = phi i8 [ 1, %bb.n ], [ %.2101, %bb.m ]    ; 2 uses
  %i.du = icmp samesign ugt i32 %.0102.in, 1
  br i1 %i.du, label %bb.m, label %.loopexit, !llvm.loop !263

.loopexit:                                        ; preds = %bb.o, %bb.l, %._crit_edge96
  %.5 = phi i32 [ %.156.lcssa, %._crit_edge96 ], [ %.156.lcssa, %bb.l ], [ %.459, %bb.o ] ; 2 uses
  %.4 = phi i8 [ %.048.lcssa, %._crit_edge96 ], [ %.048.lcssa, %bb.l ], [ %.3, %bb.o ]
  %1 = zext i1 %.050108 to i8
  %2 = icmp ne i8 %.4, %1                         ; 2 uses
  %i.dv = xor i1 %2, true
  %i.dw = zext i1 %i.dv to i32                    ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.dw) #22
  %i.ea = load ptr, ptr %0, align 8, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %i.dw) #22
  %i.ed = add i32 %.049109, 1                     ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp ugt i64 %i.bn, %i.ee
  br i1 %i.ef, label %bb.h, label %._crit_edge111, !llvm.loop !264

._crit_edge111:                                   ; preds = %.loopexit, %.preheader
  %.055.lcssa = phi i32 [ %i.d, %.preheader ], [ %.5, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %.sroa.068.0.ph, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge111
  %i.eg = ptrtoint ptr %.sroa.10.0.ph to i64
  %i.eh = ptrtoint ptr %.sroa.068.0.ph to i64
  %i.ei = sub i64 %i.eg, %i.eh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0.ph, i64 noundef %i.ei) #27
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge111, %bb.p
  %.idx = shl nuw nsw i64 %i.l, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %.idx) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.q
  %.055.lcssa198204 = phi i32 [ %.055.lcssa, %bb.q ], [ %i.d, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  ret i32 %.055.lcssa198204
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5Ttopt10TruthTable17BDDGenerateAigRecEP10Gia_Man_t_RKSt6vectorIiSaIiEERS3_IS5_SaIS5_EEii(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5Ttopt10TruthTable7BDDFindEii(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %4, i32 noundef %5) ; 5 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %5 to i64
  %i.d = load ptr, ptr %3, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = lshr i32 %i.a, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = and i32 %i.a, 1
  %i.l = xor i32 %i.j, %i.k
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit70

bb.c:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i32 %i.a, -3
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.a, 2
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit70

bb.e:                                             ; preds = %bb.c
  %i.o = shl i32 %4, 1                            ; 5 uses
  %i.p = add nsw i32 %5, 1                        ; 3 uses
  %i.q = tail call noundef i32 @_ZN5Ttopt10TruthTable17BDDGenerateAigRecEP10Gia_Man_t_RKSt6vectorIiSaIiEERS3_IS5_SaIS5_EEii(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.o, i32 noundef %i.p) ; 5 uses
  %i.r = or disjoint i32 %i.o, 1                  ; 4 uses
  %i.s = tail call noundef i32 @_ZN5Ttopt10TruthTable17BDDGenerateAigRecEP10Gia_Man_t_RKSt6vectorIiSaIiEERS3_IS5_SaIS5_EEii(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.r, i32 noundef %i.p) ; 4 uses
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !94
  %i.w = sub nsw i32 %i.v, %i.p                   ; 6 uses
  %i.x = icmp sgt i32 %i.w, 6
  br i1 %i.x, label %bb.g, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.w, -6                     ; 4 uses
  %.not25.not26.not.i = icmp eq i32 %i.y, 31
  br i1 %.not25.not26.not.i, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.z = shl i32 %i.o, %i.y
  %i.aa = shl nuw i32 1, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 2 uses
  %i.ad = shl i32 %i.r, %i.y
  %i.ae = sext i32 %i.z to i64
  %i.af = sext i32 %i.ad to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %invariant.gep32.i = getelementptr [8 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit.thread, label %bb.i, !llvm.loop !265

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ag = load i64, ptr %gep.i, align 8, !tbaa !82
  %gep33.i = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.i
  %i.ah = load i64, ptr %gep33.i, align 8, !tbaa !82
  %i.ai = xor i64 %i.ah, -1
  %i.aj = and i64 %i.ag, %i.ai
  %.not24.i = icmp eq i64 %i.aj, 0
  br i1 %.not24.i, label %bb.h, label %.lr.ph.i50

_ZN5Ttopt10TruthTable5ImplyEiii.exit:             ; preds = %bb.f
  %i.ak = sub nsw i32 6, %i.w                     ; 3 uses
  %i.al = ashr i32 %i.o, %i.ak
  %i.am = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.an = srem i32 %i.o, %i.am
  %i.ao = shl i32 %i.an, %i.w
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = sext i32 %i.al to i64
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !82
  %i.au = zext nneg i32 %i.ao to i64
  %i.av = lshr i64 %i.at, %i.au                   ; 2 uses
  %i.aw = sext i32 %i.w to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !82 ; 2 uses
  %i.az = ashr i32 %i.r, %i.ak
  %i.ba = srem i32 %i.r, %i.am
  %i.bb = shl i32 %i.ba, %i.w
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !82
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = lshr i64 %i.be, %i.bf                   ; 2 uses
  %i.bh = xor i64 %i.bg, -1
  %i.bi = and i64 %i.ay, %i.bh
  %i.bj = and i64 %i.bi, %i.av
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit.thread, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit61

_ZN5Ttopt10TruthTable5ImplyEiii.exit.thread:      ; preds = %bb.h, %bb.g, %_ZN5Ttopt10TruthTable5ImplyEiii.exit
  %i.bk = sext i32 %5 to i64                      ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !87
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !80
  %i.bo = tail call i32 @Gia_ManHashAnd(ptr noundef %1, i32 noundef %i.bn, i32 noundef %i.s) #22
  %i.bp = tail call i32 @Gia_ManHashOr(ptr noundef %1, i32 noundef %i.bo, i32 noundef %i.q) #22
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i50
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i59, %wide.trip.count.i
  br i1 %exitcond.not.i60, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread, label %.lr.ph.i50, !llvm.loop !265

.lr.ph.i50:                                       ; preds = %bb.i, %bb.j
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i59, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %gep.i56 = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.i55
  %i.bq = load i64, ptr %gep.i56, align 8, !tbaa !82
  %gep33.i57 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i55
  %i.br = load i64, ptr %gep33.i57, align 8, !tbaa !82
  %i.bs = xor i64 %i.br, -1
  %i.bt = and i64 %i.bq, %i.bs
  %.not24.i58 = icmp eq i64 %i.bt, 0
  br i1 %.not24.i58, label %bb.j, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread83

_ZN5Ttopt10TruthTable5ImplyEiii.exit61:           ; preds = %_ZN5Ttopt10TruthTable5ImplyEiii.exit
  %i.bu = xor i64 %i.av, -1
  %i.bv = and i64 %i.ay, %i.bu
  %i.bw = and i64 %i.bv, %i.bg
  %.not.i47 = icmp eq i64 %i.bw, 0
  br i1 %.not.i47, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread, label %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread83

_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread:    ; preds = %bb.j, %_ZN5Ttopt10TruthTable5ImplyEiii.exit61
  %i.bx = sext i32 %5 to i64                      ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !80
  %i.cb = xor i32 %i.ca, 1
  %i.cc = tail call i32 @Gia_ManHashAnd(ptr noundef %1, i32 noundef %i.cb, i32 noundef %i.q) #22
  %i.cd = tail call i32 @Gia_ManHashOr(ptr noundef %1, i32 noundef %i.cc, i32 noundef %i.s) #22
  br label %bb.k

_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread83:  ; preds = %.lr.ph.i50, %_ZN5Ttopt10TruthTable5ImplyEiii.exit61
  %i.ce = sext i32 %5 to i64                      ; 2 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !87
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !80
  %i.ci = tail call i32 @Gia_ManHashMux(ptr noundef %1, i32 noundef %i.ch, i32 noundef %i.s, i32 noundef %i.q) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread, %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread83, %_ZN5Ttopt10TruthTable5ImplyEiii.exit.thread
  %.pre-phi = phi i64 [ %i.bx, %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread ], [ %i.ce, %_ZN5Ttopt10TruthTable5ImplyEiii.exit61.thread83 ], [ %i.bk, %_ZN5Ttopt10TruthTable5ImplyEiii.exit.thread ] ; 2 uses
end_hunk_0
