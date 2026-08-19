inline.NumInlined: 1167
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss3NSG15search_on_graphILb0EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a

.lr.ph165:                                        ; preds = %.preheader152, %bb.t
  %.286164 = phi i32 [ %.387, %bb.t ], [ %.084.lcssa, %.preheader152 ] ; 3 uses
  %i.bi = load i32, ptr %0, align 8, !tbaa !24
  %i.bj = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %8, i32 noundef %i.bi)
          to label %bb.o unwind label %bb.q       ; 2 uses

bb.o:                                             ; preds = %.lr.ph165
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bk)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bo, label %bb.t, label %bb.r, !llvm.loop !73

bb.q:                                             ; preds = %bb.r, %bb.o, %.lr.ph165
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.r:                                             ; preds = %bb.p
  %i.bq = sext i32 %.286164 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %i.bq
  store i32 %i.bj, ptr %i.br, align 4, !tbaa !40
  %i.bs = load ptr, ptr %3, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bk)
          to label %bb.s unwind label %bb.q       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bw = add nsw i32 %.286164, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %.387 = phi i32 [ %i.bw, %bb.s ], [ %.286164, %bb.p ] ; 2 uses
  %i.bx = icmp slt i32 %.387, %5
  br i1 %i.bx, label %.lr.ph165, label %.preheader151

._crit_edge:                                      ; preds = %bb.v, %.preheader151
  %i.by = load ptr, ptr %6, align 8, !tbaa !74    ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 12                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge174, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ca = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.cb = shl nuw nsw i64 %i.ca, 1
  %i.cc = xor i64 %i.cb, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.by, ptr nonnull %i.bz, i64 noundef %i.cc)
          to label %.noexc114 unwind label %bb.z

.noexc114:                                        ; preds = %bb.u
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.by, ptr nonnull %i.bz)
          to label %.lr.ph173 unwind label %bb.z

.lr.ph167:                                        ; preds = %.preheader151, %bb.v
  %.091166 = phi i64 [ %i.cm, %bb.v ], [ 0, %.preheader151 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %.091166
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load ptr, ptr %2, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef float %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cf)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph167
  %i.ck = load ptr, ptr %6, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.091166 ; 3 uses
  store i32 %i.ce, ptr %i.cl, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store float %i.cj, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 1, ptr %.sroa.5127.0..sroa_idx, align 4, !tbaa !75
  %i.cm = add nuw i64 %.091166, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.cm, %i.aq
  br i1 %exitcond179.not, label %._crit_edge, label %.lr.ph167, !llvm.loop !76

bb.w:                                             ; preds = %.lr.ph167
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph173:                                        ; preds = %.noexc114
  %i.co = add nsw i32 %5, -1                      ; 3 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = icmp sgt i32 %5, 2
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph173, %.loopexit
  %.089172 = phi i32 [ 0, %.lr.ph173 ], [ %i.fj, %.loopexit ] ; 3 uses
  %i.cr = sext i32 %.089172 to i64
  %i.cs = load ptr, ptr %6, align 8, !tbaa !54
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %i.cr ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !77, !range !44, !noundef !45
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.cu, align 4, !tbaa !77
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !57
  %i.cy = load ptr, ptr %1, align 8, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef i64 %i.da(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.cx, ptr noundef %.sroa.0129.0)
          to label %.preheader unwind label %bb.aa ; 2 uses

.preheader:                                       ; preds = %bb.y
  %.not178 = icmp eq i64 %i.db, 0
  br i1 %.not178, label %.loopexit, label %.lr.ph170

bb.z:                                             ; preds = %.noexc114, %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aa:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph170:                                        ; preds = %.preheader, %bb.ao
  %.088169 = phi i64 [ %i.fh, %bb.ao ], [ 0, %.preheader ] ; 2 uses
  %.0168 = phi i32 [ %.2, %bb.ao ], [ %5, %.preheader ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0, i64 %.088169
  %i.df = load i32, ptr %i.de, align 4, !tbaa !40 ; 6 uses
  %i.dg = load i32, ptr %0, align 8, !tbaa !24
  %.not95 = icmp slt i32 %i.df, %i.dg
  br i1 %.not95, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %.lr.ph170
  %i.dh = sext i32 %i.df to i64                   ; 3 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.dh)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.dl, label %bb.ao, label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.dn = load ptr, ptr %3, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.dh)
          to label %bb.af unwind label %bb.ad     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.dr = load ptr, ptr %2, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = invoke noundef float %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.dh)
          to label %bb.ag unwind label %bb.ah     ; 5 uses

bb.ag:                                            ; preds = %bb.af
  %i.dv = load ptr, ptr %6, align 8, !tbaa !54    ; 10 uses
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.cp
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !60
  %i.dz = fcmp ult float %i.du, %i.dy
  br i1 %i.dz, label %bb.ai, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %i.eb = bitcast float %i.du to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.eb to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.df to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !60
  %i.ee = fcmp ogt float %i.ed, %i.du
  br i1 %i.ee, label %bb.aj, label %.preheader68.i

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull align 4 %i.dv, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.dv, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.ai
  br i1 %i.cq, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not197 = icmp eq i32 %.063..i, 0
  br i1 %.not197, label %._crit_edge.i, label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.co, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.eg = add nuw nsw i32 %.06370.i, %.071.i
  %i.eh = lshr i32 %i.eg, 1                       ; 3 uses
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !60
  %i.em = fcmp ogt float %i.el, %i.du             ; 2 uses
  %.063..i = select i1 %i.em, i32 %.06370.i, i32 %i.eh ; 4 uses
  %..0.i = select i1 %i.em, i32 %i.eh, i32 %.071.i ; 4 uses
  %i.en = add nsw i32 %..0.i, -1
  %i.eo = icmp slt i32 %.063..i, %i.en
  br i1 %i.eo, label %.lr.ph.i, label %.preheader.i, !llvm.loop !78

