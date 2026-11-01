Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NSG?download=true
inline.NumInlined: 1167
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss3NSG15search_on_graphILb0EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  %i.az = load ptr, ptr %3, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ay)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bd = add nsw i32 %.084167, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.185 = phi i32 [ %i.bd, %bb.j ], [ %.084167, %.lr.ph ] ; 2 uses
  %i.be = add nuw i64 %.090166, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %invariant.umin
  br i1 %exitcond.not, label %.preheader154, label %.lr.ph, !llvm.loop !134

.preheader151:                                    ; preds = %bb.p, %.preheader154
  %.not182 = icmp eq ptr %.0.i.i.i.i.i, %.sroa.0137.0
  br i1 %.not182, label %._crit_edge, label %.lr.ph173

.lr.ph171:                                        ; preds = %.preheader154, %bb.p
  %.286170 = phi i32 [ %.387, %bb.p ], [ %.084.lcssa, %.preheader154 ] ; 3 uses
  %i.bf = load i32, ptr %0, align 8, !tbaa !42
  %i.bg = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %8, i32 noundef %i.bf)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %.lr.ph171
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bh)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.bl, label %bb.p, label %bb.n, !llvm.loop !135

bb.n:                                             ; preds = %bb.m
  %i.bm = sext i32 %.286170 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %i.bm
  store i32 %i.bg, ptr %i.bn, align 4, !tbaa !45
  %i.bo = load ptr, ptr %3, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bh)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bs = add nsw i32 %.286170, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %.387 = phi i32 [ %i.bs, %bb.o ], [ %.286170, %bb.m ] ; 2 uses
  %i.bt = icmp slt i32 %.387, %5
  br i1 %i.bt, label %.lr.ph171, label %.preheader151

._crit_edge:                                      ; preds = %bb.r, %.preheader151
  %i.bu = load ptr, ptr %6, align 8, !tbaa !75    ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 12                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge180, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.bx = shl nuw nsw i64 %i.bw, 1
  %i.by = xor i64 %i.bx, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.bu, ptr nonnull %i.bv, i64 noundef %i.by)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.q
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.bu, ptr nonnull %i.bv)
          to label %.lr.ph179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph173:                                        ; preds = %.preheader151, %bb.r
  %.091172 = phi i64 [ %i.ci, %bb.r ], [ 0, %.preheader151 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %.091172
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %2, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef float %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph173
  %i.cg = load ptr, ptr %6, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %.091172 ; 3 uses
  store i32 %i.ca, ptr %i.ch, align 4, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store float %i.cf, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 1, ptr %.sroa.5127.0..sroa_idx, align 4, !tbaa !76
  %i.ci = add nuw i64 %.091172, 1                 ; 2 uses
  %exitcond196.not = icmp eq i64 %i.ci, %i.aq
  br i1 %exitcond196.not, label %._crit_edge, label %.lr.ph173, !llvm.loop !136

.lr.ph179:                                        ; preds = %.noexc114
  %i.cj = add nsw i32 %5, -1                      ; 3 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = icmp sgt i32 %5, 2
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph179, %.loopexit
  %.089178 = phi i32 [ 0, %.lr.ph179 ], [ %i.fa, %.loopexit ] ; 3 uses
  %i.cm = sext i32 %.089178 to i64
  %i.cn = load ptr, ptr %6, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.cm ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !77, !range !48, !noundef !49
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.cp, align 4, !tbaa !77
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !62
  %i.ct = load ptr, ptr %1, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef i64 %i.cv(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.cs, ptr noundef %.sroa.0129.0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.t
  %.not184 = icmp eq i64 %i.cw, 0
  br i1 %.not184, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader, %bb.af
  %.088175 = phi i64 [ %i.ey, %bb.af ], [ 0, %.preheader ] ; 2 uses
  %.0174 = phi i32 [ %.2, %bb.af ], [ %5, %.preheader ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0, i64 %.088175
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !45 ; 6 uses
  %i.cz = load i32, ptr %0, align 8, !tbaa !42
  %.not95 = icmp slt i32 %i.cy, %i.cz
  br i1 %.not95, label %bb.u, label %bb.af

bb.u:                                             ; preds = %.lr.ph176
  %i.da = sext i32 %i.cy to i64                   ; 3 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.da)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.de, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %3, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.da)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %2, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef float %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.da)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.y:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr %6, align 8, !tbaa !60    ; 10 uses
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.ck
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !64
  %i.dr = fcmp ult float %i.dm, %i.dq
  br i1 %i.dr, label %bb.z, label %bb.af

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.w, %bb.x, %bb.i
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph173, %bb.t, %bb.n, %bb.l, %.lr.ph171, %bb.q, %.noexc114, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit113
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %.sroa.0129.0, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit119, label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread

bb.z:                                             ; preds = %bb.y
  %i.ds = bitcast float %i.dm to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.ds to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.cy to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !64
  %i.dv = fcmp ogt float %i.du, %i.dm
  br i1 %i.dv, label %bb.aa, label %.preheader68.i

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr nonnull align 4 %i.dn, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.dn, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.z
  br i1 %i.cl, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not214 = icmp eq i32 %.063..i, 0
  br i1 %.not214, label %._crit_edge.i, label %.lr.ph74.preheader.i

