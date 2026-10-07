Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression_roaring?download=true
inline.NumInlined: 1873
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6duckdb7roaring19RoaringAnalyzeStateC2ERKNS_15CompressionInfoE:.noexc
  %i.w = load i8, ptr %i.k, align 1, !noalias !398
  %i.x = load i8, ptr %i.m, align 1, !noalias !398
  %i.y = load i8, ptr %i.o, align 1, !noalias !398
  %i.z = load i8, ptr %i.q, align 1, !noalias !398
  %i.aa = load i8, ptr %i.s, align 1, !noalias !398
  %i.ab = insertelement <8 x i8> poison, i8 %i.t, i64 0
  %i.ac = insertelement <8 x i8> %i.ab, i8 %i.u, i64 1
  %i.ad = insertelement <8 x i8> %i.ac, i8 %i.v, i64 2
  %i.ae = insertelement <8 x i8> %i.ad, i8 %i.w, i64 3
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 4
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 5
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 6
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 7
  %i.aj = and <8 x i8> %i.ai, splat (i8 3)        ; 8 uses
  %i.ak = extractelement <8 x i8> %i.aj, i64 0
  store i8 %i.ak, ptr %i.e, align 1, !noalias !398
  %i.al = extractelement <8 x i8> %i.aj, i64 1
  store i8 %i.al, ptr %i.g, align 1, !noalias !398
  %i.am = extractelement <8 x i8> %i.aj, i64 2
  store i8 %i.am, ptr %i.i, align 1, !noalias !398
  %i.an = extractelement <8 x i8> %i.aj, i64 3
  store i8 %i.an, ptr %i.k, align 1, !noalias !398
  %i.ao = extractelement <8 x i8> %i.aj, i64 4
  store i8 %i.ao, ptr %i.m, align 1, !noalias !398
  %i.ap = extractelement <8 x i8> %i.aj, i64 5
  store i8 %i.ap, ptr %i.o, align 1, !noalias !398
  %i.aq = extractelement <8 x i8> %i.aj, i64 6
  store i8 %i.aq, ptr %i.q, align 1, !noalias !398
  %i.ar = extractelement <8 x i8> %i.aj, i64 7
  store i8 %i.ar, ptr %i.s, align 1, !noalias !398
  %i.as = and <8 x i8> %vec.ind8, splat (i8 1)
  %i.at = shl <8 x i8> %vec.ind8, splat (i8 1)
  %i.au = and <8 x i8> %i.at, splat (i8 4)
  %i.av = and <8 x i32> %vec.ind, splat (i32 3)
  %i.aw = icmp eq <8 x i32> %i.av, splat (i32 1)  ; 3 uses
  %i.ax = and <8 x i8> %vec.ind8, splat (i8 4)
  %i.ay = and <8 x i32> %vec.ind, splat (i32 6)
  %i.az = icmp eq <8 x i32> %i.ay, splat (i32 2)  ; 2 uses
  %i.ba = or <8 x i1> %i.aw, %i.az
  %i.bb = lshr <8 x i8> %vec.ind8, splat (i8 1)
  %i.bc = and <8 x i8> %i.bb, splat (i8 4)
  %i.bd = and <8 x i32> %vec.ind, splat (i32 12)
  %i.be = icmp eq <8 x i32> %i.bd, splat (i32 4)  ; 2 uses
  %i.bf = or <8 x i1> %i.be, %i.ba
  %i.bg = lshr <8 x i8> %vec.ind8, splat (i8 2)
  %i.bh = and <8 x i8> %i.bg, splat (i8 4)
  %i.bi = and <8 x i32> %vec.ind, splat (i32 24)
  %i.bj = icmp eq <8 x i32> %i.bi, splat (i32 8)  ; 2 uses
  %i.bk = or <8 x i1> %i.bj, %i.bf
  %i.bl = lshr <8 x i8> %vec.ind8, splat (i8 3)
  %i.bm = and <8 x i8> %i.bl, splat (i8 4)
  %i.bn = and <8 x i32> %vec.ind, splat (i32 48)
  %i.bo = icmp eq <8 x i32> %i.bn, splat (i32 16) ; 2 uses
  %i.bp = or <8 x i1> %i.bo, %i.bk
  %i.bq = lshr <8 x i8> %vec.ind8, splat (i8 4)
  %i.br = and <8 x i8> %i.bq, splat (i8 4)
  %i.bs = add nuw nsw <8 x i8> %i.ax, <i8 0, i8 4, i8 0, i8 4, i8 0, i8 4, i8 0, i8 4>
  %i.bt = or disjoint <8 x i8> %i.bs, %i.as
  %i.bu = add nuw nsw <8 x i8> %i.bt, %i.au
  %i.bv = add nuw nsw <8 x i8> %i.bu, %i.bc
  %i.bw = add nuw nsw <8 x i8> %i.bv, %i.bh
  %i.bx = add nuw nsw <8 x i8> %i.bw, %i.bm
  %i.by = add nuw nsw <8 x i8> %i.bx, %i.br
  %i.bz = and <8 x i32> %vec.ind, splat (i32 96)
  %i.ca = icmp eq <8 x i32> %i.bz, splat (i32 32) ; 2 uses
  %i.cb = or <8 x i1> %i.ca, %i.bp
  %i.cc = and <8 x i32> %vec.ind, splat (i32 128)
  %i.cd = icmp eq <8 x i32> %i.cc, zeroinitializer
  %i.ce = and <8 x i8> %i.by, splat (i8 -3)
  %i.cf = select <8 x i1> %i.cd, <8 x i8> zeroinitializer, <8 x i8> splat (i8 6)
  %i.cg = add nuw nsw <8 x i8> %i.cf, %i.ce
  %i.ch = and <8 x i32> %vec.ind, splat (i32 192)
  %i.ci = icmp eq <8 x i32> %i.ch, splat (i32 64) ; 2 uses
  %i.cj = or <8 x i1> %i.ci, %i.cb
  %i.ck = select <8 x i1> %i.aw, <8 x i8> splat (i8 2), <8 x i8> splat (i8 1)
  %i.cl = zext <8 x i1> %i.aw to <8 x i8>
  %i.cm = select <8 x i1> %i.az, <8 x i8> %i.ck, <8 x i8> %i.cl
  %i.cn = zext <8 x i1> %i.be to <8 x i8>
  %i.co = zext <8 x i1> %i.bj to <8 x i8>
  %i.cp = zext <8 x i1> %i.bo to <8 x i8>
  %i.cq = zext <8 x i1> %i.ca to <8 x i8>
  %i.cr = zext <8 x i1> %i.ci to <8 x i8>
  %i.cs = add nuw nsw <8 x i8> %i.co, %i.cn
  %i.ct = add nuw nsw <8 x i8> %i.cs, %i.cp
  %i.cu = add nuw nsw <8 x i8> %i.ct, %i.cq
  %i.cv = add nuw nsw <8 x i8> %i.cu, %i.cr
  %i.cw = add nuw nsw <8 x i8> %i.cv, %i.cm
  %predphi = select <8 x i1> %i.cj, <8 x i8> %i.cw, <8 x i8> zeroinitializer
  %interleaved.vec = shufflevector <8 x i8> %i.cg, <8 x i8> %predphi, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.e, align 1, !noalias !398
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next9 = add <8 x i8> %vec.ind8, splat (i8 8)
  %i.cx = icmp eq i64 %index.next, 248
  br i1 %i.cx, label %scalar.ph, label %vector.body, !llvm.loop !397

