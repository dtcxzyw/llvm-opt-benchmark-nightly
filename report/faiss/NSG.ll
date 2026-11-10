Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NSG?download=true
inline.NumInlined: 1167
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss3NSG3dfsERNS_12VisitedTableEii:bb.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5faiss3NSG15attach_unlinkedEPNS_5IndexERNS_12VisitedTableES4_RSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !42
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %indvars.iv)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !42
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %.thread, !llvm.loop !230

bb.c:                                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  switch i32 %i.l, label %bb.g [
    i32 23, label %bb.d
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc unwind label %bb.n     ; 4 uses

.noexc:                                           ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss24NegativeDistanceComputerE, i64 16), ptr %i.m, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !28
  br label %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #24
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %1, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit unwind label %bb.n, !inline_history !98

_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit: ; preds = %bb.e, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %i.w, %bb.g ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !97   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i32 %i.y, 0
  %i.ab = shl nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %bb.h unwind label %bb.o       ; 4 uses

bb.h:                                             ; preds = %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %indvars.iv, ptr noundef nonnull %i.ad)
          to label %bb.i unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %.0.i, align 8, !tbaa !23
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.ad)
          to label %bb.j unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !44
  invoke void @_ZNK5faiss3NSG15search_on_graphILb1EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.k unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %6, align 8, !tbaa !115   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !115 ; 4 uses
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %.critedge.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = xor i64 %i.ay, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.ap, ptr %i.ar, i64 noundef %i.az)
          to label %.noexc58 unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.l
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.ap, ptr %i.ar)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.noexc58
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %.pre97 = load ptr, ptr %6, align 8, !tbaa !67  ; 3 uses
  %.not90 = icmp eq ptr %.pre, %.pre97
  br i1 %.not90, label %.critedge.preheader, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ba = ptrtoint ptr %.pre to i64
  %i.bb = ptrtoint ptr %.pre97 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43
  br label %bb.p

bb.m:                                             ; preds = %bb.p
  %i.bh = add nuw i64 %.03888, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.bd
  br i1 %exitcond.not, label %.critedge.preheader, label %bb.p, !llvm.loop !231

.critedge.preheader:                              ; preds = %bb.m, %bb.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.critedge

bb.n:                                             ; preds = %bb.g, %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZN5faiss3nsg25storage_distance_computerEPKNS_5IndexE.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %.lr.ph89, %bb.m
  %.03888 = phi i64 [ 0, %.lr.ph89 ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre97, i64 %.03888
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !107 ; 3 uses
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !45 ; 2 uses
  %i.br = icmp sge i32 %i.bq, %i.bg
  %.not = icmp eq i32 %i.bn, %i.j
  %or.cond = or i1 %.not, %i.br
  br i1 %or.cond, label %bb.m, label %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.bs = load i32, ptr %0, align 8, !tbaa !42
  %i.bt = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %i.bi, i32 noundef %i.bs)
          to label %bb.q unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.q:                                             ; preds = %.critedge
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.bu)
          to label %bb.r unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  br i1 %i.by, label %bb.s, label %.critedge.backedge

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !45 ; 2 uses
  %i.cc = load i32, ptr %i.bj, align 4, !tbaa !43
  %i.cd = icmp slt i32 %i.cb, %i.cc
  %.not55 = icmp ne i32 %i.bt, %i.j
  %or.cond56.not = and i1 %.not55, %i.cd
  br i1 %or.cond56.not, label %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.s, %bb.r
  br label %.critedge

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %.critedge, %.noexc58, %bb.l, %bb.h, %bb.i, %bb.j
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  br label %bb.v