.lr.ph74.preheader.i:                             ; preds = %.preheader.i
  %9 = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.cj, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.dx = add nuw nsw i32 %.06370.i, %.071.i
  %i.dy = lshr i32 %i.dx, 1                       ; 3 uses
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !64
  %i.ed = fcmp ogt float %i.ec, %i.dm             ; 2 uses
  %.063..i = select i1 %i.ed, i32 %.06370.i, i32 %i.dy ; 4 uses
  %..0.i = select i1 %i.ed, i32 %i.dy, i32 %.071.i ; 5 uses
  %i.ee = add nsw i32 %..0.i, -1
  %i.ef = icmp slt i32 %.063..i, %i.ee
  br i1 %i.ef, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph74.i:                                       ; preds = %bb.ac, %.lr.ph74.preheader.i
  %indvars.iv.i = phi i64 [ %9, %.lr.ph74.preheader.i ], [ %indvars.iv.next.i, %bb.ac ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !64
  %i.ej = fcmp olt float %i.ei, %i.dm
  br i1 %i.ej, label %._crit_edge.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph74.i
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !62
  %i.el = icmp eq i32 %i.ek, %i.cy
  br i1 %i.el, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.em = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.em, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.ac, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa81.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.cj, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.ac ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.ac ], [ %indvars.iv.i, %.lr.ph74.i ]
  %i.en = getelementptr inbounds [12 x i8], ptr %i.dn, i64 %.2.lcssa.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !62
  %i.ep = icmp eq i32 %i.eo, %i.cy
  br i1 %i.ep, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.eq = zext nneg i32 %.0.lcssa81.i to i64
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.eq ; 5 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !62
  %i.et = icmp eq i32 %i.es, %i.cy
  br i1 %i.et, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr i8, ptr %i.er, i64 12
  %i.ev = sub nsw i32 %5, %.0.lcssa81.i
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %i.ew, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eu, ptr nonnull align 4 %i.er, i64 %i.ex, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.er, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.ae, %bb.aa
  %.sink = phi ptr [ %i.dn, %bb.aa ], [ %i.er, %bb.ae ]
  %.065.i.ph = phi i32 [ 0, %bb.aa ], [ %.0.lcssa81.i, %bb.ae ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !76
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ab, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.ad
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.ad ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.ab ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0174)
  br label %bb.af

bb.af:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.y, %.lr.ph176, %bb.v
  %.2 = phi i32 [ %.0174, %bb.v ], [ %.0174, %.lr.ph176 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0174, %bb.y ] ; 2 uses
  %i.ey = add nuw i64 %.088175, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.ey, %i.cw
  br i1 %exitcond197.not, label %.loopexit, label %.lr.ph176, !llvm.loop !137

.loopexit:                                        ; preds = %bb.af, %.preheader, %bb.s
  %.3 = phi i32 [ %5, %bb.s ], [ %5, %.preheader ], [ %.2, %bb.af ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089178
  %i.ez = add nsw i32 %.089178, 1
  %i.fa = select i1 %.not, i32 %i.ez, i32 %.3     ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %5
  br i1 %i.fb, label %bb.s, label %._crit_edge180, !llvm.loop !138

._crit_edge180:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0129.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge180
  %i.fc = ptrtoint ptr %.sroa.13.0 to i64
  %i.fd = ptrtoint ptr %.sroa.0129.0 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0, i64 noundef %i.fe) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge180, %bb.ag
  %.not.i.i.i116 = icmp eq ptr %.sroa.0137.0, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ff = ptrtoint ptr %.sroa.16.0 to i64
  %i.fg = sub i64 %i.ff, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0137.0, i64 noundef %i.fg) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi217 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp227, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %i.fh = ptrtoint ptr %.sroa.13.0 to i64
  %i.fi = ptrtoint ptr %.sroa.0129.0 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0, i64 noundef %i.fj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

_ZNSt6vectorIiSaIiEED2Ev.exit119:                 ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread
  %.pn99.pn.pn = phi { ptr, i32 } [ %lpad.phi217, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread ], [ %i.as, %bb.h ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i120 = icmp eq ptr %.sroa.0137.0, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIiSaIiEED2Ev.exit121, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit119
  %i.fk = ptrtoint ptr %.sroa.16.0 to i64
  %i.fl = ptrtoint ptr %.sroa.0137.0 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0137.0, i64 noundef %i.fm) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

_ZNSt6vectorIiSaIiEED2Ev.exit121:                 ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn99.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !78

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46
  store i8 %i.u, ptr %i.s, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !46
  store i8 %i.y, ptr %i.x, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !55    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !46
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
end_hunk_0
begin_hunk_1_@_ZNK5faiss3NSG15search_on_graphILb0ElEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.az)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.084163, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.185 = phi i32 [ %i.be, %bb.j ], [ %.084163, %.lr.ph ] ; 2 uses
  %i.bf = add nuw i64 %.090162, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %invariant.umin
  br i1 %exitcond.not, label %.preheader150, label %.lr.ph, !llvm.loop !183

.preheader147:                                    ; preds = %bb.p, %.preheader150
  %.not178 = icmp eq ptr %.0.i.i.i.i.i, %.sroa.0133.0
  br i1 %.not178, label %._crit_edge, label %.lr.ph169

.lr.ph167:                                        ; preds = %.preheader150, %bb.p
  %.286166 = phi i32 [ %.387, %bb.p ], [ %.084.lcssa, %.preheader150 ] ; 3 uses
  %i.bg = load i32, ptr %0, align 8, !tbaa !42
  %i.bh = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %8, i32 noundef %i.bg)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %.lr.ph167
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bi)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.bm, label %bb.p, label %bb.n, !llvm.loop !184

