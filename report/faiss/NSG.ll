Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NSG?download=true
inline.NumInlined: 1167
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss3NSG15search_on_graphILb1EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
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

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %bb.an
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
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge.us, label %bb.d, !llvm.loop !240

bb.d:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.a, %bb.c ] ; 2 uses
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
  store i8 0, ptr %i.ad, align 8, !tbaa !46
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #17 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.split.us
  %i.ah = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ai)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %3, align 8, !tbaa !55
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ah)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f, %.split.us
  %i.am = call ptr @__cxa_allocate_exception(i64 40) #17 ; 2 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss3NSG11check_graphEv.omp_outlined, ptr noundef nonnull @.str.2, i32 noundef 670)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.k unwind label %bb.j

._crit_edge28:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %bb.a
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #25
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { convergent nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !70}
!1 = distinct !{!1, !70}
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = distinct !{!4, !70}
!5 = distinct !{!5, !70}
!6 = distinct !{!6, !70}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !12, i64 0}
!17 = !{!"bool", !12, i64 0}
!18 = !{!"_ZTSN5faiss10MetricTypeE", !12, i64 0}
!19 = !{!"float", !12, i64 0}
!20 = !{!"_ZTSN5faiss5IndexE", !13, i64 8, !16, i64 16, !17, i64 24, !17, i64 25, !18, i64 28, !19, i64 32}
!21 = !{!20, !18, i64 28}
!22 = !{!"vtable pointer", !11, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN5faiss16DistanceComputerE"}
!25 = !{!"any pointer", !12, i64 0}
!26 = !{!"p1 _ZTSN5faiss16DistanceComputerE", !25, i64 0}
!27 = !{!"_ZTSN5faiss24NegativeDistanceComputerE", !24, i64 0, !26, i64 8}
!28 = !{!27, !26, i64 8}
!29 = !{!19, !19, i64 0}
!30 = !{!"_ZTSSt22_Optional_payload_baseIbE", !12, i64 0, !17, i64 1}
!31 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !30, i64 0}
!32 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !31, i64 0}
!33 = !{!"_ZTSSt8optionalIbE", !32, i64 0}
!34 = !{!"p1 _ZTSN5faiss3nsg5GraphIiEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!37 = !{!"_ZTSSt12__shared_ptrIN5faiss3nsg5GraphIiEELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !36, i64 8}
!38 = !{!"_ZTSSt10shared_ptrIN5faiss3nsg5GraphIiEEE", !37, i64 0}
!39 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !12, i64 0, !16, i64 4992}
!40 = !{!"_ZTSN5faiss15RandomGeneratorE", !39, i64 0}
!41 = !{!"_ZTSN5faiss3NSGE", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !33, i64 20, !13, i64 24, !38, i64 32, !17, i64 48, !40, i64 56}
!42 = !{!41, !13, i64 0}
!43 = !{!41, !13, i64 4}
!44 = !{!41, !13, i64 16}
!45 = !{!13, !13, i64 0}
!46 = !{!12, !12, i64 0}
!47 = !{!41, !17, i64 48}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!"p1 omnipotent char", !25, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !16, i64 8, !12, i64 16}
!54 = !{!53, !16, i64 8}
!55 = !{!53, !50, i64 0}
!56 = !{!37, !34, i64 0}
!57 = !{!41, !13, i64 24}
!58 = !{!"p1 _ZTSN5faiss3nsg8NeighborE", !25, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN5faiss3nsg8NeighborESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 0}
!61 = !{!"_ZTSN5faiss3nsg8NeighborE", !13, i64 0, !19, i64 4, !17, i64 8}
!62 = !{!61, !13, i64 0}
!63 = !{!16, !16, i64 0}
!64 = !{!61, !19, i64 4}
!65 = !{!"p1 _ZTSN5faiss3nsg4NodeE", !25, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN5faiss3nsg4NodeESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 16}
!69 = !{!59, !58, i64 16}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!59, !58, i64 8}
!72 = !{!"p1 int", !25, i64 0}
!73 = !{!"_ZTSN5faiss3nsg5GraphIiEE", !72, i64 8, !13, i64 16, !13, i64 20, !17, i64 24}
!74 = !{!73, !13, i64 16}
!75 = !{!58, !58, i64 0}
!76 = !{!17, !17, i64 0}
!77 = !{!61, !17, i64 8}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = !{i64 0, i64 4, !45, i64 4, i64 4, !29, i64 8, i64 1, !76}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = !{!41, !13, i64 8}
!82 = !{!41, !13, i64 12}
!83 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!84 = !{!83, !72, i64 0}
!85 = !{!"_ZTSN5faiss3nsg5GraphINS0_4NodeEEE", !65, i64 8, !13, i64 16, !13, i64 20, !17, i64 24}
!86 = !{!85, !13, i64 16}
!87 = !{!85, !17, i64 24}
!88 = !{!85, !65, i64 8}
!89 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!90 = !{!89, !13, i64 8}
!91 = !{!89, !13, i64 12}
!92 = !{!73, !17, i64 24}
!93 = !{!73, !72, i64 8}
!94 = !{!34, !34, i64 0}
!95 = !{!36, !35, i64 0}
!96 = !{ptr @_ZN5faiss3nsg5GraphINS0_4NodeEED2Ev}
!97 = !{!20, !13, i64 8}
!98 = !{ptr @_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE}
!99 = !{!"p1 _ZTSN5faiss12VisitedTableE", !25, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"p1 _ZTSN5faiss5IndexE", !25, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"p1 _ZTSSt5mutex", !25, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseISt5mutexSaIS0_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!104, !103, i64 0}
!106 = !{!"_ZTSN5faiss3nsg4NodeE", !13, i64 0, !19, i64 4}
!107 = !{!106, !13, i64 0}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
!109 = !{!108}
!110 = !{!"p1 long", !25, i64 0}
!111 = !{!"_ZTSN5faiss3nsg5GraphIlEE", !110, i64 8, !13, i64 16, !13, i64 20, !17, i64 24}
!112 = !{!111, !13, i64 16}
!113 = !{!66, !65, i64 8}
!114 = !{!106, !19, i64 4}
!115 = !{!65, !65, i64 0}
!116 = !{!"any p2 pointer", !25, i64 0}
!117 = !{!"p2 int", !116, i64 0}
!118 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !72, i64 0, !72, i64 8, !72, i64 16, !117, i64 24}
!119 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !117, i64 0, !16, i64 8, !118, i64 16, !118, i64 48}
!120 = !{!119, !72, i64 48}
!121 = !{!118, !72, i64 0}
!122 = !{!119, !117, i64 72}
!123 = !{!118, !117, i64 24}
!124 = !{!72, !72, i64 0}
!125 = !{!118, !72, i64 8}
end_hunk_0
