Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFAcceleratorTable?download=true
inline.NumInlined: 3369
inline.NumDeleted: 1654
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm15DWARFDebugNames13ValueIterator29findEntryOffsetInCurrentIndexEv:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pre110 = load ptr, ptr %i.p, align 8, !tbaa !507, !noalias !956
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph99, %.critedge
  %i.t = phi ptr [ %.pre110, %.lr.ph99 ], [ %i.ai, %.critedge ]
  %.sroa.659.098 = phi i32 [ 1, %.lr.ph99 ], [ %i.at, %.critedge ] ; 3 uses
  %i.u = load i8, ptr %i.m, align 8, !tbaa !547, !noalias !956
  %i.v = icmp eq i8 %i.u, 0                       ; 2 uses
  %..i.i.i = select i1 %i.v, i32 4, i32 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28, !noalias !956
  %i.w = load i64, ptr %i.n, align 8, !tbaa !817, !noalias !956
  %i.x = add i32 %.sroa.659.098, -1
  %i.y = select i1 %i.v, i32 2, i32 3
  %i.z = shl i32 %i.x, %i.y
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add i64 %i.w, %i.aa
  store i64 %i.ab, ptr %i.e, align 8, !tbaa !8, !noalias !956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28, !noalias !956
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !818, !noalias !956
  %i.ad = add i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !8, !noalias !956
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.af = call noundef i64 @_ZNK4llvm18DWARFDataExtractor21getRelocatedValueImplEjPmS1_PNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i32 noundef %..i.i.i, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null), !noalias !956
  %i.ag = call noundef i64 @_ZNK4llvm13DataExtractor11getUnsignedEPmjPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %i.ae, ptr noundef nonnull %i.f, i32 noundef %..i.i.i, ptr noundef null) #28, !noalias !956
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !492, !noalias !956
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !507, !noalias !956, !nonnull !101, !align !177 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.049.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !108
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.550.0.copyload = load i64, ptr %.sroa.550.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28, !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28, !noalias !956
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.al = load i64, ptr %i.s, align 8, !tbaa !22  ; 3 uses
  %.sroa.speculated4.i.i = call i64 @llvm.umin.i64(i64 %.sroa.550.0.copyload, i64 %i.af) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload, i64 %.sroa.speculated4.i.i ; 2 uses
  %i.an = sub i64 %.sroa.550.0.copyload, %.sroa.speculated4.i.i
  %i.ao = icmp ugt i64 %i.an, %i.al
  br i1 %i.ao, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit, label %.critedge

_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit: ; preds = %bb.d
  %i.ar = call i32 @strncmp(ptr noundef nonnull %i.am, ptr noundef %i.ak, i64 noundef %i.al) #32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.critedge27.loopexit.split.loop.exit92, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit
  %i.at = add i32 %.sroa.659.098, 1
  %.not78 = icmp eq i32 %.sroa.659.098, %i.l
  br i1 %.not78, label %.critedge27, label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !961, !range !100, !noundef !101
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.au, align 8, !tbaa !132
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !22
  %i.bc = tail call noundef i32 @_ZN4llvm18caseFoldingDjbHashENS_9StringRefEj(ptr %i.az, i64 %i.bb, i32 noundef 5381) #28 ; 2 uses
  %.sroa.043.0.insert.ext = zext i32 %i.bc to i64
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.043.0.insert.ext, 4294967296
  store i64 %.sroa.043.0.insert.insert, ptr %i.au, align 8
  %.pre108 = load i32, ptr %i.h, align 8, !tbaa !432
  %.pre109 = load ptr, ptr %0, align 8, !tbaa !955
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.bd = phi ptr [ %i.g, %._crit_edge ], [ %.pre109, %bb.f ] ; 2 uses
  %i.be = phi i32 [ %i.i, %._crit_edge ], [ %.pre108, %bb.f ]
  %i.bf = phi i32 [ %.pre, %._crit_edge ], [ %i.bc, %bb.f ]
  %i.bg = urem i32 %i.bf, %i.be                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !824
  %i.bj = shl i32 %i.bg, 2
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.d, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !507, !nonnull !101, !align !177
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %i.bo, ptr noundef nonnull %i.d, ptr noundef null) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.critedge27, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !433
  %.not89 = icmp ugt i32 %i.bp, %i.bs
  br i1 %.not89, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.thread66
  %.090 = phi i32 [ %i.bp, %.lr.ph ], [ %i.ds, %.thread66 ] ; 3 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !955   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !825
  %i.by = shl i32 %.090, 2
  %i.bz = add i32 %i.by, -4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add i64 %i.bx, %i.ca
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !507, !nonnull !101, !align !177
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %i.ce, ptr noundef nonnull %i.c, ptr noundef null) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cg = load i32, ptr %i.h, align 8, !tbaa !432
  %i.ch = urem i32 %i.cf, %i.cg
  %.not25 = icmp eq i32 %i.ch, %i.bg
  br i1 %.not25, label %bb.i, label %.critedge27