bb.n:                                             ; preds = %bb.m
  %i.bn = sext i32 %.286166 to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0133.0, i64 %i.bn
  store i32 %i.bh, ptr %i.bo, align 4, !tbaa !45
  %i.bp = load ptr, ptr %3, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bi)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i32 %.286166, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %.387 = phi i32 [ %i.bt, %bb.o ], [ %.286166, %bb.m ] ; 2 uses
  %i.bu = icmp slt i32 %.387, %5
  br i1 %i.bu, label %.lr.ph167, label %.preheader147

._crit_edge:                                      ; preds = %bb.r, %.preheader147
  %i.bv = load ptr, ptr %6, align 8, !tbaa !75    ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 12                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge176, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = xor i64 %i.by, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.bv, ptr nonnull %i.bw, i64 noundef %i.bz)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.q
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.bv, ptr nonnull %i.bw)
          to label %.lr.ph175 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph169:                                        ; preds = %.preheader147, %bb.r
  %.091168 = phi i64 [ %i.cj, %bb.r ], [ 0, %.preheader147 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0133.0, i64 %.091168
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !45 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load ptr, ptr %2, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef float %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cc)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph169
  %i.ch = load ptr, ptr %6, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %.091168 ; 3 uses
  store i32 %i.cb, ptr %i.ci, align 4, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store float %i.cg, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 1, ptr %.sroa.5123.0..sroa_idx, align 4, !tbaa !76
  %i.cj = add nuw i64 %.091168, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.cj, %i.aq
  br i1 %exitcond192.not, label %._crit_edge, label %.lr.ph169, !llvm.loop !185

.lr.ph175:                                        ; preds = %.noexc111
  %i.ck = add nsw i32 %5, -1                      ; 3 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = icmp sgt i32 %5, 2
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph175, %.loopexit
  %.089174 = phi i32 [ 0, %.lr.ph175 ], [ %i.fc, %.loopexit ] ; 3 uses
  %i.cn = sext i32 %.089174 to i64
  %i.co = load ptr, ptr %6, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !77, !range !48, !noundef !49
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.cq, align 4, !tbaa !77
  %i.ct = load i32, ptr %i.cp, align 4, !tbaa !62
  %i.cu = load ptr, ptr %1, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.ct, ptr noundef %.sroa.0125.0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.t
  %.not180 = icmp eq i64 %i.cx, 0
  br i1 %.not180, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader, %bb.af
  %.088171 = phi i64 [ %i.fa, %bb.af ], [ 0, %.preheader ] ; 2 uses
  %.0170 = phi i32 [ %.2, %bb.af ], [ %5, %.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0125.0, i64 %.088171
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !63 ; 3 uses
  %i.da = trunc i64 %i.cz to i32                  ; 4 uses
  %i.db = load i32, ptr %0, align 8, !tbaa !42
  %.not95 = icmp sgt i32 %i.db, %i.da
  br i1 %.not95, label %bb.u, label %bb.af

bb.u:                                             ; preds = %.lr.ph172
  %sext = shl i64 %i.cz, 32
  %i.dc = ashr exact i64 %sext, 32                ; 3 uses
  %i.dd = load ptr, ptr %3, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.dc)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.dg, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = load ptr, ptr %3, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.dc)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.dl = load ptr, ptr %2, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef float %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.dc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.y:                                             ; preds = %bb.x
  %i.dp = load ptr, ptr %6, align 8, !tbaa !60    ; 10 uses
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %i.cl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !64
  %i.dt = fcmp ult float %i.do, %i.ds
  br i1 %i.dt, label %bb.z, label %bb.af

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.w, %bb.x, %bb.i
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph169, %bb.t, %bb.n, %bb.l, %.lr.ph167, %bb.q, %.noexc111, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.sroa.0125.0, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIlSaIlEED2Ev.exit115, label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread

bb.z:                                             ; preds = %bb.y
  %i.du = bitcast float %i.do to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.du to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = and i64 %i.cz, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !64
  %i.dx = fcmp ogt float %i.dw, %i.do
  br i1 %i.dx, label %bb.aa, label %.preheader68.i

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %i.dp, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.dp, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.z
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not210 = icmp eq i32 %.063..i, 0
  br i1 %.not210, label %._crit_edge.i, label %.lr.ph74.preheader.i

