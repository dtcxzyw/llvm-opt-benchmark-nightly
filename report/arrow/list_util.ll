inline.NumInlined: 371
inline.NumDeleted: 175
begin_hunk_0_@_ZN5arrow9list_util8internal17RangeOfValuesUsedERKNS_9ArraySpanE:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bd ; 4 uses
  %i.bk = icmp eq ptr %i.bb, null
  br i1 %i.bk, label %.preheader.i.i, label %bb.p

.preheader.i.i:                                   ; preds = %bb.i
  %.not39140.i.i = icmp sgt i64 %i.av, 0
  br i1 %.not39140.i.i, label %.lr.ph144.i.i, label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIiEESt4pairIllERKNS_9ArraySpanE.exit

.lr.ph144.i.i:                                    ; preds = %.preheader.i.i, %bb.o
  %.035143.i.i = phi i64 [ %i.bx, %bb.o ], [ 0, %.preheader.i.i ] ; 4 uses
  %.sroa.9.0142.i.i = phi i8 [ %.sroa.9.1.i.i, %bb.o ], [ 0, %.preheader.i.i ]
  %.sroa.078.0141.i.i = phi i32 [ %.sroa.078.1.i.i, %bb.o ], [ undef, %.preheader.i.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.035143.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 5 uses
  %i.bn = trunc nuw i8 %.sroa.9.0142.i.i to i1
  br i1 %i.bn, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph144.i.i
  %i.bo = icmp slt i32 %i.bm, %.sroa.078.0141.i.i
  br i1 %i.bo, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.035143.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bs = icmp eq i32 %i.bm, 0
  br i1 %i.bs, label %.loopexit.i, label %bb.o

bb.m:                                             ; preds = %.lr.ph144.i.i
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.035143.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp eq i32 %i.bm, 0
  br i1 %i.bw, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.078.1.i.i = phi i32 [ %.sroa.078.0141.i.i, %bb.m ], [ %.sroa.078.0141.i.i, %bb.k ], [ %.sroa.078.0141.i.i, %bb.j ], [ %i.bm, %bb.l ], [ %i.bm, %bb.n ] ; 2 uses
  %.sroa.9.1.i.i = phi i8 [ 0, %bb.m ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.n ] ; 2 uses
  %i.bx = add nuw nsw i64 %.035143.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.av
  br i1 %exitcond.not.i.i, label %.critedge41.i.i, label %.lr.ph144.i.i, !llvm.loop !69

bb.p:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %i.bb, i64 noundef %i.bd, i64 noundef %i.av)
  %i.by = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5) ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 1      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.thread.i.i, label %.preheader124.i.i

.critedge43.loopexit.i.i:                         ; preds = %bb.v, %.preheader124.i.i
  %.sroa.078.3.lcssa.i.i = phi i32 [ %.sroa.078.2136.i.i, %.preheader124.i.i ], [ %.sroa.078.4.i.i, %bb.v ] ; 2 uses
  %.sroa.9.3.lcssa.i.i = phi i8 [ %.sroa.9.2137.i.i, %.preheader124.i.i ], [ %.sroa.9.4.i.i, %bb.v ] ; 2 uses
  %i.cb = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5) ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 1      ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.thread.i.i, label %.preheader124.i.i

.preheader124.i.i:                                ; preds = %bb.p, %.critedge43.loopexit.i.i
  %i.ce = phi i64 [ %i.cc, %.critedge43.loopexit.i.i ], [ %i.bz, %bb.p ] ; 2 uses
  %.pn.i.i = phi { i64, i64 } [ %i.cb, %.critedge43.loopexit.i.i ], [ %i.by, %bb.p ]
  %.sroa.9.2137.i.i = phi i8 [ %.sroa.9.3.lcssa.i.i, %.critedge43.loopexit.i.i ], [ 0, %bb.p ] ; 2 uses
  %.sroa.078.2136.i.i = phi i32 [ %.sroa.078.3.lcssa.i.i, %.critedge43.loopexit.i.i ], [ undef, %bb.p ] ; 2 uses
  %i.cf = extractvalue { i64, i64 } %.pn.i.i, 0   ; 2 uses
  %i.cg = add nsw i64 %i.cf, %i.ce
  %.not131.i.i = icmp sgt i64 %i.ce, 0
  br i1 %.not131.i.i, label %.lr.ph.i.i, label %.critedge43.loopexit.i.i