bb.i:                                             ; preds = %bb.h
  %i.ci = load i8, ptr %i.av, align 4, !tbaa !961, !range !100, !noundef !101
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = load i32, ptr %i.au, align 8
  %i.cl = icmp eq i32 %i.cf, %i.ck
  %.not77 = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %.not77, label %bb.j, label %.thread66

bb.j:                                             ; preds = %bb.i
  %i.cm = load ptr, ptr %0, align 8, !tbaa !955   ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !547, !noalias !962
  %i.cp = icmp eq i8 %i.co, 0                     ; 2 uses
  %..i.i = select i1 %i.cp, i32 4, i32 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !962
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !817, !noalias !962
  %i.cs = add i32 %.090, -1
  %i.ct = select i1 %i.cp, i32 2, i32 3
  %i.cu = shl i32 %i.cs, %i.ct
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = add i64 %i.cr, %i.cv
  store i64 %i.cw, ptr %i.a, align 8, !tbaa !8, !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !962
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 144
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !818, !noalias !962
  %i.cz = add i64 %i.cy, %i.cv
  store i64 %i.cz, ptr %i.b, align 8, !tbaa !8, !noalias !962
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 96 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !507, !noalias !962, !nonnull !101, !align !177
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = call noundef i64 @_ZNK4llvm18DWARFDataExtractor21getRelocatedValueImplEjPmS1_PNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i32 noundef %..i.i, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null), !noalias !962
  %i.de = call noundef i64 @_ZNK4llvm13DataExtractor11getUnsignedEPmjPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %i.dc, ptr noundef nonnull %i.b, i32 noundef %..i.i, ptr noundef null) #28, !noalias !962
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 152
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !492, !noalias !962
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !507, !noalias !962, !nonnull !101, !align !177 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %.sroa.036.0.copyload = load ptr, ptr %i.di, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !962
  %i.dj = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.dk = load i64, ptr %i.bu, align 8, !tbaa !22 ; 3 uses
  %.sroa.speculated4.i.i33 = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload, i64 %i.dd) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %.sroa.speculated4.i.i33 ; 2 uses
  %i.dm = sub i64 %.sroa.4.0.copyload, %.sroa.speculated4.i.i33
  %i.dn = icmp ugt i64 %i.dm, %i.dk
  br i1 %i.dn, label %bb.k, label %.thread66

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !21
  %.not.i34 = icmp eq i8 %i.dp, 0
  br i1 %.not.i34, label %_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit35, label %.thread66

_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit35: ; preds = %bb.k
  %i.dq = call i32 @strncmp(ptr noundef nonnull %i.dl, ptr noundef %i.dj, i64 noundef %i.dk) #32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.critedge27.loopexit79.split.loop.exit85, label %.thread66

.thread66:                                        ; preds = %bb.j, %bb.k, %bb.i, %_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit35
  %i.ds = add i32 %.090, 1                        ; 2 uses
  %i.dt = load i32, ptr %i.br, align 4, !tbaa !433
  %.not = icmp ugt i32 %i.ds, %i.dt
  br i1 %.not, label %.critedge27, label %bb.h, !llvm.loop !965

.critedge27.loopexit.split.loop.exit92:           ; preds = %_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit
  %i.du = add i64 %i.ah, %i.ag
  br label %.critedge27

.critedge27.loopexit79.split.loop.exit85:         ; preds = %_ZNK4llvm15DWARFDebugNames14NameTableEntry10sameNameAsENS_9StringRefE.exit35
  %i.dv = add i64 %i.dg, %i.de
  br label %.critedge27

.critedge27:                                      ; preds = %bb.h, %.thread66, %.critedge, %.critedge27.loopexit79.split.loop.exit85, %.preheader, %.critedge27.loopexit.split.loop.exit92, %bb.b, %bb.g
  %.sroa.062.4 = phi i64 [ undef, %bb.g ], [ undef, %.preheader ], [ %i.du, %.critedge27.loopexit.split.loop.exit92 ], [ undef, %bb.b ], [ %i.dv, %.critedge27.loopexit79.split.loop.exit85 ], [ undef, %.critedge ], [ undef, %.thread66 ], [ undef, %bb.h ]
  %.sroa.3.3 = phi i8 [ 0, %bb.g ], [ 0, %.preheader ], [ 1, %.critedge27.loopexit.split.loop.exit92 ], [ 0, %bb.b ], [ 1, %.critedge27.loopexit79.split.loop.exit85 ], [ 0, %.critedge ], [ 0, %.thread66 ], [ 0, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.062.4, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.3, 1
  ret { i64, i8 } %.fca.1.insert
}