.lr.ph74.preheader.i:                             ; preds = %.preheader.i
  %9 = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.ck, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.dz = add nuw nsw i32 %.06370.i, %.071.i
  %i.ea = lshr i32 %i.dz, 1                       ; 3 uses
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !64
  %i.ef = fcmp ogt float %i.ee, %i.do             ; 2 uses
  %.063..i = select i1 %i.ef, i32 %.06370.i, i32 %i.ea ; 4 uses
  %..0.i = select i1 %i.ef, i32 %i.ea, i32 %.071.i ; 5 uses
  %i.eg = add nsw i32 %..0.i, -1
  %i.eh = icmp slt i32 %.063..i, %i.eg
  br i1 %i.eh, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph74.i:                                       ; preds = %bb.ac, %.lr.ph74.preheader.i
  %indvars.iv.i = phi i64 [ %9, %.lr.ph74.preheader.i ], [ %indvars.iv.next.i, %bb.ac ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %indvars.iv.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !64
  %i.el = fcmp olt float %i.ek, %i.do
  br i1 %i.el, label %._crit_edge.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph74.i
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !62
  %i.en = icmp eq i32 %i.em, %i.da
  br i1 %i.en, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.eo = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.eo, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.ac, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa81.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.ck, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.ac ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.ac ], [ %indvars.iv.i, %.lr.ph74.i ]
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.dp, i64 %.2.lcssa.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !62
  %i.er = icmp eq i32 %i.eq, %i.da
  br i1 %i.er, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.es = zext nneg i32 %.0.lcssa81.i to i64
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %i.es ; 5 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !62
  %i.ev = icmp eq i32 %i.eu, %i.da
  br i1 %i.ev, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr i8, ptr %i.et, i64 12
  %i.ex = sub nsw i32 %5, %.0.lcssa81.i
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ew, ptr nonnull align 4 %i.et, i64 %i.ez, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.et, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.ae, %bb.aa
  %.sink = phi ptr [ %i.dp, %bb.aa ], [ %i.et, %bb.ae ]
  %.065.i.ph = phi i32 [ 0, %bb.aa ], [ %.0.lcssa81.i, %bb.ae ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !76
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ab, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.ad
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.ad ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.ab ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0170)
  br label %bb.af

bb.af:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.y, %.lr.ph172, %bb.v
  %.2 = phi i32 [ %.0170, %bb.v ], [ %.0170, %.lr.ph172 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0170, %bb.y ] ; 2 uses
  %i.fa = add nuw i64 %.088171, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.fa, %i.cx
  br i1 %exitcond193.not, label %.loopexit, label %.lr.ph172, !llvm.loop !186

.loopexit:                                        ; preds = %bb.af, %.preheader, %bb.s
  %.3 = phi i32 [ %5, %bb.s ], [ %5, %.preheader ], [ %.2, %bb.af ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089174
  %i.fb = add nsw i32 %.089174, 1
  %i.fc = select i1 %.not, i32 %i.fb, i32 %.3     ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %5
  br i1 %i.fd, label %bb.s, label %._crit_edge176, !llvm.loop !187

._crit_edge176:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0125.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge176
  %i.fe = ptrtoint ptr %.sroa.13.0 to i64
  %i.ff = ptrtoint ptr %.sroa.0125.0 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0, i64 noundef %i.fg) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge176, %bb.ag
  %.not.i.i.i113 = icmp eq ptr %.sroa.0133.0, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.fh = ptrtoint ptr %.sroa.16.0 to i64
  %i.fi = sub i64 %i.fh, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.0, i64 noundef %i.fi) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi213 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %i.fj = ptrtoint ptr %.sroa.13.0 to i64
  %i.fk = ptrtoint ptr %.sroa.0125.0 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0, i64 noundef %i.fl) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit115

_ZNSt6vectorIlSaIlEED2Ev.exit115:                 ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread
  %.pn100.pn.pn = phi { ptr, i32 } [ %lpad.phi213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.thread ], [ %i.as, %bb.h ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i116 = icmp eq ptr %.sroa.0133.0, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit115
  %i.fm = ptrtoint ptr %.sroa.16.0 to i64
  %i.fn = ptrtoint ptr %.sroa.0133.0 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.0, i64 noundef %i.fo) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %bb.ai, %_ZNSt6vectorIlSaIlEED2Ev.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn100.pn.pn
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss3NSG4linkEPNS_5IndexERKNS_3nsg5GraphIlEERNS4_INS3_4NodeEEEb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %5) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.3", align 8     ; 9 uses
  %7 = alloca %"class.std::vector", align 8       ; 8 uses
  %8 = alloca %"class.std::unique_ptr.31", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i32 %i.g, 0
  %i.j = shl nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.m = load i32, ptr %3, align 8, !tbaa !42
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.0.0.copyload = load i16, ptr %i.o, align 4
  invoke void @_ZN5faiss12VisitedTable6createEmSt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.31") align 8 %8, i64 noundef %i.n, i16 %.sroa.0.0.copyload)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !102    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  switch i32 %i.r, label %bb.g [
    i32 23, label %bb.d
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.s = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.d
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(36) %i.p)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss24NegativeDistanceComputerE, i64 16), ptr %i.s, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !28
  br label %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit

bb.f:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 16) #24
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(36) %i.p)
          to label %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !98

_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit: ; preds = %bb.e, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.e ], [ %i.ac, %bb.g ] ; 7 uses
  %i.ad = load i32, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !45    ; 5 uses
  br i1 %i.ae, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit
  %i.af = add nsw i32 %i.ad, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 %i.af, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !45
  call void @__kmpc_dispatch_init_4(ptr nonnull @2, i32 %.pre, i32 1073741859, i32 0, i32 %i.af, i32 1, i32 100)
  %i.ag = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %.pre, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not36 = icmp eq i32 %i.ag, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.n, %bb.i
  %i.al = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %.pre, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph37, %.loopexit
  %i.am = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !45, !llvm.access.group !188
  %.not2134 = icmp sgt i32 %i.am, %i.an
  br i1 %.not2134, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ao = sext i32 %i.am to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !102, !llvm.access.group !188 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23, !llvm.access.group !188
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !llvm.access.group !188
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(36) %i.ap, i64 noundef %indvars.iv, ptr noundef nonnull %i.l)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !188