.lr.ph74.i:                                       ; preds = %.preheader.i, %bb.al
  %.273.i = phi i32 [ %10, %bb.al ], [ %.063..i, %.preheader.i ] ; 4 uses
  %9 = zext nneg i32 %.273.i to i64
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %9 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !60
  %i.es = fcmp olt float %i.er, %i.du
  br i1 %i.es, label %._crit_edge.i.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph74.i
  %i.et = load i32, ptr %i.ep, align 4, !tbaa !57
  %i.eu = icmp eq i32 %i.et, %i.df
  br i1 %i.eu, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %10 = add nsw i32 %.273.i, -1
  %i.ev = icmp sgt i32 %.273.i, 1
  br i1 %i.ev, label %.lr.ph74.i, label %._crit_edge.i.loopexit, !llvm.loop !79

._crit_edge.i.loopexit:                           ; preds = %.lr.ph74.i, %bb.al
  %.2.lcssa.i.ph = phi i32 [ 0, %bb.al ], [ %.273.i, %.lr.ph74.i ]
  %11 = sext i32 %.2.lcssa.i.ph to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.co, %.preheader68.i ], [ %..0.i, %._crit_edge.i.loopexit ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ %11, %._crit_edge.i.loopexit ]
  %i.ew = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %.2.lcssa.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !57
  %i.ey = icmp eq i32 %i.ex, %i.df
  br i1 %i.ey, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.ez = zext nneg i32 %.0.lcssa80.i to i64
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.ez ; 5 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !57
  %i.fc = icmp eq i32 %i.fb, %i.df
  br i1 %i.fc, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fd = getelementptr i8, ptr %i.fa, i64 12
  %i.fe = sub nsw i32 %5, %.0.lcssa80.i
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.ff, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fd, ptr nonnull align 4 %i.fa, i64 %i.fg, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.fa, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.an, %bb.aj
  %.sink = phi ptr [ %i.dv, %bb.aj ], [ %i.fa, %bb.an ]
  %.065.i.ph = phi i32 [ 0, %bb.aj ], [ %.0.lcssa80.i, %bb.an ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !75
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ak, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.am
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.am ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.ak ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0168)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.ag, %.lr.ph170, %bb.ac
  %.2 = phi i32 [ %.0168, %bb.ac ], [ %.0168, %.lr.ph170 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0168, %bb.ag ] ; 2 uses
  %i.fh = add nuw i64 %.088169, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %i.fh, %i.db
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph170, !llvm.loop !80

.loopexit:                                        ; preds = %bb.ao, %.preheader, %bb.x
  %.3 = phi i32 [ %5, %bb.x ], [ %5, %.preheader ], [ %.2, %bb.ao ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089172
  %i.fi = add nsw i32 %.089172, 1
  %i.fj = select i1 %.not, i32 %i.fi, i32 %.3     ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %5
  br i1 %i.fk, label %bb.x, label %._crit_edge174, !llvm.loop !81

._crit_edge174:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0129.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge174
  %i.fl = ptrtoint ptr %.sroa.13.0 to i64
  %i.fm = ptrtoint ptr %.sroa.0129.0 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0, i64 noundef %i.fn) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge174, %bb.ap
  %.not.i.i.i116 = icmp eq ptr %.sroa.0137.0, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fo = ptrtoint ptr %.sroa.16.0 to i64
  %i.fp = sub i64 %i.fo, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0137.0, i64 noundef %i.fp) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.ar:                                            ; preds = %bb.aa, %bb.z, %bb.w, %bb.q, %bb.j
  %.pn99 = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %i.bp, %bb.q ], [ %i.cn, %bb.w ], [ %i.au, %bb.j ], [ %i.dc, %bb.z ] ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %.sroa.0129.0, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit119, label %.thread

.thread:                                          ; preds = %bb.n, %bb.ad, %bb.ah, %bb.ar
  %.pn99149 = phi { ptr, i32 } [ %.pn99, %bb.ar ], [ %i.dm, %bb.ad ], [ %i.ea, %bb.ah ], [ %i.bh, %bb.n ]
  %i.fq = ptrtoint ptr %.sroa.13.0 to i64
  %i.fr = ptrtoint ptr %.sroa.0129.0 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0, i64 noundef %i.fs) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

_ZNSt6vectorIiSaIiEED2Ev.exit119:                 ; preds = %bb.i, %bb.ar, %.thread, %bb.h
  %.pn99.pn.pn = phi { ptr, i32 } [ %i.as, %bb.h ], [ %i.at, %bb.i ], [ %.pn99, %bb.ar ], [ %.pn99149, %.thread ]
  %.not.i.i.i120 = icmp eq ptr %.sroa.0137.0, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIiSaIiEED2Ev.exit121, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit119
  %i.ft = ptrtoint ptr %.sroa.16.0 to i64
  %i.fu = ptrtoint ptr %.sroa.0137.0 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0137.0, i64 noundef %i.fv) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

_ZNSt6vectorIiSaIiEED2Ev.exit121:                 ; preds = %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn99.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !42
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
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !82

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !42
  store i8 %i.t, ptr %i.s, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !42
  store i8 %i.x, ptr %i.w, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !42
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@_ZNK5faiss3NSG15search_on_graphILb0ElEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  %.286160 = phi i32 [ %.387, %bb.t ], [ %.084.lcssa, %.preheader148 ] ; 3 uses
  %i.bj = load i32, ptr %0, align 8, !tbaa !24
  %i.bk = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %8, i32 noundef %i.bj)
          to label %bb.o unwind label %bb.q       ; 2 uses

bb.o:                                             ; preds = %.lr.ph161
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bl)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bp, label %bb.t, label %bb.r, !llvm.loop !164

