inline.NumInlined: 37317
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZSt13__heap_selectIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_T0_:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = add nsw i64 %i.e, -1
  %i.g = sdiv i64 %i.f, 2                         ; 2 uses
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = and i64 %i.d, 16
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  %i.o = add nsw i64 %i.e, -2                     ; 3 uses
  %i.p = ashr exact i64 %i.o, 1                   ; 2 uses
  %.sroa.7.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = icmp eq i64 %i.o, 0
  %or.cond51 = select i1 %i.n, i1 %i.t, i1 false
  %i.u = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.034 = phi ptr [ %1, %.lr.ph ], [ %i.dm, %bb.v ] ; 5 uses
  %i.x = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.034, ptr noundef %0)
  br i1 %i.x, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i = load i64, ptr %.034, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.034, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !7606
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.y = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.y, label %.lr.ph.i.i.us, label %.lr.ph.i.i

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader, %bb.g
  %.030.i.i.us = phi i64 [ %i.aw, %bb.g ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.030.i.i.us, 1                  ; 3 uses
  %i.aa = add i64 %i.z, 2                         ; 3 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr [16 x i8], ptr %0, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !7606
  %i.ae = load i32, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.af = load i32, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.ag = icmp ult i32 %i.af, %i.ae
  %.0.copyload.i.i.i.i.i.i.i15.us = load i32, ptr %i.j, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.i16.us = load i32, ptr %i.i, align 4 ; 2 uses
  %.not.i.i.i.i.i.i17.us = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i15.us, %.0.copyload.i11.i.i.i.i.i.i16.us
  br i1 %.not.i.i.i.i.i.i17.us, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us: ; preds = %.lr.ph.i.i.us
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i15.us)
  %i.ai = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i16.us)
  %i.aj = icmp ugt i32 %i.ah, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.aj, label %bb.f, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.us
  %.sroa.speculated.i.i.i.i.i.i18.us = call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ae)
  %i.ak = icmp ult i32 %i.ae, 13
  %i.al = load ptr, ptr %i.l, align 8
  %i.am = select i1 %i.ak, ptr %i.j, ptr %i.al
  %i.an = icmp ult i32 %i.af, 13
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = select i1 %i.an, ptr %i.i, ptr %i.ao
  %i.aq = zext i32 %.sroa.speculated.i.i.i.i.i.i18.us to i64
  %i.ar = call i32 @memcmp(ptr noundef %i.am, ptr noundef %i.ap, i64 noundef %i.aq) #37 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = select i1 %i.at, i1 %i.ag, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %cond.fr32.us = freeze i1 %i.au
  br i1 %cond.fr32.us, label %bb.f, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us
  %i.av = or disjoint i64 %i.z, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us
  %i.aw = phi i64 [ %i.av, %bb.f ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us ], [ %i.aa, %bb.e ] ; 4 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aw
  %i.ay = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !7606
  %i.az = icmp slt i64 %i.aw, %i.g
  br i1 %i.az, label %.lr.ph.i.i.us, label %._crit_edge.i.i, !llvm.loop !8903

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.l
  %.030.i.i = phi i64 [ %i.bx, %bb.l ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ba = shl i64 %.030.i.i, 1                    ; 3 uses
  %i.bb = add i64 %i.ba, 2                        ; 3 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr [16 x i8], ptr %0, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !7606
  %i.bf = load i32, ptr %5, align 8, !tbaa !14    ; 3 uses
  %i.bg = load i32, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.bh = icmp ult i32 %i.bg, %i.bf
  %.0.copyload.i.i.i.i.i3.i.i11 = load i32, ptr %i.i, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i4.i.i12 = load i32, ptr %i.j, align 4 ; 2 uses
  %.not.i.i.i.i5.i.i13 = icmp eq i32 %.0.copyload.i.i.i.i.i3.i.i11, %.0.copyload.i11.i.i.i.i4.i.i12
  br i1 %.not.i.i.i.i5.i.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bi = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i3.i.i11)
  %i.bj = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i4.i.i12)
  %i.bk = icmp ugt i32 %i.bi, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bk, label %bb.k, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i.i
  %.sroa.speculated.i.i.i.i7.i.i14 = call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bf)
  %i.bl = icmp ult i32 %i.bf, 13
  %i.bm = load ptr, ptr %i.k, align 8
  %i.bn = select i1 %i.bl, ptr %i.i, ptr %i.bm
  %i.bo = icmp ult i32 %i.bg, 13
  %i.bp = load ptr, ptr %i.l, align 8
  %i.bq = select i1 %i.bo, ptr %i.j, ptr %i.bp
  %i.br = zext i32 %.sroa.speculated.i.i.i.i7.i.i14 to i64
  %i.bs = call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bq, i64 noundef %i.br) #37 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = select i1 %i.bu, i1 %i.bh, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %cond.fr33 = freeze i1 %i.bv
  br i1 %cond.fr33, label %bb.k, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread
  %i.bw = or disjoint i64 %i.ba, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.k
  %i.bx = phi i64 [ %i.bw, %bb.k ], [ %i.bb, %bb.h ], [ %i.bb, %bb.j ] ; 4 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !7606
  %i.ca = icmp slt i64 %i.bx, %i.g
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8903

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.g
  %.0.lcssa.i.i = phi i64 [ %i.aw, %bb.g ], [ %i.bx, %bb.l ] ; 3 uses
  %i.cb = icmp eq i64 %.0.lcssa.i.i, %i.p
  %or.cond = select i1 %i.n, i1 %i.cb, i1 false
  br i1 %or.cond, label %.thread.i, label %bb.m

