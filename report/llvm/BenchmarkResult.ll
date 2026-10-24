Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BenchmarkResult?download=true
inline.NumInlined: 1680
inline.NumDeleted: 935
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm4yaml12ScalarTraitsINS_6MCInstEvE5inputENS_9StringRefEPvRS2_:bb.a
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bs ; 2 uses
  %.sroa.2.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.2.0.copyload.us.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i.i.i, align 8, !tbaa !99, !noalias !318
  %.not.i.i.us.i.i.i = icmp eq i64 %.sroa.2.0.copyload.us.i.i.i, 0
  br i1 %.not.i.i.us.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i.i, !prof !320

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %i.bu = add nuw i32 %.01628.us.i.i.i, 1
  %.016.us.i.i.i = and i32 %i.bu, %i.bi           ; 3 uses
  %i.bv = zext i32 %.016.us.i.i.i to i64          ; 2 uses
  %i.bw = lshr i64 %i.bv, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !154, !noalias !318
  %i.bz = and i32 %.016.us.i.i.i, 31
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %.lr.ph.split.us.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i, !prof !321

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i21.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i
  %i.cc = phi i64 [ %i.cg, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i ], [ %i.bk, %.lr.ph.i21.i.i ]
  %.01628.i.i.i = phi i32 [ %.016.i.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i ], [ %.01627.i.i.i, %.lr.ph.i21.i.i ]
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.cc ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !99, !noalias !318
  %.not.i.i.i22.i.i = icmp eq i64 %.sroa.22.0.copyload.fr.i.i.i, %.sroa.2.0.copyload.i.i.i
  br i1 %.not.i.i.i22.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i, !prof !320

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !98, !noalias !318
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.05.0.copyload.i, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.22.0.copyload.fr.i.i.i), !noalias !318
  %i.ce = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ce, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i, !prof !322

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i.i, %.lr.ph.split.i.i.i
  %i.cf = add nuw i32 %.01628.i.i.i, 1
  %.016.i.i.i = and i32 %i.cf, %i.bi              ; 3 uses
  %i.cg = zext i32 %.016.i.i.i to i64             ; 2 uses
  %i.ch = lshr i64 %i.cg, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154, !noalias !318
  %i.ck = and i32 %.016.i.i.i, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.split.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i, !prof !321

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i.i, %.lr.ph.split.us.i.i.i, %bb.l, %bb.k
  %.3.i.i.i = phi ptr [ null, %bb.k ], [ null, %bb.l ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i.i ], [ %i.bt, %.lr.ph.split.us.i.i.i ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i.i ], [ %i.cd, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %.3.i.i.i, null
  %i.cn = load ptr, ptr %i.bb, align 8, !tbaa !314, !noalias !318
  %i.co = load i32, ptr %i.bf, align 4, !tbaa !317, !noalias !318
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cp
  %..i.i.i.i = select i1 %.not.not.i.i.i.i, ptr %i.cq, ptr %.3.i.i.i ; 2 uses
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !311, !nonnull !100, !align !101 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !314, !noalias !323
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !317, !noalias !323
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cv
  %.not.i22.i = icmp eq ptr %..i.i.i.i, %i.cw
  br i1 %.not.i22.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !325
  br label %_ZN4llvm12_GLOBAL__N_111YamlContext14getInstrOpcodeENS_9StringRefE.exit.i

bb.n:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6doFindIS2_EEPKS7_RKT_.exit.i.i
  %i.cz = load ptr, ptr %i.au, align 8, !tbaa !110
  %i.da = load ptr, ptr %i.av, align 8, !tbaa !111 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp ult i64 %i.dd, 21
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull @.str.55, i64 noundef 21) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.da, ptr noundef nonnull align 1 dereferenceable(21) @.str.55, i64 21, i1 false)
  %i.dg = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 21
  store ptr %i.dh, ptr %i.av, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi ptr [ %i.df, %bb.o ], [ %i.at, %bb.p ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !110
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !111 ; 3 uses
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp ugt i64 %.sroa.22.0.copyload.fr.i.i.i, %i.do
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.dq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, ptr noundef %.sroa.05.0.copyload.i, i64 noundef %.sroa.22.0.copyload.fr.i.i.i) #22 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %.not.i.i.i = icmp eq i64 %.sroa.22.0.copyload.fr.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %.sroa.05.0.copyload.i, i64 %.sroa.22.0.copyload.fr.i.i.i, i1 false)
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !111
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.22.0.copyload.fr.i.i.i ; 2 uses
  store ptr %i.ds, ptr %i.dk, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i:  ; preds = %bb.s, %bb.r, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %bb.q ], [ %i.ds, %bb.s ], [ %i.dl, %bb.r ] ; 2 uses
  %.0.i.i24.i = phi ptr [ %i.dq, %bb.q ], [ %.0.i.i.i.i, %bb.s ], [ %.0.i.i.i.i, %bb.r ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i24.i, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !110
  %i.dw = icmp eq ptr %i.dv, %i.dt
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.dx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i24.i, ptr noundef nonnull @.str.56, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i24.i, i64 32 ; 2 uses
  store i8 39, ptr %i.dt, align 1
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !111
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i:            ; preds = %bb.u, %bb.t
  %.val.i.i = load ptr, ptr %i.az, align 8, !tbaa !311 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.05.0.copyload.i, ptr %5, align 8
  store i64 %.sroa.22.0.copyload.fr.i.i.i, ptr %i.ba, align 8
  %i.eb = load ptr, ptr %.val.i.i, align 8, !tbaa !314, !noalias !326
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !316, !noalias !326 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !317, !noalias !326 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !327, !noalias !326
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = zext i32 %i.ef to i64                   ; 3 uses
  %.idx55.i.i.i = mul nuw nsw i64 %i.ej, 24       ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.ef, 0
  %or.cond.i.i.i = select i1 %i.ei, i1 true, i1 %.not.i.not.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.thread.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i
  %i.ek = add nuw nsw i64 %i.ej, 31
  %i.el = lshr i64 %i.ek, 5                       ; 4 uses
  %i.em = load i32, ptr %i.ed, align 4, !tbaa !154, !noalias !328 ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.v
  %i.eo = icmp eq i64 %i.el, 1
  br i1 %i.eo, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.thread.i.i, label %.lr.ph

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph
  %i.ep = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.eq = icmp eq i64 %i.ep, %i.el
  br i1 %i.eq, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.thread.i.i, label %.lr.ph, !llvm.loop !310

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.er = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !154, !noalias !328 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !310

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph
  %i.ev = mul i64 %i.er, 768
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i.i, %bb.v
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.v ], [ %i.ev, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.em, %bb.v ], [ %i.et, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %i.ew = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %narrow.i.i.i = mul nuw nsw i32 %i.ew, 24
  %.idx.i.i.i = zext nneg i32 %narrow.i.i.i to i64
  %i.ex = add i64 %.012.lcssa.i.i.i.i.i.i, %.idx.i.i.i ; 2 uses
  %.not1924.i.i.i = icmp eq i64 %i.ex, %.idx55.i.i.i
  br i1 %.not1924.i.i.i, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i
  %.028.i.i.i = phi i32 [ %.3.ph.i.i.i, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i ], [ 2, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i ] ; 5 uses
  %.pn.i.i.i = phi i64 [ %i.fy, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i ], [ %i.ex, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i ] ; 2 uses
  %.sroa.3.026.i.i.i = phi i64 [ %.sroa.3.1.ph.i.i.i, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i ] ; 2 uses
  %.sroa.011.025.i.i.i = phi ptr [ %.sroa.011.1.ph.i.i.i, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i ] ; 2 uses
  %.sroa.08.127.i.i.i = getelementptr i8, ptr %i.eb, i64 %.pn.i.i.i ; 2 uses
  %.sroa.0.0.copyload1.i.i.i = load ptr, ptr %.sroa.08.127.i.i.i, align 8, !tbaa !98 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.127.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !99 ; 4 uses
  %i.ey = load i64, ptr %i.ba, align 8, !tbaa !139
  %i.ez = sub nsw i64 %.sroa.5.0.copyload.i.i.i, %i.ey
  %8 = call noundef i64 @llvm.abs.i64(i64 %i.ez, i1 true)
  %i.fa = zext nneg i32 %.028.i.i.i to i64
  %.not.i8.i.i = icmp samesign ult i64 %8, %i.fa
  br i1 %.not.i8.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.fb = add nsw i32 %.028.i.i.i, -1
  %i.fc = call noundef i32 @_ZNK4llvm9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.copyload1.i.i.i, i64 %.sroa.5.0.copyload.i.i.i, i1 noundef zeroext true, i32 noundef %i.fb) #22 ; 2 uses
  %i.fd = icmp ult i32 %i.fc, %.028.i.i.i
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fe = icmp eq i32 %i.fc, 1
  br i1 %i.fe, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph.i.i.i
  %.sroa.011.1.ph.i.i.i = phi ptr [ %.sroa.011.025.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.011.025.i.i.i, %bb.w ], [ %.sroa.0.0.copyload1.i.i.i, %bb.x ] ; 5 uses
  %.sroa.3.1.ph.i.i.i = phi i64 [ %.sroa.3.026.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.3.026.i.i.i, %bb.w ], [ %.sroa.5.0.copyload.i.i.i, %bb.x ] ; 5 uses
  %.3.ph.i.i.i = phi i32 [ %.028.i.i.i, %.lr.ph.i.i.i ], [ %.028.i.i.i, %bb.w ], [ 0, %bb.x ]
  %i.ff = add i64 %.pn.i.i.i, 24
  %i.fg = sdiv exact i64 %i.ff, 24                ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.fg, %i.ej
  br i1 %.not.i.i.i.i.i, label %bb.z, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.fh = lshr i64 %i.fg, 5                       ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !154
  %i.fk = trunc nuw i64 %i.fg to i32
  %i.fl = and i32 %i.fk, 31
  %i.fm = shl nsw i32 -1, %i.fl
  %i.fn = and i32 %i.fj, %i.fm                    ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.z
  %i.fp = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %i.fq = icmp eq i64 %i.fp, %i.el
  br i1 %i.fq, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i, label %.lr.ph53

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph53
  %i.fr = add i64 %i.ft, 1                        ; 2 uses
  %i.fs = icmp eq i64 %i.fr, %i.el
  br i1 %i.fs, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i, label %.lr.ph53, !llvm.loop !310