scalar.ph:                                        ; preds = %vector.body
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 496 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !398
  %i.da = and i8 %i.cz, 3
  store i8 %i.da, ptr %i.cy, align 1, !noalias !398
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 497
  store i8 0, ptr %i.db, align 1, !tbaa !400, !noalias !398
  store i8 22, ptr %i.cy, align 1, !noalias !398
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 498 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !398
  %i.de = and i8 %i.dd, 3
  store i8 %i.de, ptr %i.dc, align 1, !noalias !398
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 499
  store i8 1, ptr %i.df, align 1, !tbaa !400, !noalias !398
  store i8 27, ptr %i.dc, align 1, !noalias !398
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 500 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !398
  %i.di = and i8 %i.dh, 3
  store i8 %i.di, ptr %i.dg, align 1, !noalias !398
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 501
  store i8 1, ptr %i.dj, align 1, !tbaa !400, !noalias !398
  store i8 26, ptr %i.dg, align 1, !noalias !398
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 502 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !398
  %i.dm = and i8 %i.dl, 3
  store i8 %i.dm, ptr %i.dk, align 1, !noalias !398
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 503
  store i8 1, ptr %i.dn, align 1, !tbaa !400, !noalias !398
  store i8 31, ptr %i.dk, align 1, !noalias !398
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 504 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !noalias !398
  %i.dq = and i8 %i.dp, 3
  store i8 %i.dq, ptr %i.do, align 1, !noalias !398
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 505
  store i8 0, ptr %i.dr, align 1, !tbaa !400, !noalias !398
  store i8 26, ptr %i.do, align 1, !noalias !398
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 506 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !398
  %i.du = and i8 %i.dt, 3
  store i8 %i.du, ptr %i.ds, align 1, !noalias !398
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 507
  store i8 1, ptr %i.dv, align 1, !tbaa !400, !noalias !398
  store i8 31, ptr %i.ds, align 1, !noalias !398
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 508 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !398
  %i.dy = and i8 %i.dx, 3
  store i8 %i.dy, ptr %i.dw, align 1, !noalias !398
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 509
  store i8 0, ptr %i.dz, align 1, !tbaa !400, !noalias !398
  store i8 30, ptr %i.dw, align 1, !noalias !398
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 510 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !398
  %i.ec = and i8 %i.eb, 3
  store i8 %i.ec, ptr %i.ea, align 1, !noalias !398
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 511
  store i8 0, ptr %i.ed, align 1, !tbaa !400, !noalias !398
  store i8 35, ptr %i.ea, align 1, !noalias !398
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.ee, align 8, !tbaa !88
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 0, ptr %i.ef, align 2, !tbaa !87
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 0, ptr %i.eg, align 4, !tbaa !89
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 0, ptr %i.eh, align 8, !tbaa !86
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, i8 0, i64 48, i1 false)
  invoke void @_ZN6duckdb7roaring27ContainerMetadataCollectionC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ej)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %scalar.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  ret void

