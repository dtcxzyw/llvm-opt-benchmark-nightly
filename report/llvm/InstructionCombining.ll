Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstructionCombining?download=true
inline.NumInlined: 12731
inline.NumDeleted: 6421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4llvm12InstCombiner16computeBackEdgesEv:bb.a
  %i.ab = phi ptr [ %.pre29, %_ZN4llvm11SmallVectorIbLj40EEC2Em.exit.._crit_edge_crit_edge ], [ %i.aa, %.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store i8 1, ptr %i.ac, align 8, !tbaa !302
  %i.ad = icmp eq ptr %i.ab, %i.f
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ab) #24
  br label %_ZN4llvm11SmallVectorIbLj40EED2Ev.exit

_ZN4llvm11SmallVectorIbLj40EED2Ev.exit:           ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.e:                                             ; preds = %.lr.ph27, %.loopexit
  %.pre28 = phi ptr [ %.pre30, %.lr.ph27 ], [ %.pre2833, %.loopexit ] ; 3 uses
  %i.ae = phi ptr [ %.pre30, %.lr.ph27 ], [ %i.aa, %.loopexit ] ; 2 uses
  %.sroa.019.026 = phi ptr [ %i.u, %.lr.ph27 ], [ %i.af, %.loopexit ]
  %i.af = getelementptr inbounds i8, ptr %.sroa.019.026, i64 -8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !286 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !299
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  store i8 1, ptr %i.ak, align 1, !tbaa !191
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !287
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -24
  %i.ao = call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.an) #26 ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1      ; 2 uses
  %.not2223 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not2223, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ar = ptrtoint ptr %i.ag to i64
  %i.as = mul i64 %i.ar, -4658895280553007687     ; 2 uses
  %i.at = lshr i64 %i.as, 31
  %i.au = xor i64 %i.at, %i.as
  %i.av = shl i64 %i.au, 32                       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit
  %.pre2832 = phi ptr [ %.pre28, %.lr.ph ], [ %.pre2831, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit ] ; 2 uses
  %i.aw = phi ptr [ %.pre28, %.lr.ph ], [ %i.ff, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit ] ; 3 uses
  %.sroa.011.024 = phi ptr [ %i.ap, %.lr.ph ], [ %i.fg, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.011.024, align 8, !tbaa !115 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !299
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !191, !range !46, !noundef !47
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.g, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load i32, ptr %i.v, align 8, !noalias !1374 ; 2 uses
  %i.bf = and i32 %i.be, 1
  %.not.i.i.i.i = icmp eq i32 %i.bf, 0            ; 3 uses
  %i.bg = load ptr, ptr %i.w, align 8, !noalias !1374
  %i.bh = load ptr, ptr %i.x, align 8, !noalias !1374
  %i.bi = load i32, ptr %i.y, align 8, !noalias !1374
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.bg, ptr %i.w ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.bh, ptr %i.z ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.bi, i32 8 ; 4 uses
  %i.bj = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.bj, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.bl = ptrtoint ptr %i.ax to i64
  %i.bm = mul i64 %i.bl, -4658895280553007687     ; 2 uses
  %i.bn = lshr i64 %i.bm, 31
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = or disjoint i64 %i.bp, %i.av
  %i.br = mul i64 %i.bq, -4658895280553007687     ; 2 uses
  %i.bs = lshr i64 %i.br, 31
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bk, %i.bu                    ; 3 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.bw ; 2 uses
  %i.by = lshr i64 %i.bw, 5
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !123, !noalias !1375
  %i.cb = and i32 %i.bv, 31
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = trunc i32 %i.cc to i1
  br i1 %i.cd, label %.lr.ph.i.i, label %.loopexit.i, !prof !155

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.ce = phi ptr [ %i.co, %bb.i ], [ %i.bx, %bb.h ] ; 2 uses
  %.024.i.i = phi i32 [ %i.cm, %bb.i ], [ %i.bv, %bb.h ]
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !304, !noalias !1375
  %i.cg = icmp eq ptr %i.ag, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1375
  %i.cj = icmp eq ptr %i.ax, %i.ci
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit, label %bb.i, !prof !146

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.cl = add nuw i32 %.024.i.i, 1
  %i.cm = and i32 %i.cl, %i.bk                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.cn ; 2 uses
  %i.cp = lshr i64 %i.cn, 5
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !123, !noalias !1375
  %i.cs = and i32 %i.cm, 31
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i.i, label %.loopexit.i, !prof !156, !llvm.loop !1345

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.bx, %bb.h ], [ null, %bb.g ], [ %i.co, %bb.i ]
  %i.cv = shl i32 %i.be, 1
  %i.cw = and i32 %i.cv, -4
  %i.cx = add i32 %i.cw, 4
  %i.cy = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i, label %bb.j, !prof !146