bb.q:                                             ; preds = %bb.r, %bb.o, %.lr.ph161
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.r:                                             ; preds = %bb.p
  %i.br = sext i32 %.286160 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0133.0, i64 %i.br
  store i32 %i.bk, ptr %i.bs, align 4, !tbaa !40
  %i.bt = load ptr, ptr %3, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bl)
          to label %bb.s unwind label %bb.q       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %.286160, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %.387 = phi i32 [ %i.bx, %bb.s ], [ %.286160, %bb.p ] ; 2 uses
  %i.by = icmp slt i32 %.387, %5
  br i1 %i.by, label %.lr.ph161, label %.preheader147

._crit_edge:                                      ; preds = %bb.v, %.preheader147
  %i.bz = load ptr, ptr %6, align 8, !tbaa !74    ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 12                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge170, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.cb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = xor i64 %i.cc, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.bz, ptr nonnull %i.ca, i64 noundef %i.cd)
          to label %.noexc111 unwind label %bb.z

.noexc111:                                        ; preds = %bb.u
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.bz, ptr nonnull %i.ca)
          to label %.lr.ph169 unwind label %bb.z

.lr.ph163:                                        ; preds = %.preheader147, %bb.v
  %.091162 = phi i64 [ %i.cn, %bb.v ], [ 0, %.preheader147 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0133.0, i64 %.091162
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = load ptr, ptr %2, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef float %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cg)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph163
  %i.cl = load ptr, ptr %6, align 8, !tbaa !54
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.cl, i64 %.091162 ; 3 uses
  store i32 %i.cf, ptr %i.cm, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store float %i.ck, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 1, ptr %.sroa.5123.0..sroa_idx, align 4, !tbaa !75
  %i.cn = add nuw i64 %.091162, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.cn, %i.aq
  br i1 %exitcond175.not, label %._crit_edge, label %.lr.ph163, !llvm.loop !165

bb.w:                                             ; preds = %.lr.ph163
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph169:                                        ; preds = %.noexc111
  %i.cp = add nsw i32 %5, -1                      ; 3 uses
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = icmp sgt i32 %5, 2
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph169, %.loopexit
  %.089168 = phi i32 [ 0, %.lr.ph169 ], [ %i.fl, %.loopexit ] ; 3 uses
  %i.cs = sext i32 %.089168 to i64
  %i.ct = load ptr, ptr %6, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !77, !range !44, !noundef !45
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.cv, align 4, !tbaa !77
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !57
  %i.cz = load ptr, ptr %1, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.cy, ptr noundef %.sroa.0125.0)
          to label %.preheader unwind label %bb.aa ; 2 uses

.preheader:                                       ; preds = %bb.y
  %.not174 = icmp eq i64 %i.dc, 0
  br i1 %.not174, label %.loopexit, label %.lr.ph166

bb.z:                                             ; preds = %.noexc111, %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aa:                                            ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph166:                                        ; preds = %.preheader, %bb.ao
  %.088165 = phi i64 [ %i.fj, %bb.ao ], [ 0, %.preheader ] ; 2 uses
  %.0164 = phi i32 [ %.2, %bb.ao ], [ %5, %.preheader ] ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0125.0, i64 %.088165
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !59 ; 3 uses
  %i.dh = trunc i64 %i.dg to i32                  ; 4 uses
  %i.di = load i32, ptr %0, align 8, !tbaa !24
  %.not95 = icmp sgt i32 %i.di, %i.dh
  br i1 %.not95, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %.lr.ph166
  %sext = shl i64 %i.dg, 32
  %i.dj = ashr exact i64 %sext, 32                ; 3 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.dj)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.dn, label %bb.ao, label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.dp = load ptr, ptr %3, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef zeroext i1 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.dj)
          to label %bb.af unwind label %bb.ad     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %2, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef float %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.dj)
          to label %bb.ag unwind label %bb.ah     ; 5 uses

bb.ag:                                            ; preds = %bb.af
  %i.dx = load ptr, ptr %6, align 8, !tbaa !54    ; 10 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.cq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !60
  %i.eb = fcmp ult float %i.dw, %i.ea
  br i1 %i.eb, label %bb.ai, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %i.ed = bitcast float %i.dw to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.ed to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = and i64 %i.dg, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !60
  %i.eg = fcmp ogt float %i.ef, %i.dw
  br i1 %i.eg, label %bb.aj, label %.preheader68.i

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr nonnull align 4 %i.dx, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.dx, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.ai
  br i1 %i.cr, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not193 = icmp eq i32 %.063..i, 0
  br i1 %.not193, label %._crit_edge.i, label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.cp, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.ei = add nuw nsw i32 %.06370.i, %.071.i
  %i.ej = lshr i32 %i.ei, 1                       ; 3 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !60
  %i.eo = fcmp ogt float %i.en, %i.dw             ; 2 uses
  %.063..i = select i1 %i.eo, i32 %.06370.i, i32 %i.ej ; 4 uses
  %..0.i = select i1 %i.eo, i32 %i.ej, i32 %.071.i ; 4 uses
  %i.ep = add nsw i32 %..0.i, -1
  %i.eq = icmp slt i32 %.063..i, %i.ep
  br i1 %i.eq, label %.lr.ph.i, label %.preheader.i, !llvm.loop !78

.lr.ph74.i:                                       ; preds = %.preheader.i, %bb.al
  %.273.i = phi i32 [ %10, %bb.al ], [ %.063..i, %.preheader.i ] ; 4 uses
  %9 = zext nneg i32 %.273.i to i64
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %9 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !60
  %i.eu = fcmp olt float %i.et, %i.dw
  br i1 %i.eu, label %._crit_edge.i.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph74.i
  %i.ev = load i32, ptr %i.er, align 4, !tbaa !57
  %i.ew = icmp eq i32 %i.ev, %i.dh
  br i1 %i.ew, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %10 = add nsw i32 %.273.i, -1
  %i.ex = icmp sgt i32 %.273.i, 1
  br i1 %i.ex, label %.lr.ph74.i, label %._crit_edge.i.loopexit, !llvm.loop !79