._crit_edge.i.i.thread:                           ; preds = %bb.c
  br i1 %or.cond51, label %.thread.i, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit

.thread.i:                                        ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !7606
  br label %.lr.ph.i.i.preheader.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.m, %.thread.i
  %.1.i13.i = phi i64 [ %i.u, %.thread.i ], [ %.0.lcssa.i.i, %bb.m ]
  %i.cc = trunc nuw i8 %.sroa.5.0.copyload to i1
  %i.cd = lshr i64 %.sroa.01.0.copyload.i, 32
  %i.ce = trunc nuw i64 %i.cd to i32              ; 3 uses
  %i.cf = call noundef i32 @llvm.bswap.i32(i32 %i.ce)
  %i.cg = trunc i64 %.sroa.01.0.copyload.i to i32 ; 6 uses
  %i.ch = icmp ult i32 %i.cg, 13
  %i.ci = select i1 %i.ch, ptr %i.q, ptr %.sroa.4.0.copyload.i
  %i.cj = call i32 @llvm.bswap.i32(i32 %i.ce)
  %i.ck = icmp ult i32 %i.cg, 13
  %i.cl = select i1 %i.ck, ptr %i.q, ptr %.sroa.4.0.copyload.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.i.i.preheader.i
  %.01316.i.i.i = phi i64 [ %.017.i.i89.i, %bb.u ], [ %.1.i13.i, %.lr.ph.i.i.preheader.i ] ; 6 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i89.i = lshr i64 %.017.in.i.i.i, 1      ; 3 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.017.i.i89.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i64 %.sroa.01.0.copyload.i, ptr %7, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.7.0..sroa_idx29, align 8, !tbaa !14
  %i.cn = load i32, ptr %6, align 8, !tbaa !14    ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.r, align 4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i, %i.ce ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.co = icmp ugt i32 %i.cn, %i.cg
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit

bb.o:                                             ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.cn)
  %i.cp = icmp ult i32 %i.cn, 13
  %i.cq = load ptr, ptr %i.s, align 8
  %i.cr = select i1 %i.cp, ptr %i.r, ptr %i.cq
  %i.cs = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.ct = call i32 @memcmp(ptr noundef %i.cr, ptr noundef %i.cl, i64 noundef %i.cs) #37 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp eq i32 %i.ct, 0
  %i.cw = select i1 %i.cv, i1 %i.co, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.cw, label %bb.u, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = icmp ult i32 %i.cn, %i.cg
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.cz = icmp ugt i32 %i.cf, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.cz, label %bb.u, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit

bb.s:                                             ; preds = %bb.q
  %.sroa.speculated.i.i.i.i7.i.i = call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cg)
  %i.da = icmp ult i32 %i.cn, 13
  %i.db = load ptr, ptr %i.s, align 8
  %i.dc = select i1 %i.da, ptr %i.r, ptr %i.db
  %i.dd = zext i32 %.sroa.speculated.i.i.i.i7.i.i to i64
  %i.de = call i32 @memcmp(ptr noundef %i.ci, ptr noundef %i.dc, i64 noundef %i.dd) #37 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp eq i32 %i.de, 0
  %i.dh = select i1 %i.dg, i1 %i.cx, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.dh, label %bb.u, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread: ; preds = %bb.o, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.u

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit: ; preds = %bb.n
  %i.di = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.dj = icmp ugt i32 %i.di, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.dj, label %bb.u, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.p, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit
  %i.dk = getelementptr inbounds [16 x i8], ptr %0, i64 %.01316.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !7606
  %.not10.i = icmp eq i64 %.017.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !8904