.thread.i.i:                                      ; preds = %.critedge43.loopexit.i.i, %bb.p
  %.sroa.078.2.lcssa.i.i = phi i32 [ undef, %bb.p ], [ %.sroa.078.3.lcssa.i.i, %.critedge43.loopexit.i.i ]
  %.sroa.9.2.lcssa.i.i = phi i8 [ 0, %bb.p ], [ %.sroa.9.3.lcssa.i.i, %.critedge43.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge41.i.i

.lr.ph.i.i:                                       ; preds = %.preheader124.i.i, %bb.v
  %.0134.i.i = phi i64 [ %i.ct, %bb.v ], [ %i.cf, %.preheader124.i.i ] ; 4 uses
  %.sroa.9.3133.i.i = phi i8 [ %.sroa.9.4.i.i, %bb.v ], [ %.sroa.9.2137.i.i, %.preheader124.i.i ]
  %.sroa.078.3132.i.i = phi i32 [ %.sroa.078.4.i.i, %bb.v ], [ %.sroa.078.2136.i.i, %.preheader124.i.i ] ; 4 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.0134.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3  ; 5 uses
  %i.cj = trunc nuw i8 %.sroa.9.3133.i.i to i1
  br i1 %i.cj, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ck = icmp slt i32 %i.ci, %.sroa.078.3132.i.i
  br i1 %i.ck, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.0134.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.co = icmp eq i32 %i.ci, 0
  br i1 %i.co, label %bb.w, label %bb.v

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.0134.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = icmp eq i32 %i.ci, 0
  br i1 %i.cs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.078.4.i.i = phi i32 [ %.sroa.078.3132.i.i, %bb.t ], [ %.sroa.078.3132.i.i, %bb.r ], [ %.sroa.078.3132.i.i, %bb.q ], [ %i.ci, %bb.s ], [ %i.ci, %bb.u ] ; 2 uses
  %.sroa.9.4.i.i = phi i8 [ 0, %bb.t ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.u ] ; 2 uses
  %i.ct = add nsw i64 %.0134.i.i, 1               ; 2 uses
  %.not.i.i = icmp slt i64 %i.ct, %i.cg
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.critedge43.loopexit.i.i, !llvm.loop !71

bb.w:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.i

.critedge41.i.i:                                  ; preds = %bb.o, %.thread.i.i
  %.sroa.078.6.i.i = phi i32 [ %.sroa.078.2.lcssa.i.i, %.thread.i.i ], [ %.sroa.078.1.i.i, %bb.o ]
  %.sroa.9.6.i.i = phi i8 [ %.sroa.9.2.lcssa.i.i, %.thread.i.i ], [ %.sroa.9.1.i.i, %bb.o ]
  %i.cu = trunc nuw i8 %.sroa.9.6.i.i to i1
  br i1 %i.cu, label %bb.x, label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIiEESt4pairIllERKNS_9ArraySpanE.exit

bb.x:                                             ; preds = %.critedge41.i.i
  %i.cv = sext i32 %.sroa.078.6.i.i to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.n, %bb.l, %bb.x, %bb.w
  %.sroa.098.5.i.ph.i = phi i64 [ %i.cv, %bb.x ], [ 0, %bb.w ], [ 0, %bb.l ], [ 0, %bb.n ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !59 ; 4 uses
  %i.da = load ptr, ptr %i.ba, align 8, !tbaa !60 ; 2 uses
  %i.db = load i64, ptr %i.bc, align 8, !tbaa !64 ; 3 uses
  %i.dc = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.db ; 2 uses
  %i.dg = icmp eq ptr %i.da, null
  br i1 %i.dg, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.loopexit.i
  %i.dh = load i64, ptr %i.au, align 8, !tbaa !59 ; 2 uses
  %i.di = icmp slt i64 %i.dh, 1
  br i1 %i.di, label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i, label %.lr.ph126.i.i

.lr.ph126.i.i:                                    ; preds = %bb.y, %bb.ab
  %.069125.in.i.i = phi i64 [ %.069125.i.i, %bb.ab ], [ %i.dh, %bb.y ] ; 2 uses
  %.056124.i.i = phi i64 [ %.460.i.i, %bb.ab ], [ 0, %bb.y ] ; 3 uses
  %.069125.i.i = add nsw i64 %.069125.in.i.i, -1  ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.069125.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3  ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph126.i.i
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.069125.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = sext i32 %i.dn to i64
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = add nsw i64 %i.do, %i.dp                ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, %.056124.i.i
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = icmp eq i64 %i.dq, %i.cz
  br i1 %i.ds, label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph126.i.i
  %.460.i.i = phi i64 [ %.056124.i.i, %.lr.ph126.i.i ], [ %.056124.i.i, %bb.z ], [ %i.dq, %bb.aa ] ; 2 uses
  %i.dt = icmp samesign ult i64 %.069125.in.i.i, 2
  br i1 %i.dt, label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i, label %.lr.ph126.i.i, !llvm.loop !73

bb.ac:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.du = load i64, ptr %i.au, align 8, !tbaa !59
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb1EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.da, i64 noundef %i.db, i64 noundef %i.du)
  %i.dv = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb1EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4) ; 2 uses
  %i.dw = extractvalue { i64, i64 } %i.dv, 1      ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.thread91.sink.split.i.i, label %.lr.ph121.i.i