bb.j:                                             ; preds = %.loopexit.i
  %i.cz = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 8 dereferenceable(144) %i.v, i32 noundef %i.cz), !noalias !1375
  %i.da = load i32, ptr %i.v, align 8, !noalias !1376
  %i.db = and i32 %i.da, 1
  %.not.i.i.i = icmp eq i32 %i.db, 0              ; 3 uses
  %i.dc = load ptr, ptr %i.w, align 8, !noalias !1376
  %i.dd = load ptr, ptr %i.x, align 8, !noalias !1376
  %i.de = load i32, ptr %i.y, align 8, !noalias !1376
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.dc, ptr %i.w ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.dd, ptr %i.z ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.de, i32 8 ; 2 uses
  %i.df = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.df)
  %i.dg = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.dh = ptrtoint ptr %i.ax to i64
  %i.di = mul i64 %i.dh, -4658895280553007687     ; 2 uses
  %i.dj = lshr i64 %i.di, 31
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = or disjoint i64 %i.dl, %i.av
  %i.dn = mul i64 %i.dm, -4658895280553007687     ; 2 uses
  %i.do = lshr i64 %i.dn, 31
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dg, %i.dq                    ; 3 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ds ; 2 uses
  %i.du = lshr i64 %i.ds, 5
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !123, !noalias !1375
  %i.dx = and i32 %i.dr, 31
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = trunc i32 %i.dy to i1
  br i1 %i.dz, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i, !prof !155

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.ea = phi ptr [ %i.ek, %bb.k ], [ %i.dt, %bb.j ] ; 3 uses
  %.024.i = phi i32 [ %i.ei, %bb.k ], [ %i.dr, %bb.j ]
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !304, !noalias !1375
  %i.ec = icmp eq ptr %i.ag, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !1375
  %i.ef = icmp eq ptr %i.ax, %i.ee
  %i.eg = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %i.eg, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i, label %bb.k, !prof !146

bb.k:                                             ; preds = %.lr.ph.i
  %i.eh = add nuw i32 %.024.i, 1
  %i.ei = and i32 %i.eh, %i.dg                    ; 3 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ej ; 2 uses
  %i.el = lshr i64 %i.ej, 5
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !123, !noalias !1375
  %i.eo = and i32 %i.ei, 31
  %i.ep = lshr i32 %i.en, %i.eo
  %i.eq = trunc i32 %i.ep to i1
  br i1 %i.eq, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i, !prof !156, !llvm.loop !1345

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i: ; preds = %bb.k, %.lr.ph.i, %bb.j, %.loopexit.i
  %.pre-phi35 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.j ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.k ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.j ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.k ]
  %i.er = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.dt, %bb.j ], [ %i.ek, %bb.k ], [ %i.ea, %.lr.ph.i ] ; 3 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %.pre-phi35 to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 4                 ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 31
  %i.ey = shl nuw i32 1, %i.ex
  %i.ez = lshr i64 %i.ev, 5
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !123, !noalias !1375
  %i.fc = or i32 %i.ey, %i.fb
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !123, !noalias !1375
  %i.fd = load i32, ptr %i.v, align 8, !noalias !1375
  %i.fe = add i32 %i.fd, 2
  store i32 %i.fe, ptr %i.v, align 8, !noalias !1375
  store ptr %i.ag, ptr %i.er, align 8, !noalias !1375
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.ax, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !1375
  %.pre = load ptr, ptr %1, align 8, !tbaa !169   ; 2 uses
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i, %bb.f
  %.pre2831 = phi ptr [ %.pre2832, %bb.f ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i ], [ %.pre2832, %.lr.ph.i.i ] ; 2 uses
  %i.ff = phi ptr [ %i.aw, %bb.f ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_10BasicBlockES5_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit.i ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 32 ; 2 uses
  %.not22 = icmp eq ptr %i.fg, %i.aq
  br i1 %.not22, label %.loopexit, label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm15InstCombinePassC2ENS_18InstCombineOptionsE(ptr noundef nonnull align 8 dereferenceable(2264) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 256, ptr %i.c, align 4, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store ptr %i.f, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store i32 0, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2124
  store i32 16, ptr %i.h, align 4, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i64 %1, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15InstCombinePass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2264) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 55), i64 15) #24, !inline_history !1377 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1381
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1382 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #24 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !1382
  br label %_ZN4llvm13PassInfoMixinINS_15InstCombinePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_15InstCombinePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !1382
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !1382
  br label %_ZN4llvm13PassInfoMixinINS_15InstCombinePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_15InstCombinePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !1381
  %.not.i = icmp ult ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm13PassInfoMixinINS_15InstCombinePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 60) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %_ZN4llvm13PassInfoMixinINS_15InstCombinePassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.r, ptr %i.f, align 8, !tbaa !1382
  store i8 60, ptr %i.o, align 1, !tbaa !127
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.f
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !1381
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !1382 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 15
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.23, i64 noundef 15) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.t, ptr noundef nonnull align 1 dereferenceable(15) @.str.23, i64 15, i1 false)
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !1382
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !1382
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.y, %bb.g ], [ %1, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2260
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1396
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.ae) #24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1381
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1382 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull @.str.24, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 59, ptr %i.aj, align 1
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !1382
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !1382
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10