_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p, %bb.s
  %i.ce = phi i32 [ %i.cb, %bb.s ], [ %i.bq, %bb.p ]
  %.pre-phi = phi i64 [ %i.bu, %bb.s ], [ %i.bo, %bb.p ] ; 2 uses
  %i.cf = phi ptr [ %i.bz, %bb.s ], [ %i.be, %bb.p ]
  %.242 = phi i32 [ %i.bt, %bb.s ], [ %i.bn, %bb.p ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.pre-phi ; 2 uses
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !74
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %.pre-phi, %i.cm
  %i.co = sext i32 %i.ce to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.cn
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.j, ptr %i.cq, align 4, !tbaa !45
  %i.cr = load i32, ptr %i.cg, align 4, !tbaa !45
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cg, align 4, !tbaa !45
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  %i.ct = load ptr, ptr %.0.i, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %.0.i) #17, !inline_history !3
  %i.cw = load ptr, ptr %6, align 8, !tbaa !67    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !68
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit:  ; preds = %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dc = load ptr, ptr %5, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !69
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #24
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.thread

bb.v:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp133, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bl, %bb.o ] ; 2 uses
  %.not.i65 = icmp eq ptr %.0.i, null
  br i1 %.not.i65, label %.body, label %_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i66: ; preds = %bb.v
  %i.di = load ptr, ptr %.0.i, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %.0.i) #17, !inline_history !3
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i66, %bb.v, %bb.n, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.bk, %bb.n ], [ %.pn.pn, %bb.v ], [ %.pn.pn, %_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i66 ]
  %i.dl = load ptr, ptr %6, align 8, !tbaa !67    ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit69, label %bb.w

bb.w:                                             ; preds = %.body
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !68
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit69

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit69: ; preds = %.body, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dr = load ptr, ptr %5, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit71, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit69
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #24
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit71

_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit71: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit69, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn.pn.pn

.thread:                                          ; preds = %bb.b, %bb.a, %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit
  %.0 = phi i32 [ %.242, %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !124
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #24
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !6

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !127
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !129
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #24
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %bb.a, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 7                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !129
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !127
  %i.g = load i64, ptr %i.d, align 8, !tbaa !129
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
          to label %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit, !llvm.loop !232

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #17 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !124
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i, !llvm.loop !6

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #26
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #17 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !127
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !129
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !123
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !124 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !125
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !126
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !123
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !124 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !126
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !233
  %i.ar = and i64 %1, 127
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !120
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #25
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.ag = load ptr, ptr %0, align 8, !tbaa !127
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !124
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.aq = load i32, ptr %1, align 4, !tbaa !45
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !45
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !123
  store ptr %i.am, ptr %i.o, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !126
  store ptr %i.am, ptr %i.a, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !129  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !127
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !80

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !124
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !80

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !124
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !78

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #23 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !128 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !80

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb:bb.a
  store ptr %i.be, ptr %i.av, align 8, !tbaa !124
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !127
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !129
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #24
  store ptr %i.aq, ptr %0, align 8, !tbaa !127
  store i64 %i.am, ptr %i.k, align 8, !tbaa !129
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !123
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !124  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !125
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !126
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !123
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !124 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !125
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss3NSG15search_on_graphILb1EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.faiss::RandomGenerator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %8, i64 noundef 4660)
  %i.a = add nsw i32 %5, 1                        ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !60     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 12                  ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 %i.b, %i.i
  call void @_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.k)
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.i, %i.b
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN5faiss3nsg8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5faiss3nsg8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !71
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN5faiss3nsg8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = sext i32 %5 to i64                       ; 6 uses
  %i.o = icmp slt i32 %5, 0
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit
  %.not.i.i.i.i = icmp eq i32 %5, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc105