._crit_edge.i.loopexit:                           ; preds = %.lr.ph74.i, %bb.al
  %.2.lcssa.i.ph = phi i32 [ 0, %bb.al ], [ %.273.i, %.lr.ph74.i ]
  %11 = sext i32 %.2.lcssa.i.ph to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.cp, %.preheader68.i ], [ %..0.i, %._crit_edge.i.loopexit ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ %11, %._crit_edge.i.loopexit ]
  %i.ey = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %.2.lcssa.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !57
  %i.fa = icmp eq i32 %i.ez, %i.dh
  br i1 %i.fa, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.fb = zext nneg i32 %.0.lcssa80.i to i64
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.fb ; 5 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !57
  %i.fe = icmp eq i32 %i.fd, %i.dh
  br i1 %i.fe, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = getelementptr i8, ptr %i.fc, i64 12
  %i.fg = sub nsw i32 %5, %.0.lcssa80.i
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i64 %i.fh, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ff, ptr nonnull align 4 %i.fc, i64 %i.fi, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.fc, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.an, %bb.aj
  %.sink = phi ptr [ %i.dx, %bb.aj ], [ %i.fc, %bb.an ]
  %.065.i.ph = phi i32 [ 0, %bb.aj ], [ %.0.lcssa80.i, %bb.an ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !75
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.ak, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.am
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.am ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.ak ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0164)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %bb.ag, %.lr.ph166, %bb.ac
  %.2 = phi i32 [ %.0164, %bb.ac ], [ %.0164, %.lr.ph166 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0164, %bb.ag ] ; 2 uses
  %i.fj = add nuw i64 %.088165, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.fj, %i.dc
  br i1 %exitcond176.not, label %.loopexit, label %.lr.ph166, !llvm.loop !166

.loopexit:                                        ; preds = %bb.ao, %.preheader, %bb.x
  %.3 = phi i32 [ %5, %bb.x ], [ %5, %.preheader ], [ %.2, %bb.ao ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089168
  %i.fk = add nsw i32 %.089168, 1
  %i.fl = select i1 %.not, i32 %i.fk, i32 %.3     ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %5
  br i1 %i.fm, label %bb.x, label %._crit_edge170, !llvm.loop !167

._crit_edge170:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0125.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge170
  %i.fn = ptrtoint ptr %.sroa.13.0 to i64
  %i.fo = ptrtoint ptr %.sroa.0125.0 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0, i64 noundef %i.fp) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge170, %bb.ap
  %.not.i.i.i113 = icmp eq ptr %.sroa.0133.0, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.fq = ptrtoint ptr %.sroa.16.0 to i64
  %i.fr = sub i64 %i.fq, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.0, i64 noundef %i.fr) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.ar:                                            ; preds = %bb.aa, %bb.z, %bb.w, %bb.q, %bb.j
  %.pn100 = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.bq, %bb.q ], [ %i.co, %bb.w ], [ %i.au, %bb.j ], [ %i.dd, %bb.z ] ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.sroa.0125.0, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIlSaIlEED2Ev.exit115, label %.thread

.thread:                                          ; preds = %bb.n, %bb.ad, %bb.ah, %bb.ar
  %.pn100145 = phi { ptr, i32 } [ %.pn100, %bb.ar ], [ %i.do, %bb.ad ], [ %i.ec, %bb.ah ], [ %i.bi, %bb.n ]
  %i.fs = ptrtoint ptr %.sroa.13.0 to i64
  %i.ft = ptrtoint ptr %.sroa.0125.0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0, i64 noundef %i.fu) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit115

_ZNSt6vectorIlSaIlEED2Ev.exit115:                 ; preds = %bb.i, %bb.ar, %.thread, %bb.h
  %.pn100.pn.pn = phi { ptr, i32 } [ %i.as, %bb.h ], [ %i.at, %bb.i ], [ %.pn100, %bb.ar ], [ %.pn100145, %.thread ]
  %.not.i.i.i116 = icmp eq ptr %.sroa.0133.0, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit115
  %i.fv = ptrtoint ptr %.sroa.16.0 to i64
  %i.fw = ptrtoint ptr %.sroa.0133.0 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0133.0, i64 noundef %i.fx) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %bb.as, %_ZNSt6vectorIlSaIlEED2Ev.exit115
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
  %i.e = load ptr, ptr %2, align 8, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i32 %i.g, 0
  %i.j = shl nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23
          to label %bb.b unwind label %.loopexit.split-lp ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.m = load i32, ptr %3, align 8, !tbaa !24
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.0.0.copyload = load i16, ptr %i.o, align 4
  invoke void @_ZN5faiss12VisitedTable6createEmSt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.31") align 8 %8, i64 noundef %i.n, i16 %.sroa.0.0.copyload)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !137    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  switch i32 %i.r, label %bb.g [
    i32 23, label %bb.d
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.s = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc unwind label %.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.d
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(36) %i.p)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss24NegativeDistanceComputerE, i64 16), ptr %i.s, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !17
  br label %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit

bb.f:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 16) #24
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(36) %i.p)
          to label %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit unwind label %.loopexit.split-lp, !inline_history !132

_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit: ; preds = %bb.e, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.e ], [ %i.ac, %bb.g ] ; 7 uses
  %i.ad = load i32, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !40    ; 5 uses
  br i1 %i.ae, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit
  %i.af = add nsw i32 %i.ad, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 %i.af, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !40
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
  %i.am = load i32, ptr %i.a, align 4, !tbaa !40  ; 2 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !40, !llvm.access.group !168
  %.not2134 = icmp sgt i32 %i.am, %i.an
  br i1 %.not2134, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ao = sext i32 %i.am to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !137, !llvm.access.group !168 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15, !llvm.access.group !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !llvm.access.group !168