bb.b:                                             ; preds = %scalar.ph
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !182 ; 2 uses
  %.not.i5 = icmp eq ptr %i.em, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.em) #28
  br label %_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, %bb.b
  resume { ptr, i32 } %i.el
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeState10HandleByteERS1_h(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i8 noundef zeroext %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = zext i8 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.d, align 1, !tbaa !116 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !116
  %i.e = and i8 %.sroa.0.0.copyload, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i16, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  br i1 %i.f, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.j = load i8, ptr %i.i, align 2, !tbaa !183, !range !184, !noundef !54
  %i.k = zext nneg i8 %i.j to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b, %bb.c
  %i.l = phi i16 [ %i.k, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  %i.m = zext i8 %.sroa.7.0.copyload to i16
  %i.n = add nuw nsw i16 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i16, ptr %i.o, align 4, !tbaa !89
  %i.q = add i16 %i.n, %i.p
  store i16 %i.q, ptr %i.o, align 4, !tbaa !89
  %i.r = lshr i8 %.sroa.0.0.copyload, 2
  %i.s = zext nneg i8 %i.r to i16                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !88
  %i.v = add i16 %i.u, %i.s
  store i16 %i.v, ptr %i.t, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !87
  %reass.sub11 = sub i16 %i.x, %i.s
  %i.y = add i16 %reass.sub11, 8
  store i16 %i.y, ptr %i.w, align 2, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aa = lshr i8 %.sroa.0.0.copyload, 1
  %.lobit = and i8 %i.aa, 1
  store i8 %.lobit, ptr %i.z, align 2, !tbaa !183
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = add i16 %i.h, 8
  store i16 %i.ac, ptr %i.ab, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeState16HandleRaggedByteERS1_hm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i8 %1 to i32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %.phi.trans.insert.i.promoted = load i16, ptr %.phi.trans.insert.i, align 8, !tbaa !86 ; 2 uses
  %.promoted = load i8, ptr %i.b, align 2
  %.promoted8 = load i16, ptr %i.c, align 4
  %.promoted9 = load i16, ptr %i.d, align 8, !tbaa !88
  %.promoted11 = load i16, ptr %i.e, align 2, !tbaa !87
  %i.f = trunc nuw i8 %.promoted to i1
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit
  %i.g = trunc i64 %2 to i16
  %i.h = add i16 %.phi.trans.insert.i.promoted, %i.g
  %i.i = zext i1 %i.r to i8
  store i16 %i.h, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  store i8 %i.i, ptr %i.b, align 2
  store i16 %i.w, ptr %i.d, align 8, !tbaa !88
  store i16 %i.y, ptr %i.e, align 2, !tbaa !87
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit
  %i.j = phi i16 [ %.promoted11, %.lr.ph ], [ %i.y, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit ]
  %i.k = phi i16 [ %.promoted9, %.lr.ph ], [ %i.w, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit ]
  %i.l = phi i16 [ %.promoted8, %.lr.ph ], [ %i.u, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit ] ; 2 uses
  %i.m = phi i1 [ %i.f, %.lr.ph ], [ %i.r, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit ]
  %i.n = phi i16 [ %.phi.trans.insert.i.promoted, %.lr.ph ], [ %i.z, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit ] ; 2 uses
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit ] ; 2 uses
  %i.o = trunc i64 %.06 to i32
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %i.a
  %i.r = icmp ne i32 %i.q, 0                      ; 4 uses
  %.not = xor i1 %i.r, true                       ; 2 uses
  %i.s = icmp eq i16 %i.n, 0
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.m
  %or.cond = select i1 %.not, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit

bb.d:                                             ; preds = %bb.c
  %i.t = add i16 %i.l, 1                          ; 2 uses
  store i16 %i.t, ptr %i.c, align 4, !tbaa !89
  br label %_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit

_ZN6duckdb7roaringL9HandleBitERNS0_19RoaringAnalyzeStateEb.exit: ; preds = %bb.c, %bb.d
  %i.u = phi i16 [ %i.l, %bb.c ], [ %i.t, %bb.d ]
  %i.v = zext i1 %i.r to i16
  %i.w = add i16 %i.k, %i.v                       ; 2 uses
  %i.x = zext i1 %.not to i16
  %i.y = add i16 %i.j, %i.x                       ; 2 uses
  %i.z = add i16 %i.n, 1
  %i.aa = add nuw i64 %.06, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !401
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeState14HandleAllValidERS1_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) initializes((30, 31)) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !88
  %i.c = trunc i64 %1 to i16                      ; 2 uses
  %i.d = add i16 %i.b, %i.c
  store i16 %i.d, ptr %i.a, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 1, ptr %i.e, align 2, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !86
  %i.h = add i16 %i.g, %i.c
  store i16 %i.h, ptr %i.f, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeState15HandleNoneValidERS1_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !184
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !89
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 4, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !87
  %i.k = trunc i64 %1 to i16                      ; 2 uses
  %i.l = add i16 %i.j, %i.k
  store i16 %i.l, ptr %i.i, align 2, !tbaa !87
  store i8 0, ptr %i.c, align 2, !tbaa !183
  %i.m = add i16 %i.b, %i.k
  store i16 %i.m, ptr %i.a, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 65536) i64 @_ZN6duckdb7roaring19RoaringAnalyzeState5CountERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !tbaa !86
  %i.c = zext i16 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeState5FlushERS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb7roaring19RoaringAnalyzeState14FlushContainerEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb7roaring19RoaringAnalyzeState23HasEnoughSpaceInSegmentEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92, !nonnull !54, !align !55 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.j = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = add i64 %i.d, %i.b
  %i.l = add i64 %i.k, %i.j
  %i.m = sub i64 %i.h, %i.l
  %i.n = icmp ule i64 %1, %i.m
  ret i1 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, -65277) i32 @_ZN6duckdb7roaring19RoaringAnalyzeState9GetResultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.d = load i16, ptr %i.c, align 2, !tbaa !87   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i16, ptr %i.e, align 8, !tbaa !88   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !89   ; 5 uses
  %i.i = icmp ult i16 %i.d, 248
  %i.j = icmp ult i16 %i.f, 248
  %i.k = icmp ult i16 %i.h, 124
  %i.l = or i1 %i.i, %i.j
  %or.cond.i = or i1 %i.l, %i.k
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i16 %i.d, 8
  %i.n = shl nuw nsw i16 %i.d, 1
  %i.o = add i16 %i.d, 8
  %i.p = select i1 %i.m, i16 %i.n, i16 %i.o
  %i.q = icmp ult i16 %i.f, 8
  %i.r = shl nuw nsw i16 %i.f, 1
  %i.s = add i16 %i.f, 8
  %i.t = select i1 %i.q, i16 %i.r, i16 %i.s
  %i.u = tail call noundef i16 @llvm.umin.i16(i16 %i.p, i16 %i.t) ; 2 uses
  %i.v = icmp ult i16 %i.h, 4
  %i.w = shl nuw nsw i16 %i.h, 2
  %i.x = shl i16 %i.h, 1
  %i.y = add i16 %i.x, 8
  %i.z = select i1 %i.v, i16 %i.w, i16 %i.y       ; 2 uses
  %i.aa = add i16 %i.b, 63
  %i.ab = lshr i16 %i.aa, 3
  %i.ac = and i16 %i.ab, 8184
  %i.ad = tail call noundef i16 @llvm.umin.i16(i16 %i.u, i16 %i.z)
  %i.ae = icmp ugt i16 %i.ad, %i.ac
  br i1 %i.ae, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ugt i16 %i.u, %i.z
  br i1 %.not.i, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit, label %bb.d

end_hunk_0