.noexc105:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !45
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  %i.t = add nsw i64 %i.n, -1                     ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc105
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.t, 2   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc105, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.16.0 = phi ptr [ %i.r, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.r, %.noexc105 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0158.0 = phi ptr [ %i.q, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.q, %.noexc105 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ %i.v, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc105 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.n)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !74  ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i106

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
          to label %.noexc112 unwind label %bb.h

.noexc112:                                        ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i106: ; preds = %bb.e
  %.not.i.i.i.i107 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit114, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i106
  %i.ad = shl nuw nsw i64 %i.ab, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #23
          to label %.noexc113 unwind label %bb.h  ; 5 uses

.noexc113:                                        ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !45
  %i.ag = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit114, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i108

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i108: ; preds = %.noexc113
  %i.ai = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i109 = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i109, i1 false), !tbaa !45
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit114

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit114:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i108, %.noexc113, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i106
  %.sroa.13.0 = phi ptr [ %i.af, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i108 ], [ %i.af, %.noexc113 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i106 ] ; 2 uses
  %.sroa.0150.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i108 ], [ %i.ae, %.noexc113 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i106 ] ; 10 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %4, ptr noundef %.sroa.0150.0)
          to label %.preheader186 unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader186:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit114
  %i.an = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %.sroa.0158.0 to i64       ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 2 uses
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.am) ; 2 uses
  %.not211 = icmp eq i64 %invariant.umin, 0
  br i1 %.not211, label %.preheader182, label %.lr.ph

.preheader182:                                    ; preds = %bb.k, %.preheader186
  %.084.lcssa = phi i32 [ 0, %.preheader186 ], [ %.185, %bb.k ] ; 2 uses
  %i.ar = icmp slt i32 %.084.lcssa, %5
  br i1 %i.ar, label %.lr.ph201, label %.preheader178

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %bb.g, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit133

.lr.ph:                                           ; preds = %.preheader186, %bb.k
  %.084197 = phi i32 [ %.185, %bb.k ], [ 0, %.preheader186 ] ; 3 uses
  %.090196 = phi i64 [ %i.be, %bb.k ], [ 0, %.preheader186 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0, i64 %.090196
  %i.au = load i32, ptr %i.at, align 4, !tbaa !45 ; 3 uses
  %i.av = load i32, ptr %0, align 8, !tbaa !42
  %.not99 = icmp slt i32 %i.au, %i.av
  br i1 %.not99, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.aw = sext i32 %.084197 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0158.0, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !45
  %i.ay = sext i32 %i.au to i64
  %i.az = load ptr, ptr %3, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ay)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bd = add nsw i32 %.084197, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.185 = phi i32 [ %i.bd, %bb.j ], [ %.084197, %.lr.ph ] ; 2 uses
  %i.be = add nuw i64 %.090196, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %invariant.umin
  br i1 %exitcond.not, label %.preheader182, label %.lr.ph, !llvm.loop !234

.preheader178:                                    ; preds = %bb.p, %.preheader182
  %.not212 = icmp eq ptr %.0.i.i.i.i.i, %.sroa.0158.0
  br i1 %.not212, label %._crit_edge, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader178
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  br label %bb.r

.lr.ph201:                                        ; preds = %.preheader182, %bb.p
  %.286200 = phi i32 [ %.387, %bb.p ], [ %.084.lcssa, %.preheader182 ] ; 3 uses
  %i.bh = load i32, ptr %0, align 8, !tbaa !42
  %i.bi = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %8, i32 noundef %i.bh)
          to label %bb.l unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %.lr.ph201
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bj)
          to label %bb.m unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.bn, label %bb.p, label %bb.n, !llvm.loop !235