_ZN4llvm11raw_ostreamlsEPKc.exit10:               ; preds = %bb.i, %bb.j
  %i.ao = load i8, ptr %i.ab, align 8, !tbaa !1397, !range !46, !noundef !47
  %i.ap = trunc nuw i8 %i.ao to i1                ; 3 uses
  %i.aq = select i1 %i.ap, i64 0, i64 3           ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !1381
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !1382 ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10
  %i.ax = select i1 %i.ap, ptr @.str.16, ptr @.str.25
  %i.ay = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ax, i64 noundef %i.aq) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1382
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10
  br i1 %i.ap, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.as, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !1382
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3 ; 2 uses
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !1382
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.k, %bb.l, %bb.m
  %i.bb = phi ptr [ %.pre21, %bb.k ], [ %i.ba, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %.0.i.i13 = phi ptr [ %i.ay, %bb.k ], [ %1, %bb.m ], [ %1, %bb.l ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1381
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.bg, 15
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.bi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13, ptr noundef nonnull @.str.26, i64 noundef 15) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bb, ptr noundef nonnull align 1 dereferenceable(15) @.str.26, i64 15, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1382
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !1382
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.n, %bb.o
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !1382 ; 3 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !1381
  %.not.i18 = icmp ult ptr %i.bm, %i.bn
  br i1 %.not.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.bo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 62) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit20

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bp, ptr %i.f, align 8, !tbaa !1382
  store i8 62, ptr %i.bm, align 1, !tbaa !127
  br label %_ZN4llvm11raw_ostreamlsEc.exit20

_ZN4llvm11raw_ostreamlsEc.exit20:                 ; preds = %bb.p, %bb.q
  ret void
end_hunk_0
begin_hunk_1_@_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_non_zero_fpENS_10ConstantFPELb1EE11matchVectorEPKNS_5ValueE:bb.a

.thread59:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.i, %bb.f, %bb.d, %bb.e, %bb.a
  %i.af = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ %i.m, %bb.d ], [ false, %bb.f ], [ false, %bb.g ], [ false, %.lr.ph ], [ false, %bb.h ], [ %.2, %bb.i ]
  ret i1 %i.af
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12PatternMatch22SpecificBinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELb0EE5matchINS_5ValueEEEbPT_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.980, align 8            ; 4 uses
  %3 = alloca %class.anon.980, align 8            ; 4 uses
  %4 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or.976", align 1 ; 4 uses
  %5 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or.976", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !285
  %i.c = load i8, ptr %1, align 8, !tbaa !110
  %i.d = zext i8 %i.c to i32
  %i.e = add i32 %i.b, 30
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.b, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr %0, align 8, !tbaa !333
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115  ; 5 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !110   ; 2 uses
  %i.o = icmp ugt i8 %i.n, 22
  br i1 %i.o, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.p = icmp eq i8 %i.n, 19
  br i1 %i.p, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i.i.i