.lr.ph53:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ft = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.fp, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !154 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i, !llvm.loop !310

_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i: ; preds = %.lr.ph53, %bb.z
  %.012.lcssa.i.i.i.i.i = phi i64 [ %i.fh, %bb.z ], [ %i.ft, %.lr.ph53 ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.fn, %bb.z ], [ %i.fv, %.lr.ph53 ]
  %i.fx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %.idx.i.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i.i, 768
  %narrow57.i.i.i = mul nuw nsw i32 %i.fx, 24
  %.idx56.i.i.i = zext nneg i32 %narrow57.i.i.i to i64
  %i.fy = add i64 %.idx.i.i.i.i.i, %.idx56.i.i.i  ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.fy, %.idx55.i.i.i
  br i1 %.not19.i.i.i, label %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i, label %.lr.ph.i.i.i

_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit.i.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i

_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i: ; preds = %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i, %bb.y, %bb.x, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.sroa.011.2.i.i.i = phi ptr [ %.sroa.011.1.ph.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i, %bb.x ], [ %.sroa.011.1.ph.i.i.i, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i ], [ %.sroa.011.1.ph.i.i.i, %bb.y ], [ %.sroa.011.1.ph.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.3.2.i.i.i = phi i64 [ %.sroa.3.1.ph.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.x ], [ %.sroa.3.1.ph.i.i.i, %_ZN4llvm16DenseMapIteratorINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit.i.i.i ], [ %.sroa.3.1.ph.i.i.i, %bb.y ], [ %.sroa.3.1.ph.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fz = icmp eq i64 %.sroa.3.2.i.i.i, 0
  br i1 %i.fz, label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !110
  %i.gb = load ptr, ptr %i.av, align 8, !tbaa !111 ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp ult i64 %i.ge, 17
  br i1 %i.gf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull @.str.57, i64 noundef 17) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.gb, ptr noundef nonnull align 1 dereferenceable(17) @.str.57, i64 17, i1 false)
  %i.gh = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 17
  store ptr %i.gi, ptr %i.av, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit11.i.i:           ; preds = %bb.ac, %bb.ab
  %.0.i.i10.i.i = phi ptr [ %i.gg, %bb.ab ], [ %i.at, %bb.ac ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i10.i.i, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i10.i.i, i64 32 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !111 ; 2 uses
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = icmp ugt i64 %.sroa.3.2.i.i.i, %i.gp
  br i1 %i.gq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11.i.i
  %i.gr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i10.i.i, ptr noundef %.sroa.011.2.i.i.i, i64 noundef %.sroa.3.2.i.i.i) #22 ; 2 uses
  %.phi.trans.insert53.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %.pre54.i.i = load ptr, ptr %.phi.trans.insert53.i.i, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14.i.i

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr align 1 %.sroa.011.2.i.i.i, i64 %.sroa.3.2.i.i.i, i1 false)
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !111
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.3.2.i.i.i ; 2 uses
  store ptr %i.gt, ptr %i.gl, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14.i.i: ; preds = %bb.ae, %bb.ad
  %i.gu = phi ptr [ %.pre54.i.i, %bb.ad ], [ %i.gt, %bb.ae ] ; 2 uses
  %.0.i13.i.i = phi ptr [ %i.gr, %bb.ad ], [ %.0.i.i10.i.i, %bb.ae ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i13.i.i, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !110
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = icmp ult i64 %i.gz, 3
  br i1 %i.ha, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14.i.i
  %i.hb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i13.i.i, ptr noundef nonnull @.str.58, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit14.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i13.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gu, ptr noundef nonnull align 1 dereferenceable(3) @.str.58, i64 3, i1 false)
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !111
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  store ptr %i.he, ptr %i.hc, align 8, !tbaa !111
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i:           ; preds = %bb.ag, %bb.af, %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.i.i, %_ZNK4llvm12_GLOBAL__N_111YamlContext21findNearestOpcodeNameENS_9StringRefE.exit.thread.i.i
  %i.hf = load ptr, ptr %i.au, align 8, !tbaa !110
  %i.hg = load ptr, ptr %i.av, align 8, !tbaa !111 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull @.str.59, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm12_GLOBAL__N_111YamlContext14getInstrOpcodeENS_9StringRefE.exit.i

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i
  store i8 10, ptr %i.hg, align 1
  %i.hj = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store ptr %i.hk, ptr %i.av, align 8, !tbaa !111
  br label %_ZN4llvm12_GLOBAL__N_111YamlContext14getInstrOpcodeENS_9StringRefE.exit.i