bb.j:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %.0.i, align 8, !tbaa !23, !llvm.access.group !188
end_hunk_1
begin_hunk_2_@_ZNK5faiss3NSG15search_on_graphILb1ElEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  %i.do = add nsw i32 %5, -1                      ; 3 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = icmp sgt i32 %5, 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph206, %.loopexit
  %.089205 = phi i32 [ 0, %.lr.ph206 ], [ %i.hf, %.loopexit ] ; 3 uses
  %i.dr = sext i32 %.089205 to i64
  %i.ds = load ptr, ptr %6, align 8, !tbaa !60
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dr ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !77, !range !48, !noundef !49
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.du, align 4, !tbaa !77
  %i.dx = load i32, ptr %i.dt, align 4, !tbaa !62
  %i.dy = load ptr, ptr %1, align 8, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.dx, ptr noundef %.sroa.0146.0)
          to label %.preheader unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.z
  %.not211 = icmp eq i64 %i.eb, 0
  br i1 %.not211, label %.loopexit, label %.lr.ph203

.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.z, %bb.n, %bb.l, %.lr.ph198, %bb.q, %.noexc112, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %bb.v
  %lpad.loopexit.split-lp273 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %.sroa.0146.0, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIlSaIlEED2Ev.exit129, label %.thread

.lr.ph203:                                        ; preds = %.preheader, %bb.aq
  %.088202 = phi i64 [ %i.hd, %bb.aq ], [ 0, %.preheader ] ; 2 uses
  %.0201 = phi i32 [ %.2, %bb.aq ], [ %5, %.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0146.0, i64 %.088202
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !63 ; 3 uses
  %i.ee = trunc i64 %i.ed to i32                  ; 6 uses
  %i.ef = load i32, ptr %0, align 8, !tbaa !42
  %.not95 = icmp sgt i32 %i.ef, %i.ee
  br i1 %.not95, label %bb.aa, label %bb.aq

bb.aa:                                            ; preds = %.lr.ph203
  %sext = shl i64 %i.ed, 32
  %i.eg = ashr exact i64 %sext, 32                ; 3 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.eg)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ek, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = load ptr, ptr %3, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.eg)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr %2, align 8, !tbaa !23
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef float %i.er(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.eg)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.ae:                                            ; preds = %bb.ad
  %i.et = load ptr, ptr %i.dm, align 8, !tbaa !113 ; 5 uses
  %i.eu = load ptr, ptr %i.dn, align 8, !tbaa !68
  %.not.i116 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i116, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.ee, ptr %i.et, align 4, !tbaa !107
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store float %i.es, ptr %i.ev, align 4, !tbaa !114
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ew, ptr %i.dm, align 8, !tbaa !113
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125

bb.ag:                                            ; preds = %bb.ae
  %i.ex = load ptr, ptr %7, align 8, !tbaa !67    ; 4 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 5 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ah, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117: ; preds = %bb.ag
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i118, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i119 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i119)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #23
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.fa ; 3 uses
  store i32 %i.ee, ptr %i.fj, align 4, !tbaa !107
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store float %i.es, ptr %i.fk, align 4, !tbaa !114
  %i.fl = icmp sgt i64 %i.fa, 0
  br i1 %i.fl, label %bb.ai, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120

bb.ai:                                            ; preds = %.noexc124
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fi, ptr align 4 %i.ex, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120: ; preds = %bb.ai, %.noexc124
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.not.i28.i.i121 = icmp eq ptr %i.ex, null
  br i1 %.not.i28.i.i121, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120
  %i.fn = load ptr, ptr %i.dn, align 8, !tbaa !68
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.fo, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fp) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122: ; preds = %bb.aj, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120
  store ptr %i.fi, ptr %7, align 8, !tbaa !67
  store ptr %i.fm, ptr %i.dm, align 8, !tbaa !113
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fq, ptr %i.dn, align 8, !tbaa !68
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122, %bb.af
  %i.fr = load ptr, ptr %6, align 8, !tbaa !60    ; 10 uses
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fr, i64 %i.dp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !64
  %i.fv = fcmp ult float %i.es, %i.fu
  br i1 %i.fv, label %bb.ak, label %bb.aq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.aa, %bb.ac, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117, %bb.i, %bb.ah
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ak:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125
  %i.fw = bitcast float %i.es to i32
  %.sroa.0.sroa.5.0.insert.ext = zext i32 %i.fw to i64
  %.sroa.0.sroa.5.0.insert.shift = shl nuw i64 %.sroa.0.sroa.5.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = and i64 %i.ed, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !64
  %i.fz = fcmp ogt float %i.fy, %i.es
  br i1 %i.fz, label %bb.al, label %.preheader68.i