_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.e

_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %4, ptr %3, align 8, !tbaa !218
  %i.q = ptrtoint ptr %3 to i64
  %i.r = call noundef zeroext i1 @_ZNK4llvm8Constant29containsMatchingVectorElementENS_12function_refIFbPS0_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr nonnull @_ZN4llvm12function_refIFbPNS_8ConstantEEE11callback_fnIZNKS_12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchIS1_EEbPT_EUlS2_E_EEblS2_, i64 %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.r, label %bb.e, label %_ZNK4llvm12PatternMatch19bind_immconstant_ty5matchINS_5ValueEEEbPT_.exit.i

bb.e:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i.i.i, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.thread.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.w, 18
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i1 noundef zeroext true) #24 ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not13.i.i.i, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !110
  %i.z = icmp eq i8 %i.y, 19
  br i1 %i.z, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.thread.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i

_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.thread.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit

_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %5, ptr %2, align 8, !tbaa !218
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = call noundef zeroext i1 @_ZNK4llvm8Constant29containsMatchingVectorElementENS_12function_refIFbPS0_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr nonnull @_ZN4llvm12function_refIFbPNS_8ConstantEEE11callback_fnIZNKS_12PatternMatch35ContainsMatchingVectorElement_matchINS_19PatternMatchHelpers9match_isaIJNS_12ConstantExprEEEEE5matchIS1_EEbPT_EUlS2_E_EEblS2_, i64 %i.aa) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.ab, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit, label %_ZNK4llvm12PatternMatch19bind_immconstant_ty5matchINS_5ValueEEEbPT_.exit.i

_ZNK4llvm12PatternMatch19bind_immconstant_ty5matchINS_5ValueEEEbPT_.exit.i: ; preds = %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit.i.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !231, !nonnull !47, !align !55
  store ptr %i.m, ptr %i.ac, align 8, !tbaa !202
  br label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit

