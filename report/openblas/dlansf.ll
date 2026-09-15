Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlansf?download=true
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@dlansf_:bb.a
  %.pre1939 = load double, ptr %i.c, align 8
  %spec.select2222 = select i1 %.not985, double %.41005, double %.pre1939
  br label %._crit_edge1938

._crit_edge1938:                                  ; preds = %bb.l, %.lr.ph
  %i.bg = phi i32 [ %.pre, %bb.l ], [ %i.av, %.lr.ph ] ; 2 uses
  %.5 = phi double [ %spec.select2222, %bb.l ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bh = add nuw nsw i32 %.17951004, 1
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !104
  %.not984.not = icmp slt i32 %.17951004, %i.bi
  br i1 %.not984.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %._crit_edge1938
  %.pre1940 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph1009
  %i.bj = phi i32 [ %i.as, %.lr.ph1009 ], [ %.pre1940, %._crit_edge.loopexit ] ; 2 uses
  %i.bk = phi i32 [ %.pre1937, %.lr.ph1009 ], [ %i.bg, %._crit_edge.loopexit ] ; 2 uses
  %.4.lcssa = phi double [ %.31007, %.lr.ph1009 ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1                    ; 2 uses
  store i32 %i.bl, ptr %i.d, align 4, !tbaa !104
  %.not983.not = icmp slt i32 %i.bk, %i.bj
  br i1 %.not983.not, label %.lr.ph1009, label %.loopexit, !llvm.loop !11

bb.m:                                             ; preds = %bb.g
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.v, -1                    ; 2 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !104
  store i32 0, ptr %i.d, align 4, !tbaa !104
  %.not9791042 = icmp slt i32 %i.t, 1
  br i1 %.not9791042, label %.loopexit, label %.lr.ph1045

.lr.ph1045:                                       ; preds = %bb.n, %._crit_edge1040
  %i.bn = phi i32 [ %i.cd, %._crit_edge1040 ], [ %i.bm, %bb.n ]
  %.pre1952 = phi i32 [ %i.cf, %._crit_edge1040 ], [ 0, %bb.n ] ; 2 uses
  %.61043 = phi double [ %.7.lcssa, %._crit_edge1040 ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.bo = load i32, ptr %3, align 4, !tbaa !104   ; 2 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !104
  %.not9801035 = icmp slt i32 %i.bo, 0
  br i1 %.not9801035, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.lr.ph1045, %._crit_edge1953
  %i.bp = phi i32 [ %i.ca, %._crit_edge1953 ], [ %.pre1952, %.lr.ph1045 ] ; 2 uses
  %.71037 = phi double [ %.8, %._crit_edge1953 ], [ %.61043, %.lr.ph1045 ] ; 2 uses
  %.27961036 = phi i32 [ %i.cb, %._crit_edge1953 ], [ 0, %.lr.ph1045 ] ; 3 uses
  %i.bq = mul nsw i32 %i.bp, %.0784
  %i.br = add nsw i32 %i.bq, %.27961036
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !106 ; 3 uses
  %i.bv = fcmp oge double %i.bu, 0.000000e+00
  %i.bw = fneg double %i.bu
  %i.bx = select i1 %i.bv, double %i.bu, double %i.bw ; 3 uses
  store double %i.bx, ptr %i.c, align 8, !tbaa !106
  %i.by = fcmp olt double %.71037, %i.bx
  br i1 %i.by, label %._crit_edge1953, label %bb.o

bb.o:                                             ; preds = %.lr.ph1039
  %i.bz = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not981 = icmp eq i32 %i.bz, 0
  %.pre1951.a = load i32, ptr %i.d, align 4, !tbaa !104
  %.pre1954.a = load double, ptr %i.c, align 8
  %spec.select2223 = select i1 %.not981, double %.71037, double %.pre1954.a
  br label %._crit_edge1953

._crit_edge1953:                                  ; preds = %bb.o, %.lr.ph1039
  %i.ca = phi i32 [ %.pre1951.a, %bb.o ], [ %i.bp, %.lr.ph1039 ] ; 2 uses
  %.8 = phi double [ %spec.select2223, %bb.o ], [ %i.bx, %.lr.ph1039 ] ; 2 uses
  %i.cb = add nuw nsw i32 %.27961036, 1
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !104
  %.not980.not = icmp slt i32 %.27961036, %i.cc
  br i1 %.not980.not, label %.lr.ph1039, label %._crit_edge1040.loopexit, !llvm.loop !12

._crit_edge1040.loopexit:                         ; preds = %._crit_edge1953
  %.pre1955 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge1040

._crit_edge1040:                                  ; preds = %._crit_edge1040.loopexit, %.lr.ph1045
  %i.cd = phi i32 [ %i.bn, %.lr.ph1045 ], [ %.pre1955, %._crit_edge1040.loopexit ] ; 2 uses
  %i.ce = phi i32 [ %.pre1952, %.lr.ph1045 ], [ %i.ca, %._crit_edge1040.loopexit ] ; 2 uses
  %.7.lcssa = phi double [ %.61043, %.lr.ph1045 ], [ %.8, %._crit_edge1040.loopexit ] ; 2 uses
  %i.cf = add nsw i32 %i.ce, 1                    ; 2 uses
  store i32 %i.cf, ptr %i.d, align 4, !tbaa !104
  %.not979.not = icmp slt i32 %i.ce, %i.cd
  br i1 %.not979.not, label %.lr.ph1045, label %.loopexit, !llvm.loop !13

bb.p:                                             ; preds = %bb.m
  store i32 %i.t, ptr %i.a, align 4, !tbaa !104
  store i32 0, ptr %i.d, align 4, !tbaa !104
  %.not9751030 = icmp slt i32 %i.t, 0
  br i1 %.not9751030, label %.loopexit, label %.lr.ph1033

.lr.ph1033:                                       ; preds = %bb.p, %._crit_edge1028
  %i.cg = phi i32 [ %i.cx, %._crit_edge1028 ], [ %i.t, %bb.p ]
  %.pre1947 = phi i32 [ %i.cz, %._crit_edge1028 ], [ 0, %bb.p ] ; 2 uses
  %.91031 = phi double [ %.10.lcssa, %._crit_edge1028 ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !104 ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.b, align 4, !tbaa !104
  %.not9761023 = icmp slt i32 %i.ch, 1
  br i1 %.not9761023, label %._crit_edge1028, label %.lr.ph1027

.lr.ph1027:                                       ; preds = %.lr.ph1033, %._crit_edge1948
  %i.cj = phi i32 [ %i.cu, %._crit_edge1948 ], [ %.pre1947, %.lr.ph1033 ] ; 2 uses
  %.101025 = phi double [ %.11, %._crit_edge1948 ], [ %.91031, %.lr.ph1033 ] ; 2 uses
  %.37971024 = phi i32 [ %i.cv, %._crit_edge1948 ], [ 0, %.lr.ph1033 ] ; 3 uses
  %i.ck = mul nsw i32 %i.cj, %.0784
  %i.cl = add nsw i32 %i.ck, %.37971024
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !106 ; 3 uses
  %i.cp = fcmp oge double %i.co, 0.000000e+00
  %i.cq = fneg double %i.co
  %i.cr = select i1 %i.cp, double %i.co, double %i.cq ; 3 uses
  store double %i.cr, ptr %i.c, align 8, !tbaa !106
  %i.cs = fcmp olt double %.101025, %i.cr
  br i1 %i.cs, label %._crit_edge1948, label %bb.q

bb.q:                                             ; preds = %.lr.ph1027
  %i.ct = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not977 = icmp eq i32 %i.ct, 0
  %.pre1946 = load i32, ptr %i.d, align 4, !tbaa !104
  %.pre1949 = load double, ptr %i.c, align 8
  %spec.select2224 = select i1 %.not977, double %.101025, double %.pre1949
  br label %._crit_edge1948

._crit_edge1948:                                  ; preds = %bb.q, %.lr.ph1027
  %i.cu = phi i32 [ %.pre1946, %bb.q ], [ %i.cj, %.lr.ph1027 ] ; 2 uses
  %.11 = phi double [ %spec.select2224, %bb.q ], [ %i.cr, %.lr.ph1027 ] ; 2 uses
  %i.cv = add nuw nsw i32 %.37971024, 1
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !104
  %.not976.not = icmp slt i32 %.37971024, %i.cw
  br i1 %.not976.not, label %.lr.ph1027, label %._crit_edge1028.loopexit, !llvm.loop !14

._crit_edge1028.loopexit:                         ; preds = %._crit_edge1948
  %.pre1950 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge1028

._crit_edge1028:                                  ; preds = %._crit_edge1028.loopexit, %.lr.ph1033
  %i.cx = phi i32 [ %i.cg, %.lr.ph1033 ], [ %.pre1950, %._crit_edge1028.loopexit ] ; 2 uses
  %i.cy = phi i32 [ %.pre1947, %.lr.ph1033 ], [ %i.cu, %._crit_edge1028.loopexit ] ; 2 uses
  %.10.lcssa = phi double [ %.91031, %.lr.ph1033 ], [ %.11, %._crit_edge1028.loopexit ] ; 2 uses
  %i.cz = add nsw i32 %i.cy, 1                    ; 2 uses
  store i32 %i.cz, ptr %i.d, align 4, !tbaa !104
  %.not975.not = icmp slt i32 %i.cy, %i.cx
  br i1 %.not975.not, label %.lr.ph1033, label %.loopexit, !llvm.loop !15

bb.r:                                             ; preds = %bb.f
  %i.da = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  %.not855 = icmp eq i32 %i.da, 0
  br i1 %.not855, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.db = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %.not856 = icmp eq i32 %i.db, 0
  br i1 %.not856, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = load i8, ptr %0, align 1, !tbaa !108
  %i.dd = icmp eq i8 %i.dc, 49
  br i1 %i.dd, label %bb.u, label %bb.cj

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.de = load i32, ptr %3, align 4, !tbaa !104   ; 44 uses
  %i.df = sdiv i32 %i.de, 2                       ; 82 uses
  store i32 %i.df, ptr %i.e, align 4, !tbaa !104
  %.not946 = icmp eq i32 %spec.store.select, 0    ; 2 uses
  br i1 %.not, label %bb.v, label %bb.ax

bb.v:                                             ; preds = %bb.u
  br i1 %.not946, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not852.not.not.not.not.not.not.not.not, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = add nsw i32 %i.df, -1                   ; 4 uses
  %.not966.not1436 = icmp sgt i32 %i.de, 1
  br i1 %.not966.not1436, label %._crit_edge1440.thread, label %._crit_edge1440

._crit_edge1440.thread:                           ; preds = %bb.x
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, i8 0, i64 %i.dj, i1 false), !tbaa !106
  br label %.lr.ph1464

._crit_edge1440:                                  ; preds = %bb.x
  %.not9681461 = icmp slt i32 %i.de, -1
  br i1 %.not9681461, label %.thread, label %.lr.ph1464

.thread:                                          ; preds = %._crit_edge1440
  %i.dk = load double, ptr %5, align 8, !tbaa !106
  br label %.loopexit

.lr.ph1464:                                       ; preds = %._crit_edge1440.thread, %._crit_edge1440
  %i.dl = shl nuw nsw i32 %i.df, 1
  %6 = zext i32 %i.df to i64                      ; 2 uses
  %i.dm = sext i32 %i.dg to i64
  %i.dn = sext i32 %.0784 to i64
  %i.do = sext i32 %i.df to i64
  %i.dp = add nsw i32 %i.df, 1                    ; 2 uses
  %wide.trip.count1858 = zext i32 %i.dp to i64
  %wide.trip.count1855 = zext i32 %i.dg to i64    ; 3 uses
  %7 = add nsw i64 %6, -1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph1464, %._crit_edge1455
  %indvars.iv1846.a = phi i64 [ %6, %.lr.ph1464 ], [ %indvars.iv.next1858, %._crit_edge1455 ] ; 4 uses
  %indvars.iv1846 = phi i64 [ 0, %.lr.ph1464 ], [ %indvars.iv.next1847, %._crit_edge1455 ] ; 11 uses
  %i.dq = sub nsw i64 %wide.trip.count1855, %indvars.iv1846
  %i.dr = add nuw nsw i64 %indvars.iv1846, %i.do  ; 3 uses
  %.not969.not1442 = icmp sgt i64 %i.dr, 0
  %i.ds = mul nsw i64 %indvars.iv1846, %i.dn      ; 4 uses
  br i1 %.not969.not1442, label %.lr.ph1445, label %._crit_edge1446

.lr.ph1445:                                       ; preds = %bb.y
  %8 = add i64 %7, %indvars.iv1846
  %invariant.gep2202.a = getelementptr [8 x i8], ptr %4, i64 %i.ds ; 5 uses
  %xtraiter2457 = and i64 %indvars.iv1846.a, 3    ; 3 uses
  %i.dt = icmp ult i64 %8, 3
  br i1 %i.dt, label %.epil.preheader2456, label %.lr.ph1445.new

.lr.ph1445.new:                                   ; preds = %.lr.ph1445
  %unroll_iter2464 = and i64 %indvars.iv1846.a, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph1445.new
  %indvars.iv1839 = phi i64 [ 0, %.lr.ph1445.new ], [ %indvars.iv.next1840.3, %bb.z ] ; 6 uses
  %i.du = phi double [ 0.000000e+00, %.lr.ph1445.new ], [ %i.ex, %bb.z ]
  %niter2465 = phi i64 [ 0, %.lr.ph1445.new ], [ %niter2465.next.3, %bb.z ]
  %gep2203.a = getelementptr [8 x i8], ptr %invariant.gep2202.a, i64 %indvars.iv1839
  %i.dv = load double, ptr %gep2203.a, align 8, !tbaa !106 ; 3 uses
  %i.dw = fcmp oge double %i.dv, 0.000000e+00
  %i.dx = fneg double %i.dv
  %i.dy = select i1 %i.dw, double %i.dv, double %i.dx ; 2 uses
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1839 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !106
  %i.ec = fadd double %i.dy, %i.eb
  store double %i.ec, ptr %i.ea, align 8, !tbaa !106
  %indvars.iv.next1840 = or disjoint i64 %indvars.iv1839, 1 ; 2 uses
  %gep2203.1.a = getelementptr [8 x i8], ptr %invariant.gep2202.a, i64 %indvars.iv.next1840
  %i.ed = load double, ptr %gep2203.1.a, align 8, !tbaa !106 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef ; 2 uses
  %i.eh = fadd double %i.dz, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !106
  %i.ek = fadd double %i.eg, %i.ej
  store double %i.ek, ptr %i.ei, align 8, !tbaa !106
  %indvars.iv.next1840.1 = or disjoint i64 %indvars.iv1839, 2 ; 2 uses
  %gep2203.2.a = getelementptr [8 x i8], ptr %invariant.gep2202.a, i64 %indvars.iv.next1840.1
  %i.el = load double, ptr %gep2203.2.a, align 8, !tbaa !106 ; 3 uses
  %i.em = fcmp oge double %i.el, 0.000000e+00
  %i.en = fneg double %i.el
  %i.eo = select i1 %i.em, double %i.el, double %i.en ; 2 uses
  %i.ep = fadd double %i.eh, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !106
  %i.es = fadd double %i.eo, %i.er
  store double %i.es, ptr %i.eq, align 8, !tbaa !106
  %indvars.iv.next1840.2 = or disjoint i64 %indvars.iv1839, 3 ; 2 uses
  %gep2203.3.a = getelementptr [8 x i8], ptr %invariant.gep2202.a, i64 %indvars.iv.next1840.2
  %i.et = load double, ptr %gep2203.3.a, align 8, !tbaa !106 ; 3 uses
  %i.eu = fcmp oge double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.et, double %i.ev ; 2 uses
  %i.ex = fadd double %i.ep, %i.ew                ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1840.2 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !106
  %i.fa = fadd double %i.ew, %i.ez
  store double %i.fa, ptr %i.ey, align 8, !tbaa !106
  %indvars.iv.next1840.3 = add nuw nsw i64 %indvars.iv1839, 4 ; 2 uses
  %niter2465.next.3 = add i64 %niter2465, 4       ; 2 uses
  %niter2465.ncmp.3 = icmp eq i64 %niter2465.next.3, %unroll_iter2464
  br i1 %niter2465.ncmp.3, label %._crit_edge1446.loopexit.unr-lcssa, label %bb.z, !llvm.loop !16

._crit_edge1446.loopexit.unr-lcssa:               ; preds = %bb.z
  %lcmp.mod2461.not = icmp eq i64 %xtraiter2457, 0
  br i1 %lcmp.mod2461.not, label %._crit_edge1446.loopexit, label %.epil.preheader2456

.epil.preheader2456:                              ; preds = %._crit_edge1446.loopexit.unr-lcssa, %.lr.ph1445
  %indvars.iv1839.epil.init = phi i64 [ 0, %.lr.ph1445 ], [ %indvars.iv.next1840.3, %._crit_edge1446.loopexit.unr-lcssa ]
  %.epil.init2460 = phi double [ 0.000000e+00, %.lr.ph1445 ], [ %i.ex, %._crit_edge1446.loopexit.unr-lcssa ]
  %lcmp.mod2463 = icmp ne i64 %xtraiter2457, 0
  tail call void @llvm.assume(i1 %lcmp.mod2463)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader2456
  %indvars.iv1839.epil = phi i64 [ %indvars.iv1839.epil.init, %.epil.preheader2456 ], [ %indvars.iv.next1840.epil, %bb.aa ] ; 3 uses
  %i.fb = phi double [ %.epil.init2460, %.epil.preheader2456 ], [ %i.fg, %bb.aa ]
  %epil.iter2458 = phi i64 [ 0, %.epil.preheader2456 ], [ %epil.iter2458.next, %bb.aa ]
  %gep2203.epil.a = getelementptr [8 x i8], ptr %invariant.gep2202.a, i64 %indvars.iv1839.epil
  %i.fc = load double, ptr %gep2203.epil.a, align 8, !tbaa !106 ; 3 uses
  %i.fd = fcmp oge double %i.fc, 0.000000e+00
  %i.fe = fneg double %i.fc
  %i.ff = select i1 %i.fd, double %i.fc, double %i.fe ; 2 uses
  %i.fg = fadd double %i.fb, %i.ff                ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1839.epil ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !106
  %i.fj = fadd double %i.ff, %i.fi
  store double %i.fj, ptr %i.fh, align 8, !tbaa !106
  %indvars.iv.next1840.epil = add nuw nsw i64 %indvars.iv1839.epil, 1
  %epil.iter2458.next = add i64 %epil.iter2458, 1 ; 2 uses
  %epil.iter2458.cmp.not = icmp eq i64 %epil.iter2458.next, %xtraiter2457
  br i1 %epil.iter2458.cmp.not, label %._crit_edge1446.loopexit, label %bb.aa, !llvm.loop !17

._crit_edge1446.loopexit:                         ; preds = %bb.aa, %._crit_edge1446.loopexit.unr-lcssa
  %.lcssa2292 = phi double [ %i.ex, %._crit_edge1446.loopexit.unr-lcssa ], [ %i.fg, %bb.aa ]
  %9 = trunc nuw nsw i64 %indvars.iv1846.a to i32
  br label %._crit_edge1446

._crit_edge1446:                                  ; preds = %bb.y, %._crit_edge1446.loopexit
  %.lcssa14561459 = phi double [ %.lcssa2292, %._crit_edge1446.loopexit ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %.5799.lcssa = phi i32 [ %9, %._crit_edge1446.loopexit ], [ 0, %bb.y ] ; 4 uses
  %i.fk = sext i32 %.5799.lcssa to i64
  %i.fl = getelementptr [8 x i8], ptr %4, i64 %i.ds
  %i.fm = getelementptr [8 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !106 ; 3 uses
  %i.fo = fcmp oge double %i.fn, 0.000000e+00
  %i.fp = fneg double %i.fn
  %i.fq = select i1 %i.fo, double %i.fn, double %i.fp
  %i.fr = fadd double %.lcssa14561459, %i.fq
  %i.fs = getelementptr inbounds [8 x i8], ptr %5, i64 %i.dr
  store double %i.fr, ptr %i.fs, align 8, !tbaa !106
  %i.ft = icmp eq i32 %.5799.lcssa, %i.dl
  br i1 %i.ft, label %._crit_edge1468, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1446
  %i.fu = getelementptr [8 x i8], ptr %4, i64 %i.ds
  %i.fv = sext i32 %.5799.lcssa to i64
  %i.fw = getelementptr [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !106 ; 3 uses
  %i.fz = fcmp oge double %i.fy, 0.000000e+00
  %i.ga = fneg double %i.fy
  %i.gb = select i1 %i.fz, double %i.fy, double %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1846 ; 4 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !106
  %i.ge = fadd double %i.gd, %i.gb                ; 2 uses
  store double %i.ge, ptr %i.gc, align 8, !tbaa !106
  %.not970.not1450 = icmp slt i64 %indvars.iv1846, %i.dm
  br i1 %.not970.not1450, label %.lr.ph1454.preheader, label %._crit_edge1455

.lr.ph1454.preheader:                             ; preds = %bb.ab
  %i.gf = zext nneg i32 %.5799.lcssa to i64
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %invariant.gep2204.a = getelementptr [8 x i8], ptr %4, i64 %i.ds ; 5 uses
  %xtraiter2466 = and i64 %i.dq, 3                ; 2 uses
  %lcmp.mod2467.not = icmp eq i64 %xtraiter2466, 0
  br i1 %lcmp.mod2467.not, label %.lr.ph1454.prol.loopexit, label %.lr.ph1454.prol

.lr.ph1454.prol:                                  ; preds = %.lr.ph1454.preheader, %.lr.ph1454.prol
  %indvars.iv1850.prol = phi i64 [ %indvars.iv.next1851.prol, %.lr.ph1454.prol ], [ %i.gg, %.lr.ph1454.preheader ]
  %indvars.iv1848.prol = phi i64 [ %indvars.iv.next1849.prol, %.lr.ph1454.prol ], [ %indvars.iv1846, %.lr.ph1454.preheader ]
  %i.gh = phi double [ %i.gm, %.lr.ph1454.prol ], [ 0.000000e+00, %.lr.ph1454.preheader ]
  %prol.iter2468 = phi i64 [ %prol.iter2468.next, %.lr.ph1454.prol ], [ 0, %.lr.ph1454.preheader ]
  %indvars.iv.next1849.prol = add nuw nsw i64 %indvars.iv1848.prol, 1 ; 3 uses
  %indvars.iv.next1851.prol = add nuw nsw i64 %indvars.iv1850.prol, 1 ; 3 uses
  %gep2205.prol = getelementptr [8 x i8], ptr %invariant.gep2204.a, i64 %indvars.iv.next1851.prol
  %i.gi = load double, ptr %gep2205.prol, align 8, !tbaa !106 ; 3 uses
  %i.gj = fcmp oge double %i.gi, 0.000000e+00
  %i.gk = fneg double %i.gi
  %i.gl = select i1 %i.gj, double %i.gi, double %i.gk ; 2 uses
  %i.gm = fadd double %i.gh, %i.gl                ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1849.prol ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !106
  %i.gp = fadd double %i.gl, %i.go
  store double %i.gp, ptr %i.gn, align 8, !tbaa !106
  %prol.iter2468.next = add i64 %prol.iter2468, 1 ; 2 uses
  %prol.iter2468.cmp.not = icmp eq i64 %prol.iter2468.next, %xtraiter2466
  br i1 %prol.iter2468.cmp.not, label %.lr.ph1454.prol.loopexit, label %.lr.ph1454.prol, !llvm.loop !18

.lr.ph1454.prol.loopexit:                         ; preds = %.lr.ph1454.prol, %.lr.ph1454.preheader
  %.lcssa2289.unr = phi double [ poison, %.lr.ph1454.preheader ], [ %i.gm, %.lr.ph1454.prol ]
  %indvars.iv1850.unr = phi i64 [ %i.gg, %.lr.ph1454.preheader ], [ %indvars.iv.next1851.prol, %.lr.ph1454.prol ]
  %indvars.iv1848.unr = phi i64 [ %indvars.iv1846, %.lr.ph1454.preheader ], [ %indvars.iv.next1849.prol, %.lr.ph1454.prol ]
  %.unr2469 = phi double [ 0.000000e+00, %.lr.ph1454.preheader ], [ %i.gm, %.lr.ph1454.prol ]
  %i.gq = sub nsw i64 %indvars.iv1846, %wide.trip.count1855
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge1455.loopexit, label %.lr.ph1454

.lr.ph1454:                                       ; preds = %.lr.ph1454.prol.loopexit, %.lr.ph1454
  %indvars.iv1850 = phi i64 [ %indvars.iv.next1851.3, %.lr.ph1454 ], [ %indvars.iv1850.unr, %.lr.ph1454.prol.loopexit ] ; 4 uses
  %indvars.iv1848 = phi i64 [ %indvars.iv.next1849.3, %.lr.ph1454 ], [ %indvars.iv1848.unr, %.lr.ph1454.prol.loopexit ] ; 4 uses
  %i.gs = phi double [ %i.ib, %.lr.ph1454 ], [ %.unr2469, %.lr.ph1454.prol.loopexit ]
  %i.gt = getelementptr [8 x i8], ptr %invariant.gep2204.a, i64 %indvars.iv1850
  %gep2205.a = getelementptr i8, ptr %i.gt, i64 8
  %i.gu = load double, ptr %gep2205.a, align 8, !tbaa !106 ; 3 uses
  %i.gv = fcmp oge double %i.gu, 0.000000e+00
  %i.gw = fneg double %i.gu
  %i.gx = select i1 %i.gv, double %i.gu, double %i.gw ; 2 uses
  %i.gy = fadd double %i.gs, %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !106
  %i.hc = fadd double %i.gx, %i.hb
  store double %i.hc, ptr %i.ha, align 8, !tbaa !106
  %i.hd = getelementptr [8 x i8], ptr %invariant.gep2204.a, i64 %indvars.iv1850
  %gep2205.1.a = getelementptr i8, ptr %i.hd, i64 16
  %i.he = load double, ptr %gep2205.1.a, align 8, !tbaa !106 ; 3 uses
  %i.hf = fcmp oge double %i.he, 0.000000e+00
  %i.hg = fneg double %i.he
  %i.hh = select i1 %i.hf, double %i.he, double %i.hg ; 2 uses
  %i.hi = fadd double %i.gy, %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !106
  %i.hm = fadd double %i.hh, %i.hl
  store double %i.hm, ptr %i.hk, align 8, !tbaa !106
  %i.hn = getelementptr [8 x i8], ptr %invariant.gep2204.a, i64 %indvars.iv1850
  %gep2205.2.a = getelementptr i8, ptr %i.hn, i64 24
  %i.ho = load double, ptr %gep2205.2.a, align 8, !tbaa !106 ; 3 uses
  %i.hp = fcmp oge double %i.ho, 0.000000e+00
  %i.hq = fneg double %i.ho
  %i.hr = select i1 %i.hp, double %i.ho, double %i.hq ; 2 uses
  %i.hs = fadd double %i.hi, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1848
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !106
  %i.hw = fadd double %i.hr, %i.hv
  store double %i.hw, ptr %i.hu, align 8, !tbaa !106
  %indvars.iv.next1849.3 = add nuw nsw i64 %indvars.iv1848, 4 ; 3 uses
  %indvars.iv.next1851.3 = add nuw nsw i64 %indvars.iv1850, 4 ; 2 uses
  %gep2205.3.a = getelementptr [8 x i8], ptr %invariant.gep2204.a, i64 %indvars.iv.next1851.3
  %i.hx = load double, ptr %gep2205.3.a, align 8, !tbaa !106 ; 3 uses
  %i.hy = fcmp oge double %i.hx, 0.000000e+00
  %i.hz = fneg double %i.hx
  %i.ia = select i1 %i.hy, double %i.hx, double %i.hz ; 2 uses
  %i.ib = fadd double %i.hs, %i.ia                ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1849.3 ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !106
  %i.ie = fadd double %i.ia, %i.id
  store double %i.ie, ptr %i.ic, align 8, !tbaa !106
  %exitcond1856.not.3 = icmp eq i64 %indvars.iv.next1849.3, %wide.trip.count1855
  br i1 %exitcond1856.not.3, label %._crit_edge1455.loopexit, label %.lr.ph1454, !llvm.loop !19

._crit_edge1455.loopexit:                         ; preds = %.lr.ph1454, %.lr.ph1454.prol.loopexit
  %.lcssa2289 = phi double [ %.lcssa2289.unr, %.lr.ph1454.prol.loopexit ], [ %i.ib, %.lr.ph1454 ]
  %.pre1982 = load double, ptr %i.gc, align 8, !tbaa !106
  br label %._crit_edge1455

._crit_edge1455:                                  ; preds = %._crit_edge1455.loopexit, %bb.ab
  %i.if = phi double [ %i.ge, %bb.ab ], [ %.pre1982, %._crit_edge1455.loopexit ]
  %.lcssa14561458 = phi double [ 0.000000e+00, %bb.ab ], [ %.lcssa2289, %._crit_edge1455.loopexit ] ; 2 uses
  %i.ig = fadd double %.lcssa14561458, %i.if
  store double %i.ig, ptr %i.gc, align 8, !tbaa !106
  %indvars.iv.next1847 = add nuw nsw i64 %indvars.iv1846, 1 ; 2 uses
  %indvars.iv.next1858 = add nuw i64 %indvars.iv1846.a, 1
  %exitcond1859.not = icmp eq i64 %indvars.iv.next1847, %wide.trip.count1858
  br i1 %exitcond1859.not, label %._crit_edge1465, label %bb.y, !llvm.loop !20

._crit_edge1465:                                  ; preds = %._crit_edge1455
  store double %.lcssa14561458, ptr %i.f, align 8, !tbaa !106
  br label %bb.ac

._crit_edge1468:                                  ; preds = %._crit_edge1446
  %i.ih = trunc nuw nsw i64 %indvars.iv1846 to i32
  %i.ii = trunc nsw i64 %i.dr to i32
  store double %.lcssa14561459, ptr %i.f, align 8, !tbaa !106
  %i.ij = add nsw i32 %i.ii, -1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge1468, %._crit_edge1465
  %i.ik = phi i32 [ %i.dg, %._crit_edge1465 ], [ %i.ij, %._crit_edge1468 ]
  %storemerge967.lcssa = phi i32 [ %i.dp, %._crit_edge1465 ], [ %i.ih, %._crit_edge1468 ]
  store i32 %storemerge967.lcssa, ptr %i.d, align 4, !tbaa !104
  store i32 %i.ik, ptr %i.b, align 4
  %i.il = load double, ptr %5, align 8, !tbaa !106 ; 2 uses
  %i.im = add nsw i32 %i.de, -1
  store i32 %i.im, ptr %i.a, align 4, !tbaa !104
  %.not9711472 = icmp slt i32 %i.de, 2
  br i1 %.not9711472, label %.loopexit, label %.lr.ph1476

.lr.ph1476:                                       ; preds = %bb.ac, %._crit_edge1983
  %indvars.iv1860 = phi i64 [ %indvars.iv.next1861, %._crit_edge1983 ], [ 1, %bb.ac ] ; 3 uses
  %.121474 = phi double [ %.13, %._crit_edge1983 ], [ %i.il, %bb.ac ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1860
  %i.io = load double, ptr %i.in, align 8, !tbaa !106 ; 3 uses
  store double %i.io, ptr %i.c, align 8, !tbaa !106
  %i.ip = fcmp olt double %.121474, %i.io
  br i1 %i.ip, label %._crit_edge1983, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1476
  %i.iq = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not972 = icmp eq i32 %i.iq, 0
  %.pre1984 = load double, ptr %i.c, align 8
  %spec.select2225 = select i1 %.not972, double %.121474, double %.pre1984
  br label %._crit_edge1983

._crit_edge1983:                                  ; preds = %bb.ad, %.lr.ph1476
  %.13 = phi double [ %spec.select2225, %bb.ad ], [ %i.io, %.lr.ph1476 ] ; 2 uses
  %indvars.iv.next1861 = add nuw nsw i64 %indvars.iv1860, 1
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !104
  %i.is = sext i32 %i.ir to i64
  %.not971.not = icmp slt i64 %indvars.iv1860, %i.is
  br i1 %.not971.not, label %.lr.ph1476, label %.loopexit, !llvm.loop !21

bb.ae:                                            ; preds = %bb.w
  %i.it = add nsw i32 %i.df, 1                    ; 5 uses
  store i32 %i.it, ptr %i.e, align 4, !tbaa !104
  %i.iu = add i32 %i.de, -1                       ; 3 uses
  %.not960.not1478 = icmp slt i32 %i.it, %i.de
  br i1 %.not960.not1478, label %.lr.ph1481.preheader, label %.preheader993

.lr.ph1481.preheader:                             ; preds = %bb.ae
  %i.iv = sext i32 %i.df to i64
  %i.iw = shl nsw i64 %i.iv, 3
  %i.ix = getelementptr i8, ptr %5, i64 %i.iw
  %scevgep1863 = getelementptr i8, ptr %i.ix, i64 8
  %i.iy = add nsw i32 %i.de, -2
  %i.iz = sub i32 %i.iy, %i.df
  %i.ja = zext i32 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1863, i8 0, i64 %i.jc, i1 false), !tbaa !106
  br label %.preheader993

.preheader993:                                    ; preds = %.lr.ph1481.preheader, %bb.ae
  %i.jd = icmp sgt i32 %i.de, -2
  br i1 %i.jd, label %.lr.ph1505, label %.thread2084

.thread2084:                                      ; preds = %.preheader993
  %i.je = load double, ptr %5, align 8, !tbaa !106
  br label %.loopexit

.lr.ph1505:                                       ; preds = %.preheader993
  %i.jf = zext nneg i32 %i.it to i64
  %invariant.gep2208 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.jf ; 5 uses
  %wide.trip.count1879 = sext i32 %i.iu to i64    ; 3 uses
  %i.jg = sext i32 %i.df to i64                   ; 2 uses
  %i.jh = sub nsw i64 %wide.trip.count1879, %i.jg
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph1505, %._crit_edge1496
  %indvar2482 = phi i64 [ 0, %.lr.ph1505 ], [ %indvar.next2483, %._crit_edge1496 ] ; 3 uses
  %indvar2471 = phi i32 [ 0, %.lr.ph1505 ], [ %indvar.next2472, %._crit_edge1496 ] ; 2 uses
  %storemerge961.in1508 = phi i32 [ %i.df, %.lr.ph1505 ], [ %storemerge961, %._crit_edge1496 ] ; 8 uses
  %storemerge961.in1503 = phi i32 [ %i.it, %.lr.ph1505 ], [ %storemerge961.in1508, %._crit_edge1496 ] ; 3 uses
  %i.ji = add i64 %i.jh, %indvar2482
  %.not9641483 = icmp slt i32 %storemerge961.in1503, 3
  br i1 %.not9641483, label %._crit_edge1487, label %.lr.ph1486

.lr.ph1486:                                       ; preds = %bb.af
  %i.jj = mul nsw i32 %storemerge961.in1508, %.0784
  %i.jk = sext i32 %i.jj to i64
  %i.jl = add nsw i32 %storemerge961.in1503, -2   ; 3 uses
  %wide.trip.count1870 = zext nneg i32 %i.jl to i64 ; 2 uses
  %invariant.gep2206 = getelementptr [8 x i8], ptr %4, i64 %i.jk ; 5 uses
  %xtraiter2473 = and i64 %wide.trip.count1870, 3 ; 3 uses
  %i.jm = sub i32 %i.df, %indvar2471
  %i.jn = add i32 %i.jm, -2
  %i.jo = icmp ult i32 %i.jn, 3
  br i1 %i.jo, label %.epil.preheader2470, label %.lr.ph1486.new

.lr.ph1486.new:                                   ; preds = %.lr.ph1486
  %unroll_iter2480 = and i64 %wide.trip.count1870, 2147483644
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph1486.new
  %indvars.iv1867 = phi i64 [ 0, %.lr.ph1486.new ], [ %indvars.iv.next1868.3, %bb.ag ] ; 6 uses
  %i.jp = phi double [ 0.000000e+00, %.lr.ph1486.new ], [ %i.kp, %bb.ag ]
  %niter2481 = phi i64 [ 0, %.lr.ph1486.new ], [ %niter2481.next.3, %bb.ag ]
  %gep2207 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv1867
  %i.jq = load double, ptr %gep2207, align 8, !tbaa !106 ; 3 uses
  %i.jr = fcmp oge double %i.jq, 0.000000e+00
  %i.js = fneg double %i.jq
  %i.jt = select i1 %i.jr, double %i.jq, double %i.js ; 2 uses
  %i.ju = fadd double %i.jp, %i.jt
  %gep2209 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv1867 ; 2 uses
  %i.jv = load double, ptr %gep2209, align 8, !tbaa !106
  %i.jw = fadd double %i.jt, %i.jv
  store double %i.jw, ptr %gep2209, align 8, !tbaa !106
  %indvars.iv.next1868 = or disjoint i64 %indvars.iv1867, 1 ; 2 uses
  %gep2207.1 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868
  %i.jx = load double, ptr %gep2207.1, align 8, !tbaa !106 ; 3 uses
  %i.jy = fcmp oge double %i.jx, 0.000000e+00
  %i.jz = fneg double %i.jx
  %i.ka = select i1 %i.jy, double %i.jx, double %i.jz ; 2 uses
  %i.kb = fadd double %i.ju, %i.ka
  %gep2209.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv.next1868 ; 2 uses
  %i.kc = load double, ptr %gep2209.1, align 8, !tbaa !106
  %i.kd = fadd double %i.ka, %i.kc
  store double %i.kd, ptr %gep2209.1, align 8, !tbaa !106
  %indvars.iv.next1868.1 = or disjoint i64 %indvars.iv1867, 2 ; 2 uses
  %gep2207.2 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868.1
  %i.ke = load double, ptr %gep2207.2, align 8, !tbaa !106 ; 3 uses
  %i.kf = fcmp oge double %i.ke, 0.000000e+00
  %i.kg = fneg double %i.ke
  %i.kh = select i1 %i.kf, double %i.ke, double %i.kg ; 2 uses
  %i.ki = fadd double %i.kb, %i.kh
  %gep2209.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv.next1868.1 ; 2 uses
  %i.kj = load double, ptr %gep2209.2, align 8, !tbaa !106
  %i.kk = fadd double %i.kh, %i.kj
  store double %i.kk, ptr %gep2209.2, align 8, !tbaa !106
  %indvars.iv.next1868.2 = or disjoint i64 %indvars.iv1867, 3 ; 2 uses
  %gep2207.3 = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv.next1868.2
  %i.kl = load double, ptr %gep2207.3, align 8, !tbaa !106 ; 3 uses
  %i.km = fcmp oge double %i.kl, 0.000000e+00
  %i.kn = fneg double %i.kl
  %i.ko = select i1 %i.km, double %i.kl, double %i.kn ; 2 uses
  %i.kp = fadd double %i.ki, %i.ko                ; 3 uses
  %gep2209.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv.next1868.2 ; 2 uses
  %i.kq = load double, ptr %gep2209.3, align 8, !tbaa !106
  %i.kr = fadd double %i.ko, %i.kq
  store double %i.kr, ptr %gep2209.3, align 8, !tbaa !106
  %indvars.iv.next1868.3 = add nuw nsw i64 %indvars.iv1867, 4 ; 2 uses
  %niter2481.next.3 = add i64 %niter2481, 4       ; 2 uses
  %niter2481.ncmp.3 = icmp eq i64 %niter2481.next.3, %unroll_iter2480
  br i1 %niter2481.ncmp.3, label %._crit_edge1487.thread.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !22

._crit_edge1487:                                  ; preds = %bb.af
  %.not990 = icmp eq i32 %storemerge961.in1503, 1
  br i1 %.not990, label %._crit_edge1487._crit_edge, label %._crit_edge1487.thread

._crit_edge1487._crit_edge:                       ; preds = %._crit_edge1487
  %.pre2010.a = mul nsw i32 %storemerge961.in1508, %.0784
  br label %bb.ai

._crit_edge1487.thread.loopexit.unr-lcssa:        ; preds = %bb.ag
  %lcmp.mod2477.not = icmp eq i64 %xtraiter2473, 0
  br i1 %lcmp.mod2477.not, label %._crit_edge1487.thread, label %.epil.preheader2470

.epil.preheader2470:                              ; preds = %._crit_edge1487.thread.loopexit.unr-lcssa, %.lr.ph1486
  %indvars.iv1867.epil.init = phi i64 [ 0, %.lr.ph1486 ], [ %indvars.iv.next1868.3, %._crit_edge1487.thread.loopexit.unr-lcssa ]
  %.epil.init2476 = phi double [ 0.000000e+00, %.lr.ph1486 ], [ %i.kp, %._crit_edge1487.thread.loopexit.unr-lcssa ]
  %lcmp.mod2479 = icmp ne i64 %xtraiter2473, 0
  tail call void @llvm.assume(i1 %lcmp.mod2479)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader2470
  %indvars.iv1867.epil = phi i64 [ %indvars.iv1867.epil.init, %.epil.preheader2470 ], [ %indvars.iv.next1868.epil, %bb.ah ] ; 3 uses
  %i.ks = phi double [ %.epil.init2476, %.epil.preheader2470 ], [ %i.kx, %bb.ah ]
  %epil.iter2474 = phi i64 [ 0, %.epil.preheader2470 ], [ %epil.iter2474.next, %bb.ah ]
  %gep2207.epil = getelementptr [8 x i8], ptr %invariant.gep2206, i64 %indvars.iv1867.epil
  %i.kt = load double, ptr %gep2207.epil, align 8, !tbaa !106 ; 3 uses
  %i.ku = fcmp oge double %i.kt, 0.000000e+00
  %i.kv = fneg double %i.kt
  %i.kw = select i1 %i.ku, double %i.kt, double %i.kv ; 2 uses
  %i.kx = fadd double %i.ks, %i.kw                ; 2 uses
  %gep2209.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2208, i64 %indvars.iv1867.epil ; 2 uses
  %i.ky = load double, ptr %gep2209.epil, align 8, !tbaa !106
  %i.kz = fadd double %i.kw, %i.ky
  store double %i.kz, ptr %gep2209.epil, align 8, !tbaa !106
  %indvars.iv.next1868.epil = add nuw nsw i64 %indvars.iv1867.epil, 1
  %epil.iter2474.next = add i64 %epil.iter2474, 1 ; 2 uses
  %epil.iter2474.cmp.not = icmp eq i64 %epil.iter2474.next, %xtraiter2473
  br i1 %epil.iter2474.cmp.not, label %._crit_edge1487.thread, label %bb.ah, !llvm.loop !23

._crit_edge1487.thread:                           ; preds = %._crit_edge1487.thread.loopexit.unr-lcssa, %bb.ah, %._crit_edge1487
  %.9803.lcssa2083 = phi i32 [ 0, %._crit_edge1487 ], [ %i.jl, %bb.ah ], [ %i.jl, %._crit_edge1487.thread.loopexit.unr-lcssa ] ; 3 uses
  %.lcssa149715002082 = phi double [ 0.000000e+00, %._crit_edge1487 ], [ %i.kp, %._crit_edge1487.thread.loopexit.unr-lcssa ], [ %i.kx, %bb.ah ]
  %i.la = mul nsw i32 %storemerge961.in1508, %.0784 ; 2 uses
  %i.lb = add nsw i32 %.9803.lcssa2083, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !106 ; 3 uses
  %i.lf = fcmp oge double %i.le, 0.000000e+00
  %i.lg = fneg double %i.le
  %i.lh = select i1 %i.lf, double %i.le, double %i.lg
  %i.li = fadd double %.lcssa149715002082, %i.lh
  %i.lj = add nuw nsw i32 %.9803.lcssa2083, %i.it
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.lk ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !106
  %i.ln = fadd double %i.lm, %i.li
  store double %i.ln, ptr %i.ll, align 8, !tbaa !106
  %i.lo = add nuw nsw i32 %.9803.lcssa2083, 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge1487._crit_edge, %._crit_edge1487.thread
  %.pre-phi2011 = phi i32 [ %.pre2010.a, %._crit_edge1487._crit_edge ], [ %i.la, %._crit_edge1487.thread ] ; 2 uses
  %.10804 = phi i32 [ 0, %._crit_edge1487._crit_edge ], [ %i.lo, %._crit_edge1487.thread ] ; 2 uses
  %i.lp = add nsw i32 %.10804, %.pre-phi2011
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !106 ; 3 uses
  %i.lt = fcmp oge double %i.ls, 0.000000e+00
  %i.lu = fneg double %i.ls
  %i.lv = select i1 %i.lt, double %i.ls, double %i.lu ; 2 uses
  %i.lw = sext i32 %storemerge961.in1508 to i64   ; 3 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %5, i64 %i.lw ; 3 uses
  store double %i.lv, ptr %i.lx, align 8, !tbaa !106
  %.not965.not1491 = icmp slt i32 %storemerge961.in1508, %i.iu
  br i1 %.not965.not1491, label %.lr.ph1495.preheader, label %._crit_edge1496

.lr.ph1495.preheader:                             ; preds = %bb.ai
  %i.ly = zext nneg i32 %.10804 to i64            ; 2 uses
  %i.lz = sext i32 %.pre-phi2011 to i64
  %invariant.gep2210 = getelementptr [8 x i8], ptr %4, i64 %i.lz ; 5 uses
  %xtraiter2484 = and i64 %i.ji, 3                ; 2 uses
  %lcmp.mod2485.not = icmp eq i64 %xtraiter2484, 0
  br i1 %lcmp.mod2485.not, label %.lr.ph1495.prol.loopexit, label %.lr.ph1495.prol

.lr.ph1495.prol:                                  ; preds = %.lr.ph1495.preheader, %.lr.ph1495.prol
  %indvars.iv1874.prol = phi i64 [ %indvars.iv.next1875.prol, %.lr.ph1495.prol ], [ %i.ly, %.lr.ph1495.preheader ]
  %indvars.iv1872.prol = phi i64 [ %indvars.iv.next1873.prol, %.lr.ph1495.prol ], [ %i.lw, %.lr.ph1495.preheader ]
  %i.ma = phi double [ %i.mf, %.lr.ph1495.prol ], [ 0.000000e+00, %.lr.ph1495.preheader ]
  %prol.iter2486 = phi i64 [ %prol.iter2486.next, %.lr.ph1495.prol ], [ 0, %.lr.ph1495.preheader ]
  %indvars.iv.next1873.prol = add nuw nsw i64 %indvars.iv1872.prol, 1 ; 3 uses
  %indvars.iv.next1875.prol = add nuw nsw i64 %indvars.iv1874.prol, 1 ; 3 uses
  %gep2211.prol = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv.next1875.prol
  %i.mb = load double, ptr %gep2211.prol, align 8, !tbaa !106 ; 3 uses
  %i.mc = fcmp oge double %i.mb, 0.000000e+00
  %i.md = fneg double %i.mb
  %i.me = select i1 %i.mc, double %i.mb, double %i.md ; 2 uses
  %i.mf = fadd double %i.ma, %i.me                ; 3 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.next1873.prol ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !106
  %i.mi = fadd double %i.me, %i.mh
  store double %i.mi, ptr %i.mg, align 8, !tbaa !106
  %prol.iter2486.next = add i64 %prol.iter2486, 1 ; 2 uses
  %prol.iter2486.cmp.not = icmp eq i64 %prol.iter2486.next, %xtraiter2484
  br i1 %prol.iter2486.cmp.not, label %.lr.ph1495.prol.loopexit, label %.lr.ph1495.prol, !llvm.loop !24

.lr.ph1495.prol.loopexit:                         ; preds = %.lr.ph1495.prol, %.lr.ph1495.preheader
  %.lcssa2286.unr = phi double [ poison, %.lr.ph1495.preheader ], [ %i.mf, %.lr.ph1495.prol ]
  %indvars.iv1874.unr = phi i64 [ %i.ly, %.lr.ph1495.preheader ], [ %indvars.iv.next1875.prol, %.lr.ph1495.prol ]
  %indvars.iv1872.unr = phi i64 [ %i.lw, %.lr.ph1495.preheader ], [ %indvars.iv.next1873.prol, %.lr.ph1495.prol ]
  %.unr2487 = phi double [ 0.000000e+00, %.lr.ph1495.preheader ], [ %i.mf, %.lr.ph1495.prol ]
  %i.mj = add i64 %indvar2482, %wide.trip.count1879
  %i.mk = sub i64 %i.jg, %i.mj
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %._crit_edge1496.loopexit, label %.lr.ph1495

.lr.ph1495:                                       ; preds = %.lr.ph1495.prol.loopexit, %.lr.ph1495
  %indvars.iv1874 = phi i64 [ %indvars.iv.next1875.3, %.lr.ph1495 ], [ %indvars.iv1874.unr, %.lr.ph1495.prol.loopexit ] ; 4 uses
  %indvars.iv1872 = phi i64 [ %indvars.iv.next1873.3, %.lr.ph1495 ], [ %indvars.iv1872.unr, %.lr.ph1495.prol.loopexit ] ; 4 uses
  %i.mm = phi double [ %i.nv, %.lr.ph1495 ], [ %.unr2487, %.lr.ph1495.prol.loopexit ]
  %i.mn = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv1874
  %gep2211 = getelementptr i8, ptr %i.mn, i64 8
  %i.mo = load double, ptr %gep2211, align 8, !tbaa !106 ; 3 uses
  %i.mp = fcmp oge double %i.mo, 0.000000e+00
  %i.mq = fneg double %i.mo
  %i.mr = select i1 %i.mp, double %i.mo, double %i.mq ; 2 uses
  %i.ms = fadd double %i.mm, %i.mr
  %i.mt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1872
  %i.mu = getelementptr i8, ptr %i.mt, i64 8      ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !106
  %i.mw = fadd double %i.mr, %i.mv
  store double %i.mw, ptr %i.mu, align 8, !tbaa !106
  %i.mx = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv1874
  %gep2211.1 = getelementptr i8, ptr %i.mx, i64 16
  %i.my = load double, ptr %gep2211.1, align 8, !tbaa !106 ; 3 uses
  %i.mz = fcmp oge double %i.my, 0.000000e+00
  %i.na = fneg double %i.my
  %i.nb = select i1 %i.mz, double %i.my, double %i.na ; 2 uses
  %i.nc = fadd double %i.ms, %i.nb
  %i.nd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1872
  %i.ne = getelementptr i8, ptr %i.nd, i64 16     ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !106
  %i.ng = fadd double %i.nb, %i.nf
  store double %i.ng, ptr %i.ne, align 8, !tbaa !106
  %i.nh = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv1874
  %gep2211.2 = getelementptr i8, ptr %i.nh, i64 24
  %i.ni = load double, ptr %gep2211.2, align 8, !tbaa !106 ; 3 uses
  %i.nj = fcmp oge double %i.ni, 0.000000e+00
  %i.nk = fneg double %i.ni
  %i.nl = select i1 %i.nj, double %i.ni, double %i.nk ; 2 uses
  %i.nm = fadd double %i.nc, %i.nl
  %i.nn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1872
  %i.no = getelementptr i8, ptr %i.nn, i64 24     ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !106
  %i.nq = fadd double %i.nl, %i.np
  store double %i.nq, ptr %i.no, align 8, !tbaa !106
  %indvars.iv.next1873.3 = add nuw nsw i64 %indvars.iv1872, 4 ; 3 uses
  %indvars.iv.next1875.3 = add nuw nsw i64 %indvars.iv1874, 4 ; 2 uses
  %gep2211.3 = getelementptr [8 x i8], ptr %invariant.gep2210, i64 %indvars.iv.next1875.3
  %i.nr = load double, ptr %gep2211.3, align 8, !tbaa !106 ; 3 uses
  %i.ns = fcmp oge double %i.nr, 0.000000e+00
  %i.nt = fneg double %i.nr
  %i.nu = select i1 %i.ns, double %i.nr, double %i.nt ; 2 uses
  %i.nv = fadd double %i.nm, %i.nu                ; 2 uses
  %i.nw = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.next1873.3 ; 2 uses
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !106
  %i.ny = fadd double %i.nu, %i.nx
  store double %i.ny, ptr %i.nw, align 8, !tbaa !106
  %exitcond1880.not.3 = icmp eq i64 %indvars.iv.next1873.3, %wide.trip.count1879
  br i1 %exitcond1880.not.3, label %._crit_edge1496.loopexit, label %.lr.ph1495, !llvm.loop !25

._crit_edge1496.loopexit:                         ; preds = %.lr.ph1495, %.lr.ph1495.prol.loopexit
  %.lcssa2286.a = phi double [ %.lcssa2286.unr, %.lr.ph1495.prol.loopexit ], [ %i.nv, %.lr.ph1495 ]
  %.pre1985.a = load double, ptr %i.lx, align 8, !tbaa !106
  br label %._crit_edge1496

._crit_edge1496:                                  ; preds = %._crit_edge1496.loopexit, %bb.ai
  %i.nz = phi double [ %i.lv, %bb.ai ], [ %.pre1985.a, %._crit_edge1496.loopexit ]
  %.lcssa14971499 = phi double [ 0.000000e+00, %bb.ai ], [ %.lcssa2286.a, %._crit_edge1496.loopexit ] ; 2 uses
  %i.oa = fadd double %.lcssa14971499, %i.nz
  store double %i.oa, ptr %i.lx, align 8, !tbaa !106
  %storemerge961 = add nsw i32 %storemerge961.in1508, -1 ; 2 uses
  %i.ob = icmp sgt i32 %storemerge961.in1508, 0
  %indvar.next2472 = add i32 %indvar2471, 1
  %indvar.next2483 = add i64 %indvar2482, 1
  br i1 %i.ob, label %bb.af, label %bb.aj, !llvm.loop !26

bb.aj:                                            ; preds = %._crit_edge1496
  store double %.lcssa14971499, ptr %i.f, align 8, !tbaa !106
  store i32 %storemerge961, ptr %i.d, align 4, !tbaa !104
  %i.oc = load double, ptr %5, align 8, !tbaa !106 ; 2 uses
  store i32 %i.iu, ptr %i.a, align 4, !tbaa !104
  %.not9621509 = icmp slt i32 %i.de, 2
  br i1 %.not9621509, label %.loopexit, label %.lr.ph1513

.lr.ph1513:                                       ; preds = %bb.aj, %._crit_edge1986
  %indvars.iv1881 = phi i64 [ %indvars.iv.next1882, %._crit_edge1986 ], [ 1, %bb.aj ] ; 3 uses
  %.141511 = phi double [ %.15, %._crit_edge1986 ], [ %i.oc, %bb.aj ] ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1881
  %i.oe = load double, ptr %i.od, align 8, !tbaa !106 ; 3 uses
  store double %i.oe, ptr %i.c, align 8, !tbaa !106
  %i.of = fcmp olt double %.141511, %i.oe
  br i1 %i.of, label %._crit_edge1986, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1513
  %i.og = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not963 = icmp eq i32 %i.og, 0
  %.pre1987 = load double, ptr %i.c, align 8
  %spec.select2226 = select i1 %.not963, double %.141511, double %.pre1987
  br label %._crit_edge1986

._crit_edge1986:                                  ; preds = %bb.ak, %.lr.ph1513
  %.15 = phi double [ %spec.select2226, %bb.ak ], [ %i.oe, %.lr.ph1513 ] ; 2 uses
  %indvars.iv.next1882 = add nuw nsw i64 %indvars.iv1881, 1
  %i.oh = load i32, ptr %i.a, align 4, !tbaa !104
  %i.oi = sext i32 %i.oh to i64
  %.not962.not = icmp slt i64 %indvars.iv1881, %i.oi
  br i1 %.not962.not, label %.lr.ph1513, label %.loopexit, !llvm.loop !27

bb.al:                                            ; preds = %bb.v
  br i1 %.not852.not.not.not.not.not.not.not.not, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.oj = add nsw i32 %i.df, -1                   ; 4 uses
  %.not953.not1515 = icmp sgt i32 %i.de, 1
  br i1 %.not953.not1515, label %.lr.ph1544.preheader, label %.thread2086

.thread2086:                                      ; preds = %bb.am
  %i.ok = load double, ptr %5, align 8, !tbaa !106
  br label %.loopexit

.lr.ph1544.preheader:                             ; preds = %bb.am
  %i.ol = zext i32 %i.oj to i64
  %i.om = shl nuw nsw i64 %i.ol, 3
  %i.on = add nuw nsw i64 %i.om, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, i8 0, i64 %i.on, i1 false), !tbaa !106
  %i.oo = zext nneg i32 %i.df to i64              ; 2 uses
  %i.op = sext i32 %i.oj to i64
  %i.oq = sext i32 %.0784 to i64
  %i.or = zext nneg i32 %i.df to i64              ; 2 uses
  %wide.trip.count1903 = zext i32 %i.oj to i64    ; 3 uses
  %i.os = add nsw i64 %i.or, -1
  br label %.lr.ph1544

.lr.ph1544:                                       ; preds = %.lr.ph1544.preheader, %._crit_edge1534
  %indvars.iv1905 = phi i64 [ %i.oo, %.lr.ph1544.preheader ], [ %indvars.iv.next1906, %._crit_edge1534 ] ; 4 uses
  %indvars.iv1894 = phi i64 [ 0, %.lr.ph1544.preheader ], [ %indvars.iv.next1895, %._crit_edge1534 ] ; 10 uses
  %i.ot = sub nsw i64 %wide.trip.count1903, %indvars.iv1894
  %i.ou = add nuw nsw i64 %indvars.iv1894, %i.or  ; 2 uses
  %.not958.not1521.not = icmp eq i64 %i.ou, 0
  %.pre2008 = mul nsw i64 %indvars.iv1894, %i.oq  ; 4 uses
  br i1 %.not958.not1521.not, label %._crit_edge1525, label %.lr.ph1524

.lr.ph1524:                                       ; preds = %.lr.ph1544
  %i.ov = add i64 %i.os, %indvars.iv1894
  %invariant.gep2212 = getelementptr [8 x i8], ptr %4, i64 %.pre2008 ; 5 uses
  %xtraiter2489 = and i64 %indvars.iv1905, 3      ; 3 uses
  %i.ow = icmp ult i64 %i.ov, 3
  br i1 %i.ow, label %.epil.preheader2488, label %.lr.ph1524.new

.lr.ph1524.new:                                   ; preds = %.lr.ph1524
  %unroll_iter2496 = and i64 %indvars.iv1905, -4
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph1524.new
  %indvars.iv1887 = phi i64 [ 0, %.lr.ph1524.new ], [ %indvars.iv.next1888.3, %bb.an ] ; 6 uses
  %i.ox = phi double [ 0.000000e+00, %.lr.ph1524.new ], [ %i.qa, %bb.an ]
  %niter2497 = phi i64 [ 0, %.lr.ph1524.new ], [ %niter2497.next.3, %bb.an ]
  %gep2213 = getelementptr [8 x i8], ptr %invariant.gep2212, i64 %indvars.iv1887
  %i.oy = load double, ptr %gep2213, align 8, !tbaa !106 ; 3 uses
  %i.oz = fcmp oge double %i.oy, 0.000000e+00
  %i.pa = fneg double %i.oy
  %i.pb = select i1 %i.oz, double %i.oy, double %i.pa ; 2 uses
  %i.pc = fadd double %i.ox, %i.pb
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1887 ; 2 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !106
  %i.pf = fadd double %i.pb, %i.pe
  store double %i.pf, ptr %i.pd, align 8, !tbaa !106
  %indvars.iv.next1888 = or disjoint i64 %indvars.iv1887, 1 ; 2 uses
  %gep2213.1 = getelementptr [8 x i8], ptr %invariant.gep2212, i64 %indvars.iv.next1888
  %i.pg = load double, ptr %gep2213.1, align 8, !tbaa !106 ; 3 uses
  %i.ph = fcmp oge double %i.pg, 0.000000e+00
  %i.pi = fneg double %i.pg
  %i.pj = select i1 %i.ph, double %i.pg, double %i.pi ; 2 uses
  %i.pk = fadd double %i.pc, %i.pj
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1888 ; 2 uses
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !106
  %i.pn = fadd double %i.pj, %i.pm
  store double %i.pn, ptr %i.pl, align 8, !tbaa !106
  %indvars.iv.next1888.1 = or disjoint i64 %indvars.iv1887, 2 ; 2 uses
  %gep2213.2 = getelementptr [8 x i8], ptr %invariant.gep2212, i64 %indvars.iv.next1888.1
  %i.po = load double, ptr %gep2213.2, align 8, !tbaa !106 ; 3 uses
  %i.pp = fcmp oge double %i.po, 0.000000e+00
  %i.pq = fneg double %i.po
  %i.pr = select i1 %i.pp, double %i.po, double %i.pq ; 2 uses
  %i.ps = fadd double %i.pk, %i.pr
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1888.1 ; 2 uses
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !106
  %i.pv = fadd double %i.pr, %i.pu
  store double %i.pv, ptr %i.pt, align 8, !tbaa !106
  %indvars.iv.next1888.2 = or disjoint i64 %indvars.iv1887, 3 ; 2 uses
  %gep2213.3 = getelementptr [8 x i8], ptr %invariant.gep2212, i64 %indvars.iv.next1888.2
  %i.pw = load double, ptr %gep2213.3, align 8, !tbaa !106 ; 3 uses
  %i.px = fcmp oge double %i.pw, 0.000000e+00
  %i.py = fneg double %i.pw
  %i.pz = select i1 %i.px, double %i.pw, double %i.py ; 2 uses
  %i.qa = fadd double %i.ps, %i.pz                ; 3 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1888.2 ; 2 uses
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !106
  %i.qd = fadd double %i.pz, %i.qc
  store double %i.qd, ptr %i.qb, align 8, !tbaa !106
  %indvars.iv.next1888.3 = add nuw nsw i64 %indvars.iv1887, 4 ; 2 uses
  %niter2497.next.3 = add i64 %niter2497, 4       ; 2 uses
  %niter2497.ncmp.3 = icmp eq i64 %niter2497.next.3, %unroll_iter2496
  br i1 %niter2497.ncmp.3, label %._crit_edge1525.loopexit.unr-lcssa, label %bb.an, !llvm.loop !28

._crit_edge1525.loopexit.unr-lcssa:               ; preds = %bb.an
  %lcmp.mod2493.not = icmp eq i64 %xtraiter2489, 0
  br i1 %lcmp.mod2493.not, label %._crit_edge1525.loopexit, label %.epil.preheader2488

.epil.preheader2488:                              ; preds = %._crit_edge1525.loopexit.unr-lcssa, %.lr.ph1524
  %indvars.iv1887.epil.init = phi i64 [ 0, %.lr.ph1524 ], [ %indvars.iv.next1888.3, %._crit_edge1525.loopexit.unr-lcssa ]
  %.epil.init2492 = phi double [ 0.000000e+00, %.lr.ph1524 ], [ %i.qa, %._crit_edge1525.loopexit.unr-lcssa ]
  %lcmp.mod2495 = icmp ne i64 %xtraiter2489, 0
  tail call void @llvm.assume(i1 %lcmp.mod2495)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader2488
  %indvars.iv1887.epil = phi i64 [ %indvars.iv1887.epil.init, %.epil.preheader2488 ], [ %indvars.iv.next1888.epil, %bb.ao ] ; 3 uses
  %i.qe = phi double [ %.epil.init2492, %.epil.preheader2488 ], [ %i.qj, %bb.ao ]
  %epil.iter2490 = phi i64 [ 0, %.epil.preheader2488 ], [ %epil.iter2490.next, %bb.ao ]
  %gep2213.epil = getelementptr [8 x i8], ptr %invariant.gep2212, i64 %indvars.iv1887.epil
  %i.qf = load double, ptr %gep2213.epil, align 8, !tbaa !106 ; 3 uses
  %i.qg = fcmp oge double %i.qf, 0.000000e+00
  %i.qh = fneg double %i.qf
  %i.qi = select i1 %i.qg, double %i.qf, double %i.qh ; 2 uses
  %i.qj = fadd double %i.qe, %i.qi                ; 2 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1887.epil ; 2 uses
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !106
  %i.qm = fadd double %i.qi, %i.ql
  store double %i.qm, ptr %i.qk, align 8, !tbaa !106
  %indvars.iv.next1888.epil = add nuw nsw i64 %indvars.iv1887.epil, 1
  %epil.iter2490.next = add i64 %epil.iter2490, 1 ; 2 uses
  %epil.iter2490.cmp.not = icmp eq i64 %epil.iter2490.next, %xtraiter2489
  br i1 %epil.iter2490.cmp.not, label %._crit_edge1525.loopexit, label %bb.ao, !llvm.loop !29

._crit_edge1525.loopexit:                         ; preds = %bb.ao, %._crit_edge1525.loopexit.unr-lcssa
  %.lcssa2282 = phi double [ %i.qa, %._crit_edge1525.loopexit.unr-lcssa ], [ %i.qj, %bb.ao ]
  %i.qn = trunc nuw nsw i64 %indvars.iv1905 to i32
  br label %._crit_edge1525

._crit_edge1525:                                  ; preds = %.lr.ph1544, %._crit_edge1525.loopexit
  %.lcssa15351537 = phi double [ %.lcssa2282, %._crit_edge1525.loopexit ], [ 0.000000e+00, %.lr.ph1544 ]
  %.14808.lcssa = phi i32 [ %i.qn, %._crit_edge1525.loopexit ], [ 0, %.lr.ph1544 ] ; 3 uses
  %i.qo = sext i32 %.14808.lcssa to i64
  %i.qp = getelementptr [8 x i8], ptr %4, i64 %.pre2008
  %i.qq = getelementptr [8 x i8], ptr %i.qp, i64 %i.qo
end_hunk_0
begin_hunk_1_@dlansf_:bb.a
  br label %.lr.ph1552

.lr.ph1552:                                       ; preds = %bb.ap, %._crit_edge1989
  %indvars.iv1912 = phi i64 [ %indvars.iv.next1913, %._crit_edge1989 ], [ 1, %bb.ap ] ; 3 uses
  %.161550 = phi double [ %.17, %._crit_edge1989 ], [ %i.tk, %bb.ap ] ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1912
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !106 ; 3 uses
  store double %i.tn, ptr %i.c, align 8, !tbaa !106
  %i.to = fcmp olt double %.161550, %i.tn
  br i1 %i.to, label %._crit_edge1989, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1552
  %i.tp = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not957 = icmp eq i32 %i.tp, 0
  %.pre1990 = load double, ptr %i.c, align 8
  %spec.select2227 = select i1 %.not957, double %.161550, double %.pre1990
  br label %._crit_edge1989

._crit_edge1989:                                  ; preds = %bb.aq, %.lr.ph1552
  %.17 = phi double [ %spec.select2227, %bb.aq ], [ %i.tn, %.lr.ph1552 ] ; 2 uses
  %indvars.iv.next1913 = add nuw nsw i64 %indvars.iv1912, 1
  %i.tq = load i32, ptr %i.a, align 4, !tbaa !104
  %i.tr = sext i32 %i.tq to i64
  %.not956.not = icmp slt i64 %indvars.iv1912, %i.tr
  br i1 %.not956.not, label %.lr.ph1552, label %.loopexit, !llvm.loop !33

bb.ar:                                            ; preds = %bb.al
  %i.ts = add i32 %i.de, -1                       ; 3 uses
  %.not947.not1554 = icmp sgt i32 %i.de, 0
  br i1 %.not947.not1554, label %.preheader, label %.thread2091

.preheader:                                       ; preds = %bb.ar
  %i.tt = zext nneg i32 %i.df to i64
  %i.tu = shl nuw nsw i64 %i.tt, 3
  %scevgep1915 = getelementptr i8, ptr %5, i64 %i.tu
  %i.tv = add nuw nsw i32 %i.df, 1
  %smax1916 = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.tv)
  %i.tw = xor i32 %i.df, -1
  %i.tx = add nsw i32 %smax1916, %i.tw
  %i.ty = zext i32 %i.tx to i64
  %i.tz = shl nuw nsw i64 %i.ty, 3
  %i.ua = add nuw nsw i64 %i.tz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1915, i8 0, i64 %i.ua, i1 false), !tbaa !106
  %.not2235 = icmp eq i32 %i.de, 1
  br i1 %.not2235, label %.thread2091, label %.lr.ph1583

.lr.ph1583:                                       ; preds = %.preheader
  %storemerge9481580 = add nsw i32 %i.df, -1      ; 2 uses
  %i.ub = zext nneg i32 %i.df to i64
  %invariant.gep2218 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ub ; 5 uses
  %wide.trip.count1932 = sext i32 %i.ts to i64
  %i.uc = zext i32 %storemerge9481580 to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph1583, %._crit_edge1572
  %indvar2503 = phi i64 [ 0, %.lr.ph1583 ], [ %indvar.next2504, %._crit_edge1572 ] ; 2 uses
  %storemerge948.in1587 = phi i32 [ %storemerge9481580, %.lr.ph1583 ], [ %storemerge948, %._crit_edge1572 ] ; 6 uses
  %storemerge948.in1581 = phi i32 [ %i.df, %.lr.ph1583 ], [ %storemerge948.in1587, %._crit_edge1572 ] ; 2 uses
  %.not9511559 = icmp slt i32 %storemerge948.in1581, 2
  %.pre2006 = mul nsw i32 %storemerge948.in1587, %.0784 ; 4 uses
  br i1 %.not9511559, label %._crit_edge1563, label %.lr.ph1562

.lr.ph1562:                                       ; preds = %bb.as
  %i.ud = sext i32 %.pre2006 to i64
  %i.ue = add nsw i32 %storemerge948.in1581, -1   ; 3 uses
  %wide.trip.count1923 = zext nneg i32 %i.ue to i64 ; 2 uses
  %invariant.gep2216 = getelementptr [8 x i8], ptr %4, i64 %i.ud ; 5 uses
  %xtraiter2505 = and i64 %wide.trip.count1923, 3 ; 3 uses
  %i.uf = sub i64 %indvar2503, %i.uc
  %i.ug = icmp ugt i64 %i.uf, -4
  br i1 %i.ug, label %.epil.preheader2502, label %.lr.ph1562.new

.lr.ph1562.new:                                   ; preds = %.lr.ph1562
  %unroll_iter2512 = and i64 %wide.trip.count1923, 2147483644
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph1562.new
  %indvars.iv1920 = phi i64 [ 0, %.lr.ph1562.new ], [ %indvars.iv.next1921.3, %bb.at ] ; 6 uses
  %i.uh = phi double [ 0.000000e+00, %.lr.ph1562.new ], [ %i.vh, %bb.at ]
  %niter2513 = phi i64 [ 0, %.lr.ph1562.new ], [ %niter2513.next.3, %bb.at ]
  %gep2217 = getelementptr [8 x i8], ptr %invariant.gep2216, i64 %indvars.iv1920
  %i.ui = load double, ptr %gep2217, align 8, !tbaa !106 ; 3 uses
  %i.uj = fcmp oge double %i.ui, 0.000000e+00
  %i.uk = fneg double %i.ui
  %i.ul = select i1 %i.uj, double %i.ui, double %i.uk ; 2 uses
  %i.um = fadd double %i.uh, %i.ul
  %gep2219 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2218, i64 %indvars.iv1920 ; 2 uses
  %i.un = load double, ptr %gep2219, align 8, !tbaa !106
  %i.uo = fadd double %i.ul, %i.un
  store double %i.uo, ptr %gep2219, align 8, !tbaa !106
  %indvars.iv.next1921 = or disjoint i64 %indvars.iv1920, 1 ; 2 uses
  %gep2217.1 = getelementptr [8 x i8], ptr %invariant.gep2216, i64 %indvars.iv.next1921
  %i.up = load double, ptr %gep2217.1, align 8, !tbaa !106 ; 3 uses
  %i.uq = fcmp oge double %i.up, 0.000000e+00
  %i.ur = fneg double %i.up
  %i.us = select i1 %i.uq, double %i.up, double %i.ur ; 2 uses
  %i.ut = fadd double %i.um, %i.us
  %gep2219.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2218, i64 %indvars.iv.next1921 ; 2 uses
  %i.uu = load double, ptr %gep2219.1, align 8, !tbaa !106
  %i.uv = fadd double %i.us, %i.uu
  store double %i.uv, ptr %gep2219.1, align 8, !tbaa !106
  %indvars.iv.next1921.1 = or disjoint i64 %indvars.iv1920, 2 ; 2 uses
  %gep2217.2 = getelementptr [8 x i8], ptr %invariant.gep2216, i64 %indvars.iv.next1921.1
  %i.uw = load double, ptr %gep2217.2, align 8, !tbaa !106 ; 3 uses
  %i.ux = fcmp oge double %i.uw, 0.000000e+00
  %i.uy = fneg double %i.uw
  %i.uz = select i1 %i.ux, double %i.uw, double %i.uy ; 2 uses
  %i.va = fadd double %i.ut, %i.uz
  %gep2219.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2218, i64 %indvars.iv.next1921.1 ; 2 uses
  %i.vb = load double, ptr %gep2219.2, align 8, !tbaa !106
  %i.vc = fadd double %i.uz, %i.vb
  store double %i.vc, ptr %gep2219.2, align 8, !tbaa !106
  %indvars.iv.next1921.2 = or disjoint i64 %indvars.iv1920, 3 ; 2 uses
  %gep2217.3 = getelementptr [8 x i8], ptr %invariant.gep2216, i64 %indvars.iv.next1921.2
  %i.vd = load double, ptr %gep2217.3, align 8, !tbaa !106 ; 3 uses
  %i.ve = fcmp oge double %i.vd, 0.000000e+00
  %i.vf = fneg double %i.vd
  %i.vg = select i1 %i.ve, double %i.vd, double %i.vf ; 2 uses
  %i.vh = fadd double %i.va, %i.vg                ; 3 uses
  %gep2219.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2218, i64 %indvars.iv.next1921.2 ; 2 uses
  %i.vi = load double, ptr %gep2219.3, align 8, !tbaa !106
  %i.vj = fadd double %i.vg, %i.vi
  store double %i.vj, ptr %gep2219.3, align 8, !tbaa !106
  %indvars.iv.next1921.3 = add nuw nsw i64 %indvars.iv1920, 4 ; 2 uses
  %niter2513.next.3 = add i64 %niter2513, 4       ; 2 uses
  %niter2513.ncmp.3 = icmp eq i64 %niter2513.next.3, %unroll_iter2512
  br i1 %niter2513.ncmp.3, label %._crit_edge1563.loopexit.unr-lcssa, label %bb.at, !llvm.loop !34

._crit_edge1563.loopexit.unr-lcssa:               ; preds = %bb.at
  %lcmp.mod2509.not = icmp eq i64 %xtraiter2505, 0
  br i1 %lcmp.mod2509.not, label %._crit_edge1563, label %.epil.preheader2502

.epil.preheader2502:                              ; preds = %._crit_edge1563.loopexit.unr-lcssa, %.lr.ph1562
  %indvars.iv1920.epil.init = phi i64 [ 0, %.lr.ph1562 ], [ %indvars.iv.next1921.3, %._crit_edge1563.loopexit.unr-lcssa ]
  %.epil.init2508 = phi double [ 0.000000e+00, %.lr.ph1562 ], [ %i.vh, %._crit_edge1563.loopexit.unr-lcssa ]
  %lcmp.mod2511 = icmp ne i64 %xtraiter2505, 0
  tail call void @llvm.assume(i1 %lcmp.mod2511)
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader2502
  %indvars.iv1920.epil = phi i64 [ %indvars.iv1920.epil.init, %.epil.preheader2502 ], [ %indvars.iv.next1921.epil, %bb.au ] ; 3 uses
  %i.vk = phi double [ %.epil.init2508, %.epil.preheader2502 ], [ %i.vp, %bb.au ]
  %epil.iter2506 = phi i64 [ 0, %.epil.preheader2502 ], [ %epil.iter2506.next, %bb.au ]
  %gep2217.epil = getelementptr [8 x i8], ptr %invariant.gep2216, i64 %indvars.iv1920.epil
  %i.vl = load double, ptr %gep2217.epil, align 8, !tbaa !106 ; 3 uses
  %i.vm = fcmp oge double %i.vl, 0.000000e+00
  %i.vn = fneg double %i.vl
  %i.vo = select i1 %i.vm, double %i.vl, double %i.vn ; 2 uses
  %i.vp = fadd double %i.vk, %i.vo                ; 2 uses
  %gep2219.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2218, i64 %indvars.iv1920.epil ; 2 uses
  %i.vq = load double, ptr %gep2219.epil, align 8, !tbaa !106
  %i.vr = fadd double %i.vo, %i.vq
  store double %i.vr, ptr %gep2219.epil, align 8, !tbaa !106
  %indvars.iv.next1921.epil = add nuw nsw i64 %indvars.iv1920.epil, 1
  %epil.iter2506.next = add i64 %epil.iter2506, 1 ; 2 uses
  %epil.iter2506.cmp.not = icmp eq i64 %epil.iter2506.next, %xtraiter2505
  br i1 %epil.iter2506.cmp.not, label %._crit_edge1563, label %bb.au, !llvm.loop !35

._crit_edge1563:                                  ; preds = %._crit_edge1563.loopexit.unr-lcssa, %bb.au, %bb.as
  %.lcssa15731575 = phi double [ 0.000000e+00, %bb.as ], [ %i.vh, %._crit_edge1563.loopexit.unr-lcssa ], [ %i.vp, %bb.au ]
  %.18812.lcssa = phi i32 [ 0, %bb.as ], [ %i.ue, %bb.au ], [ %i.ue, %._crit_edge1563.loopexit.unr-lcssa ] ; 4 uses
  %i.vs = add nsw i32 %.18812.lcssa, %.pre2006
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.vt
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !106 ; 3 uses
  %i.vw = fcmp oge double %i.vv, 0.000000e+00
  %i.vx = fneg double %i.vv
  %i.vy = select i1 %i.vw, double %i.vv, double %i.vx
  %i.vz = fadd double %.lcssa15731575, %i.vy
  %i.wa = add nuw nsw i32 %.18812.lcssa, %i.df
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.wb ; 2 uses
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !106
  %i.we = fadd double %i.wd, %i.vz
  store double %i.we, ptr %i.wc, align 8, !tbaa !106
  %i.wf = add nuw nsw i32 %.18812.lcssa, 1
  %i.wg = add nsw i32 %i.wf, %.pre2006
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.wh
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !106 ; 3 uses
  %i.wk = fcmp oge double %i.wj, 0.000000e+00
  %i.wl = fneg double %i.wj
  %i.wm = select i1 %i.wk, double %i.wj, double %i.wl ; 2 uses
  %i.wn = sext i32 %storemerge948.in1587 to i64   ; 2 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %5, i64 %i.wn ; 3 uses
  store double %i.wm, ptr %i.wo, align 8, !tbaa !106
  %.not952.not1567 = icmp slt i32 %storemerge948.in1587, %i.ts
  br i1 %.not952.not1567, label %.lr.ph1571.preheader, label %._crit_edge1572

.lr.ph1571.preheader:                             ; preds = %._crit_edge1563
  %i.wp = zext nneg i32 %.18812.lcssa to i64
  %i.wq = add nuw nsw i64 %i.wp, 1
  %i.wr = sext i32 %.pre2006 to i64
  %invariant.gep2220 = getelementptr [8 x i8], ptr %4, i64 %i.wr
  br label %.lr.ph1571

.lr.ph1571:                                       ; preds = %.lr.ph1571.preheader, %.lr.ph1571
  %indvars.iv1927 = phi i64 [ %i.wq, %.lr.ph1571.preheader ], [ %indvars.iv.next1928, %.lr.ph1571 ]
  %indvars.iv1925 = phi i64 [ %i.wn, %.lr.ph1571.preheader ], [ %indvars.iv.next1926, %.lr.ph1571 ]
  %i.ws = phi double [ 0.000000e+00, %.lr.ph1571.preheader ], [ %i.wx, %.lr.ph1571 ]
  %indvars.iv.next1926 = add nuw nsw i64 %indvars.iv1925, 1 ; 3 uses
  %indvars.iv.next1928 = add nuw nsw i64 %indvars.iv1927, 1 ; 2 uses
  %gep2221 = getelementptr [8 x i8], ptr %invariant.gep2220, i64 %indvars.iv.next1928
  %i.wt = load double, ptr %gep2221, align 8, !tbaa !106 ; 3 uses
  %i.wu = fcmp oge double %i.wt, 0.000000e+00
  %i.wv = fneg double %i.wt
  %i.ww = select i1 %i.wu, double %i.wt, double %i.wv ; 2 uses
  %i.wx = fadd double %i.ws, %i.ww                ; 2 uses
  %i.wy = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.next1926 ; 2 uses
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !106
  %i.xa = fadd double %i.ww, %i.wz
  store double %i.xa, ptr %i.wy, align 8, !tbaa !106
  %exitcond1933.not = icmp eq i64 %indvars.iv.next1926, %wide.trip.count1932
  br i1 %exitcond1933.not, label %._crit_edge1572.loopexit, label %.lr.ph1571, !llvm.loop !36

._crit_edge1572.loopexit:                         ; preds = %.lr.ph1571
  %.pre1991 = load double, ptr %i.wo, align 8, !tbaa !106
  br label %._crit_edge1572

._crit_edge1572:                                  ; preds = %._crit_edge1572.loopexit, %._crit_edge1563
  %i.xb = phi double [ %i.wm, %._crit_edge1563 ], [ %.pre1991, %._crit_edge1572.loopexit ]
  %.lcssa15731576 = phi double [ 0.000000e+00, %._crit_edge1563 ], [ %i.wx, %._crit_edge1572.loopexit ] ; 2 uses
  %i.xc = fadd double %.lcssa15731576, %i.xb
  store double %i.xc, ptr %i.wo, align 8, !tbaa !106
  %storemerge948 = add nsw i32 %storemerge948.in1587, -1 ; 2 uses
  %i.xd = icmp sgt i32 %storemerge948.in1587, 0
  %indvar.next2504 = add i64 %indvar2503, 1
  br i1 %i.xd, label %bb.as, label %bb.av, !llvm.loop !37

.thread2091:                                      ; preds = %bb.ar, %.preheader
  %i.xe = load double, ptr %5, align 8, !tbaa !106
  br label %.loopexit

bb.av:                                            ; preds = %._crit_edge1572
  store i32 %storemerge948, ptr %i.d, align 4, !tbaa !104
  store double %.lcssa15731576, ptr %i.f, align 8
  %i.xf = load double, ptr %5, align 8, !tbaa !106
  store i32 %i.ts, ptr %i.a, align 4, !tbaa !104
  br label %.lr.ph1592

.lr.ph1592:                                       ; preds = %bb.av, %._crit_edge1992
  %indvars.iv1934 = phi i64 [ %indvars.iv.next1935, %._crit_edge1992 ], [ 1, %bb.av ] ; 3 uses
  %.181590 = phi double [ %.19, %._crit_edge1992 ], [ %i.xf, %bb.av ] ; 2 uses
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1934
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !106 ; 3 uses
  store double %i.xh, ptr %i.c, align 8, !tbaa !106
  %i.xi = fcmp olt double %.181590, %i.xh
  br i1 %i.xi, label %._crit_edge1992, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph1592
  %i.xj = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not950 = icmp eq i32 %i.xj, 0
  %.pre1993 = load double, ptr %i.c, align 8
  %spec.select2228 = select i1 %.not950, double %.181590, double %.pre1993
  br label %._crit_edge1992

._crit_edge1992:                                  ; preds = %bb.aw, %.lr.ph1592
  %.19 = phi double [ %spec.select2228, %bb.aw ], [ %i.xh, %.lr.ph1592 ] ; 2 uses
  %indvars.iv.next1935 = add nuw nsw i64 %indvars.iv1934, 1
  %i.xk = load i32, ptr %i.a, align 4, !tbaa !104
  %i.xl = sext i32 %i.xk to i64
  %.not949.not = icmp slt i64 %indvars.iv1934, %i.xl
  br i1 %.not949.not, label %.lr.ph1592, label %.loopexit, !llvm.loop !38

bb.ax:                                            ; preds = %bb.u
  br i1 %.not946, label %bb.bp, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xm = add nsw i32 %i.df, 1                    ; 12 uses
  store i32 %i.xm, ptr %i.e, align 4, !tbaa !104
  %i.xn = add i32 %i.de, -1                       ; 8 uses
  br i1 %.not852.not.not.not.not.not.not.not.not, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not935.not1149 = icmp sgt i32 %i.de, 0
  br i1 %.not935.not1149, label %._crit_edge1153, label %._crit_edge1153.thread

._crit_edge1153.thread:                           ; preds = %bb.az
  %i.xo = add nsw i32 %i.df, -1
  store i32 %i.xo, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge1167

._crit_edge1153:                                  ; preds = %bb.az
  %i.xp = zext nneg i32 %i.df to i64
  %i.xq = shl nuw nsw i64 %i.xp, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.xq
  %smax = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.xm)
  %i.xr = xor i32 %i.df, -1
  %i.xs = add nsw i32 %smax, %i.xr
  %i.xt = zext i32 %i.xs to i64
  %i.xu = shl nuw nsw i64 %i.xt, 3
  %i.xv = add nuw nsw i64 %i.xu, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.xv, i1 false), !tbaa !106
  %i.xw = add nsw i32 %i.df, -1
  store i32 %i.xw, ptr %i.a, align 4, !tbaa !104
  %.not937.not1163.not = icmp eq i32 %i.de, 1
  br i1 %.not937.not1163.not, label %._crit_edge1167, label %.lr.ph1166

.lr.ph1166:                                       ; preds = %._crit_edge1153
  %i.xx = zext nneg i32 %i.df to i64
  %i.xy = sext i32 %.0784 to i64
  %wide.trip.count1661 = zext nneg i32 %i.df to i64
  %wide.trip.count = zext nneg i32 %i.xm to i64   ; 2 uses
  %invariant.gep2160 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.xx ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.xz = icmp ult i32 %i.xm, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2325 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph1157

.lr.ph1157:                                       ; preds = %._crit_edge1158, %.lr.ph1166
  %indvars.iv1658 = phi i64 [ 0, %.lr.ph1166 ], [ %indvars.iv.next1659, %._crit_edge1158 ] ; 3 uses
  %i.ya = mul nsw i64 %indvars.iv1658, %i.xy
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.ya ; 5 uses
  br i1 %i.xz, label %.epil.preheader, label %.lr.ph1157.new

.lr.ph1157.new:                                   ; preds = %.lr.ph1157, %.lr.ph1157.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph1157.new ], [ 0, %.lr.ph1157 ] ; 6 uses
  %i.yb = phi double [ %i.zd, %.lr.ph1157.new ], [ 0.000000e+00, %.lr.ph1157 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph1157.new ], [ 0, %.lr.ph1157 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.yc = load double, ptr %gep, align 8, !tbaa !106 ; 3 uses
  %i.yd = fcmp oge double %i.yc, 0.000000e+00
  %i.ye = fneg double %i.yc
  %i.yf = select i1 %i.yd, double %i.yc, double %i.ye ; 2 uses
  %gep2161 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2160, i64 %indvars.iv ; 2 uses
  %i.yg = load double, ptr %gep2161, align 8, !tbaa !106
  %i.yh = fadd double %i.yg, %i.yf
  store double %i.yh, ptr %gep2161, align 8, !tbaa !106
  %i.yi = fadd double %i.yf, %i.yb
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.yj = load double, ptr %gep.1, align 8, !tbaa !106 ; 3 uses
  %i.yk = fcmp oge double %i.yj, 0.000000e+00
  %i.yl = fneg double %i.yj
  %i.ym = select i1 %i.yk, double %i.yj, double %i.yl ; 2 uses
  %gep2161.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2160, i64 %indvars.iv.next ; 2 uses
  %i.yn = load double, ptr %gep2161.1, align 8, !tbaa !106
  %i.yo = fadd double %i.yn, %i.ym
  store double %i.yo, ptr %gep2161.1, align 8, !tbaa !106
  %i.yp = fadd double %i.ym, %i.yi
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.yq = load double, ptr %gep.2, align 8, !tbaa !106 ; 3 uses
  %i.yr = fcmp oge double %i.yq, 0.000000e+00
  %i.ys = fneg double %i.yq
  %i.yt = select i1 %i.yr, double %i.yq, double %i.ys ; 2 uses
  %gep2161.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2160, i64 %indvars.iv.next.1 ; 2 uses
  %i.yu = load double, ptr %gep2161.2, align 8, !tbaa !106
  %i.yv = fadd double %i.yu, %i.yt
  store double %i.yv, ptr %gep2161.2, align 8, !tbaa !106
  %i.yw = fadd double %i.yt, %i.yp
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.yx = load double, ptr %gep.3, align 8, !tbaa !106 ; 3 uses
  %i.yy = fcmp oge double %i.yx, 0.000000e+00
  %i.yz = fneg double %i.yx
  %i.za = select i1 %i.yy, double %i.yx, double %i.yz ; 2 uses
  %gep2161.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2160, i64 %indvars.iv.next.2 ; 2 uses
  %i.zb = load double, ptr %gep2161.3, align 8, !tbaa !106
  %i.zc = fadd double %i.zb, %i.za
  store double %i.zc, ptr %gep2161.3, align 8, !tbaa !106
  %i.zd = fadd double %i.za, %i.yw                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1158.unr-lcssa, label %.lr.ph1157.new, !llvm.loop !39

._crit_edge1158.unr-lcssa:                        ; preds = %.lr.ph1157.new
  br i1 %lcmp.mod.not, label %._crit_edge1158, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1158.unr-lcssa, %.lr.ph1157
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph1157 ], [ %indvars.iv.next.3, %._crit_edge1158.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph1157 ], [ %i.zd, %._crit_edge1158.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2325)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ba ] ; 3 uses
  %i.ze = phi double [ %.epil.init, %.epil.preheader ], [ %i.zl, %bb.ba ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ba ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.zf = load double, ptr %gep.epil, align 8, !tbaa !106 ; 3 uses
  %i.zg = fcmp oge double %i.zf, 0.000000e+00
  %i.zh = fneg double %i.zf
  %i.zi = select i1 %i.zg, double %i.zf, double %i.zh ; 2 uses
  %gep2161.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep2160, i64 %indvars.iv.epil ; 2 uses
  %i.zj = load double, ptr %gep2161.epil, align 8, !tbaa !106
  %i.zk = fadd double %i.zj, %i.zi
  store double %i.zk, ptr %gep2161.epil, align 8, !tbaa !106
  %i.zl = fadd double %i.zi, %i.ze                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1158, label %bb.ba, !llvm.loop !40

._crit_edge1158:                                  ; preds = %bb.ba, %._crit_edge1158.unr-lcssa
  %.lcssa2315 = phi double [ %i.zd, %._crit_edge1158.unr-lcssa ], [ %i.zl, %bb.ba ]
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1658
  store double %.lcssa2315, ptr %i.zm, align 8, !tbaa !106
end_hunk_1