_ZN4llvm12_GLOBAL__N_111YamlContext14getInstrOpcodeENS_9StringRefE.exit.i: ; preds = %bb.ai, %bb.ah, %bb.m
  %.0.i23.i = phi i32 [ %i.cy, %bb.m ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  store i32 %.0.i23.i, ptr %3, align 8, !tbaa !148
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i

bb.aj:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.not.i.i.i.i25.i = icmp ult i64 %.sroa.22.0.copyload.fr.i.i.i, 4
  br i1 %.not.i.i.i.i25.i, label %bb.am, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i.i: ; preds = %bb.aj
  %i.hl = load i32, ptr %.sroa.05.0.copyload.i, align 1
  %i.hm = icmp ne i32 %i.hl, 2016436073
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.ak, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i16.sink.split.i.i

bb.ak:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 4
  %i.hq = add i64 %.sroa.22.0.copyload.fr.i.i.i, -4
  store ptr %i.hp, ptr %4, align 8, !tbaa !98
  store i64 %i.hq, ptr %i.as, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.hr = call noundef zeroext i1 @_ZN4llvm20consumeSignedIntegerERNS_9StringRefEjRx(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br i1 %i.hr, label %.thread.i.i, label %bb.al

.thread.i.i:                                      ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i16.sink.split.i.i

bb.al:                                            ; preds = %bb.ak
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN4llvm12_GLOBAL__N_111YamlContext20deserializeMCOperandENS_9StringRefE.exit.i

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i.i15.i.i = icmp samesign ult i64 %.sroa.22.0.copyload.fr.i.i.i, 2
  br i1 %.not.i.i.i15.i.i, label %_ZN4llvm12_GLOBAL__N_111YamlContext23tryDeserializeFPOperandENS_9StringRefERd.exit.thread.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i16.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i16.sink.split.i.i: ; preds = %.thread.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i16.i.i
end_hunk_0
begin_hunk_1_@_ZN4llvm8exegesis9BenchmarkC2EOS1_:bb.a
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !29
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit13: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !28
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !36
  store i64 0, ptr %i.co, align 8, !tbaa !28
  store i8 0, ptr %i.ch, align 8, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !26
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit13
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 16
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit13
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !36
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !29
  store i64 %i.db, ptr %i.ct, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit15: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !28
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !36
  store i64 0, ptr %i.dc, align 8, !tbaa !28
  store i8 0, ptr %i.cv, align 8, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !98
  store <2 x ptr> %i.dh, ptr %i.df, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !102
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775632
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #26
  unreachable

_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 336                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 27450512014448737)
  %i.l = select i1 %i.j, i64 27450512014448737, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 336
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.q, i8 0, i64 312, i1 false)
  store i32 40, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !26
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store i32 0, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 168 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !26
  store i8 0, ptr %i.x, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 200 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !26
  store i8 0, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 264 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !26
  store i8 0, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 296 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !26
  store i8 0, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not7.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvm8exegesis9BenchmarkC2EOS1_(ptr noundef nonnull align 8 dereferenceable(336) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.04.08.i.i.i.i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 336 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 336 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !408

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvm8exegesis9BenchmarkESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 336 ; 2 uses
  %.not7.i.i.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not7.i.i.i.i.i17, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit23, label %.lr.ph.i.i.i.i.i18

.lr.ph.i.i.i.i.i18:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i18
  %.09.i.i.i.i.i19 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i18 ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i20 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i18 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvm8exegesis9BenchmarkC2EOS1_(ptr noundef nonnull align 8 dereferenceable(336) %.09.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.04.08.i.i.i.i.i20)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i20, i64 336 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i19, i64 336 ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i21, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit23, label %.lr.ph.i.i.i.i.i18, !llvm.loop !408

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit23: ; preds = %.lr.ph.i.i.i.i.i18, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ak, %.lr.ph.i.i.i.i.i18 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm8exegesis9BenchmarkEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit23, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit23 ] ; 2 uses
  tail call void @_ZN4llvm8exegesis9BenchmarkD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %.05.i.i) #22
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 336 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvm8exegesis9BenchmarkEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4llvm8exegesis9BenchmarkEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8exegesis9BenchmarkES3_SaIS2_EET0_T_S6_S5_RT1_.exit23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN4llvm8exegesis9BenchmarkESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm8exegesis9BenchmarkEEvT_S4_.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !109
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #23
  br label %_ZNSt12_Vector_baseIN4llvm8exegesis9BenchmarkESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm8exegesis9BenchmarkESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm8exegesis9BenchmarkEEvT_S4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !112
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.a, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw [336 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !109
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!16 = !{!"_ZTSSt18_Rb_tree_node_base", !13, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSSt15_Rb_tree_header", !16, i64 0, !17, i64 32}
!19 = !{!18, !13, i64 0}
!20 = !{!18, !15, i64 8}
!21 = !{!18, !15, i64 16}
!22 = !{!18, !15, i64 24}
!23 = !{!18, !17, i64 32}
!24 = !{!"p1 omnipotent char", !14, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !17, i64 8, !9, i64 16}
!28 = !{!27, !17, i64 8}
!29 = !{!9, !9, i64 0}
!30 = !{!"vtable pointer", !8, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !14, i64 0}
!33 = !{!"_ZTSN4llvm5ErrorE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!32, !32, i64 0}
!36 = !{!27, !24, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!16, !15, i64 8}
!39 = !{!"bool", !9, i64 0}
!40 = !{!"p1 _ZTSN4llvm8exegesis9LLVMStateE", !14, i64 0}
!41 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !9, i64 0}
!42 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !9, i64 0}
!43 = !{!"_ZTSN4llvm11raw_ostreamE", !41, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !39, i64 40, !42, i64 44}
!44 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!45 = !{!"_ZTSN4llvm18raw_string_ostreamE", !43, i64 0, !44, i64 48}
!46 = !{!"p1 _ZTSN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEE", !14, i64 0}
!47 = !{!"_ZTSN4llvm12_GLOBAL__N_111YamlContextE", !39, i64 0, !40, i64 8, !27, i64 16, !45, i64 48, !46, i64 104}
!48 = !{!47, !39, i64 0}
!49 = !{!47, !40, i64 8}
!50 = !{!43, !41, i64 8}
!51 = !{!43, !39, i64 40}
!52 = !{!43, !42, i64 44}
!53 = !{!44, !44, i64 0}
!54 = !{!46, !46, i64 0}
!55 = !{!"any p2 pointer", !14, i64 0}
!56 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !55, i64 0}
!57 = !{!"_ZTSN4llvm13StringMapImplE", !56, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!58 = !{!57, !10, i64 16}
!59 = !{!"p1 _ZTSN4llvm6MCInstE", !14, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN4llvm6MCInstESaIS1_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN4llvm6MCInstESaIS1_EE", !62, i64 0}
!64 = !{!"p1 _ZTSN4llvm8exegesis13RegisterValueE", !14, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis13RegisterValueESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis13RegisterValueESaIS2_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN4llvm8exegesis13RegisterValueESaIS2_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIN4llvm8exegesis13RegisterValueESaIS2_EE", !67, i64 0}
!69 = !{!"_ZTSN4llvm9StringMapINS_8exegesis11MemoryValueENS_15MallocAllocatorEEE", !57, i64 0}
!70 = !{!"p1 _ZTSN4llvm8exegesis13MemoryMappingE", !14, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis13MemoryMappingESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis13MemoryMappingESaIS2_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN4llvm8exegesis13MemoryMappingESaIS2_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN4llvm8exegesis13MemoryMappingESaIS2_EE", !73, i64 0}
!75 = !{!"_ZTSN4llvm10MCRegisterE", !10, i64 0}
!76 = !{!"_ZTSN4llvm8exegesis12BenchmarkKeyE", !63, i64 0, !68, i64 24, !69, i64 48, !74, i64 72, !27, i64 96, !17, i64 128, !75, i64 136}
!77 = !{!75, !10, i64 0}
!78 = !{!"_ZTSN4llvm8exegesis9Benchmark5ModeEE", !9, i64 0}
!79 = !{!"p1 _ZTSN4llvm8exegesis16BenchmarkMeasureE", !14, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis16BenchmarkMeasureESaIS2_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis16BenchmarkMeasureESaIS2_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIN4llvm8exegesis16BenchmarkMeasureESaIS2_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !84, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !85, i64 0}
!87 = !{!"_ZTSSt6vectorIhSaIhEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm8exegesis9BenchmarkE", !76, i64 0, !78, i64 144, !27, i64 152, !27, i64 184, !10, i64 216, !83, i64 224, !27, i64 248, !27, i64 280, !87, i64 312}
!89 = !{!88, !10, i64 216}
!90 = !{!45, !44, i64 48}
!91 = !{!"_ZTSN4llvm5Twine8NodeKindE", !9, i64 0}
!92 = !{!"_ZTSN4llvm5TwineE", !9, i64 0, !9, i64 16, !91, i64 32, !91, i64 33}
!93 = !{!92, !91, i64 32}
!94 = !{!92, !91, i64 33}
!95 = !{!14, !14, i64 0}
!96 = !{!84, !24, i64 0}
!97 = !{!84, !24, i64 8}
!98 = !{!24, !24, i64 0}
!99 = !{!17, !17, i64 0}
!100 = !{}
!101 = !{i64 8}
!102 = !{!84, !24, i64 16}
!103 = !{!80, !79, i64 0}
!104 = !{!80, !79, i64 8}
!105 = !{!80, !79, i64 16}
!106 = !{!"p1 _ZTSN4llvm8exegesis9BenchmarkE", !14, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN4llvm8exegesis9BenchmarkESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 8}
!109 = !{!107, !106, i64 16}
!110 = !{!43, !24, i64 24}
!111 = !{!43, !24, i64 32}
!112 = !{!107, !106, i64 0}
!113 = !{!"double", !9, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!16, !15, i64 24}
!116 = !{!16, !15, i64 16}
!117 = !{!71, !70, i64 16}
!118 = !{!57, !56, i64 0}
!119 = !{!"_ZTSN4llvm5APIntE", !9, i64 0, !10, i64 8}
!120 = !{!119, !10, i64 8}
!121 = !{!65, !64, i64 0}
!122 = !{!65, !64, i64 8}
!123 = !{!65, !64, i64 16}
!124 = !{!60, !59, i64 0}
!125 = !{!60, !59, i64 8}
!126 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !14, i64 0, !10, i64 8, !10, i64 12}
!127 = !{!126, !14, i64 0}
!128 = !{!60, !59, i64 16}
!129 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !14, i64 0, !17, i64 8, !17, i64 16}
!130 = !{!129, !14, i64 0}
!131 = !{!129, !17, i64 8}
!132 = !{!129, !17, i64 16}
!133 = !{!"p1 _ZTSN4llvm15SmallVectorImplIcEE", !14, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"_ZTSN4llvm17raw_pwrite_streamE", !43, i64 0}
!136 = !{!"_ZTSN4llvm19raw_svector_ostreamE", !135, i64 0, !133, i64 48}
!137 = !{!136, !133, i64 48}
!138 = !{!"_ZTSN4llvm9StringRefE", !24, i64 0, !17, i64 8}
!139 = !{!138, !17, i64 8}
!140 = !{!15, !15, i64 0}
!141 = !{!"_ZTSN4llvm5SMLocE", !24, i64 0}
!142 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9MCOperandEvEE", !126, i64 0}
!143 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm15SmallVectorImplINS_9MCOperandEEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm18SmallVectorStorageINS_9MCOperandELj6EEE", !9, i64 0}
!146 = !{!"_ZTSN4llvm11SmallVectorINS_9MCOperandELj6EEE", !144, i64 0, !145, i64 16}
!147 = !{!"_ZTSN4llvm6MCInstE", !10, i64 0, !10, i64 4, !141, i64 8, !146, i64 16}
!148 = !{!147, !10, i64 0}
!149 = !{!"p1 _ZTSN4llvm13TargetMachineE", !14, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"p1 int", !14, i64 0}
!152 = !{!"p1 short", !14, i64 0}
!153 = !{!"short", !9, i64 0}
!154 = !{!10, !10, i64 0}
!155 = !{!126, !10, i64 8}
!156 = !{!"_ZTSSt10_Head_baseILm0EdLb0EE", !113, i64 0}
!157 = !{!"_ZTSSt11_Tuple_implILm0EJdEE", !156, i64 0}
!158 = !{!"_ZTSSt5tupleIJdEE", !157, i64 0}
!159 = !{!"_ZTSN4llvm13format_objectIJdEEE", !24, i64 0, !158, i64 8}
!160 = !{!159, !24, i64 0}
!161 = !{!"p1 _ZTSN4llvm13format_objectIJdEEE", !14, i64 0}
!162 = !{!126, !10, i64 12}
!163 = !{i8 0, i8 2}
!164 = !{!"llvm.loop.unroll.disable"}
!165 = !{!"_ZTSN4llvm8exegesis15ValidationEventE", !9, i64 0}
!166 = !{!"_ZTSSt4pairIKN4llvm8exegesis15ValidationEventElE", !165, i64 0, !17, i64 8}
!167 = !{!166, !165, i64 0}
end_hunk_1