end_hunk_1
begin_hunk_2_@_ZNK5faiss3NSG15search_on_graphILb1ElEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  store i8 0, ptr %i.dv, align 4, !tbaa !77
  %i.dy = load i32, ptr %i.du, align 4, !tbaa !57
  %i.dz = load ptr, ptr %1, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i64 %i.eb(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.dy, ptr noundef %.sroa.0146.0)
          to label %.preheader unwind label %bb.af ; 2 uses

.preheader:                                       ; preds = %bb.ad
  %.not204 = icmp eq i64 %i.ec, 0
  br i1 %.not204, label %.loopexit, label %.lr.ph196

bb.ae:                                            ; preds = %.noexc112, %bb.u
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.af:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph196:                                        ; preds = %.preheader, %bb.ay
  %.088195 = phi i64 [ %i.hf, %bb.ay ], [ 0, %.preheader ] ; 2 uses
  %.0194 = phi i32 [ %.2, %bb.ay ], [ %5, %.preheader ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0146.0, i64 %.088195
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !59 ; 3 uses
  %i.eh = trunc i64 %i.eg to i32                  ; 6 uses
  %i.ei = load i32, ptr %0, align 8, !tbaa !24
  %.not95 = icmp sgt i32 %i.ei, %i.eh
  br i1 %.not95, label %bb.ag, label %bb.ay

bb.ag:                                            ; preds = %.lr.ph196
  %sext = shl i64 %i.eg, 32
  %i.ej = ashr exact i64 %sext, 32                ; 3 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ej)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.en, label %bb.ay, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ag
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %3, align 8, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ej)
          to label %bb.ak unwind label %bb.ai     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.et = load ptr, ptr %2, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef float %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ej)
          to label %bb.al unwind label %bb.ar     ; 7 uses

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.dn, align 8, !tbaa !169 ; 5 uses
  %i.ey = load ptr, ptr %i.do, align 8, !tbaa !64
  %.not.i116 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i116, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.eh, ptr %i.ex, align 4, !tbaa !146
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store float %i.ew, ptr %i.ez, align 4, !tbaa !174
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.fa, ptr %i.dn, align 8, !tbaa !169
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125

bb.an:                                            ; preds = %bb.al
  %i.fb = load ptr, ptr %7, align 8, !tbaa !61    ; 4 uses
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 6 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %bb.ao, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc123 unwind label %.loopexit.split-lp

.noexc123:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117: ; preds = %bb.an
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i118, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i119 = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i119)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #23
          to label %.noexc124 unwind label %.loopexit169 ; 4 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fe ; 3 uses
  store i32 %i.eh, ptr %i.fn, align 4, !tbaa !146
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store float %i.ew, ptr %i.fo, align 4, !tbaa !174
  %i.fp = icmp sgt i64 %i.fe, 0
  br i1 %i.fp, label %bb.ap, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120

bb.ap:                                            ; preds = %.noexc124
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr align 4 %i.fb, i64 %i.fe, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120: ; preds = %bb.ap, %.noexc124
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.not.i28.i.i121 = icmp eq ptr %i.fb, null
  br i1 %.not.i28.i.i121, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fe) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122: ; preds = %bb.aq, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i120
  store ptr %i.fm, ptr %7, align 8, !tbaa !61
  store ptr %i.fq, ptr %i.dn, align 8, !tbaa !169
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.fr, ptr %i.do, align 8, !tbaa !64
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i122, %bb.am
  %i.fs = load ptr, ptr %6, align 8, !tbaa !54    ; 10 uses
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %i.fs, i64 %i.dq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !60
  %i.fw = fcmp ult float %i.ew, %i.fv
  br i1 %i.fw, label %bb.as, label %bb.ay

bb.ar:                                            ; preds = %bb.ak
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit169:                                     ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i117
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125
  %i.fy = bitcast float %i.ew to i32
  %.sroa.0.sroa.5.0.insert.ext = zext i32 %i.fy to i64
  %.sroa.0.sroa.5.0.insert.shift = shl nuw i64 %.sroa.0.sroa.5.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = and i64 %i.eg, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !60
  %i.gb = fcmp ogt float %i.ga, %i.ew
  br i1 %i.gb, label %bb.at, label %.preheader68.i