bb.al:                                            ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ga, ptr nonnull align 4 %i.fr, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.fr, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.ak
  br i1 %i.dq, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not251 = icmp eq i32 %.063..i, 0
  br i1 %.not251, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.gb = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.do, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.gc = add nuw nsw i32 %.06370.i, %.071.i
  %i.gd = lshr i32 %i.gc, 1                       ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.fr, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !64
  %i.gi = fcmp ogt float %i.gh, %i.es             ; 2 uses
  %.063..i = select i1 %i.gi, i32 %.06370.i, i32 %i.gd ; 4 uses
  %..0.i = select i1 %i.gi, i32 %i.gd, i32 %.071.i ; 5 uses
  %i.gj = add nsw i32 %..0.i, -1
  %i.gk = icmp slt i32 %.063..i, %i.gj
  br i1 %i.gk, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph74.i:                                       ; preds = %bb.an, %.lr.ph74.i.preheader
  %indvars.iv = phi i64 [ %i.gb, %.lr.ph74.i.preheader ], [ %indvars.iv.next, %bb.an ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.fr, i64 %indvars.iv ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !64
  %i.go = fcmp olt float %i.gn, %i.es
  br i1 %i.go, label %._crit_edge.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph74.i
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !62
  %i.gq = icmp eq i32 %i.gp, %i.ee
  br i1 %i.gq, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gr = icmp sgt i64 %indvars.iv, 1
  br i1 %i.gr, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.an, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.do, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.an ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.an ], [ %indvars.iv, %.lr.ph74.i ]
  %i.gs = getelementptr inbounds [12 x i8], ptr %i.fr, i64 %.2.lcssa.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !62
  %i.gu = icmp eq i32 %i.gt, %i.ee
  br i1 %i.gu, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gv = zext nneg i32 %.0.lcssa80.i to i64
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.fr, i64 %i.gv ; 5 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !62
  %i.gy = icmp eq i32 %i.gx, %i.ee
  br i1 %i.gy, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gz = getelementptr i8, ptr %i.gw, i64 12
  %i.ha = sub nsw i32 %5, %.0.lcssa80.i
  %i.hb = sext i32 %i.ha to i64
  %i.hc = mul nsw i64 %i.hb, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gz, ptr nonnull align 4 %i.gw, i64 %i.hc, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.gw, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.ap, %bb.al
  %.sink = phi ptr [ %i.fr, %bb.al ], [ %i.gw, %bb.ap ]
  %.065.i.ph = phi i32 [ 0, %bb.al ], [ %.0.lcssa80.i, %bb.ap ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !76
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.am, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.ao
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.ao ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.am ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0201)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125, %.lr.ph203, %bb.ab
  %.2 = phi i32 [ %.0201, %bb.ab ], [ %.0201, %.lr.ph203 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0201, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125 ] ; 2 uses
  %i.hd = add nuw i64 %.088202, 1                 ; 2 uses
  %exitcond226.not = icmp eq i64 %i.hd, %i.eb
  br i1 %exitcond226.not, label %.loopexit, label %.lr.ph203, !llvm.loop !194

.loopexit:                                        ; preds = %bb.aq, %.preheader, %bb.y
  %.3 = phi i32 [ %5, %bb.y ], [ %5, %.preheader ], [ %.2, %bb.aq ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089205
  %i.he = add nsw i32 %.089205, 1
  %i.hf = select i1 %.not, i32 %i.he, i32 %.3     ; 2 uses
  %i.hg = icmp slt i32 %i.hf, %5
  br i1 %i.hg, label %bb.y, label %._crit_edge207, !llvm.loop !195

._crit_edge207:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i126 = icmp eq ptr %.sroa.0146.0, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge207
  %i.hh = ptrtoint ptr %.sroa.13.0 to i64
  %i.hi = ptrtoint ptr %.sroa.0146.0 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0, i64 noundef %i.hj) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge207, %bb.ar
  %.not.i.i.i127 = icmp eq ptr %.sroa.0154.0, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.hk = ptrtoint ptr %.sroa.16.0 to i64
  %i.hl = sub i64 %i.hk, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0, i64 noundef %i.hl) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn101166 = phi { ptr, i32 } [ %lpad.loopexit.split-lp273, %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp276, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hm = ptrtoint ptr %.sroa.13.0 to i64
  %i.hn = ptrtoint ptr %.sroa.0146.0 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0, i64 noundef %i.ho) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit129

_ZNSt6vectorIlSaIlEED2Ev.exit129:                 ; preds = %bb.h, %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread
  %.pn101.pn.pn = phi { ptr, i32 } [ %.pn101166, %.thread ], [ %i.as, %bb.h ], [ %lpad.loopexit.split-lp273, %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i130 = icmp eq ptr %.sroa.0154.0, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit129
  %i.hp = ptrtoint ptr %.sroa.16.0 to i64
  %i.hq = ptrtoint ptr %.sroa.0154.0 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0, i64 noundef %i.hr) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %bb.at, %_ZNSt6vectorIlSaIlEED2Ev.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn101.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3NSG10sync_pruneEiRSt6vectorINS_3nsg4NodeESaIS3_EERNS_16DistanceComputerERNS_12VisitedTableERKNS2_5GraphIlEERNSB_IS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5056) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !115    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115  ; 4 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.preheader, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %._crit_edge
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.h, ptr %i.j, i64 noundef %i.r)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.h, ptr %i.j)
  %.pre = load ptr, ptr %2, align 8, !tbaa !115   ; 4 uses
  %.pre220 = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.s = icmp eq ptr %.pre, %.pre220
  br i1 %i.s, label %.preheader, label %bb.l

.preheader:                                       ; preds = %._crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph189, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit100

.lr.ph189:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !86
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = getelementptr [8 x i8], ptr %i.x, i64 %i.ac ; 9 uses
  %wide.trip.count218 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter297 = and i64 %wide.trip.count218, 7   ; 3 uses
  %i.ae = icmp ult i32 %i.u, 8
  br i1 %i.ae, label %.epil.preheader296, label %.lr.ph189.new