_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14specificval_tyENS0_19bind_immconstant_tyELj0ELb0EE5matchINS_5ValueEEEbjPT_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.thread.i.i.i, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i, %_ZNK4llvm12PatternMatch19bind_immconstant_ty5matchINS_5ValueEEEbPT_.exit.i
  %.0.i = phi i1 [ false, %bb.a ], [ true, %_ZNK4llvm12PatternMatch19bind_immconstant_ty5matchINS_5ValueEEEbPT_.exit.i ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.c ], [ false, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.i.i.i ], [ false, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS_19PatternMatchHelpers16match_combine_orIJNS3_9match_isaIJNS_12ConstantExprEEEENS0_35ContainsMatchingVectorElement_matchIS7_EEEEEEEbPT_RKT0_.exit15.thread.i.i.i ], [ false, %bb.f ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1724 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1724 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1724 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1724
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !286    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !123
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !155

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !286
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !146

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !123
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !156, !llvm.loop !14

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !520
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !146

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !520
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !123
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !123
  %i.bk = load i32, ptr %0, align 8
  %i.bl = add i32 %i.bk, 2
  store i32 %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !286
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !286
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %2, align 8, !tbaa !105
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1729
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1729
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1729
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1729
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !286    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !123
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !155

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !286
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !146

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !123
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !156, !llvm.loop !14

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !520
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.232", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !127
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !127
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1730
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !127
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !127
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !127
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_11InstructionELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
end_hunk_1
begin_hunk_2_@_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE4growEm:bb.a
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  store i64 6, ptr %.09.i.i.i.i.i.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !385
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !386  ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !386
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.n = inttoptr i64 %i.m to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef %i.n) #24
  br label %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1759

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm14WeakTrackingVHEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !37  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !141 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.q = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.q, 24
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.s, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !386
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #24
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i:           ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.s
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !11

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit.loopexit: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.v = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i ] ; 2 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !319
  %i.x = icmp eq ptr %i.v, %i.b
  br i1 %i.x, label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE21takeAllocationForGrowEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit
  call void @free(ptr noundef %i.v) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE21takeAllocationForGrowEPS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE21takeAllocationForGrowEPS1_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14WeakTrackingVHELb0EE19moveElementsForGrowEPS1_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  %i.y = trunc i64 %i.w to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.y, ptr %i.z, align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1764 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1764 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1764 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1764
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !411    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !412  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = shl i64 %i.q, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.l, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !123
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %.loopexit, !prof !155

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.an = phi ptr [ %i.ax, %bb.c ], [ %i.ag, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.av, %bb.c ], [ %i.ae, %bb.b ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !411
  %i.ap = icmp eq ptr %i.m, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.s, %i.ar
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !146

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = add nuw i32 %.024.i, 1
  %i.av = and i32 %i.au, %i.l                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !123
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %.loopexit, !prof !156, !llvm.loop !16

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ag, %bb.b ], [ null, %bb.a ], [ %i.ax, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !529
  %i.be = shl i32 %i.b, 1
  %i.bf = and i32 %i.be, -4
  %i.bg = add i32 %i.bf, 4
  %i.bh = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !146

bb.d:                                             ; preds = %.loopexit
  %i.bi = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bi)
  %i.bj = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !529
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.bk = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.bl = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.bm = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.bn = select i1 %.not.i.i.i.i, ptr %i.bl, ptr %i.j
  %i.bo = select i1 %.not.i.i.i.i, ptr %i.bk, ptr %i.d
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 4                 ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 31
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = lshr i64 %i.bs, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !123
  %i.bz = or i32 %i.bv, %i.by
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !123
  %i.ca = load i32, ptr %0, align 8
  %i.cb = add i32 %i.ca, 2
  store i32 %i.cb, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.bm, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.an, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1769
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1769
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1769
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1769
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !411    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !412  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = shl i64 %i.p, 32
  %i.x = and i64 %i.v, 4294967295
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.k, %i.ac                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !123
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !155

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.aw, %bb.c ], [ %i.af, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.au, %bb.c ], [ %i.ad, %bb.b ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !411
  %i.ao = icmp eq ptr %i.l, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.r, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false     ; 3 uses
  br i1 %i.as, label %.thread, label %bb.c, !prof !146

bb.c:                                             ; preds = %.lr.ph
  %i.at = add nuw i32 %.024, 1
  %i.au = and i32 %i.at, %i.k                     ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !123
  %i.ba = and i32 %i.au, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !156, !llvm.loop !16

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.af, %bb.b ], [ null, %bb.a ], [ %i.aw, %bb.c ], [ %i.am, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.as, %bb.c ], [ %i.as, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !529
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !127
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !127
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1770
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !127
  br label %bb.b

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEC2EjNS_12DenseMapBaseISB_S4_S6_S8_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !127
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !127
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapISt4pairIPNS_10BasicBlockES3_ENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit.i ]
end_hunk_2
begin_hunk_3_@_ZSt17__rotate_adaptiveIPPN4llvm17DbgVariableRecordES3_lET_S4_S4_S4_T1_S5_T0_S5_:bb.a
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !146

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %i.g, ptr %5, align 8, !tbaa !262
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !146

bb.g:                                             ; preds = %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load ptr, ptr %0, align 8, !tbaa !262
  store ptr %i.p, ptr %i.o, align 8, !tbaa !262
  br label %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !146

bb.j:                                             ; preds = %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !262
  store ptr %i.r, ptr %0, align 8, !tbaa !262
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit36

_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !146

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !262
  store ptr %i.y, ptr %5, align 8, !tbaa !262
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit37

_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !146

bb.s:                                             ; preds = %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %i.ad, ptr %0, align 8, !tbaa !262
  br label %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit38

_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !146

bb.v:                                             ; preds = %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit38
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !262
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !262
  br label %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit39