_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit: ; preds = %bb.t, %bb.r, %bb.p, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit, %bb.u, %._crit_edge.i.i.thread, %bb.m
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.m ], [ 0, %._crit_edge.i.i.thread ], [ %.01316.i.i.i, %bb.r ], [ %.01316.i.i.i, %bb.p ], [ %.01316.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit ], [ 0, %bb.u ], [ %.01316.i.i.i, %bb.t ]
  %i.dl = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.01.0.copyload.i, ptr %i.dl, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %_ZSt10__pop_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_SB_RT0_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %2
  br i1 %i.dn, label %bb.b, label %._crit_edge, !llvm.loop !8905
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_(ptr noundef %0, ptr noundef %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.2045") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 11 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.2047", align 8 ; 5 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not20 = icmp eq ptr %.019, %1
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.022 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.p ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.022, %bb.p ] ; 4 uses
  %i.h = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %.022, ptr noundef %0)
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.022, i64 16, i1 false), !tbaa.struct !7606
  %i.i = ptrtoint ptr %.022 to i64
  %i.j = sub i64 %i.i, %i.g                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn21, i64 32
  %i.n = sub nsw i64 0, %i.k
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.j, 16
  br i1 %i.p, label %bb.f, label %_ZSt13move_backwardIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !7606
  br label %_ZSt13move_backwardIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN6duckdb8string_tES2_ET0_T_S4_S3_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.022, i64 16, i1 false), !tbaa.struct !7606
  %i.r = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIS5_PS5_EEbRT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %.pn21)
  br i1 %i.r, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN6duckdb8string_tEN9__gnu_cxx5__ops14_Val_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.backedge
  %.012.i = phi ptr [ %.0.i, %.lr.ph.i.backedge ], [ %.pn21, %bb.g ] ; 7 uses
  %.0911.i = phi ptr [ %.012.i, %.lr.ph.i.backedge ], [ %.022, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i, ptr noundef nonnull align 8 dereferenceable(16) %.012.i, i64 16, i1 false), !tbaa.struct !7606
  %.0.i = getelementptr inbounds i8, ptr %.012.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false), !tbaa.struct !7606
  %i.s = load i8, ptr %i.b, align 8, !tbaa !8906, !range !234, !noundef !235
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i
  %i.u = load i32, ptr %3, align 8, !tbaa !14     ; 3 uses
  %i.v = load i32, ptr %4, align 8, !tbaa !14     ; 3 uses
  %i.w = icmp ult i32 %i.v, %i.u
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.d, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.i = load i32, ptr %i.c, align 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.y = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i)
  %i.z = icmp ugt i32 %i.x, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_T0_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN6duckdb8string_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_SB_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 14 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 14 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 10 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.g, %bb.b ], [ %i.do, %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit ] ; 9 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.014 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.w, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247 ; 2 uses
  %i.x = icmp slt i64 %.014, %i.i
  br i1 %i.x, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.y = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1
  br i1 %i.y, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %bb.g
  %.030.i.us = phi i64 [ %i.aw, %bb.g ], [ %.014, %.lr.ph.i.preheader ] ; 2 uses
  %i.z = shl i64 %.030.i.us, 1                    ; 3 uses
  %i.aa = add i64 %i.z, 2                         ; 3 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr [16 x i8], ptr %0, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !7606
  %i.ae = load i32, ptr %3, align 8, !tbaa !14    ; 3 uses
  %i.af = load i32, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.ag = icmp ult i32 %i.af, %i.ae
  %.0.copyload.i.i.i.i.i.i.i20.us = load i32, ptr %i.n, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.i21.us = load i32, ptr %i.m, align 4 ; 2 uses
  %.not.i.i.i.i.i.i22.us = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i20.us, %.0.copyload.i11.i.i.i.i.i.i21.us
  br i1 %.not.i.i.i.i.i.i22.us, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us: ; preds = %.lr.ph.i.us
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i20.us)
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i21.us)
  %i.aj = icmp ugt i32 %i.ah, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.aj, label %bb.f, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.us
  %.sroa.speculated.i.i.i.i.i.i23.us = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ae)
  %i.ak = icmp ult i32 %i.ae, 13
  %i.al = load ptr, ptr %i.p, align 8
  %i.am = select i1 %i.ak, ptr %i.n, ptr %i.al
  %i.an = icmp ult i32 %i.af, 13
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = select i1 %i.an, ptr %i.m, ptr %i.ao
  %i.aq = zext i32 %.sroa.speculated.i.i.i.i.i.i23.us to i64
  %i.ar = call i32 @memcmp(ptr noundef %i.am, ptr noundef %i.ap, i64 noundef %i.aq) #37 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = select i1 %i.at, i1 %i.ag, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %cond.fr35.us = freeze i1 %i.au
  br i1 %cond.fr35.us, label %bb.f, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread.us, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us
  %i.av = or disjoint i64 %i.z, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us
  %i.aw = phi i64 [ %i.av, %bb.f ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.us ], [ %i.aa, %bb.e ] ; 4 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aw
  %i.ay = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !7606
  %i.az = icmp slt i64 %i.aw, %i.i
  br i1 %i.az, label %.lr.ph.i.us, label %._crit_edge.i, !llvm.loop !8903

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.l
  %.030.i = phi i64 [ %i.bx, %bb.l ], [ %.014, %.lr.ph.i.preheader ] ; 2 uses
  %i.ba = shl i64 %.030.i, 1                      ; 3 uses
  %i.bb = add i64 %i.ba, 2                        ; 3 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr [16 x i8], ptr %0, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !7606
  %i.bf = load i32, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.bg = load i32, ptr %3, align 8, !tbaa !14    ; 3 uses
  %i.bh = icmp ult i32 %i.bg, %i.bf
  %.0.copyload.i.i.i.i.i3.i.i16 = load i32, ptr %i.m, align 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i4.i.i17 = load i32, ptr %i.n, align 4 ; 2 uses
  %.not.i.i.i.i5.i.i18 = icmp eq i32 %.0.copyload.i.i.i.i.i3.i.i16, %.0.copyload.i11.i.i.i.i4.i.i17
  br i1 %.not.i.i.i.i5.i.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i3.i.i16)
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i4.i.i17)
  %i.bk = icmp ugt i32 %i.bi, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bk, label %bb.k, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %.sroa.speculated.i.i.i.i7.i.i19 = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bf)
  %i.bl = icmp ult i32 %i.bf, 13
  %i.bm = load ptr, ptr %i.o, align 8
  %i.bn = select i1 %i.bl, ptr %i.m, ptr %i.bm
  %i.bo = icmp ult i32 %i.bg, 13
  %i.bp = load ptr, ptr %i.p, align 8
  %i.bq = select i1 %i.bo, ptr %i.n, ptr %i.bp
  %i.br = zext i32 %.sroa.speculated.i.i.i.i7.i.i19 to i64
  %i.bs = call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bq, i64 noundef %i.br) #37 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = select i1 %i.bu, i1 %i.bh, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %cond.fr36 = freeze i1 %i.bv
  br i1 %cond.fr36, label %bb.k, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_.exit.thread
  %i.bw = or disjoint i64 %i.ba, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.k
  %i.bx = phi i64 [ %i.bw, %bb.k ], [ %i.bb, %bb.h ], [ %i.bb, %bb.j ] ; 4 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds [16 x i8], ptr %0, i64 %.030.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !7606
  %i.ca = icmp slt i64 %i.bx, %i.i
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8903