.lr.ph189.new:                                    ; preds = %.lr.ph189
  %unroll_iter301 = and i64 %wide.trip.count218, 2147483640
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ] ; 2 uses
  %i.af = phi i32 [ %i.b, %.lr.ph ], [ %i.bw, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ]
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.ah = sext i32 %i.af to i64
  %i.ai = mul nsw i64 %i.ah, %i.e
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !63 ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i32, ptr %0, align 8, !tbaa !42
  %.not82 = icmp sgt i32 %i.ao, %i.am
  br i1 %.not82, label %bb.d, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.ap = and i64 %i.al, 2147483647               ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
end_hunk_2
begin_hunk_3_@_ZNK5faiss3NSG15search_on_graphILb1EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.dn = add nsw i32 %5, -1                      ; 3 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = icmp sgt i32 %5, 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph209, %.loopexit
  %.089208 = phi i32 [ 0, %.lr.ph209 ], [ %i.hd, %.loopexit ] ; 3 uses
  %i.dq = sext i32 %.089208 to i64
  %i.dr = load ptr, ptr %6, align 8, !tbaa !60
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %i.dq ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !77, !range !48, !noundef !49
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.dt, align 4, !tbaa !77
  %i.dw = load i32, ptr %i.ds, align 4, !tbaa !62
  %i.dx = load ptr, ptr %1, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = invoke noundef i64 %i.dz(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.dw, ptr noundef %.sroa.0150.0)
          to label %.preheader unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.z
  %.not214 = icmp eq i64 %i.ea, 0
  br i1 %.not214, label %.loopexit, label %.lr.ph206

.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.z, %bb.n, %bb.l, %.lr.ph201, %bb.q, %.noexc115, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit114, %bb.v
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIiSaIiEED2Ev.exit133, label %.thread

.lr.ph206:                                        ; preds = %.preheader, %bb.aq
  %.088205 = phi i64 [ %i.hb, %bb.aq ], [ 0, %.preheader ] ; 2 uses
  %.0204 = phi i32 [ %.2, %bb.aq ], [ %5, %.preheader ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.088205
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !45 ; 8 uses
  %i.ed = load i32, ptr %0, align 8, !tbaa !42
  %.not95 = icmp slt i32 %i.ec, %i.ed
  br i1 %.not95, label %bb.aa, label %bb.aq

bb.aa:                                            ; preds = %.lr.ph206
  %i.ee = sext i32 %i.ec to i64                   ; 3 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !23
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ee)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ei, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ej = load ptr, ptr %3, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ee)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %2, align 8, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef float %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ee)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.ae:                                            ; preds = %bb.ad
  %i.er = load ptr, ptr %i.dl, align 8, !tbaa !113 ; 5 uses
  %i.es = load ptr, ptr %i.dm, align 8, !tbaa !68
  %.not.i119 = icmp eq ptr %i.er, %i.es
  br i1 %.not.i119, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.ec, ptr %i.er, align 4, !tbaa !107
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store float %i.eq, ptr %i.et, align 4, !tbaa !114
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eu, ptr %i.dl, align 8, !tbaa !113
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128

bb.ag:                                            ; preds = %bb.ae
  %i.ev = load ptr, ptr %7, align 8, !tbaa !67    ; 4 uses
  %i.ew = ptrtoint ptr %i.er to i64
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 5 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.ah, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120: ; preds = %bb.ag
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i121, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i122 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i122)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #23
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ey ; 3 uses
  store i32 %i.ec, ptr %i.fh, align 4, !tbaa !107
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store float %i.eq, ptr %i.fi, align 4, !tbaa !114
  %i.fj = icmp sgt i64 %i.ey, 0
  br i1 %i.fj, label %bb.ai, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123