.loopexit.i.i:                                    ; preds = %bb.af, %.lr.ph121.i.i
  %.763.lcssa.i.i = phi i64 [ %.662120.i.i, %.lr.ph121.i.i ], [ %.1167.i.i, %bb.af ] ; 2 uses
  %i.dy = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb1EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4) ; 2 uses
  %i.dz = extractvalue { i64, i64 } %i.dy, 1      ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.thread91.sink.split.i.i, label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %bb.ac, %.loopexit.i.i
  %i.eb = phi i64 [ %i.dz, %.loopexit.i.i ], [ %i.dw, %bb.ac ]
  %.pn.i7.i = phi { i64, i64 } [ %i.dy, %.loopexit.i.i ], [ %i.dv, %bb.ac ]
  %.662120.i.i = phi i64 [ %.763.lcssa.i.i, %.loopexit.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.ec = extractvalue { i64, i64 } %.pn.i7.i, 0  ; 3 uses
  %7 = add i64 %i.eb, -1
  %.070116.i.i = add i64 %7, %i.ec                ; 2 uses
  %.not117.i.i = icmp slt i64 %.070116.i.i, %i.ec
  br i1 %.not117.i.i, label %.loopexit.i.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph121.i.i, %bb.af
  %.070119.in.i.i = phi i64 [ %.070.i.i, %bb.af ], [ %.070116.i.i, %.lr.ph121.i.i ] ; 3 uses
  %.763118.i.i = phi i64 [ %.1167.i.i, %bb.af ], [ %.662120.i.i, %.lr.ph121.i.i ] ; 3 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.070119.in.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3  ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i8.i
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %.070119.in.i.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = sext i32 %i.eh to i64
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = add nsw i64 %i.ei, %i.ej                ; 3 uses
  %i.el = icmp sgt i64 %i.ek, %.763118.i.i
  br i1 %i.el, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.em = icmp eq i64 %i.ek, %i.cz
  br i1 %i.em, label %.thread91.sink.split.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph.i8.i
  %.1167.i.i = phi i64 [ %.763118.i.i, %.lr.ph.i8.i ], [ %.763118.i.i, %bb.ad ], [ %i.ek, %bb.ae ] ; 2 uses
  %.070.i.i = add nsw i64 %.070119.in.i.i, -1     ; 2 uses
  %.not.i9.i = icmp slt i64 %.070.i.i, %i.ec
  br i1 %.not.i9.i, label %.loopexit.i.i, label %.lr.ph.i8.i, !llvm.loop !74

.thread91.sink.split.i.i:                         ; preds = %.loopexit.i.i, %bb.ae, %bb.ac
  %.12.ph.i.i = phi i64 [ %i.cz, %bb.ae ], [ 0, %bb.ac ], [ %.763.lcssa.i.i, %.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i

_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i: ; preds = %bb.ab, %bb.aa, %.thread91.sink.split.i.i, %bb.y
  %.12.i.i = phi i64 [ 0, %bb.y ], [ %.12.ph.i.i, %.thread91.sink.split.i.i ], [ %i.cz, %bb.aa ], [ %.460.i.i, %bb.ab ]
  %i.en = sub nsw i64 %.12.i.i, %.sroa.098.5.i.ph.i
  br label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIiEESt4pairIllERKNS_9ArraySpanE.exit

_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIiEESt4pairIllERKNS_9ArraySpanE.exit: ; preds = %bb.h, %.preheader.i.i, %.critedge41.i.i, %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i
  %.sroa.014.1.i = phi i64 [ 0, %bb.h ], [ %.sroa.098.5.i.ph.i, %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i ], [ 0, %.critedge41.i.i ], [ 0, %.preheader.i.i ]
  %.sroa.4.1.i = phi i64 [ 0, %bb.h ], [ %i.en, %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIiEElRKNS_9ArraySpanE.exit.i ], [ 0, %.critedge41.i.i ], [ 0, %.preheader.i.i ]
  store ptr null, ptr %0, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.014.1.i, ptr %i.eo, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i, ptr %.sroa.453.0..sroa_idx, align 8
  br label %bb.bg

bb.ag:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !59 ; 6 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = icmp eq i64 %i.et, %i.eq
  %or.cond.i17 = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i17, label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIlEESt4pairIllERKNS_9ArraySpanE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !60 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !64 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !60
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ey ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !60
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ey ; 5 uses
  %i.ff = icmp eq ptr %i.ew, null
  br i1 %i.ff, label %.preheader.i.i49, label %bb.ao

.preheader.i.i49:                                 ; preds = %bb.ah
  %.not39109.i.i = icmp sgt i64 %i.eq, 0
  br i1 %.not39109.i.i, label %.lr.ph113.i.i, label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIlEESt4pairIllERKNS_9ArraySpanE.exit

.lr.ph113.i.i:                                    ; preds = %.preheader.i.i49, %bb.an
  %.035112.i.i = phi i64 [ %i.fs, %bb.an ], [ 0, %.preheader.i.i49 ] ; 4 uses
  %.sroa.9.0111.i.i = phi i8 [ %.sroa.9.1.i.i50, %bb.an ], [ 0, %.preheader.i.i49 ]
  %.sroa.066.0110.i.i = phi i64 [ %.sroa.066.1.i.i, %bb.an ], [ undef, %.preheader.i.i49 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.035112.i.i
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !68 ; 5 uses
  %i.fi = trunc nuw i8 %.sroa.9.0111.i.i to i1
  br i1 %i.fi, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.lr.ph113.i.i
  %i.fj = icmp slt i64 %i.fh, %.sroa.066.0110.i.i
  br i1 %i.fj, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.035112.i.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !68
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fn = icmp eq i64 %i.fh, 0
  br i1 %i.fn, label %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i, label %bb.an

bb.al:                                            ; preds = %.lr.ph113.i.i
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.035112.i.i
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !68
  %i.fq = icmp sgt i64 %i.fp, 0
  br i1 %i.fq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fr = icmp eq i64 %i.fh, 0
  br i1 %i.fr, label %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.sroa.066.1.i.i = phi i64 [ %.sroa.066.0110.i.i, %bb.al ], [ %.sroa.066.0110.i.i, %bb.aj ], [ %.sroa.066.0110.i.i, %bb.ai ], [ %i.fh, %bb.ak ], [ %i.fh, %bb.am ] ; 2 uses
  %.sroa.9.1.i.i50 = phi i8 [ 0, %bb.al ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.ak ], [ 1, %bb.am ] ; 2 uses
  %i.fs = add nuw nsw i64 %.035112.i.i, 1         ; 2 uses
  %exitcond.not.i.i51 = icmp eq i64 %i.fs, %i.eq
  br i1 %exitcond.not.i.i51, label %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i, label %.lr.ph113.i.i, !llvm.loop !75

bb.ao:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.ew, i64 noundef %i.ey, i64 noundef %i.eq)
  %i.ft = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3) ; 2 uses
  %i.fu = extractvalue { i64, i64 } %i.ft, 1      ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %.critedge.sink.split.i.i, label %.preheader95.i.i

.critedge43.loopexit.i.i19:                       ; preds = %bb.au, %.preheader95.i.i
  %.sroa.066.3.lcssa.i.i = phi i64 [ %.sroa.066.2105.i.i, %.preheader95.i.i ], [ %.sroa.066.4.i.i, %bb.au ] ; 2 uses
  %.sroa.9.3.lcssa.i.i20 = phi i8 [ %.sroa.9.2106.i.i, %.preheader95.i.i ], [ %.sroa.9.4.i.i47, %bb.au ] ; 2 uses
  %i.fw = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3) ; 2 uses
  %i.fx = extractvalue { i64, i64 } %i.fw, 1      ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.critedge.sink.split.i.i, label %.preheader95.i.i