bb.at:                                            ; preds = %bb.as
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gc, ptr nonnull align 4 %i.fs, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.fs, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.as
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not233 = icmp eq i32 %.063..i, 0
  br i1 %.not233, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.gd = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.dp, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.ge = add nuw nsw i32 %.06370.i, %.071.i
  %i.gf = lshr i32 %i.ge, 1                       ; 3 uses
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %i.fs, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !60
  %i.gk = fcmp ogt float %i.gj, %i.ew             ; 2 uses
  %.063..i = select i1 %i.gk, i32 %.06370.i, i32 %i.gf ; 4 uses
  %..0.i = select i1 %i.gk, i32 %i.gf, i32 %.071.i ; 5 uses
  %i.gl = add nsw i32 %..0.i, -1
  %i.gm = icmp slt i32 %.063..i, %i.gl
  br i1 %i.gm, label %.lr.ph.i, label %.preheader.i, !llvm.loop !78

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %bb.av
  %indvars.iv = phi i64 [ %i.gd, %.lr.ph74.i.preheader ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %i.fs, i64 %indvars.iv ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !60
  %i.gq = fcmp olt float %i.gp, %i.ew
  br i1 %i.gq, label %._crit_edge.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph74.i
  %i.gr = load i32, ptr %i.gn, align 4, !tbaa !57
  %i.gs = icmp eq i32 %i.gr, %i.eh
  br i1 %i.gs, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gt = icmp sgt i64 %indvars.iv, 1
  br i1 %i.gt, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.av, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.dp, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.av ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.av ], [ %indvars.iv, %.lr.ph74.i ]
  %i.gu = getelementptr inbounds [12 x i8], ptr %i.fs, i64 %.2.lcssa.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !57
  %i.gw = icmp eq i32 %i.gv, %i.eh
  br i1 %i.gw, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i
  %i.gx = zext nneg i32 %.0.lcssa80.i to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.fs, i64 %i.gx ; 5 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !57
  %i.ha = icmp eq i32 %i.gz, %i.eh
  br i1 %i.ha, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr i8, ptr %i.gy, i64 12
  %i.hc = sub nsw i32 %5, %.0.lcssa80.i
  %i.hd = sext i32 %i.hc to i64
  %i.he = mul nsw i64 %i.hd, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hb, ptr nonnull align 4 %i.gy, i64 %i.he, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.gy, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.ax, %bb.at
  %.sink = phi ptr [ %i.fs, %bb.at ], [ %i.gy, %bb.ax ]
  %.065.i.ph = phi i32 [ 0, %bb.at ], [ %.0.lcssa80.i, %bb.ax ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !75
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.au, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.aw
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.aw ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.au ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0194)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125, %.lr.ph196, %bb.ah
  %.2 = phi i32 [ %.0194, %bb.ah ], [ %.0194, %.lr.ph196 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0194, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit125 ] ; 2 uses
  %i.hf = add nuw i64 %.088195, 1                 ; 2 uses
  %exitcond208.not = icmp eq i64 %i.hf, %i.ec
  br i1 %exitcond208.not, label %.loopexit, label %.lr.ph196, !llvm.loop !176

.loopexit:                                        ; preds = %bb.ay, %.preheader, %bb.ac
  %.3 = phi i32 [ %5, %bb.ac ], [ %5, %.preheader ], [ %.2, %bb.ay ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089198
  %i.hg = add nsw i32 %.089198, 1
  %i.hh = select i1 %.not, i32 %i.hg, i32 %.3     ; 2 uses
  %i.hi = icmp slt i32 %i.hh, %5
  br i1 %i.hi, label %bb.ac, label %._crit_edge200, !llvm.loop !177

._crit_edge200:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i126 = icmp eq ptr %.sroa.0146.0, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge200
  %i.hj = ptrtoint ptr %.sroa.13.0 to i64
  %i.hk = ptrtoint ptr %.sroa.0146.0 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0, i64 noundef %i.hl) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge200, %bb.az
  %.not.i.i.i127 = icmp eq ptr %.sroa.0154.0, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.hm = ptrtoint ptr %.sroa.16.0 to i64
  %i.hn = sub i64 %i.hm, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0, i64 noundef %i.hn) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.bb:                                            ; preds = %.loopexit171, %.loopexit.split-lp172, %bb.af, %bb.ae, %bb.q, %bb.j
  %.pn101 = phi { ptr, i32 } [ %i.ee, %bb.af ], [ %i.bs, %bb.q ], [ %i.ed, %bb.ae ], [ %i.au, %bb.j ], [ %lpad.loopexit173, %.loopexit171 ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp172 ] ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %.sroa.0146.0, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIlSaIlEED2Ev.exit129, label %.thread

.thread:                                          ; preds = %.loopexit169, %.loopexit.split-lp, %bb.n, %bb.ai, %bb.ar, %bb.bb
  %.pn101166 = phi { ptr, i32 } [ %.pn101, %bb.bb ], [ %i.fx, %bb.ar ], [ %i.bi, %bb.n ], [ %i.eo, %bb.ai ], [ %lpad.loopexit, %.loopexit169 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ho = ptrtoint ptr %.sroa.13.0 to i64
  %i.hp = ptrtoint ptr %.sroa.0146.0 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0, i64 noundef %i.hq) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit129

_ZNSt6vectorIlSaIlEED2Ev.exit129:                 ; preds = %bb.i, %bb.bb, %.thread, %bb.h
  %.pn101.pn.pn = phi { ptr, i32 } [ %i.as, %bb.h ], [ %i.at, %bb.i ], [ %.pn101, %bb.bb ], [ %.pn101166, %.thread ]
  %.not.i.i.i130 = icmp eq ptr %.sroa.0154.0, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit129
  %i.hr = ptrtoint ptr %.sroa.16.0 to i64
  %i.hs = ptrtoint ptr %.sroa.0154.0 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0, i64 noundef %i.ht) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %bb.bc, %_ZNSt6vectorIlSaIlEED2Ev.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn101.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3NSG10sync_pruneEiRSt6vectorINS_3nsg4NodeESaIS3_EERNS_16DistanceComputerERNS_12VisitedTableERKNS2_5GraphIlEERNSB_IS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5056) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !178    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178  ; 4 uses
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
  %.pre = load ptr, ptr %2, align 8, !tbaa !178   ; 4 uses
  %.pre222 = load ptr, ptr %i.i, align 8, !tbaa !178 ; 2 uses
  %i.s = icmp eq ptr %.pre, %.pre222
  br i1 %i.s, label %.preheader, label %bb.l

.preheader:                                       ; preds = %._crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph191, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit

.lr.ph191:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !103
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = getelementptr [8 x i8], ptr %i.x, i64 %i.ac ; 9 uses
  %wide.trip.count220 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter295 = and i64 %wide.trip.count220, 7   ; 3 uses
  %i.ae = icmp ult i32 %i.u, 8
  br i1 %i.ae, label %.epil.preheader294, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.lr.ph191
  %unroll_iter299 = and i64 %wide.trip.count220, 2147483640
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ] ; 2 uses
  %i.af = phi i32 [ %i.b, %.lr.ph ], [ %i.bt, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ]
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.ah = sext i32 %i.af to i64
  %i.ai = mul nsw i64 %i.ah, %i.e
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i32, ptr %0, align 8, !tbaa !24
  %.not82 = icmp sgt i32 %i.ao, %i.am
  br i1 %.not82, label %bb.d, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit
end_hunk_2
begin_hunk_3_@_ZNK5faiss3NSG15search_on_graphILb1EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %i.du, align 4, !tbaa !77
  %i.dx = load i32, ptr %i.dt, align 4, !tbaa !57
  %i.dy = load ptr, ptr %1, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.dx, ptr noundef %.sroa.0150.0)
          to label %.preheader unwind label %bb.af ; 2 uses

.preheader:                                       ; preds = %bb.ad
  %.not207 = icmp eq i64 %i.eb, 0
  br i1 %.not207, label %.loopexit, label %.lr.ph199

bb.ae:                                            ; preds = %.noexc115, %bb.u
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.af:                                            ; preds = %bb.ad
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph199:                                        ; preds = %.preheader, %bb.ay
  %.088198 = phi i64 [ %i.hd, %bb.ay ], [ 0, %.preheader ] ; 2 uses
  %.0197 = phi i32 [ %.2, %bb.ay ], [ %5, %.preheader ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.088198
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !40 ; 8 uses
  %i.eg = load i32, ptr %0, align 8, !tbaa !24
  %.not95 = icmp slt i32 %i.ef, %i.eg
  br i1 %.not95, label %bb.ag, label %bb.ay

bb.ag:                                            ; preds = %.lr.ph199
  %i.eh = sext i32 %i.ef to i64                   ; 3 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.eh)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.el, label %bb.ay, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ag
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.en = load ptr, ptr %3, align 8, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.eh)
          to label %bb.ak unwind label %bb.ai     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.er = load ptr, ptr %2, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef float %i.et(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.eh)
          to label %bb.al unwind label %bb.ar     ; 7 uses

bb.al:                                            ; preds = %bb.ak
  %i.ev = load ptr, ptr %i.dm, align 8, !tbaa !169 ; 5 uses
  %i.ew = load ptr, ptr %i.dn, align 8, !tbaa !64
  %.not.i119 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not.i119, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.ef, ptr %i.ev, align 4, !tbaa !146
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store float %i.eu, ptr %i.ex, align 4, !tbaa !174
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ey, ptr %i.dm, align 8, !tbaa !169
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128

bb.an:                                            ; preds = %bb.al
  %i.ez = load ptr, ptr %7, align 8, !tbaa !61    ; 4 uses
  %i.fa = ptrtoint ptr %i.ev to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 6 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775800
  br i1 %i.fd, label %bb.ao, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc126 unwind label %.loopexit.split-lp

.noexc126:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120: ; preds = %bb.an
  %i.fe = ashr exact i64 %i.fc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i121, %i.fe ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 1152921504606846975)
  %i.fi = select i1 %i.fg, i64 1152921504606846975, i64 %i.fh ; 3 uses
  %.not.i.i.i122 = icmp ne i64 %i.fi, 0
  call void @llvm.assume(i1 %.not.i.i.i122)
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #23
          to label %.noexc127 unwind label %.loopexit172 ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fc ; 3 uses
  store i32 %i.ef, ptr %i.fl, align 4, !tbaa !146
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store float %i.eu, ptr %i.fm, align 4, !tbaa !174
  %i.fn = icmp sgt i64 %i.fc, 0
  br i1 %i.fn, label %bb.ap, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123

bb.ap:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %i.ez, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123: ; preds = %bb.ap, %.noexc127
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.not.i28.i.i124 = icmp eq ptr %i.ez, null
  br i1 %.not.i28.i.i124, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fc) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125: ; preds = %bb.aq, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i123
  store ptr %i.fk, ptr %7, align 8, !tbaa !61
  store ptr %i.fo, ptr %i.dm, align 8, !tbaa !169
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fi
  store ptr %i.fp, ptr %i.dn, align 8, !tbaa !64
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i125, %bb.am
  %i.fq = load ptr, ptr %6, align 8, !tbaa !54    ; 10 uses
  %i.fr = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %i.dp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !60
  %i.fu = fcmp ult float %i.eu, %i.ft
  br i1 %i.fu, label %bb.as, label %bb.ay

bb.ar:                                            ; preds = %bb.ak
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit172:                                     ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i120
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128
  %i.fw = bitcast float %i.eu to i32
  %.sroa.0.sroa.5.0.insert.ext = zext i32 %i.fw to i64
  %.sroa.0.sroa.5.0.insert.shift = shl nuw i64 %.sroa.0.sroa.5.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.ef to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !60
  %i.fz = fcmp ogt float %i.fy, %i.eu
  br i1 %i.fz, label %bb.at, label %.preheader68.i

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ga, ptr nonnull align 4 %i.fq, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.fq, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