declare noundef i32 @_ZN4llvm18caseFoldingDjbHashENS_9StringRefEj(ptr, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15DWARFDebugNames13ValueIterator23getEntryAtCurrentOffsetEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %3 = alloca %class.anon.235, align 1            ; 3 uses
  %4 = alloca %"class.llvm::Expected.160", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = load ptr, ptr %0, align 8, !tbaa !955
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZNK4llvm15DWARFDebugNames9NameIndex8getEntryEPm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.160") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  br i1 %i.e, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8, !tbaa !506, !noalias !966
  %i.g = inttoptr i64 %i.f to ptr
  store ptr null, ptr %4, align 8, !tbaa !506, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.g, ptr %2, align 8, !tbaa !76
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.h = load ptr, ptr %2, align 8, !tbaa !76     ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #28, !inline_history !280
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt8optionalIN4llvm15DWARFDebugNames5EntryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !734, !range !100, !noundef !101
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_14DWARFFormValueEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %i.r) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %_ZNSt8optionalIN4llvm15DWARFDebugNames5EntryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

bb.e:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm21DWARFAcceleratorTable5EntryE, i64 16), ptr %i.m, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.w, ptr %i.v, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 3, ptr %i.y, align 4, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt19_Optional_base_implIN4llvm15DWARFDebugNames5EntryESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_14DWARFFormValueEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(160) %i.v, ptr noundef nonnull align 8 dereferenceable(160) %i.ab) ; 0 uses
  br label %_ZNSt19_Optional_base_implIN4llvm15DWARFDebugNames5EntryESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i

_ZNSt19_Optional_base_implIN4llvm15DWARFDebugNames5EntryESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i: ; preds = %bb.f, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm15DWARFDebugNames5EntryE, i64 16), ptr %i.m, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !734
  br label %_ZNSt8optionalIN4llvm15DWARFDebugNames5EntryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

_ZNSt8optionalIN4llvm15DWARFDebugNames5EntryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %_ZNSt19_Optional_base_implIN4llvm15DWARFDebugNames5EntryESt14_Optional_baseIS2_Lb0ELb0EEE12_M_constructIJS2_EEEvDpOT_.exit.i, %bb.d, %_ZN4llvm5ErrorD2Ev.exit
  %i.af = load i8, ptr %i.c, align 8
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8optionalIN4llvm15DWARFDebugNames5EntryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm21DWARFAcceleratorTable5EntryE, i64 16), ptr %4, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN4llvm8ExpectedINS_15DWARFDebugNames5EntryEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ai) #28
  br label %_ZN4llvm8ExpectedINS_15DWARFDebugNames5EntryEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt8optionalIN4llvm15DWARFDebugNames5EntryEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  %i.al = load ptr, ptr %4, align 8, !tbaa !506   ; 3 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_15DWARFDebugNames5EntryEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #28, !inline_history !739
  br label %_ZN4llvm8ExpectedINS_15DWARFDebugNames5EntryEED2Ev.exit

_ZN4llvm8ExpectedINS_15DWARFDebugNames5EntryEED2Ev.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  %i.ap = xor i1 %i.e, true
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN4llvm15DWARFDebugNames13ValueIterator29findEntryOffsetInCurrentIndexEv(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 2 uses
  %i.b = extractvalue { i64, i8 } %i.a, 1
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i8 } %i.a, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.d, ptr %i.e, align 8, !tbaa !945
  %i.f = tail call noundef zeroext i1 @_ZN4llvm15DWARFDebugNames13ValueIterator23getEntryAtCurrentOffsetEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15DWARFDebugNames13ValueIterator29searchFromStartOfCurrentIndexEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::DWARFDebugNames::ValueIterator", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !955    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507, !nonnull !101, !align !177 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %.not4 = icmp eq ptr %i.a, %i.i
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit.thread
  %i.k = tail call { i64, i8 } @_ZN4llvm15DWARFDebugNames13ValueIterator29findEntryOffsetInCurrentIndexEv(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 2 uses
  %i.l = extractvalue { i64, i8 } %i.k, 1
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit, label %_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit.thread

_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit: ; preds = %bb.b
  %i.n = extractvalue { i64, i8 } %i.k, 0
  store i64 %i.n, ptr %i.j, align 8, !tbaa !945
  %i.o = tail call noundef zeroext i1 @_ZN4llvm15DWARFDebugNames13ValueIterator23getEntryAtCurrentOffsetEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br i1 %i.o, label %.loopexit, label %_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit.thread

_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit.thread: ; preds = %bb.b, %_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !955
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !955
  %.not = icmp eq ptr %i.q, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !969

._crit_edge:                                      ; preds = %_ZN4llvm15DWARFDebugNames13ValueIterator18findInCurrentIndexEv.exit.thread, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %1, i8 0, i64 256, i1 false)
  store ptr %i.t, ptr %i.s, align 8, !tbaa !17
  %i.u = call noundef nonnull align 8 dereferenceable(256) ptr @_ZN4llvm15DWARFDebugNames13ValueIteratoraSEOS1_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) ; 0 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge
  %i.x = load i64, ptr %i.t, align 8, !tbaa !21
end_hunk_0