._crit_edge.i:                                    ; preds = %bb.l, %bb.g, %bb.c
  %.0.lcssa.i = phi i64 [ %.014, %bb.c ], [ %i.aw, %bb.g ], [ %i.bx, %bb.l ] ; 2 uses
  %i.cb = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !7606
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.1.i = phi i64 [ %i.t, %bb.m ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cc = icmp sgt i64 %.1.i, %.014
  br i1 %i.cc, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %i.cd = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1
  %i.ce = lshr i64 %.sroa.01.0.copyload, 32
  %i.cf = trunc nuw i64 %i.ce to i32              ; 3 uses
  %i.cg = tail call noundef i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = trunc i64 %.sroa.01.0.copyload to i32   ; 6 uses
  %i.ci = icmp ult i32 %i.ch, 13
  %i.cj = select i1 %i.ci, ptr %i.q, ptr %.sroa.4.0.copyload
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.cl = icmp ult i32 %i.ch, 13
  %i.cm = select i1 %i.cl, ptr %i.q, ptr %.sroa.4.0.copyload
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.v
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.v ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 6 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.cn = getelementptr inbounds [16 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i64 %.sroa.01.0.copyload, ptr %6, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.531.0..sroa_idx32, align 8, !tbaa !14
  %i.co = load i32, ptr %5, align 8, !tbaa !14    ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.r, align 4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i, %i.cf ; 2 uses
  br i1 %i.cd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cp = icmp ugt i32 %i.co, %i.ch
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %i.co)
  %i.cq = icmp ult i32 %i.co, 13
  %i.cr = load ptr, ptr %i.s, align 8
  %i.cs = select i1 %i.cq, ptr %i.r, ptr %i.cr
  %i.ct = zext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.cu = call i32 @memcmp(ptr noundef %i.cs, ptr noundef %i.cm, i64 noundef %i.ct) #37 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = icmp eq i32 %i.cu, 0
  %i.cx = select i1 %i.cw, i1 %i.cp, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.cx, label %bb.v, label %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cy = icmp ult i32 %i.co, %i.ch
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.da = icmp ugt i32 %i.cg, %i.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.da, label %bb.v, label %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit

bb.t:                                             ; preds = %bb.r
  %.sroa.speculated.i.i.i.i7.i.i = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.ch)
  %i.db = icmp ult i32 %i.co, 13
  %i.dc = load ptr, ptr %i.s, align 8
  %i.dd = select i1 %i.db, ptr %i.r, ptr %i.dc
  %i.de = zext i32 %.sroa.speculated.i.i.i.i7.i.i to i64
  %i.df = call i32 @memcmp(ptr noundef %i.cj, ptr noundef %i.dd, i64 noundef %i.de) #37 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp eq i32 %i.df, 0
  %i.di = select i1 %i.dh, i1 %i.cy, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.di, label %bb.v, label %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread: ; preds = %bb.p, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.v

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit: ; preds = %bb.o
  %i.dj = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.dk = icmp ugt i32 %i.dj, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.dk, label %bb.v, label %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit.thread, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit
  %i.dl = getelementptr inbounds [16 x i8], ptr %0, i64 %.01316.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !7606
  %i.dm = icmp sgt i64 %.017.i.i, %.014
  br i1 %i.dm, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit, !llvm.loop !8904