bb.n:                                             ; preds = %bb.m
  %i.bo = sext i32 %.286200 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0158.0, i64 %i.bo
  store i32 %i.bi, ptr %i.bp, align 4, !tbaa !45
  %i.bq = load ptr, ptr %3, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bj)
          to label %bb.o unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bu = add nsw i32 %.286200, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %.387 = phi i32 [ %i.bu, %bb.o ], [ %.286200, %bb.m ] ; 2 uses
  %i.bv = icmp slt i32 %.387, %5
  br i1 %i.bv, label %.lr.ph201, label %.preheader178

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, %.preheader178
  %i.bw = load ptr, ptr %6, align 8, !tbaa !75    ; 3 uses
  %.idx = mul nuw nsw i64 %i.n, 12                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge210, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.bw, ptr nonnull %i.bx, i64 noundef %i.ca)
          to label %.noexc115 unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.q
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.bw, ptr nonnull %i.bx)
          to label %.lr.ph209 unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph203, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit
  %.091202 = phi i64 [ 0, %.lr.ph203 ], [ %i.dk, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0158.0, i64 %.091202
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !45 ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load ptr, ptr %2, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef float %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cd)
          to label %bb.s unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %6, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ci, i64 %.091202 ; 4 uses
  store i32 %i.cc, ptr %i.cj, align 4, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  store float %i.ch, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !76
  %i.ck = load ptr, ptr %i.bf, align 8, !tbaa !113 ; 5 uses
  %i.cl = load ptr, ptr %i.bg, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.cc, ptr %i.ck, align 4, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store float %i.ch, ptr %i.cm, align 4, !tbaa !114
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cn, ptr %i.bf, align 8, !tbaa !113
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %7, align 8, !tbaa !67    ; 4 uses
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 5 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.v, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc117 unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #23
          to label %.noexc118 unwind label %.loopexit.split-lp174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 3 uses
  %i.db = load i32, ptr %i.cj, align 4, !tbaa !45
  %i.dc = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !29
  store i32 %i.db, ptr %i.da, align 4, !tbaa !107
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store float %i.dc, ptr %i.dd, align 4, !tbaa !114
  %i.de = icmp sgt i64 %i.cr, 0
  br i1 %i.de, label %bb.w, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i

bb.w:                                             ; preds = %.noexc118
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.co, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i: ; preds = %bb.w, %.noexc118
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i28.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i
  %i.dg = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.di) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i
  store ptr %i.cz, ptr %7, align 8, !tbaa !67
  store ptr %i.df, ptr %i.bf, align 8, !tbaa !113
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dj, ptr %i.bg, align 8, !tbaa !68
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.t
  %i.dk = add nuw i64 %.091202, 1                 ; 2 uses
  %exitcond226.not = icmp eq i64 %i.dk, %i.aq
  br i1 %exitcond226.not, label %._crit_edge, label %bb.r, !llvm.loop !236

.lr.ph209:                                        ; preds = %.noexc115
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
  br i1 %exitcond229.not, label %.loopexit, label %.lr.ph206, !llvm.loop !237