_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call noundef ptr @_ZNSt3_V28__rotateIPPN4llvm17DbgVariableRecordEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit39, %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit36
  %.0 = phi ptr [ %i.s, %_ZSt4moveIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit36 ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPN4llvm17DbgVariableRecordES3_ET0_T_S5_S4_.exit39 ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !532
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E15LookupBucketForIS7_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !532  ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !532
  %i.e = load i32, ptr %0, align 8                ; 2 uses
  %i.f = and i32 %i.e, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, i32 %i.h, i32 4   ; 2 uses
  %i.j = shl i32 %i.e, 1
  %i.k = and i32 %i.j, -4
  %i.l = add i32 %i.k, 4
  %i.m = mul i32 %i.i, 3
  %.not.i = icmp ult i32 %i.l, %i.m
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E22findBucketForInsertionIS7_EEPSC_RKT_SG_.exit, label %bb.c, !prof !146

bb.c:                                             ; preds = %bb.b
  %i.n = shl i32 %i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.n)
  %i.o = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E15LookupBucketForIS7_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !532
  %.pre6.i = and i32 %.pre.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E22findBucketForInsertionIS7_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E22findBucketForInsertionIS7_EEPSC_RKT_SG_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.c ], [ %i.f, %bb.b ]
  %i.p = phi ptr [ %.pre5.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i.i, ptr %i.s, ptr %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %.not.i.i.i.i, ptr %i.v, ptr %i.u
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 56                 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = lshr i64 %i.aa, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !123
  %i.ah = or i32 %i.ad, %i.ag
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !123
  %i.ai = load i32, ptr %0, align 8
  %i.aj = add i32 %i.ai, 2
  store i32 %i.aj, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i32 0, ptr %i.ak, align 8, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E22findBucketForInsertionIS7_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.p, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E22findBucketForInsertionIS7_EEPSC_RKT_SG_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E22findBucketForInsertionIS7_EEPSC_RKT_SG_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E15LookupBucketForIS7_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1307", align 8  ; 6 uses
  %i.a = load i32, ptr %0, align 8, !noalias !1851
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1851
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1851
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1851
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !442
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.s = trunc nuw i8 %.sroa.5.0.copyload.i.i to i1
  %i.t = shl i64 %.sroa.04.0.copyload.i.i, 16
  %i.u = and i64 %.sroa.4.0.copyload.i.i, 65535
  %i.v = or disjoint i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %.0.i.i = select i1 %i.s, i32 %i.w, i32 0
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !438
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !440
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.x, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.z, ptr %i.ab, align 4
  %i.ac = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = shl i64 %i.p, 32
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = xor i64 %i.af, 3981806797
  %i.ah = mul i64 %i.ag, -4658895280553007687     ; 2 uses
  %i.ai = lshr i64 %i.ah, 31
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.k, %i.ak                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %.sink2.i.i, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !123
  %i.ar = and i32 %i.al, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph, label %.thread, !prof !155

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.au = phi ptr [ %i.az, %bb.c ], [ %i.an, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ax, %bb.c ], [ %i.al, %bb.b ]
  %i.av = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairIPKNS_11InstructionENS_13DebugVariableEEvE7isEqualERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.au) ; 3 uses
  br i1 %i.av, label %.thread, label %bb.c, !prof !146

