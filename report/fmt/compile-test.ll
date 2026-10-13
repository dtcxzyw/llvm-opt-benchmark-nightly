Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/compile-test?download=true
inline.NumInlined: 6412
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN3fmt3v126detail5writeIcPcbTnNSt9enable_ifIXsr3std7is_sameIT1_bEE5valueEiE4typeELi0EEET0_S8_S5_RKNS0_12format_specsENS0_10locale_refE:bb.a
  %.str.209..str.210.i = select i1 %.not42, ptr @.str.210, ptr @.str.209
  %i.l = zext i1 %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.str.209..str.210.i, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !76    ; 2 uses
  %i.o = and i32 %i.a, 8192
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.split.i
  %i.p = select i1 %.not42, i32 30768, i32 22576
  %i.q = shl nuw nsw i32 %i.d, 2
  %i.r = and i32 %i.q, 8
  %i.s = shl nuw nsw i32 %i.p, %i.r
  %i.t = or i32 %i.h, %i.s
  %i.u = add i32 %i.t, 33554432
  br label %bb.g

.split.us.i:                                      ; preds = %.critedge.i
  %i.v = zext i1 %1 to i8
  %i.w = or disjoint i8 %i.v, 48                  ; 3 uses
  %i.x = and i32 %i.a, 8192
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !95
  %i.aa = icmp slt i32 %i.z, 2
  %or.cond.i = and i1 %1, %i.aa
  br i1 %or.cond.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i13 = icmp samesign ult i32 %i.e, 2
  %i.ab = select i1 %.not.i13, i32 48, i32 12288
  %i.ac = or i32 %i.h, %i.ab
  %i.ad = add i32 %i.ac, 16777216
  br label %bb.g

.split.us.i14:                                    ; preds = %.critedge.i
  %i.ae = zext i1 %1 to i8
  %i.af = or disjoint i8 %i.ae, 48                ; 2 uses
  %i.ag = and i32 %i.a, 8192
  %.not44 = icmp eq i32 %i.ag, 0
  br i1 %.not44, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.split.us.i14
  %i.ah = and i32 %i.a, 4096
  %.not45 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not45, i32 25136, i32 16944
  %i.aj = shl nuw nsw i32 %i.d, 2
  %i.ak = and i32 %i.aj, 8
  %i.al = shl nuw nsw i32 %i.ai, %i.ak
  %i.am = or i32 %i.h, %i.al
  %i.an = add i32 %i.am, 33554432
  br label %bb.g

bb.f:                                             ; preds = %.critedge.i
  %i.ao = zext i1 %1 to i8
  %i.ap = and i32 %i.a, 7
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = zext i1 %i.aq to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i8 %i.ar, ptr %4, align 1, !tbaa !166
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !167
  %i.at = call noundef ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1EPcRZNS1_10write_charIcS4_EET0_S6_T_RKNS0_12format_specsEEUlS4_E_EET1_SD_SA_mmOT2_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit

bb.g:                                             ; preds = %bb.e, %.split.us.i14, %bb.d, %bb.c, %.split.us.i, %bb.b, %.split.i, %._crit_edge.i
  %.sroa.2.0 = phi i8 [ %i.j, %._crit_edge.i ], [ %i.af, %.split.us.i14 ], [ %i.af, %bb.e ], [ %i.n, %.split.i ], [ %i.n, %bb.b ], [ %i.w, %.split.us.i ], [ %i.w, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %i.h, %._crit_edge.i ], [ %i.h, %.split.us.i14 ], [ %i.an, %bb.e ], [ %i.h, %.split.i ], [ %i.u, %bb.b ], [ %i.h, %.split.us.i ], [ %i.ad, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !168 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !95 ; 4 uses
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = or i32 %i.ay, %i.av
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = and i32 %.0, 16777215                   ; 3 uses
  %.not.i53 = icmp eq i32 %i.bb, 0
  br i1 %.not.i53, label %.lr.ph.i20, label %.lr.ph

.lr.ph.i20:                                       ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.h
  %.038.i.lcssa = phi ptr [ %0, %bb.h ], [ %i.be, %.lr.ph ], [ %i.bh, %.lr.ph.1 ], [ %i.bk, %.lr.ph.2 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.038.i.lcssa, i64 1
  store i8 %.sroa.2.0, ptr %.038.i.lcssa, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit

.lr.ph:                                           ; preds = %bb.h
  %i.bd = trunc i32 %.0 to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i8 %i.bd, ptr %0, align 1, !tbaa !76
  %i.bf = lshr i32 %i.bb, 8                       ; 2 uses
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %.lr.ph.i20, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !76
  %i.bi = lshr i32 %i.bb, 16                      ; 2 uses
  %.not.i.1 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.1, label %.lr.ph.i20, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !76
  br label %.lr.ph.i20

bb.i:                                             ; preds = %bb.g
  %i.bl = lshr i32 %.0, 24                        ; 2 uses
  %i.bm = add nuw nsw i32 %i.bl, 1                ; 3 uses
  %i.bn = and i32 %i.a, 56
  %i.bo = icmp eq i32 %i.bn, 32
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.bm)
  %spec.select41 = tail call i32 @llvm.usub.sat.i32(i32 %i.av, i32 %i.bm)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.k:                                             ; preds = %bb.i
  %i.bp = icmp sgt i32 %i.ax, 1
  br i1 %i.bp, label %bb.l, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = add nuw i32 %i.ax, %i.bl
  %i.br = add nsw i32 %i.ax, -1
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.030.0 = phi i32 [ %i.bm, %bb.k ], [ %spec.select, %bb.j ], [ %i.bq, %bb.l ]
  %.sroa.631.0 = phi i32 [ 0, %bb.k ], [ %spec.select41, %bb.j ], [ %i.br, %bb.l ]
  %i.bs = zext i32 %.sroa.030.0 to i64
  %i.bt = zext i32 %i.av to i64
  %i.bu = tail call i64 @llvm.usub.sat.i64(i64 %i.bt, i64 %i.bs) ; 3 uses
  %i.bv = lshr i32 %i.a, 3
  %i.bw = and i32 %i.bv, 7
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @.str.212, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !76
  %i.ca = sext i8 %i.bz to i64
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = lshr i64 %i.bu, %i.cb                   ; 4 uses
  %i.cd = sub nuw nsw i64 %i.bu, %i.cc
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.ce = tail call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef %0, i64 noundef %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.0.i.i = phi ptr [ %i.ce, %bb.m ], [ %0, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit ] ; 5 uses
  %i.cf = and i32 %.0, 16777215                   ; 3 uses
  %.not7.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %bb.n
  %.06.lcssa.i.i.i = phi ptr [ %.0.i.i, %bb.n ], [ %i.ck, %.lr.ph.i.i.i ], [ %i.cn, %.lr.ph.i.i.i.1 ], [ %i.cq, %.lr.ph.i.i.i.2 ] ; 2 uses
  %i.cg = zext i32 %.sroa.631.0 to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.06.lcssa.i.i.i, i8 48, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  store i8 %.sroa.2.0, ptr %i.ch, align 1, !tbaa !76
  %.not25.i.i = icmp eq i64 %i.bu, %i.cc
  br i1 %.not25.i.i, label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, label %bb.o

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.cj = trunc i32 %.0 to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.0.i.i, align 1, !tbaa !76
  %i.cl = lshr i32 %i.cf, 8                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 2 uses
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !76
  %i.co = lshr i32 %i.cf, 16                      ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.cp = trunc nuw i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !76
  br label %._crit_edge.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cr = tail call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef nonnull %i.ci, i64 noundef %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit

bb.p:                                             ; preds = %bb.a, %bb.a
  %i.cs = select i1 %1, ptr @.str.16, ptr @.str.174 ; 2 uses
  %i.ct = select i1 %1, i64 4, i64 5              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !168
  %i.cw = zext i32 %i.cv to i64
  %i.cx = tail call i64 @llvm.usub.sat.i64(i64 %i.cw, i64 %i.ct) ; 3 uses
  %i.cy = lshr i32 %i.a, 3
  %i.cz = and i32 %i.cy, 7
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @.str.211, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !76
  %i.dd = sext i8 %i.dc to i64
  %i.de = and i64 %i.dd, 4294967295
  %i.df = lshr i64 %i.cx, %i.de                   ; 4 uses
  %i.dg = sub nuw nsw i64 %i.cx, %i.df
  %.not.i.i.i24 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i24, label %.lr.ph.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = tail call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef %0, i64 noundef %i.df, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi ptr [ %i.dh, %bb.q ], [ %0, %bb.p ] ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct ; 4 uses
  %5 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.174, i64 1) ; 2 uses
  %i.dj = load i8, ptr %i.cs, align 1, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  store i8 %i.dj, ptr %.0.i.i.i, align 1, !tbaa !76
  %.not.i.i.i.i.i = icmp eq ptr %5, %i.di
  br i1 %.not.i.i.i.i.i, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %6 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.174, i64 2) ; 2 uses
  %7 = load i8, ptr %5, align 1, !tbaa !76
  %8 = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2 ; 2 uses
  store i8 %7, ptr %i.dk, align 1, !tbaa !76
  %.not.i.i.i.i.i.1 = icmp eq ptr %6, %i.di
  br i1 %.not.i.i.i.i.i.1, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %9 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.174, i64 3) ; 2 uses
  %10 = load i8, ptr %6, align 1, !tbaa !76
  %11 = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 3 ; 2 uses
  store i8 %10, ptr %8, align 1, !tbaa !76
  %.not.i.i.i.i.i.2 = icmp eq ptr %9, %i.di
  br i1 %.not.i.i.i.i.i.2, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %12 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.16, i64 4), ptr getelementptr inbounds nuw (i8, ptr @.str.174, i64 4) ; 2 uses
  %i.dl = load i8, ptr %9, align 1, !tbaa !76
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  store i8 %i.dl, ptr %11, align 1, !tbaa !76
  %.not.i.i.i.i.i.3 = icmp eq ptr %12, %i.di
  br i1 %.not.i.i.i.i.i.3, label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %13 = load i8, ptr %12, align 1, !tbaa !76
  %14 = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 5
  store i8 %13, ptr %i.dm, align 1, !tbaa !76
  br label %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i