.preheader68.i:                                   ; preds = %bb.as
  br i1 %i.dq, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not236 = icmp eq i32 %.063..i, 0
  br i1 %.not236, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.gb = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.do, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
  %i.gc = add nuw nsw i32 %.06370.i, %.071.i
  %i.gd = lshr i32 %i.gc, 1                       ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !60
  %i.gi = fcmp ogt float %i.gh, %i.eu             ; 2 uses
  %.063..i = select i1 %i.gi, i32 %.06370.i, i32 %i.gd ; 4 uses
  %..0.i = select i1 %i.gi, i32 %i.gd, i32 %.071.i ; 5 uses
  %i.gj = add nsw i32 %..0.i, -1
  %i.gk = icmp slt i32 %.063..i, %i.gj
  br i1 %i.gk, label %.lr.ph.i, label %.preheader.i, !llvm.loop !78

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %bb.av
  %indvars.iv = phi i64 [ %i.gb, %.lr.ph74.i.preheader ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %indvars.iv ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !60
  %i.go = fcmp olt float %i.gn, %i.eu
  br i1 %i.go, label %._crit_edge.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph74.i
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !57
  %i.gq = icmp eq i32 %i.gp, %i.ef
  br i1 %i.gq, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gr = icmp sgt i64 %indvars.iv, 1
  br i1 %i.gr, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.av, %.lr.ph74.i, %.preheader.i, %.preheader68.i
  %.0.lcssa80.i = phi i32 [ %..0.i, %.preheader.i ], [ %i.do, %.preheader68.i ], [ %..0.i, %.lr.ph74.i ], [ %..0.i, %bb.av ] ; 3 uses
  %.2.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.preheader68.i ], [ 0, %bb.av ], [ %indvars.iv, %.lr.ph74.i ]
  %i.gs = getelementptr inbounds [12 x i8], ptr %i.fq, i64 %.2.lcssa.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !57
  %i.gu = icmp eq i32 %i.gt, %i.ef
  br i1 %i.gu, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i
  %i.gv = zext nneg i32 %.0.lcssa80.i to i64
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %i.gv ; 5 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !57
  %i.gy = icmp eq i32 %i.gx, %i.ef
  br i1 %i.gy, label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gz = getelementptr i8, ptr %i.gw, i64 12
  %i.ha = sub nsw i32 %5, %.0.lcssa80.i
  %i.hb = sext i32 %i.ha to i64
  %i.hc = mul nsw i64 %i.hb, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gz, ptr nonnull align 4 %i.gw, i64 %i.hc, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.gw, align 4
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split: ; preds = %bb.ax, %bb.at
  %.sink = phi ptr [ %i.fq, %bb.at ], [ %i.gw, %bb.ax ]
  %.065.i.ph = phi i32 [ 0, %bb.at ], [ %.0.lcssa80.i, %bb.ax ]
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !75
  br label %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit

_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit: ; preds = %bb.au, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split, %._crit_edge.i, %bb.aw
  %.065.i = phi i32 [ %.065.i.ph, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit.sink.split ], [ %i.a, %bb.aw ], [ %i.a, %._crit_edge.i ], [ %i.a, %bb.au ]
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.065.i, i32 %.0197)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128, %.lr.ph199, %bb.ah
  %.2 = phi i32 [ %.0197, %bb.ah ], [ %.0197, %.lr.ph199 ], [ %.sroa.speculated, %_ZN5faiss3nsg16insert_into_poolEPNS0_8NeighborEiS1_.exit ], [ %.0197, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit128 ] ; 2 uses
  %i.hd = add nuw i64 %.088198, 1                 ; 2 uses
  %exitcond211.not = icmp eq i64 %i.hd, %i.eb
  br i1 %exitcond211.not, label %.loopexit, label %.lr.ph199, !llvm.loop !238

.loopexit:                                        ; preds = %bb.ay, %.preheader, %bb.ac
  %.3 = phi i32 [ %5, %bb.ac ], [ %5, %.preheader ], [ %.2, %bb.ay ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089201
  %i.he = add nsw i32 %.089201, 1
  %i.hf = select i1 %.not, i32 %i.he, i32 %.3     ; 2 uses
  %i.hg = icmp slt i32 %i.hf, %5
  br i1 %i.hg, label %bb.ac, label %._crit_edge203, !llvm.loop !239

._crit_edge203:                                   ; preds = %.loopexit, %._crit_edge
  %.not.i.i.i129 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge203
  %i.hh = ptrtoint ptr %.sroa.13.0 to i64
  %i.hi = ptrtoint ptr %.sroa.0150.0 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.hj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge203, %bb.az
  %.not.i.i.i130 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hk = ptrtoint ptr %.sroa.16.0 to i64
  %i.hl = sub i64 %i.hk, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.hl) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.bb:                                            ; preds = %.loopexit174, %.loopexit.split-lp175, %bb.af, %bb.ae, %bb.q, %bb.j
  %.pn100 = phi { ptr, i32 } [ %i.ed, %bb.af ], [ %i.br, %bb.q ], [ %i.ec, %bb.ae ], [ %i.au, %bb.j ], [ %lpad.loopexit176, %.loopexit174 ], [ %lpad.loopexit.split-lp177, %.loopexit.split-lp175 ] ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %.sroa.0150.0, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIiSaIiEED2Ev.exit133, label %.thread

.thread:                                          ; preds = %.loopexit172, %.loopexit.split-lp, %bb.n, %bb.ai, %bb.ar, %bb.bb
  %.pn100170 = phi { ptr, i32 } [ %.pn100, %bb.bb ], [ %i.fv, %bb.ar ], [ %i.bh, %bb.n ], [ %i.em, %bb.ai ], [ %lpad.loopexit, %.loopexit172 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.hm = ptrtoint ptr %.sroa.13.0 to i64
  %i.hn = ptrtoint ptr %.sroa.0150.0 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0, i64 noundef %i.ho) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit133

_ZNSt6vectorIiSaIiEED2Ev.exit133:                 ; preds = %bb.i, %bb.bb, %.thread, %bb.h
  %.pn100.pn.pn = phi { ptr, i32 } [ %i.as, %bb.h ], [ %i.at, %bb.i ], [ %.pn100, %bb.bb ], [ %.pn100170, %.thread ]
  %.not.i.i.i134 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit135, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit133
  %i.hp = ptrtoint ptr %.sroa.16.0 to i64
  %i.hq = ptrtoint ptr %.sroa.0158.0 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.hr) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit135

_ZNSt6vectorIiSaIiEED2Ev.exit135:                 ; preds = %bb.bc, %_ZNSt6vectorIiSaIiEED2Ev.exit133
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
  %i.e = load i32, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph.split.us, label %._crit_edge28

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !69
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %2, align 8, !tbaa !24
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
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40 ; 2 uses
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
end_hunk_3