bb.c:                                             ; preds = %.lr.ph
  %i.aw = add nuw i32 %.024, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %.sink2.i.i, i64 %i.ay ; 2 uses
  %i.ba = lshr i64 %i.ay, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !123
  %i.bd = and i32 %i.ax, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph, label %.thread, !prof !156, !llvm.loop !1850

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.an, %bb.b ], [ null, %bb.a ], [ %i.az, %bb.c ], [ %i.au, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.av, %bb.c ], [ %i.av, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !532
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairIPKNS_11InstructionENS_13DebugVariableEEvE7isEqualERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !442
  %i.b = load ptr, ptr %1, align 8, !tbaa !442
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !444
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !444
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !439, !range !46, !noundef !47 ; 2 uses
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !439, !range !46, !noundef !47
  %i.r = icmp eq i8 %i.n, %i.q                    ; 2 uses
  %brmerge.not.i.i.i.i.i.i = and i1 %i.r, %i.o
  br i1 %brmerge.not.i.i.i.i.i.i, label %.split.i.i.i.i.i, label %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.f, align 8, !tbaa !319
  %i.v = load i64, ptr %i.h, align 8, !tbaa !319
  %i.w = icmp eq i64 %i.u, %i.v
  %i.x = load i64, ptr %i.s, align 8
  %i.y = load i64, ptr %i.t, align 8
  %i.z = icmp eq i64 %i.x, %i.y
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.d, label %_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_.exit

_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i.i: ; preds = %bb.c
  br i1 %i.r, label %bb.d, label %_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_.exit

bb.d:                                             ; preds = %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i.i, %.split.i.i.i.i.i
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br label %_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_.exit

_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_.exit: ; preds = %bb.d, %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.b, %bb.a
  %i.ae = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i.i ], [ %i.ad, %bb.d ], [ false, %.split.i.i.i.i.i ]
  ret i1 %i.ae
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.618", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 232
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEC2EjNS_12DenseMapBaseISC_S6_jS8_SB_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 56                 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_:bb.a
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !123 ; 2 uses
  %.not11.i23 = icmp eq i32 %i.af, 0
  br i1 %.not11.i23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ag = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i24 = phi i32 [ %i.af, %.lr.ph ], [ %i.cj, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.ah = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i24, i1 true)
  %i.ai = or disjoint i32 %i.ah, %i.ag
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.aj ; 8 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !442
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = mul i64 %i.am, -4658895280553007687     ; 2 uses
  %i.ao = lshr i64 %i.an, 31
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.as = trunc nuw i8 %.sroa.5.0.copyload.i.i.i to i1
  %i.at = shl i64 %.sroa.04.0.copyload.i.i.i, 16
  %i.au = and i64 %.sroa.4.0.copyload.i.i.i, 65535
  %i.av = or disjoint i64 %i.au, %i.at
  %i.aw = trunc i64 %i.av to i32
  %.0.i.i.i = select i1 %i.as, i32 %i.aw, i32 0
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !438
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !440
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.ax, ptr %2, align 8
  store i32 %.0.i.i.i, ptr %i.ac, align 8
  store ptr %i.az, ptr %i.ad, align 4
  %i.ba = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bb = shl i64 %i.ap, 32
  %i.bc = and i64 %i.ba, 4294967295
  %i.bd = or disjoint i64 %i.bc, %i.bb
  %i.be = xor i64 %i.bd, 3981806797
  %i.bf = mul i64 %i.be, -4658895280553007687     ; 2 uses
  %i.bg = lshr i64 %i.bf, 31
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.y, %i.bi                     ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 5                       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !123
  %i.bo = and i32 %i.bj, 31                       ; 2 uses
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %i.bj, %bb.c ]
  %i.br = add i32 %.014.i, 1
  %i.bs = and i32 %i.br, %i.y                     ; 3 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = lshr i64 %i.bt, 5                       ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !123
  %i.bx = and i32 %i.bs, 31                       ; 2 uses
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !1853

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.c
  %.lcssa12.i = phi i64 [ %i.bk, %bb.c ], [ %i.bt, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.bl, %bb.c ], [ %i.bu, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.bo, %bb.c ], [ %i.bx, %.lr.ph.i ]
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !123
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !123
  %i.ce = shl nuw i32 1, %.lcssa.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !123
  %i.ch = or i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !123
  %i.ci = add i32 %.0.i24, -1
  %i.cj = and i32 %i.ci, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1854

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1855

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre32 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre32, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre33, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.ck = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.cl = and i32 %i.ck, -2
  %i.cm = or disjoint i32 %.pre-phi, %i.cl
  store i32 %i.cm, ptr %0, align 8
  %i.cn = load i32, ptr %1, align 8               ; 3 uses
  %i.co = and i32 %i.cn, 1
  %.not.i.i11 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i11, label %bb.d, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.cp = load i32, ptr %i.j, align 8, !tbaa !127 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.cs = zext i32 %i.cp to i64                   ; 2 uses
  %i.ct = mul nuw nsw i64 %i.cs, 56
  %i.cu = add nuw nsw i64 %i.cs, 31
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = and i64 %i.cv, 1073741820
  %i.cx = add nuw nsw i64 %i.cw, %i.ct
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cr, i64 noundef %i.cx, i64 noundef 8) #24
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE4killEv.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.cy = phi i32 [ %i.cn, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEjLj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEESA_jSC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit ], [ %i.cn, %bb.d ], [ %.pre.i, %bb.e ]
  %i.cz = and i32 %i.cy, -2
  store i32 %i.cz, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS7_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !534
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E15LookupBucketForIS7_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !534  ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !534
  %i.e = load i32, ptr %0, align 8                ; 2 uses
  %i.f = and i32 %i.e, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, i32 %i.h, i32 4   ; 2 uses
  %i.j = shl i32 %i.e, 1
  %i.k = and i32 %i.j, -4
  %i.l = add i32 %i.k, 4
  %i.m = mul i32 %i.i, 3
  %.not.i = icmp ult i32 %i.l, %i.m
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E22findBucketForInsertionIS7_EEPSE_RKT_SI_.exit, label %bb.c, !prof !146