.loopexit:                                        ; preds = %bb.aq, %.preheader, %bb.y
  %.3 = phi i32 [ %5, %bb.y ], [ %5, %.preheader ], [ %.2, %bb.aq ] ; 2 uses
  %.not = icmp sgt i32 %.3, %.089208
  %i.hc = add nsw i32 %.089208, 1
  %i.hd = select i1 %.not, i32 %i.hc, i32 %.3     ; 2 uses
  %i.he = icmp slt i32 %i.hd, %5
  br i1 %i.he, label %bb.y, label %._crit_edge210, !llvm.loop !238

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
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !239

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
!126 = !{!118, !72, i64 16}
!127 = !{!119, !117, i64 0}
!128 = !{!119, !117, i64 40}
!129 = !{!119, !16, i64 8}
!130 = !{ptr @_ZN5faiss24NegativeDistanceComputerD2Ev}
!131 = !{!30, !17, i64 1}
!132 = distinct !{null}
!133 = distinct !{!133, !70}
!134 = distinct !{!134, !70}
!135 = distinct !{!135, !70}
!136 = distinct !{!136, !70}
!137 = distinct !{!137, !70}
!138 = distinct !{!138, !70}
!139 = distinct !{!139, !70}
!140 = distinct !{!140, !70}
!141 = distinct !{!141, !70}
!142 = distinct !{!142, !70}
!143 = distinct !{!143, !70}
!144 = distinct !{!144, !70}
!145 = distinct !{!145, !70}
!146 = distinct !{!146, !70}
!147 = distinct !{!147, !70}
!148 = distinct !{!148, !70}
!149 = distinct !{!149, !70}
!150 = distinct !{!150, !70}
!151 = distinct !{!151, i1 true, !"_ZSt11make_sharedIN5faiss3nsg5GraphIiEEJRlRiEESt10shared_ptrIT_EDpOT0_"}
!152 = distinct !{!152, !151, !"_ZSt11make_sharedIN5faiss3nsg5GraphIiEEJRlRiEESt10shared_ptrIT_EDpOT0_: argument 0"}
!153 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5faiss3nsg5GraphIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!154 = distinct !{!154, !70}
!155 = distinct !{!155, !70}
!156 = !{!83, !72, i64 16}
!157 = !{!83, !72, i64 8}
!158 = !{!85, !13, i64 20}
!159 = !{!152}
!160 = !{!73, !13, i64 20}
!161 = distinct !{!161, !70, !167, !168}
!162 = distinct !{!162, !70, !168, !167}
!163 = distinct !{!163, !70}
!164 = distinct !{!164, !70, !167, !168}
!165 = distinct !{!165, !70, !168, !167}
!166 = !{!20, !16, i64 16}
!167 = !{!"llvm.loop.isvectorized", i32 1}
!168 = !{!"llvm.loop.unroll.runtime.disable"}
!169 = !{!104, !103, i64 16}
!170 = !{!104, !103, i64 8}
!171 = distinct !{!171, !173}
!172 = distinct !{!172, !70}
!173 = !{!"llvm.loop.unswitch.partial.disable"}
!174 = distinct !{!174, !70}
!175 = distinct !{!175, !70}
!176 = distinct !{null, null}
!177 = !{!"_ZTSSt9type_info", !50, i64 8}
!178 = !{!177, !50, i64 8}
!179 = !{ptr @_ZN5faiss3nsg5GraphIiED2Ev}
!180 = distinct !{!180, !70}
!181 = distinct !{null, null}
!182 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5faiss3nsg5GraphIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!183 = distinct !{!183, !70}
!184 = distinct !{!184, !70}
!185 = distinct !{!185, !70}
!186 = distinct !{!186, !70}
!187 = distinct !{!187, !70}
!188 = distinct !{}
!189 = distinct !{!189, !190}
!190 = !{!"llvm.loop.parallel_accesses", !188}
!191 = distinct !{!191, !70}
!192 = distinct !{!192, !70}
!193 = distinct !{!193, !70}
!194 = distinct !{!194, !70}
!195 = distinct !{!195, !70}
!196 = distinct !{!196, !70}
!197 = distinct !{!197, !70}
!198 = distinct !{!198, !70}
!199 = distinct !{!199, !70}
!200 = distinct !{!200, !70}
!201 = distinct !{!201, !70}
!202 = distinct !{!202, !205}
!203 = distinct !{!203, !205}
!204 = !{!111, !110, i64 8}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = distinct !{}
!207 = distinct !{!207, !208}
!208 = !{!"llvm.loop.parallel_accesses", !206}
!209 = distinct !{!209, !70}
!210 = distinct !{!210, !70}
!211 = distinct !{!211, !70}
!212 = distinct !{!212, !70}
!213 = distinct !{!213, !70}
!214 = distinct !{!214, !70}
!215 = distinct !{!215, !70}
!216 = distinct !{!216, !70}
!217 = distinct !{!217, !70}
!218 = distinct !{!218, !70}
!219 = distinct !{!219, !70}
!220 = distinct !{!220, !70}
!221 = distinct !{!221, !70}
!222 = distinct !{!222, !70}
!223 = distinct !{!223, !70}
!224 = distinct !{!224, !70}
!225 = distinct !{!225, i1 true, !"_ZNSt5dequeIiSaIiEE3endEv"}
!226 = distinct !{!226, !225, !"_ZNSt5dequeIiSaIiEE3endEv: argument 0"}
!227 = !{!119, !72, i64 64}
!228 = !{!119, !72, i64 56}
!229 = !{!226}
!230 = distinct !{!230, !70}
!231 = distinct !{!231, !70}
!232 = distinct !{!232, !70}
!233 = !{!119, !72, i64 16}
!234 = distinct !{!234, !70}
!235 = distinct !{!235, !70}
!236 = distinct !{!236, !70}
!237 = distinct !{!237, !70}
!238 = distinct !{!238, !70}
!239 = distinct !{!239, !70}
end_hunk_1
