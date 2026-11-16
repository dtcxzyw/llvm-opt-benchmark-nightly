Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6smergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE:bb.a
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %.thread
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit86

bb.k:                                             ; preds = %.thread
  %i.z = xor i32 %.sroa.0.0.i, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit86

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit86: ; preds = %.thread, %bb.j, %bb.k
  %.sroa.06.0.i85 = phi i32 [ %i.z, %bb.k ], [ 0, %bb.j ], [ 1, %.thread ]
  %.sroa.025.0.copyload = load i32, ptr %3, align 4, !tbaa !38
  %.sroa.024.0.copyload = load i32, ptr %5, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 %.sroa.06.0.i85, ptr %10, align 4, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.sroa.025.0.copyload, ptr %i.aa, align 4, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.024.0.copyload, ptr %i.ab, align 4, !tbaa !38
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit86, %bb.i
  %i.ac = load ptr, ptr %6, align 8, !tbaa !641   ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !38 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.n, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.m, %bb.n
  %i.aj = phi i32 [ %.pre2.i, %bb.n ], [ %i.af, %bb.m ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i, %bb.n ], [ %i.ac, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  store i32 %.sroa.0.0.i, ptr %i.an, align 4, !tbaa !38
  %i.ao = add i32 %i.aj, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

.split162.us:                                     ; preds = %tailrecurse.us
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %4, i32 %1) ; 2 uses
  %.not.i = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split162.us
  %wide.trip.count.i = zext i32 %.sroa.speculated to i64
  %.pre.i87 = load ptr, ptr %6, align 8, !tbaa !641
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %.lr.ph.preheader.i
  %i.ap = phi ptr [ %.pre.i87, %.lr.ph.preheader.i ], [ %i.ax, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.p, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %bb.p, %bb.o
  %i.ax = phi ptr [ %.pre.i.i, %bb.p ], [ %i.ap, %bb.o ] ; 3 uses
  %i.ay = phi i32 [ %.pre2.i.i, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !38
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !38
  %i.bd = add i32 %i.ay, 1
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.i, !llvm.loop !23

.split173.us:                                     ; preds = %tailrecurse.outer.split.us199, %tailrecurse.preheader
  %.us-phi = phi i32 [ %.us-phi202, %tailrecurse.preheader ], [ %2, %tailrecurse.outer.split.us199 ]
  %.not.i89 = icmp eq i32 %1, 0
  br i1 %.not.i89, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.preheader.i90

.lr.ph.preheader.i90:                             ; preds = %tailrecurse.outer.split.us199, %.split173.us
  %.us-phi260 = phi i32 [ %.us-phi, %.split173.us ], [ 1, %tailrecurse.outer.split.us199 ]
  %.sroa.speculated128 = tail call i32 @llvm.umin.i32(i32 %.us-phi260, i32 %1)
  %wide.trip.count.i91 = zext i32 %.sroa.speculated128 to i64
  %.pre.i92 = load ptr, ptr %6, align 8, !tbaa !641
  br label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i95, %.lr.ph.preheader.i90
  %i.be = phi ptr [ %.pre.i92, %.lr.ph.preheader.i90 ], [ %i.bm, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i95 ] ; 4 uses
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.preheader.i90 ], [ %indvars.iv.next.i96, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i95 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i94
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i93
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !38 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !38
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.r, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i95

bb.r:                                             ; preds = %bb.q, %.lr.ph.i93
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i.i98 = load ptr, ptr %6, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i99 = getelementptr inbounds i8, ptr %.pre.i.i98, i64 -4
  %.pre2.i.i100 = load i32, ptr %.phi.trans.insert.i.i99, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i95

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i95: ; preds = %bb.r, %bb.q
  %i.bm = phi ptr [ %.pre.i.i98, %bb.r ], [ %i.be, %bb.q ] ; 3 uses
  %i.bn = phi i32 [ %.pre2.i.i100, %bb.r ], [ %i.bi, %bb.q ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i32, ptr %i.bf, align 4, !tbaa !38
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !38
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !38
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next.i96, %wide.trip.count.i91
  br i1 %exitcond.not.i97, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.i93, !llvm.loop !23

.split192.us:                                     ; preds = %tailrecurse.us186.preheader, %tailrecurse.us186, %bb.b, %tailrecurse
  %.us-phi194 = phi i32 [ %1, %tailrecurse ], [ %4, %bb.b ], [ %4, %tailrecurse.us186.preheader ], [ %1, %tailrecurse.us186 ] ; 5 uses
  %i.bt = add i32 %.us-phi194, %.us-phi202
  %.not = icmp ugt i32 %i.bt, %1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.split192.us
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.us-phi202, ptr noundef %3, i32 noundef %.us-phi194, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

bb.t:                                             ; preds = %.split192.us
  %i.bu = tail call noundef zeroext i1 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.us-phi202, i32 noundef %.us-phi194, i32 noundef %1)
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dsmergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %.us-phi202, ptr noundef %3, i32 noundef %.us-phi194, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr null, ptr %14, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr null, ptr %15, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr null, ptr %16, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr null, ptr %17, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store ptr null, ptr %18, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr null, ptr %19, align 8, !tbaa !641
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.us-phi202, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.w unwind label %bb.ar

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.us-phi194, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.bv = and i32 %1, 1
  %i.bw = icmp eq i32 %i.bv, 0                    ; 3 uses
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = lshr exact i32 %1, 1                    ; 2 uses
  %i.by = add nuw i32 %i.bx, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bz = add nuw i32 %1, 1
  %i.ca = lshr exact i32 %i.bz, 1
  %21 = add nsw i32 %1, -1
  %i.cb = lshr exact i32 %21, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.069 = phi i32 [ %i.bx, %bb.y ], [ %i.cb, %bb.z ]
  %.068 = phi i32 [ %i.by, %bb.y ], [ %i.ca, %bb.z ]
  %i.cc = load ptr, ptr %14, align 8, !tbaa !641  ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.cf, %bb.ab ], [ 0, %bb.aa ]
  %i.cg = load ptr, ptr %16, align 8, !tbaa !641  ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.ac
  %.0.i102 = phi i32 [ %i.cj, %bb.ac ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ]
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6smergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.068, i32 noundef %.0.i, ptr noundef %i.cc, i32 noundef %.0.i102, ptr noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ad unwind label %bb.ar

bb.ad:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103
  %i.ck = load ptr, ptr %15, align 8, !tbaa !641  ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105:  ; preds = %bb.ad, %bb.ae
  %.0.i104 = phi i32 [ %i.cn, %bb.ae ], [ 0, %bb.ad ]
  %i.co = load ptr, ptr %17, align 8, !tbaa !641  ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107, label %bb.af

bb.af:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105, %bb.af
  %.0.i106 = phi i32 [ %i.cr, %bb.af ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105 ]
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6smergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.069, i32 noundef %.0.i104, ptr noundef %i.ck, i32 noundef %.0.i106, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store i32 -2, ptr %20, align 4, !tbaa !40
  br i1 %i.bw, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr %18, align 8, !tbaa !641  ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  br label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit:      ; preds = %bb.ah, %bb.ai
  %.0.i.i = phi i64 [ %i.cx, %bb.ai ], [ 4294967295, %bb.ah ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.0.i.i
  %.sroa.019.0.copyload = load i32, ptr %i.cy, align 4, !tbaa !38 ; 4 uses
  %i.cz = load ptr, ptr %19, align 8, !tbaa !641  ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit109, label %bb.aj

bb.aj:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !38
  %i.dd = add i32 %i.dc, -1
  %i.de = zext i32 %i.dd to i64
  br label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit109

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit109:   ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit, %bb.aj
  %.0.i.i108 = phi i64 [ %i.de, %bb.aj ], [ 4294967295, %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.0.i.i108
  %.sroa.016.0.copyload = load i32, ptr %i.df, align 4, !tbaa !38 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cs, i64 -4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !38
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !38
  %i.dj = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !38
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !38
  %i.dm = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_maxEN3sat7literalES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %.sroa.019.0.copyload, i32 %.sroa.016.0.copyload)
          to label %bb.ak unwind label %bb.as     ; 5 uses

bb.ak:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit109
  store i32 %i.dm, ptr %20, align 4, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !750
  %.not74 = icmp eq i32 %i.do, 1
  br i1 %.not74, label %.thread145, label %bb.al

bb.al:                                            ; preds = %bb.ak
  switch i32 %.sroa.019.0.copyload, label %bb.an [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
    i32 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111

bb.an:                                            ; preds = %bb.al
  %i.dp = xor i32 %.sroa.019.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111: ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.06.0.i110 = phi i32 [ %i.dp, %bb.an ], [ 0, %bb.am ], [ 1, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sroa.06.0.i110, ptr %9, align 4, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.dm, ptr %i.dq, align 4, !tbaa !38
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %9)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  switch i32 %.sroa.016.0.copyload, label %bb.aq [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit113
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit113

bb.aq:                                            ; preds = %bb.ao
  %i.dr = xor i32 %.sroa.016.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit113

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit113: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.06.0.i112 = phi i32 [ %i.dr, %bb.aq ], [ 0, %bb.ap ], [ 1, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 %.sroa.06.0.i112, ptr %8, align 4, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.dm, ptr %i.ds, align 4, !tbaa !38
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %8)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %bb.v, %bb.w, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.as:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit116, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit113, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111, %bb.aw, %bb.ay, %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit109
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ba

bb.at:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.pr144 = load i32, ptr %i.dn, align 8, !tbaa !750
  %.not75 = icmp eq i32 %.pr144, 0
  br i1 %.not75, label %bb.aw, label %.thread145

.thread145:                                       ; preds = %bb.at, %bb.ak
  switch i32 %i.dm, label %bb.av [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit116
    i32 1, label %bb.au
  ]

bb.au:                                            ; preds = %.thread145
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit116

bb.av:                                            ; preds = %.thread145
  %i.dv = xor i32 %i.dm, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit116

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit116: ; preds = %bb.av, %bb.au, %.thread145
  %.sroa.06.0.i115 = phi i32 [ %i.dv, %bb.av ], [ 0, %bb.au ], [ 1, %.thread145 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 %.sroa.06.0.i115, ptr %7, align 4, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.019.0.copyload, ptr %i.dw, align 4, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.016.0.copyload, ptr %i.dx, align 4, !tbaa !38
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %7)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_S5_.exit unwind label %bb.as

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_S5_.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aw

end_hunk_0