bb.ai:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fg, ptr align 4 %i.ev, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123: ; preds = %bb.ai, %.noexc127
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i28.i.i124 = icmp eq ptr %i.ev, null
  br i1 %.not.i28.i.i124, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123
  %i.fl = load ptr, ptr %i.dm, align 8, !tbaa !68
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fn) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125: ; preds = %bb.aj, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123
  store ptr %i.fg, ptr %7, align 8, !tbaa !67
  store ptr %i.fk, ptr %i.dl, align 8, !tbaa !113
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  store ptr %i.fo, ptr %i.dm, align 8, !tbaa !68
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125, %bb.af
  %i.fp = load ptr, ptr %6, align 8, !tbaa !60    ; 10 uses
  %i.fq = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %i.do
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !64
  %i.ft = fcmp ult float %i.eq, %i.fs
  br i1 %i.ft, label %bb.ak, label %bb.aq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.aa, %bb.ac, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120, %bb.i, %bb.ah
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ak:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128
  %i.fu = bitcast float %i.eq to i32
  %.sroa.0.sroa.5.0.insert.ext = zext i32 %i.fu to i64
  %.sroa.0.sroa.5.0.insert.shift = shl nuw i64 %.sroa.0.sroa.5.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.ec to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !64
  %i.fx = fcmp ogt float %i.fw, %i.eq
  br i1 %i.fx, label %bb.al, label %.preheader68.i

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr nonnull align 4 %i.fp, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.fp, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.ak
  br i1 %i.dp, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not254 = icmp eq i32 %.063..i, 0
  br i1 %.not254, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.fz = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.dn, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.ga = add nuw nsw i32 %.06370.i, %.071.i
  %i.gb = lshr i32 %i.ga, 1                       ; 3 uses
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !64
  %i.gg = fcmp ogt float %i.gf, %i.eq             ; 2 uses
  %.063..i = select i1 %i.gg, i32 %.06370.i, i32 %i.gb ; 4 uses
  %..0.i = select i1 %i.gg, i32 %i.gb, i32 %.071.i ; 5 uses
  %i.gh = add nsw i32 %..0.i, -1
  %i.gi = icmp slt i32 %.063..i, %i.gh
  br i1 %i.gi, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph74.i:                                       ; preds = %bb.an, %.lr.ph74.i.preheader
  %indvars.iv = phi i64 [ %i.fz, %.lr.ph74.i.preheader ], [ %indvars.iv.next, %bb.an ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %indvars.iv ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !64
  %i.gm = fcmp olt float %i.gl, %i.eq
  br i1 %i.gm, label %._crit_edge.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph74.i
  %i.gn = load i32, ptr %i.gj, align 4, !tbaa !62
  %i.go = icmp eq i32 %i.gn, %i.ec
  br i1 %i.go, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gp = icmp sgt i64 %indvars.iv, 1
  br i1 %i.gp, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.an, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.dn, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.an ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.an ], [ %indvars.iv, %.lr.ph74.i ]
  %i.gq = getelementptr inbounds [12 x i8], ptr %i.fp, i64 %.2.lcssa.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !62
  %i.gs = icmp eq i32 %i.gr, %i.ec
  br i1 %i.gs, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gt = zext nneg i32 %.0.lcssa80.i to i64
  %i.gu = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %i.gt ; 5 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !62
  %i.gw = icmp eq i32 %i.gv, %i.ec
  br i1 %i.gw, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gx = getelementptr i8, ptr %i.gu, i64 12
  %i.gy = sub nsw i32 %5, %.0.lcssa80.i
  %i.gz = sext i32 %i.gy to i64
  %i.ha = mul nsw i64 %i.gz, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gx, ptr nonnull align 4 %i.gu, i64 %i.ha, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.gu, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.ap, %bb.al
  %.sink = phi ptr [ %i.fp, %bb.al ], [ %i.gu, %bb.ap ]
  %.065.i.ph = phi i32 [ 0, %bb.al ], [ %.0.lcssa80.i, %bb.ap ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !76
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.am, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.ao
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.ao ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.am ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0204)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128, %.lr.ph206, %bb.ab
  %.2 = phi i32 [ %.0204, %bb.ab ], [ %.0204, %.lr.ph206 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0204, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128 ] ; 2 uses
  %i.hb = add nuw i64 %.088205, 1                 ; 2 uses
  %exitcond229.not = icmp eq i64 %i.hb, %i.ea
  br i1 %exitcond229.not, label %.loopexit, label %.lr.ph206, !llvm.loop !238

.loopexit:                                        ; preds = %bb.aq, %.preheader, %bb.y
  %.3 = phi i32 [ %5, %bb.y ], [ %5, %.preheader ], [ %.2, %bb.aq ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089208
  %i.hc = add nsw i32 %.089208, 1
  %i.hd = select i1 %.not, i32 %i.hc, i32 %.3     ; 2 uses
  %i.he = icmp slt i32 %i.hd, %5
  br i1 %i.he, label %bb.y, label %._crit_edge210, !llvm.loop !239

._crit_edge210:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i129 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge210
  %i.hf = ptrtoint ptr %.sroa.13.0 to i64
  %i.hg = ptrtoint ptr %.sroa.0150.0 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.hh) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge210, %bb.ar
  %.not.i.i.i130 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hi = ptrtoint ptr %.sroa.16.0 to i64
  %i.hj = sub i64 %i.hi, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.hj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn100170 = phi { ptr, i32 } [ %lpad.loopexit.split-lp276, %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hk = ptrtoint ptr %.sroa.13.0 to i64
  %i.hl = ptrtoint ptr %.sroa.0150.0 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.hm) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit133

_ZNSt6vectorIiSaIiEED2Ev.exit133:                 ; preds = %bb.h, %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100170, %.thread ], [ %i.as, %bb.h ], [ %lpad.loopexit.split-lp276, %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i134 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit135, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit133
  %i.hn = ptrtoint ptr %.sroa.16.0 to i64
  %i.ho = ptrtoint ptr %.sroa.0158.0 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.hp) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit135

_ZNSt6vectorIiSaIiEED2Ev.exit135:                 ; preds = %bb.at, %_ZNSt6vectorIiSaIiEED2Ev.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn100.pn.pn
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss3NSG11check_graphEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph.split.us, label %._crit_edge28

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %2, align 8, !tbaa !42
  %i.w = sext i32 %i.k to i64
  %i.x = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %._crit_edge.us ], [ %i.w, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.y = mul nsw i64 %indvars.iv31, %i.u
  %i.z = getelementptr [4 x i8], ptr %i.r, i64 %i.y
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !240

bb.d:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.v
  %or.cond.us = icmp sgt i32 %i.ab, -2
  %or.cond24.us = and i1 %or.cond.us, %i.ac
  br i1 %or.cond24.us, label %bb.c, label %.split.us

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next32 to i32
  %exitcond34.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond34.not, label %._crit_edge28, label %.preheader.us

.split.us:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !54
end_hunk_3