bb.c:                                             ; preds = %bb.b
  %i.n = shl i32 %i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.n)
  %i.o = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E15LookupBucketForIS7_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !534
  %.pre6.i = and i32 %.pre.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E22findBucketForInsertionIS7_EEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E22findBucketForInsertionIS7_EEPSE_RKT_SI_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.c ], [ %i.f, %bb.b ]
  %i.p = phi ptr [ %.pre5.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i.i, ptr %i.s, ptr %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %.not.i.i.i.i, ptr %i.v, ptr %i.u
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 56                 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = lshr i64 %i.aa, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !123
  %i.ah = or i32 %i.ad, %i.ag
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !123
  %i.ai = load i32, ptr %0, align 8
  %i.aj = add i32 %i.ai, 2
  store i32 %i.aj, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr null, ptr %i.ak, align 8, !tbaa !262
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E22findBucketForInsertionIS7_EEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.p, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E22findBucketForInsertionIS7_EEPSE_RKT_SI_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E22findBucketForInsertionIS7_EEPSE_RKT_SI_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E15LookupBucketForIS7_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1307", align 8  ; 6 uses
  %i.a = load i32, ptr %0, align 8, !noalias !1861
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1861
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1861
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1861
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !442
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.s = trunc nuw i8 %.sroa.5.0.copyload.i.i to i1
  %i.t = shl i64 %.sroa.04.0.copyload.i.i, 16
  %i.u = and i64 %.sroa.4.0.copyload.i.i, 65535
  %i.v = or disjoint i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %.0.i.i = select i1 %i.s, i32 %i.w, i32 0
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !438
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !440
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.x, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.z, ptr %i.ab, align 4
  %i.ac = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = shl i64 %i.p, 32
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = xor i64 %i.af, 3981806797
  %i.ah = mul i64 %i.ag, -4658895280553007687     ; 2 uses
  %i.ai = lshr i64 %i.ah, 31
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.k, %i.ak                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %.sink2.i.i, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !123
  %i.ar = and i32 %i.al, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph, label %.thread, !prof !155

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.au = phi ptr [ %i.az, %bb.c ], [ %i.an, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ax, %bb.c ], [ %i.al, %bb.b ]
  %i.av = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoISt4pairIPKNS_11InstructionENS_13DebugVariableEEvE7isEqualERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.au) ; 3 uses
  br i1 %i.av, label %.thread, label %bb.c, !prof !146

bb.c:                                             ; preds = %.lr.ph
  %i.aw = add nuw i32 %.024, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %.sink2.i.i, i64 %i.ay ; 2 uses
  %i.ba = lshr i64 %i.ay, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !123
  %i.bd = and i32 %i.ax, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph, label %.thread, !prof !156, !llvm.loop !1860

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.an, %bb.b ], [ null, %bb.a ], [ %i.az, %bb.c ], [ %i.au, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.av, %bb.c ], [ %i.av, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !534
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.615", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 232
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEC2EjNS_12DenseMapBaseISE_S6_S8_SA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 56                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !127
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !127
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEC2EjNS_12DenseMapBaseISE_S6_S8_SA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEC2EjNS_12DenseMapBaseISE_S6_S8_SA_SD_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE13maybeMoveFastEOSE_.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE13maybeMoveFastEOSE_.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE13maybeMoveFastEOSE_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEC2EjNS_12DenseMapBaseISE_S6_S8_SA_SD_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1862
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !127
  br label %bb.b

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE13maybeMoveFastEOSE_.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEC2EjNS_12DenseMapBaseISE_S6_S8_SA_SD_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE13maybeMoveFastEOSE_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_11InstructionENS_13DebugVariableEEPNS_17DbgVariableRecordELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEE13maybeMoveFastEOSE_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 56               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_4