.preheader95.i.i:                                 ; preds = %bb.ao, %.critedge43.loopexit.i.i19
  %i.fz = phi i64 [ %i.fx, %.critedge43.loopexit.i.i19 ], [ %i.fu, %bb.ao ] ; 2 uses
  %.pn.i.i18 = phi { i64, i64 } [ %i.fw, %.critedge43.loopexit.i.i19 ], [ %i.ft, %bb.ao ]
  %.sroa.9.2106.i.i = phi i8 [ %.sroa.9.3.lcssa.i.i20, %.critedge43.loopexit.i.i19 ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.066.2105.i.i = phi i64 [ %.sroa.066.3.lcssa.i.i, %.critedge43.loopexit.i.i19 ], [ undef, %bb.ao ] ; 2 uses
  %i.ga = extractvalue { i64, i64 } %.pn.i.i18, 0 ; 2 uses
  %i.gb = add nsw i64 %i.ga, %i.fz
  %.not100.i.i = icmp sgt i64 %i.fz, 0
  br i1 %.not100.i.i, label %.lr.ph.i.i46, label %.critedge43.loopexit.i.i19

.lr.ph.i.i46:                                     ; preds = %.preheader95.i.i, %bb.au
  %.0103.i.i = phi i64 [ %i.go, %bb.au ], [ %i.ga, %.preheader95.i.i ] ; 4 uses
  %.sroa.9.3102.i.i = phi i8 [ %.sroa.9.4.i.i47, %bb.au ], [ %.sroa.9.2106.i.i, %.preheader95.i.i ]
  %.sroa.066.3101.i.i = phi i64 [ %.sroa.066.4.i.i, %bb.au ], [ %.sroa.066.2105.i.i, %.preheader95.i.i ] ; 4 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.0103.i.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !68 ; 5 uses
  %i.ge = trunc nuw i8 %.sroa.9.3102.i.i to i1
  br i1 %i.ge, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.lr.ph.i.i46
  %i.gf = icmp slt i64 %i.gd, %.sroa.066.3101.i.i
  br i1 %i.gf, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.0103.i.i
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !68
  %i.gi = icmp sgt i64 %i.gh, 0
  br i1 %i.gi, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gj = icmp eq i64 %i.gd, 0
  br i1 %i.gj, label %.critedge.sink.split.i.i, label %bb.au

bb.as:                                            ; preds = %.lr.ph.i.i46
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.0103.i.i
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !68
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gn = icmp eq i64 %i.gd, 0
  br i1 %i.gn, label %.critedge.sink.split.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.066.4.i.i = phi i64 [ %.sroa.066.3101.i.i, %bb.as ], [ %.sroa.066.3101.i.i, %bb.aq ], [ %.sroa.066.3101.i.i, %bb.ap ], [ %i.gd, %bb.ar ], [ %i.gd, %bb.at ] ; 2 uses
  %.sroa.9.4.i.i47 = phi i8 [ 0, %bb.as ], [ 1, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.at ] ; 2 uses
  %i.go = add nsw i64 %.0103.i.i, 1               ; 2 uses
  %.not.i.i48 = icmp slt i64 %i.go, %i.gb
  br i1 %.not.i.i48, label %.lr.ph.i.i46, label %.critedge43.loopexit.i.i19, !llvm.loop !76

.critedge.sink.split.i.i:                         ; preds = %.critedge43.loopexit.i.i19, %bb.at, %bb.ar, %bb.ao
  %.sroa.069.4.ph.i.i = phi i64 [ 0, %bb.at ], [ undef, %bb.ao ], [ 0, %bb.ar ], [ %.sroa.066.3.lcssa.i.i, %.critedge43.loopexit.i.i19 ]
  %.sroa.6.4.ph.i.i = phi i8 [ 1, %bb.at ], [ 0, %bb.ao ], [ 1, %bb.ar ], [ %.sroa.9.3.lcssa.i.i20, %.critedge43.loopexit.i.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i

_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i: ; preds = %bb.an, %.critedge.sink.split.i.i
  %.sroa.069.4.i.i = phi i64 [ %.sroa.069.4.ph.i.i, %.critedge.sink.split.i.i ], [ %.sroa.066.1.i.i, %bb.an ] ; 2 uses
  %.sroa.6.4.i.i = phi i8 [ %.sroa.6.4.ph.i.i, %.critedge.sink.split.i.i ], [ %.sroa.9.1.i.i50, %bb.an ]
  %i.gp = trunc nuw i8 %.sroa.6.4.i.i to i1
  br i1 %i.gp, label %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i, label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIlEESt4pairIllERKNS_9ArraySpanE.exit

_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i: ; preds = %bb.am, %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !59
  br label %bb.av

_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i: ; preds = %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i
  %.pre.i = load ptr, ptr %i.ev, align 8, !tbaa !60 ; 2 uses
  %.pre29.i = load i64, ptr %i.ex, align 8, !tbaa !64 ; 3 uses
  %.pre30.i = load ptr, ptr %i.ez, align 8, !tbaa !60
  %.pre31.i = load ptr, ptr %i.fc, align 8, !tbaa !60
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !72
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !59 ; 3 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %.pre30.i, i64 %.pre29.i ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.pre31.i, i64 %.pre29.i ; 2 uses
  %i.ha = icmp eq ptr %.pre.i, null
  %.pre = load i64, ptr %i.ep, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ha, label %bb.av, label %bb.az

bb.av:                                            ; preds = %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i
  %i.hb = phi i64 [ %i.eq, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i ], [ %.pre, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i ] ; 2 uses
  %i.hc = phi ptr [ %i.fe, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i ], [ %i.gz, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i ]
  %i.hd = phi ptr [ %i.fb, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i ], [ %i.gy, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i ]
  %i.he = phi i64 [ %i.gt, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i ], [ %i.gx, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i ] ; 2 uses
  %.sroa.069.4.i1952.i = phi i64 [ 0, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.thread.i ], [ %.sroa.069.4.i.i, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i ] ; 3 uses
  %i.hf = icmp slt i64 %i.hb, 1
  br i1 %i.hf, label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i, label %.lr.ph126.i.i41

.lr.ph126.i.i41:                                  ; preds = %bb.av, %bb.ay
  %.069125.in.i.i42 = phi i64 [ %.069125.i.i44, %bb.ay ], [ %i.hb, %bb.av ] ; 2 uses
  %.056124.i.i43 = phi i64 [ %.460.i.i45, %bb.ay ], [ 0, %bb.av ] ; 3 uses
  %.069125.i.i44 = add nsw i64 %.069125.in.i.i42, -1 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.069125.i.i44
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !68 ; 2 uses
  %i.hi = icmp sgt i64 %i.hh, 0
  br i1 %i.hi, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph126.i.i41
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.069125.i.i44
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !68
  %i.hl = add nsw i64 %i.hk, %i.hh                ; 3 uses
  %i.hm = icmp sgt i64 %i.hl, %.056124.i.i43
  br i1 %i.hm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hn = icmp eq i64 %i.hl, %i.he
  br i1 %i.hn, label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph126.i.i41
  %.460.i.i45 = phi i64 [ %.056124.i.i43, %.lr.ph126.i.i41 ], [ %.056124.i.i43, %bb.aw ], [ %i.hl, %bb.ax ] ; 2 uses
  %i.ho = icmp samesign ult i64 %.069125.in.i.i42, 2
  br i1 %i.ho, label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i, label %.lr.ph126.i.i41, !llvm.loop !77

bb.az:                                            ; preds = %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb1EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %.pre.i, i64 noundef %.pre29.i, i64 noundef %.pre)
  %i.hp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb1EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %i.hq = extractvalue { i64, i64 } %i.hp, 1      ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %.thread91.sink.split.i.i31, label %.lr.ph121.i.i25

.loopexit.i.i29:                                  ; preds = %bb.bc, %.lr.ph121.i.i25
  %.763.lcssa.i.i30 = phi i64 [ %.662120.i.i27, %.lr.ph121.i.i25 ], [ %.1167.i.i39, %bb.bc ] ; 2 uses
  %i.hs = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb1EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %i.ht = extractvalue { i64, i64 } %i.hs, 1      ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.thread91.sink.split.i.i31, label %.lr.ph121.i.i25

.lr.ph121.i.i25:                                  ; preds = %bb.az, %.loopexit.i.i29
  %i.hv = phi i64 [ %i.ht, %.loopexit.i.i29 ], [ %i.hq, %bb.az ]
  %.pn.i7.i26 = phi { i64, i64 } [ %i.hs, %.loopexit.i.i29 ], [ %i.hp, %bb.az ]
  %.662120.i.i27 = phi i64 [ %.763.lcssa.i.i30, %.loopexit.i.i29 ], [ 0, %bb.az ] ; 2 uses
  %i.hw = extractvalue { i64, i64 } %.pn.i7.i26, 0 ; 3 uses
  %8 = add i64 %i.hv, -1
  %.070116.i.i28 = add i64 %8, %i.hw              ; 2 uses
  %.not117.i.i29 = icmp slt i64 %.070116.i.i28, %i.hw
  br i1 %.not117.i.i29, label %.loopexit.i.i29, label %.lr.ph.i8.i35

.lr.ph.i8.i35:                                    ; preds = %.lr.ph121.i.i25, %bb.bc
  %.070119.in.i.i36 = phi i64 [ %.070.i.i34, %bb.bc ], [ %.070116.i.i28, %.lr.ph121.i.i25 ] ; 3 uses
  %.763118.i.i37 = phi i64 [ %.1167.i.i39, %bb.bc ], [ %.662120.i.i27, %.lr.ph121.i.i25 ] ; 3 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %.070119.in.i.i36
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !68 ; 2 uses
  %i.hz = icmp sgt i64 %i.hy, 0
  br i1 %i.hz, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph.i8.i35
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %.070119.in.i.i36
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !68
  %i.ic = add nsw i64 %i.ib, %i.hy                ; 3 uses
  %i.id = icmp sgt i64 %i.ic, %.763118.i.i37
  br i1 %i.id, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ie = icmp eq i64 %i.ic, %i.gx
  br i1 %i.ie, label %.thread91.sink.split.i.i31, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph.i8.i35
  %.1167.i.i39 = phi i64 [ %.763118.i.i37, %.lr.ph.i8.i35 ], [ %.763118.i.i37, %bb.ba ], [ %i.ic, %bb.bb ] ; 2 uses
  %.070.i.i34 = add nsw i64 %.070119.in.i.i36, -1 ; 2 uses
  %.not.i9.i35 = icmp slt i64 %.070.i.i34, %i.hw
  br i1 %.not.i9.i35, label %.loopexit.i.i29, label %.lr.ph.i8.i35, !llvm.loop !78

.thread91.sink.split.i.i31:                       ; preds = %.loopexit.i.i29, %bb.bb, %bb.az
  %.12.ph.i.i32 = phi i64 [ %i.gx, %bb.bb ], [ 0, %bb.az ], [ %.763.lcssa.i.i30, %.loopexit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i

_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i: ; preds = %bb.ay, %bb.ax, %.thread91.sink.split.i.i31, %bb.av
  %.sroa.069.4.i1951.i = phi i64 [ %.sroa.069.4.i1952.i, %bb.av ], [ %.sroa.069.4.i.i, %.thread91.sink.split.i.i31 ], [ %.sroa.069.4.i1952.i, %bb.ax ], [ %.sroa.069.4.i1952.i, %bb.ay ] ; 2 uses
  %.12.i.i33 = phi i64 [ 0, %bb.av ], [ %.12.ph.i.i32, %.thread91.sink.split.i.i31 ], [ %.460.i.i45, %bb.ay ], [ %i.he, %bb.ax ]
  %i.if = sub nsw i64 %.12.i.i33, %.sroa.069.4.i1951.i
  br label %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIlEESt4pairIllERKNS_9ArraySpanE.exit

_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIlEESt4pairIllERKNS_9ArraySpanE.exit: ; preds = %bb.ag, %.preheader.i.i49, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i, %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i
  %.sroa.014.1.i21 = phi i64 [ 0, %bb.ag ], [ %.sroa.069.4.i1951.i, %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i ], [ 0, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i ], [ 0, %.preheader.i.i49 ]
  %.sroa.4.1.i22 = phi i64 [ 0, %bb.ag ], [ %i.if, %_ZN5arrow9list_util8internal12_GLOBAL__N_110MaxViewEndIlEElRKNS_9ArraySpanE.exit.i ], [ 0, %_ZN5arrow9list_util8internal12_GLOBAL__N_113MinViewOffsetIlEESt8optionalIlERKNS_9ArraySpanE.exit.i ], [ 0, %.preheader.i.i49 ]
  store ptr null, ptr %0, align 8, !tbaa !65
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.014.1.i21, ptr %i.ig, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i22, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.bg

bb.bd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5arrow6Status8FromArgsIJRA61_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(61) @.str)
  call void @_ZN5arrow6ResultISt4pairIllEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %i.ih = load ptr, ptr %6, align 8, !tbaa !65    ; 2 uses
  %.not.i = icmp eq ptr %i.ih, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.be, !prof !79

bb.be:                                            ; preds = %bb.bd
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !80, !range !90, !noundef !91
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.bd, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIlEESt4pairIllERKNS_9ArraySpanE.exit, %_ZN5arrow9list_util8internal12_GLOBAL__N_127RangeOfValuesUsedByListViewIiEESt4pairIllERKNS_9ArraySpanE.exit, %_ZN5arrow9list_util8internal12_GLOBAL__N_123RangeOfValuesUsedByListIlEESt4pairIllERKNS_9ArraySpanE.exit, %_ZN5arrow9list_util8internal12_GLOBAL__N_123RangeOfValuesUsedByListIiEESt4pairIllERKNS_9ArraySpanE.exit10, %_ZN5arrow9list_util8internal12_GLOBAL__N_123RangeOfValuesUsedByListIiEESt4pairIllERKNS_9ArraySpanE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt4pairIllEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !65
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !92

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !94
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !93     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !94
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.m = load ptr, ptr %3, align 8, !tbaa !93     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !94
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9list_util8internal21SumOfLogicalListSizesERKNS_9ArraySpanE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.16") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %6 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  switch i32 %i.c, label %bb.q [
    i32 25, label %bb.b
    i32 30, label %bb.e
    i32 36, label %bb.h
    i32 41, label %bb.k
    i32 42, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.m = icmp eq ptr %i.e, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr [4 x i8], ptr %i.j, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = load i32, ptr %i.j, align 4, !tbaa !3
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = sext i32 %i.r to i64
  br label %_ZN5arrow9list_util8internal12_GLOBAL__N_114SumOfListSizesIiEElRKNS_9ArraySpanE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %i.e, i64 noundef %i.g, i64 noundef %i.l)
  %i.t = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %6) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 1        ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.0.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ 0, %bb.d ]
  %i.w = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %i.u, %bb.d ]
  %i.x = phi { i64, i64 } [ %i.ah, %.lr.ph.i.i ], [ %i.t, %bb.d ]
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = getelementptr [4 x i8], ptr %i.j, i64 %i.y ; 2 uses
end_hunk_0