_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit: ; preds = %bb.u, %bb.s, %bb.q, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit, %bb.v, %bb.n
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.n ], [ %.01316.i.i, %bb.u ], [ %.01316.i.i, %bb.s ], [ %.01316.i.i, %bb.q ], [ %.017.i.i, %bb.v ], [ %.01316.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_S5_EEbT_RT0_.exit ]
  %i.dn = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i.i ; 2 uses
  store i64 %.sroa.01.0.copyload, ptr %i.dn, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.531.0..sroa_idx, align 8, !tbaa !14
  %.not = icmp eq i64 %.014, 0
  %i.do = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !8911

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6duckdb8string_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_15QuantileCompareINS0_14QuantileDirectIS1_EEEEEEEvT_T0_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS2_14QuantileDirectINS2_8string_tEEEEEEclIPS5_SA_EEbT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !7606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !7606
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8906, !range !234, !noundef !235
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !14     ; 3 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !14     ; 3 uses
  %i.f = icmp ult i32 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i = load i32, ptr %i.h, align 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i)
  %i.k = icmp ugt i32 %i.i, %i.j
  br label %_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.d)
  %i.l = icmp ult i32 %i.d, 13
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.g, ptr %i.n
  %i.p = icmp ult i32 %i.e, 13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.p, ptr %i.h, ptr %i.r
  %i.t = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.u = call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.s, i64 noundef %i.t) #37 ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i32 %i.u, 0
  %i.x = select i1 %i.w, i1 %i.f, i1 false
  br label %_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit

bb.f:                                             ; preds = %bb.a
  %i.y = load i32, ptr %4, align 8, !tbaa !14     ; 3 uses
  %i.z = load i32, ptr %3, align 8, !tbaa !14     ; 3 uses
  %i.aa = icmp ult i32 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i3.i = load i32, ptr %i.ab, align 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i4.i = load i32, ptr %i.ac, align 4 ; 2 uses
  %.not.i.i.i.i5.i = icmp eq i32 %.0.copyload.i.i.i.i.i3.i, %.0.copyload.i11.i.i.i.i4.i
  br i1 %.not.i.i.i.i5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i3.i)
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i4.i)
  %i.af = icmp ugt i32 %i.ad, %i.ae
  br label %_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.speculated.i.i.i.i7.i = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.y)
  %i.ag = icmp ult i32 %i.y, 13
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.ag, ptr %i.ab, ptr %i.ai
  %i.ak = icmp ult i32 %i.z, 13
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.ac, ptr %i.am
  %i.ao = zext i32 %.sroa.speculated.i.i.i.i7.i to i64
  %i.ap = call i32 @memcmp(ptr noundef %i.aj, ptr noundef %i.an, i64 noundef %i.ao) #37 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = select i1 %i.ar, i1 %i.aa, i1 false
  br label %_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit

_ZNK6duckdb15QuantileCompareINS_14QuantileDirectINS_8string_tEEEEclERKS2_S6_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %i.at = phi i1 [ %i.x, %bb.e ], [ %i.k, %bb.c ], [ true, %bb.d ], [ %i.af, %bb.g ], [ true, %bb.h ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %i.at
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