_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i
  %.lcssa69 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %8, %.lr.ph.i.i.i.i.i.1 ], [ %11, %.lr.ph.i.i.i.i.i.2 ], [ %i.dm, %.lr.ph.i.i.i.i.i.3 ], [ %14, %.lr.ph.i.i.i.i.i.4 ] ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.cx, %i.df
  br i1 %.not25.i.i.i, label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i
  %i.dn = tail call noundef ptr @_ZN3fmt3v126detail4fillIcPcEET0_S4_mRKNS0_11basic_specsE(ptr noundef nonnull %.lcssa69, i64 noundef %i.dg, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit

_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.o, %._crit_edge.i.i.i, %bb.f, %.lr.ph.i20, %bb.r, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i
  %i.do = phi ptr [ %.lcssa69, %_ZZN3fmt3v126detail11write_bytesIcLNS0_5alignE1EPcEET1_S5_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS4_E_clES4_.exit.i.i.i ], [ %i.dn, %bb.r ], [ %i.at, %bb.f ], [ %i.cr, %bb.o ], [ %i.ci, %._crit_edge.i.i.i ], [ %i.bc, %.lr.ph.i20 ]
  ret ptr %i.do
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !872
  store ptr %3, ptr %i.a, align 8, !tbaa !115, !noalias !873
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !872
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.g = load ptr, ptr %5, align 8, !tbaa !75     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !76
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !76
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.s = load ptr, ptr %5, align 8, !tbaa !75     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v129to_stringIdTnNSt9enable_ifIXaantsr3std11is_integralIT_EE5valuentsr6detail13use_format_asIS3_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !127
  store i64 500, ptr %i.b, align 8, !tbaa !129
  %i.f = load double, ptr %1, align 8, !tbaa !99
  %i.g = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr nonnull %2, double noundef %i.f)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !127    ; 3 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !128  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !96
  %i.k = icmp eq ptr %i.h, null
  %i.l = icmp ne i64 %i.i, 0
  %or.cond.i = and i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.227) #31
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.i, ptr %i.a, align 8, !tbaa !97
  %i.m = icmp ugt i64 %i.i, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.n, ptr %0, align 8, !tbaa !75
  %i.o = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.o, ptr %i.j, align 8, !tbaa !76
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc4 ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !76
  store i8 %i.q, ptr %i.p, align 1, !tbaa !76
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !74
  %i.t = load ptr, ptr %0, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.v = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.v) #28
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.i:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.w, %bb.i ]
  %i.y = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, %i.e
  br i1 %.not.i.i5, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit6, label %bb.l
end_hunk_0
