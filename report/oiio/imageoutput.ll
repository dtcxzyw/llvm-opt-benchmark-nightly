inline.NumInlined: 3702
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_111ImageOutput10write_tileEiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE:bb.a
  %i.c = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.b) #2
  %i.d = call fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L15check_span_sizeEPNS0_11ImageOutputENS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_9ImageSpecENS0_8TypeDescEmRKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef %0, ptr noundef dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 %4, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(60) %5)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %5, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !102
  %i.l = load ptr, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7, ptr noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  store i64 %7, ptr %13, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119  ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = lshr i64 %7, 8                           ; 2 uses
  %i.e = lshr i64 %7, 32                          ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 2 uses
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.h = sub nsw i32 %1, %i.g
  %i.i = srem i32 %i.h, %i.c
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !121  ; 2 uses
  %i.m = sub nsw i32 %3, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122  ; 2 uses
  %i.p = srem i32 %i.m, %i.o
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !123  ; 2 uses
  %i.t = sub nsw i32 %5, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !124  ; 2 uses
  %i.w = srem i32 %i.t, %i.v
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.y = sub nsw i32 %2, %i.g                     ; 2 uses
  %i.z = srem i32 %i.y, %i.c
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.y, %i.ac
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %bb.f, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = sub nsw i32 %4, %i.l                    ; 2 uses
  %i.af = srem i32 %i.ae, %i.o
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !125
  %i.aj = icmp eq i32 %i.ae, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = sub nsw i32 %6, %i.s                    ; 2 uses
  %i.al = srem i32 %i.ak, %i.v
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread125, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit

_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !126
  %i.ap = icmp eq i32 %i.ak, %i.ao
  br i1 %i.ap, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread125, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread125: ; preds = %bb.h, %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit
  %i.aq = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i1 noundef zeroext true) #2
  %i.ar = and i64 %7, 65535
  %or.cond.i80 = icmp eq i64 %i.ar, 256
  %.not.i81 = icmp eq i64 %i.e, 0
  %i.as = icmp eq i64 %9, -9223372036854775808
  %or.cond = and i1 %i.as, %.not.i81
  %i.at = select i1 %or.cond.i80, i1 %or.cond, i1 false
  %.0121 = select i1 %i.at, i64 %i.aq, i64 %9     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !109
  %i.aw = sub nsw i32 %2, %1
  %i.ax = sub nsw i32 %4, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 %7, ptr %12, align 8
  %i.ay = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %12) #2
  %i.az = icmp eq i64 %.0121, -9223372036854775808
  br i1 %i.az, label %bb.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread._ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit_crit_edge

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread._ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit_crit_edge: ; preds = %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread125
  %.pre197 = call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %.pre198 = zext nneg i32 %.pre197 to i64
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread125
  %i.ba = and i64 %i.d, 255
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 2 uses
  %i.bb = sext i32 %i.av to i64
  %i.bc = mul nsw i64 %i.ba, %i.bb
  %i.bd = mul i64 %i.bc, %i.ay
  %i.be = mul i64 %i.bd, %spec.select.i.i
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread._ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit_crit_edge, %bb.i
  %spec.select.i.pre-phi = phi i64 [ %.pre198, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread._ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit_crit_edge ], [ %spec.select.i.i, %bb.i ]
  %.1122 = phi i64 [ %.0121, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread._ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit_crit_edge ], [ %i.be, %bb.i ] ; 4 uses
  %i.bf = icmp eq i64 %10, -9223372036854775808
  %i.bg = sext i32 %i.aw to i64
  %i.bh = mul nsw i64 %.1122, %i.bg
  %.0123 = select i1 %i.bf, i64 %i.bh, i64 %10    ; 4 uses
  %i.bi = icmp eq i64 %11, -9223372036854775808
  %i.bj = sext i32 %i.ax to i64
  %i.bk = mul nsw i64 %.0123, %i.bj
  %.0124 = select i1 %i.bi, i64 %i.bk, i64 %11    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bl = and i64 %i.d, 255
  %i.bm = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %13) #2
  %i.bn = mul i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, %spec.select.i.pre-phi
  %i.bp = load i32, ptr %i.au, align 4, !tbaa !109
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %i.bo, %i.bq                    ; 8 uses
  %i.bs = icmp slt i32 %5, %6
  %i.bt = icmp slt i32 %3, %4
  %or.cond214 = and i1 %i.bs, %i.bt
  %i.bu = icmp slt i32 %1, %2
  %or.cond215 = and i1 %or.cond214, %i.bu
  br i1 %or.cond215, label %.lr.ph159.us.us.preheader, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

.lr.ph159.us.us.preheader:                        ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.pre = load i32, ptr %i.u, align 8, !tbaa !3
  %.pre190.pre = load i32, ptr %i.n, align 4, !tbaa !3
  br label %.lr.ph159.us.us

.lr.ph159.us.us:                                  ; preds = %.lr.ph159.us.us.preheader, %._crit_edge160.split.us173.us
  %.pre190 = phi i32 [ %.pre190194, %._crit_edge160.split.us173.us ], [ %.pre190.pre, %.lr.ph159.us.us.preheader ] ; 2 uses
  %i.bv = phi i32 [ %i.ds, %._crit_edge160.split.us173.us ], [ %.pre, %.lr.ph159.us.us.preheader ]
  %.069167.us.us = phi i8 [ %.2.lcssa.us.us, %._crit_edge160.split.us173.us ], [ 1, %.lr.ph159.us.us.preheader ]
  %.070165.us.us = phi i32 [ %i.dt, %._crit_edge160.split.us173.us ], [ %5, %.lr.ph159.us.us.preheader ] ; 5 uses
  %.sroa.0.0164.us.us = phi ptr [ %.sroa.0.2.lcssa.us.us, %._crit_edge160.split.us173.us ], [ null, %.lr.ph159.us.us.preheader ]
  %i.bw = sub nsw i32 %6, %.070165.us.us
  %.sroa.speculated99.us.us = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bw) ; 2 uses
  %i.bx = sub nsw i32 %.070165.us.us, %5
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %.0124, %i.by
  %i.ca = getelementptr inbounds i8, ptr %8, i64 %i.bz
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph159.us.us, %14
  %.pre190195 = phi i32 [ %.pre190, %.lr.ph159.us.us ], [ %.pre190194, %14 ]
  %i.cb = phi i32 [ %.pre190, %.lr.ph159.us.us ], [ %15, %14 ] ; 2 uses
  %.1157.us.us = phi i8 [ %.069167.us.us, %.lr.ph159.us.us ], [ %.2.lcssa.us.us, %14 ]
  %.074156.us172.us = phi i32 [ %3, %.lr.ph159.us.us ], [ %16, %14 ] ; 5 uses
  %.sroa.0.1155.us.us = phi ptr [ %.sroa.0.0164.us.us, %.lr.ph159.us.us ], [ %.sroa.0.2.lcssa.us.us, %14 ] ; 2 uses
  %i.cc = sub nsw i32 %4, %.074156.us172.us
  %.sroa.speculated95.us.us = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc) ; 2 uses
  %i.cd = trunc nuw i8 %.1157.us.us to i1
  br i1 %i.cd, label %.lr.ph.us.us.preheader, label %14

.lr.ph.us.us.preheader:                           ; preds = %bb.j
  %i.ce = sub nsw i32 %.074156.us172.us, %3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %.0123, %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.ca, i64 %i.cg
  %.pre191 = load i32, ptr %i.b, align 8, !tbaa !3
  br label %.lr.ph.us.us

14:                                               ; preds = %._crit_edge.us.us, %bb.j
  %.pre190194 = phi i32 [ %.pre193, %._crit_edge.us.us ], [ %.pre190195, %bb.j ] ; 2 uses
  %15 = phi i32 [ %.pre193, %._crit_edge.us.us ], [ %i.cb, %bb.j ] ; 2 uses
  %.sroa.0.2.lcssa.us.us = phi ptr [ %.sroa.0.5.us.us, %._crit_edge.us.us ], [ %.sroa.0.1155.us.us, %bb.j ] ; 4 uses
  %.2.lcssa.us.us = phi i8 [ %.3.us.le.us, %._crit_edge.us.us ], [ 0, %bb.j ] ; 3 uses
  %16 = add nsw i32 %15, %.074156.us172.us        ; 2 uses
  %17 = icmp slt i32 %16, %4
  br i1 %17, label %bb.j, label %._crit_edge160.split.us173.us, !llvm.loop !127

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.q
  %i.ci = phi i32 [ %i.dl, %bb.q ], [ %.pre191, %.lr.ph.us.us.preheader ] ; 3 uses
  %.071152.us.us = phi i32 [ %i.dp, %bb.q ], [ %1, %.lr.ph.us.us.preheader ] ; 4 uses
  %.073151.us.us = phi ptr [ %i.do, %bb.q ], [ %i.ch, %.lr.ph.us.us.preheader ] ; 3 uses
  %.sroa.0.2150.us.us = phi ptr [ %.sroa.0.5.us.us, %bb.q ], [ %.sroa.0.1155.us.us, %.lr.ph.us.us.preheader ] ; 5 uses
  %i.cj = sub nsw i32 %2, %.071152.us.us          ; 2 uses
  %.sroa.speculated91.us.us = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cj)
  %.not137.us.us = icmp sgt i32 %i.ci, %i.cj
  br i1 %.not137.us.us, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.us.us
  %i.ck = load i32, ptr %i.n, align 4, !tbaa !128
  %i.cl = icmp eq i32 %.sroa.speculated95.us.us, %i.ck
  br i1 %i.cl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cm = load i32, ptr %i.u, align 8, !tbaa !129
  %i.cn = icmp eq i32 %.sroa.speculated99.us.us, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.03.0.copyload.us.us = load i64, ptr %13, align 8
  %i.co = load ptr, ptr %0, align 8, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %.071152.us.us, i32 noundef %.074156.us172.us, i32 noundef %.070165.us.us, i64 %.sroa.03.0.copyload.us.us, ptr noundef %.073151.us.us, i64 noundef %.1122, i64 noundef %.0123, i64 noundef %.0124)
          to label %bb.q unwind label %.split.us.split.us

bb.n:                                             ; preds = %bb.l, %bb.k, %.lr.ph.us.us
  %.not.us.us = icmp eq ptr %.sroa.0.2150.us.us, null
  br i1 %.not.us.us, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.us.us, label %bb.o

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.us.us: ; preds = %bb.n
  %i.cs = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #2
  %i.ct = mul i64 %i.cs, %i.br                    ; 2 uses
  %i.cu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #41 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cu, i8 0, i64 %i.ct, i1 false)
  %.pre192 = load i32, ptr %i.b, align 8, !tbaa !130
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.us.us, %bb.n
  %i.cv = phi i32 [ %.pre192, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.us.us ], [ %i.ci, %bb.n ]
  %.sroa.0.4.us.us = phi ptr [ %i.cu, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.us.us ], [ %.sroa.0.2150.us.us, %bb.n ] ; 4 uses
  %i.cw = load i32, ptr %i.au, align 4, !tbaa !109
  %i.cx = sext i32 %i.cv to i64
  %i.cy = mul nsw i64 %i.br, %i.cx
  %i.cz = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #2
  %i.da = mul i64 %i.cz, %i.br
  %i.db = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll(i32 noundef %i.cw, i32 noundef %.sroa.speculated91.us.us, i32 noundef %.sroa.speculated95.us.us, i32 noundef %.sroa.speculated99.us.us, ptr noundef %.073151.us.us, i64 noundef %i.br, i64 noundef %.1122, i64 noundef %.0123, i64 noundef %.0124, ptr noundef nonnull %.sroa.0.4.us.us, i64 noundef %i.br, i64 noundef %i.cy, i64 noundef %i.da)
          to label %bb.p unwind label %.thread131.split.us.split.us ; 0 uses

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.us.us = load i64, ptr %13, align 8
  %i.dc = load i32, ptr %i.b, align 8, !tbaa !130
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.br, %i.dd
  %i.df = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #2
  %i.dg = mul i64 %i.df, %i.br
  %i.dh = load ptr, ptr %0, align 8, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 152
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %.071152.us.us, i32 noundef %.074156.us172.us, i32 noundef %.070165.us.us, i64 %.sroa.0.0.copyload.us.us, ptr noundef nonnull %.sroa.0.4.us.us, i64 noundef %i.br, i64 noundef %i.de, i64 noundef %i.dg)
          to label %bb.q unwind label %.thread131.split.us.split.us

bb.q:                                             ; preds = %bb.p, %bb.m
  %.sroa.0.5.us.us = phi ptr [ %.sroa.0.2150.us.us, %bb.m ], [ %.sroa.0.4.us.us, %bb.p ] ; 2 uses
  %.3.in.us.us = phi i1 [ %i.cr, %bb.m ], [ %i.dk, %bb.p ] ; 2 uses
  %i.dl = load i32, ptr %i.b, align 8, !tbaa !130 ; 3 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %.1122, %i.dm
  %i.do = getelementptr inbounds i8, ptr %.073151.us.us, i64 %i.dn
  %i.dp = add nsw i32 %i.dl, %.071152.us.us       ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %2
  %i.dr = select i1 %.3.in.us.us, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph.us.us, label %._crit_edge.us.us, !llvm.loop !131

._crit_edge.us.us:                                ; preds = %bb.q
  %.3.us.le.us = zext i1 %.3.in.us.us to i8
  %.pre193 = load i32, ptr %i.n, align 4, !tbaa !128 ; 2 uses
  br label %14

._crit_edge160.split.us173.us:                    ; preds = %14
  %i.ds = load i32, ptr %i.u, align 8, !tbaa !3   ; 2 uses
  %.sroa.speculated.us.us = call i32 @llvm.smax.i32(i32 %i.ds, i32 1)
  %i.dt = add nsw i32 %.sroa.speculated.us.us, %.070165.us.us ; 2 uses
  %i.du = icmp slt i32 %i.dt, %6
  br i1 %i.du, label %.lr.ph159.us.us, label %._crit_edge169, !llvm.loop !132

.split.us.split.us:                               ; preds = %bb.m
  %lpad.thr_comm.split-lp.us.us = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i86 = icmp eq ptr %.sroa.0.2150.us.us, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit88, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i87

.thread131.split.us.split.us:                     ; preds = %bb.p, %bb.o
  %lpad.thr_comm.us.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i87

._crit_edge169:                                   ; preds = %._crit_edge160.split.us173.us
  %i.dv = trunc nuw i8 %.2.lcssa.us.us to i1      ; 2 uses
  %.not.i82 = icmp eq ptr %.sroa.0.2.lcssa.us.us, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %._crit_edge169
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.2.lcssa.us.us) #39
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i87: ; preds = %.thread131.split.us.split.us, %.split.us.split.us
  %lpad.phi136 = phi { ptr, i32 } [ %lpad.thr_comm.us.us, %.thread131.split.us.split.us ], [ %lpad.thr_comm.split-lp.us.us, %.split.us.split.us ]
  %.sroa.0.3135 = phi ptr [ %.sroa.0.4.us.us, %.thread131.split.us.split.us ], [ %.sroa.0.2150.us.us, %.split.us.split.us ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.3135) #39
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit88

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit88: ; preds = %.split.us.split.us, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i87
  %.pn130 = phi { ptr, i32 } [ %lpad.phi136, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i87 ], [ %lpad.thr_comm.split-lp.us.us, %.split.us.split.us ]
  resume { ptr, i32 } %.pn130

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %._crit_edge169, %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit
  %.0 = phi i1 [ %i.dv, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ false, %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit ], [ %i.dv, %._crit_edge169 ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit ]
  ret i1 %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %8) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %8, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  %i.h = load ptr, ptr %0, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7, ptr noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.g)
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescEPKvlll(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, ptr nofree readnone captures(none) %8, i64 %9, i64 %10, i64 %11) unnamed_addr #11 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, ptr nofree nonnull readnone align 8 captures(none) %8) unnamed_addr #11 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput20write_deep_scanlinesEiiiRKNS0_8DeepDataE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, i32 %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #11 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_tilesEiiiiiiRKNS0_8DeepDataE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, ptr nofree nonnull readnone align 8 captures(none) %7) unnamed_addr #11 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_imageERKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !133  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.5)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !130
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !135  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !111
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %i.r = add nsw i32 %i.q, %i.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !135  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !111
  %i.aa = add nsw i32 %i.z, %i.x
  %i.ab = load ptr, ptr %0, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.v, %bb.d ], [ %i.ae, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.137", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #2, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2, !noalias !137
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2, !noalias !137
  %i.b = load ptr, ptr %4, align 8, !tbaa !30
  store ptr %i.b, ptr %3, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106
  store i64 %i.e, ptr %i.c, align 8, !tbaa !77
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_111ImageOutput14send_to_outputEPKcz(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_111ImageOutput14send_to_clientEPKcz(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef readnone captures(none) %1, ...) local_unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: uwtable
define void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef captures(none) dead_on_return %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.155", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.158", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !75
  %i.d = getelementptr i8, ptr %i.c, i64 %i.b
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !34
  %i.g = icmp eq i8 %i.f, 10
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.b, -1
  store i64 %i.h, ptr %i.a, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = load i8, ptr @__tls_guard, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit, !prof !140

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @__tls_guard, align 1
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init()
  br label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit

_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit: ; preds = %bb.d, %bb.e
  %i.l = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  store ptr %i.n, ptr %2, align 8, !tbaa !141, !alias.scope !143
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.o = call { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEES2_INSM_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.o, 0 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !106  ; 7 uses
  %.not5 = icmp eq i64 %i.r, 0
  br i1 %.not5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !30   ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %.not6 = icmp eq i8 %i.v, 10
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i64 %i.r, 1                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 32 ; 2 uses
  %i.y = icmp eq ptr %i.s, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.z = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.r, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.h
  %i.ad = phi ptr [ %.pre.i.i, %bb.h ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.r
  store i8 10, ptr %i.ae, align 1, !tbaa !34
  store i64 %i.w, ptr %i.q, align 8, !tbaa !106
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 0, ptr %i.ag, align 1, !tbaa !34
  %.pre = load i64, ptr %i.q, align 8, !tbaa !106
  br label %bb.i
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_111ImageOutput19to_native_rectangleEiiiiiiNS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii:bb.a
  %.pn = phi i64 [ %i.cb, %bb.i ], [ %i.ck, %bb.j ]
  %i.cl = icmp eq i64 %.0150, %i.bw
  %i.cm = icmp eq i32 %i.bj, 1
  %or.cond5 = or i1 %i.cm, %i.cl
  br i1 %or.cond5, label %bb.l, label %.thread155

bb.l:                                             ; preds = %bb.k
  %.0113.in = icmp eq i64 %.1, %.pn
  %i.cn = icmp eq i64 %.0151, %i.bz
  %i.co = icmp eq i32 %i.ca, 1
  %i.cp = select i1 %i.cn, i1 true, i1 %i.co
  %i.cq = select i1 %.0113.in, i1 %i.cp, i1 false ; 2 uses
  %or.cond7 = select i1 %i.ax, i1 %i.cq, i1 false
  br i1 %or.cond7, label %bb.x, label %.thread155

.thread155:                                       ; preds = %bb.k, %bb.l
  %i.cr = phi i1 [ %i.cq, %bb.l ], [ false, %bb.k ] ; 2 uses
  %i.cs = mul nsw i64 %i.by, %i.bv
  %i.ct = sext i32 %i.ca to i64
  %i.cu = mul nsw i64 %i.cs, %i.ct                ; 3 uses
  %i.cv = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cu, %i.cw                    ; 3 uses
  %i.cy = mul i64 %i.c, %i.cu                     ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread155
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.cy)
  %i.cz = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %21, i64 1
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.dd = load ptr, ptr %12, align 8, !tbaa !151
  br label %bb.x

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.0114170 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #2
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv
  %i.dg = load i64, ptr %i.df, align 4
  store i64 %i.dg, ptr %21, align 8
  %i.dh = load i32, ptr %i.z, align 4, !tbaa !150
  %narrow.i125 = call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %spec.select.i126 = zext nneg i32 %narrow.i125 to i64
  %i.di = load i8, ptr %i.x, align 1, !tbaa !148
  %i.dj = zext i8 %i.di to i64
  %i.dk = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %19) #2
  %i.dl = mul nuw nsw i64 %indvars.iv, %i.dj
  %i.dm = mul i64 %i.dl, %i.dk
  %i.dn = mul i64 %i.dm, %spec.select.i126
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 %i.dn
  %.sroa.027.0.copyload = load i64, ptr %19, align 8
  %i.dp = load ptr, ptr %12, align 8, !tbaa !151
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.0114170
  %.sroa.026.0.copyload = load i64, ptr %21, align 8
  %i.dr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef 1, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.ca, ptr noundef %i.do, i64 %.sroa.027.0.copyload, i64 noundef %.1, i64 noundef %.0150, i64 noundef %.0151, ptr noundef nonnull %i.dq, i64 %.sroa.026.0.copyload, i64 noundef %i.c, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808) ; 0 uses
  %i.ds = load i32, ptr %i.db, align 4, !tbaa !150
  %narrow.i127 = call i32 @llvm.smax.i32(i32 %i.ds, i32 1)
  %spec.select.i128 = zext nneg i32 %narrow.i127 to i64
  %i.dt = load i8, ptr %i.dc, align 1, !tbaa !148
  %i.du = zext i8 %i.dt to i64
  %i.dv = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %21) #2
  %i.dw = mul i64 %i.dv, %i.du
  %i.dx = mul i64 %i.dw, %spec.select.i128
  %i.dy = add i64 %i.dx, %.0114170
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dz = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next, %i.ea
  br i1 %i.eb, label %bb.n, label %._crit_edge, !llvm.loop !153

bb.o:                                             ; preds = %.thread155
  %i.ec = mul i64 %i.ay, %i.cu
  %i.ed = add i64 %i.ec, 3
  %i.ee = and i64 %i.ed, -4
  %i.ef = select i1 %i.cr, i64 0, i64 %i.ee       ; 3 uses
  %i.eg = shl i64 %i.cx, 2                        ; 2 uses
  %.not119 = icmp eq i32 %13, 0
  br i1 %.not119, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eh = load i32, ptr %i.z, align 4, !tbaa !150
  %narrow.i129 = call i32 @llvm.smax.i32(i32 %i.eh, i32 1)
  %spec.select.i130 = zext nneg i32 %narrow.i129 to i64
  %i.ei = load i8, ptr %i.x, align 1, !tbaa !148
  %i.ej = zext i8 %i.ei to i64
  %i.ek = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %19) #2
  %i.el = mul i64 %i.ek, %i.ej
  %i.em = mul i64 %i.el, %spec.select.i130
  %i.en = icmp ugt i64 %i.em, 1
  br i1 %i.en, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !154
  %i.eq = icmp eq i8 %i.ep, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.er = phi i1 [ false, %bb.p ], [ false, %bb.o ], [ %i.eq, %bb.q ] ; 2 uses
  %i.es = add i64 %i.eg, %i.ef                    ; 2 uses
  %i.et = add i64 %i.es, %i.cy
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.et)
  br i1 %i.cr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.ev = load ptr, ptr %12, align 8, !tbaa !151
  %.sroa.015.0.copyload = load i64, ptr %19, align 8
  %i.ew = call noundef ptr @_ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE(ptr noundef %8, i32 noundef %i.eu, i64 noundef %.1, i64 noundef %.0150, i64 noundef %.0151, ptr noundef nonnull %i.ev, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.ca, i64 %.sroa.015.0.copyload)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0112 = phi ptr [ %8, %bb.r ], [ %i.ew, %bb.s ] ; 4 uses
  br i1 %i.ax, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = load i8, ptr %19, align 8, !tbaa !147
  %i.ey = icmp eq i8 %i.ex, 11
  %i.ez = load i8, ptr %i.x, align 1
  %i.fa = icmp eq i8 %i.ez, 1
  %or.cond.i131 = select i1 %i.ey, i1 %i.fa, i1 false
  %i.fb = load i32, ptr %i.z, align 4
  %.not.i132 = icmp eq i32 %i.fb, 0
  %or.cond166 = select i1 %or.cond.i131, i1 %.not.i132, i1 false
  br i1 %or.cond166, label %bb.v, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit133.thread

bb.v:                                             ; preds = %bb.u
  br i1 %i.er, label %.thread157, label %.thread161

.thread157:                                       ; preds = %bb.v
  %i.fc = load ptr, ptr %12, align 8, !tbaa !151
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ef ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 1 %.0112, i64 %i.eg, i1 false)
  br label %bb.w

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit133.thread: ; preds = %bb.u
  %i.fe = load ptr, ptr %12, align 8, !tbaa !151
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ef
  %i.fg = trunc i64 %i.cx to i32
  %.sroa.012.0.copyload = load i64, ptr %19, align 8
  %i.fh = call noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef %.0112, ptr noundef nonnull %i.ff, i32 noundef %i.fg, i64 %.sroa.012.0.copyload) ; 2 uses
  br i1 %i.er, label %bb.w, label %.thread161

bb.w:                                             ; preds = %.thread157, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit133.thread
  %.0115159 = phi ptr [ %i.fd, %.thread157 ], [ %i.fh, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit133.thread ] ; 2 uses
  %i.fi = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store ptr @.str.7, ptr %17, align 8, !tbaa !75
  %i.fl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 18, ptr %i.fl, align 8, !tbaa !77
  %i.fm = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_19ImageSpec12getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPvb(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull dead_on_return %17, i64 263, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  %.pre.i.sroa.speculate.load.true = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.fn = sub nsw i32 8, %.pre.i.sroa.speculate.load.true
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.fq = mul nsw i64 %i.fk, %i.bv                ; 2 uses
  %i.fr = mul nsw i64 %i.fq, %i.by
  %i.fs = sitofp i32 %i.fo to float
  %i.ft = fdiv float %i.fs, 2.550000e+02
  %i.fu = select i1 %i.fm, float %i.ft, float f0x3B808081
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !155
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !156
  call void @_ZN11OpenImageIO4v3_110add_ditherEiiiiPflllfiijiiii(i32 noundef %i.fp, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.ca, ptr noundef %.0115159, i64 noundef %i.fk, i64 noundef %i.fq, i64 noundef %i.fr, float noundef %i.fu, i32 noundef %i.fw, i32 noundef %i.fy, i32 noundef %13, i32 noundef 0, i32 noundef %14, i32 noundef %15, i32 noundef %16)
  br label %.thread161

.thread161:                                       ; preds = %bb.v, %bb.w, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit133.thread
  %.0115160 = phi ptr [ %.0115159, %bb.w ], [ %i.fh, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit133.thread ], [ %.0112, %bb.v ]
  %i.fz = load ptr, ptr %12, align 8, !tbaa !151
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.es
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload = load i64, ptr %i.gb, align 8
  %i.gc = call noundef ptr @_ZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef %.0115160, ptr noundef nonnull %i.ga, i64 noundef %i.cx, i64 %.sroa.0.0.copyload)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.t, %.thread161, %bb.l
  %.2 = phi ptr [ %8, %bb.l ], [ %i.dd, %._crit_edge ], [ %i.gc, %.thread161 ], [ %.0112, %bb.t ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput14to_native_tileENS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.g = tail call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput19to_native_rectangleEiiiiiiNS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0, i32 noundef %i.b, i32 noundef 0, i32 noundef %i.d, i32 noundef 0, i32 noundef %.sroa.speculated, i64 %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !151    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !158
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !157
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #43
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #41 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !34
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #39
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !151
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !157
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !158
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !157
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare noundef ptr @_ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64) local_unnamed_addr #13

declare noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef, ptr noundef, i32 noundef, i64) local_unnamed_addr #13

declare void @_ZN11OpenImageIO4v3_110add_ditherEiiiiPflllfiijiiii(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

declare noundef ptr @_ZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef, ptr noundef, i64 noundef, i64) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZN11OpenImageIO4v3_111ImageOutput9to_nativeEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEERSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %8, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput19to_native_rectangleEiiiiiiNS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7, ptr noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext true) #2
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !3
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64
  %i.t = mul i64 %i.j, %i.m
  %i.u = mul i64 %i.t, %i.p
  %i.v = mul i64 %i.u, %i.s
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.v, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescEPKvlllPFbPvfES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %9 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 8 uses
  %10 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  store i64 %1, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  store ptr @.str.8, ptr %11, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 24, ptr %i.a, align 8, !tbaa !77
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %10, ptr noundef nonnull dead_on_return %11)
  %i.b = and i64 %1, 65535
  %or.cond.i = icmp eq i64 %i.b, 256
  %i.c = lshr i64 %1, 32                          ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  %or.cond = and i1 %or.cond.i, %.not.i
  br i1 %or.cond, label %bb.b, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.d, i1 noundef zeroext true) #2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !109
  br label %bb.c

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.a
  %i.f = lshr i64 %1, 8
  %i.g = trunc nuw i64 %i.c to i32
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.h = and i64 %i.f, 255
  %i.i = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %9) #2
  %i.j = mul i64 %i.i, %i.h
  %i.k = mul i64 %i.j, %spec.select.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !109  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.k, %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.b
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.m, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ]
  %i.q = phi i64 [ %i.e, %bb.b ], [ %i.o, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ]
  %i.r = icmp eq i64 %3, -9223372036854775808
  %spec.select = select i1 %i.r, i64 %i.q, i64 %3 ; 2 uses
  %.sroa.072.0.copyload = load i64, ptr %9, align 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.072.0.copyload, ptr %8, align 8
  %i.x = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %8) #2
  %i.y = icmp eq i64 %spec.select, -9223372036854775808
  br i1 %i.y, label %bb.d, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

bb.d:                                             ; preds = %bb.c
  %i.z = lshr i64 %.sroa.072.0.copyload, 8
  %i.aa = lshr i64 %.sroa.072.0.copyload, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = and i64 %i.z, 255
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.ab, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ad = sext i32 %i.p to i64
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = mul i64 %i.ae, %spec.select.i.i
  %i.ag = mul i64 %i.af, %i.x
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit: ; preds = %bb.d, %bb.c
  %.1174 = phi i64 [ %i.ag, %bb.d ], [ %spec.select, %bb.c ] ; 6 uses
  %i.ah = icmp eq i64 %4, -9223372036854775808
  %i.ai = sext i32 %i.u to i64
  %i.aj = mul nsw i64 %.1174, %i.ai
  %.0175 = select i1 %i.ah, i64 %i.aj, i64 %4     ; 10 uses
  %i.ak = icmp eq i64 %5, -9223372036854775808
  %i.al = sext i32 %i.w to i64
  %i.am = mul nsw i64 %.0175, %i.al
  %.0176 = select i1 %i.ak, i64 %i.am, i64 %5     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr @.str.9, ptr %12, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 10, ptr %i.an, align 8, !tbaa !77
  %i.ao = load ptr, ptr %0, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.t, align 4, !tbaa !78
  %i.at = load i32, ptr %i.v, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !133
  %.sroa.069.0.copyload = load i64, ptr %9, align 8
  %i.aw = load ptr, ptr %0, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0, i32 noundef %i.as, i32 noundef 0, i32 noundef %i.at, i32 noundef 0, i32 noundef %i.av, i64 %.sroa.069.0.copyload, ptr noundef %2, i64 noundef %.1174, i64 noundef %.0175, i64 noundef %.0176)
          to label %.loopexit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.h:                                             ; preds = %bb.e
  %.not126 = icmp eq ptr %6, null                 ; 4 uses
  br i1 %.not126, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = invoke noundef zeroext i1 %6(ptr noundef %7, float noundef 0.000000e+00)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bb, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %.thread196, %bb.m, %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !130
  %.not127 = icmp eq i32 %i.be, 0
  br i1 %.not127, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr @.str.10, ptr %13, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 5, ptr %i.bf, align 8, !tbaa !77
  %i.bg = load ptr, ptr %0, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %13)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %.not128 = icmp eq i32 %i.bj, 0
  br i1 %.not128, label %bb.s, label %.preheader203

.preheader203:                                    ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !133 ; 2 uses
  %.not134218 = icmp sgt i32 %i.bl, 0
  br i1 %.not134218, label %.lr.ph222, label %.thread183

.lr.ph222:                                        ; preds = %.preheader203
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.bq = load i32, ptr %i.v, align 8, !tbaa !111 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph222.split.preheader, label %.thread183

.lr.ph222.split.preheader:                        ; preds = %.lr.ph222
  %.pre272 = load i32, ptr %i.bn, align 8, !tbaa !129
  br label %.lr.ph222.split

.lr.ph222.split:                                  ; preds = %.lr.ph222.split.preheader, %._crit_edge
  %i.bs = phi i32 [ %i.eh, %._crit_edge ], [ %i.bq, %.lr.ph222.split.preheader ] ; 4 uses
  %i.bt = phi i32 [ %i.ei, %._crit_edge ], [ %.pre272, %.lr.ph222.split.preheader ]
  %i.bu = phi i32 [ %i.ek, %._crit_edge ], [ %i.bl, %.lr.ph222.split.preheader ]
  %.0109221 = phi i8 [ %.1110.lcssa, %._crit_edge ], [ 1, %.lr.ph222.split.preheader ] ; 3 uses
  %.0118219 = phi i32 [ %i.ej, %._crit_edge ], [ 0, %.lr.ph222.split.preheader ] ; 6 uses
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !136 ; 2 uses
  %i.bw = add nsw i32 %i.bv, %.0118219
  %i.bx = add nsw i32 %i.bw, %i.bt
  %i.by = add nsw i32 %i.bv, %i.bu
  %.sroa.speculated155 = call i32 @llvm.smin.i32(i32 %i.by, i32 %i.bx) ; 2 uses
  %.not133214 = icmp sgt i32 %i.bs, 0
  br i1 %.not133214, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph222.split
  %i.bz = sext i32 %.0118219 to i64
  %i.ca = mul nsw i64 %.0176, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca ; 2 uses
  %.pre274 = load i32, ptr %i.bp, align 4, !tbaa !128 ; 2 uses
  br i1 %.not126, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cc = trunc nuw i8 %.0109221 to i1
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %i.cd = phi i32 [ %i.cw, %bb.o ], [ %.pre274, %.lr.ph ]
  %i.ce = phi i32 [ %i.cy, %bb.o ], [ %i.bs, %.lr.ph ]
  %.1110216.us = phi i8 [ %i.cv, %bb.o ], [ %.0109221, %.lr.ph ]
  %.0119215.us = phi i32 [ %i.cx, %bb.o ], [ 0, %.lr.ph ] ; 3 uses
  %i.cf = load i32, ptr %i.bo, align 4, !tbaa !135 ; 2 uses
  %i.cg = add nsw i32 %i.cf, %.0119215.us         ; 2 uses
  %i.ch = add nsw i32 %i.cg, %i.cd
  %i.ci = add nsw i32 %i.cf, %i.ce
  %.sroa.speculated150.us = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.ch)
  %i.cj = sext i32 %.0119215.us to i64
  %i.ck = mul nsw i64 %.0175, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.cb, i64 %i.ck
  %i.cm = load i32, ptr %i.s, align 8, !tbaa !134 ; 2 uses
  %i.cn = load i32, ptr %i.t, align 4, !tbaa !78
  %i.co = add nsw i32 %i.cn, %i.cm
  %i.cp = load i32, ptr %i.bm, align 8, !tbaa !136
  %i.cq = add nsw i32 %i.cp, %.0118219
  %.sroa.038.0.copyload.us = load i64, ptr %9, align 8
  %i.cr = load ptr, ptr %0, align 8, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cg, i32 noundef %.sroa.speculated150.us, i32 noundef %i.cq, i32 noundef %.sroa.speculated155, i64 %.sroa.038.0.copyload.us, ptr noundef %i.cl, i64 noundef %.1174, i64 noundef %.0175, i64 noundef %.0176)
          to label %bb.o unwind label %.split.us

bb.o:                                             ; preds = %.lr.ph.split.us
  %i.cv = select i1 %i.cu, i8 %.1110216.us, i8 0  ; 2 uses
  %i.cw = load i32, ptr %i.bp, align 4, !tbaa !128 ; 2 uses
  %i.cx = add nsw i32 %i.cw, %.0119215.us         ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !111 ; 3 uses
  %.not133.us = icmp slt i32 %i.cx, %i.cy
  br i1 %.not133.us, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !159

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.r
  %i.da = phi i32 [ %i.ed, %bb.r ], [ %.pre274, %.lr.ph.split.preheader ]
  %i.db = phi i32 [ %i.ef, %bb.r ], [ %i.bs, %.lr.ph.split.preheader ]
  %.1110216 = phi i1 [ %i.ds, %bb.r ], [ %i.cc, %.lr.ph.split.preheader ]
  %.0119215 = phi i32 [ %i.ee, %bb.r ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.dc = load i32, ptr %i.bo, align 4, !tbaa !135 ; 2 uses
  %i.dd = add nsw i32 %i.dc, %.0119215            ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.da
  %i.df = add nsw i32 %i.dc, %i.db
  %.sroa.speculated150 = call i32 @llvm.smin.i32(i32 %i.df, i32 %i.de)
  %i.dg = sext i32 %.0119215 to i64
  %i.dh = mul nsw i64 %.0175, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.cb, i64 %i.dh
  %i.dj = load i32, ptr %i.s, align 8, !tbaa !134 ; 2 uses
  %i.dk = load i32, ptr %i.t, align 4, !tbaa !78
  %i.dl = add nsw i32 %i.dk, %i.dj
  %i.dm = load i32, ptr %i.bm, align 8, !tbaa !136
  %i.dn = add nsw i32 %i.dm, %.0118219
  %.sroa.038.0.copyload = load i64, ptr %9, align 8
  %i.do = load ptr, ptr %0, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 160
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dd, i32 noundef %.sroa.speculated150, i32 noundef %i.dn, i32 noundef %.sroa.speculated155, i64 %.sroa.038.0.copyload, ptr noundef %i.di, i64 noundef %.1174, i64 noundef %.0175, i64 noundef %.0176)
          to label %bb.p unwind label %.split

bb.p:                                             ; preds = %.lr.ph.split
  %i.ds = select i1 %i.dr, i1 %.1110216, i1 false ; 3 uses
  %i.dt = load i32, ptr %i.v, align 8, !tbaa !111 ; 2 uses
  %i.du = mul nsw i32 %i.dt, %.0118219
  %i.dv = add nsw i32 %i.du, %.0119215
  %i.dw = sitofp i32 %i.dv to float
  %i.dx = load i32, ptr %i.bk, align 4, !tbaa !133
  %i.dy = mul nsw i32 %i.dx, %i.dt
  %i.dz = sitofp i32 %i.dy to float
  %i.ea = fdiv float %i.dw, %i.dz
  %i.eb = invoke noundef zeroext i1 %6(ptr noundef %7, float noundef %i.ea)
          to label %bb.q unwind label %.split

bb.q:                                             ; preds = %bb.p
  br i1 %i.eb, label %.loopexit, label %bb.r

.split:                                           ; preds = %bb.p, %.lr.ph.split
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.ed = load i32, ptr %i.bp, align 4, !tbaa !128 ; 2 uses
  %i.ee = add nsw i32 %i.ed, %.0119215            ; 2 uses
  %i.ef = load i32, ptr %i.v, align 8, !tbaa !111 ; 3 uses
  %.not133 = icmp slt i32 %i.ee, %i.ef
  br i1 %.not133, label %.lr.ph.split, label %._crit_edge.loopexit293, !llvm.loop !159

._crit_edge.loopexit293:                          ; preds = %bb.r
  %i.eg = zext i1 %i.ds to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %._crit_edge.loopexit293, %.lr.ph222.split
  %i.eh = phi i32 [ %i.bs, %.lr.ph222.split ], [ %i.ef, %._crit_edge.loopexit293 ], [ %i.cy, %bb.o ]
  %.1110.lcssa = phi i8 [ %.0109221, %.lr.ph222.split ], [ %i.eg, %._crit_edge.loopexit293 ], [ %i.cv, %bb.o ] ; 2 uses
  %i.ei = load i32, ptr %i.bn, align 8, !tbaa !129 ; 2 uses
  %i.ej = add nsw i32 %i.ei, %.0118219            ; 2 uses
  %i.ek = load i32, ptr %i.bk, align 4, !tbaa !133 ; 2 uses
  %.not134 = icmp slt i32 %i.ej, %i.ek
  br i1 %.not134, label %.lr.ph222.split, label %.thread183, !llvm.loop !160

bb.s:                                             ; preds = %bb.n, %bb.l
  store ptr @.str.11, ptr %14, align 8, !tbaa !75
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 17, ptr %i.el, align 8, !tbaa !77
  %i.em = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %14, i32 noundef 64)
          to label %bb.t unwind label %bb.ac      ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.en = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.s, i1 noundef zeroext true) #2
  %i.eo = trunc i64 %i.en to i32
  %i.ep = sdiv i32 67108864, %i.eo
  %.sroa.speculated145 = call i32 @llvm.smax.i32(i32 %i.ep, i32 1)
  %i.eq = add nsw i32 %i.em, -1
  %.0.i = add nsw i32 %i.eq, %.sroa.speculated145 ; 2 uses
  %i.er = srem i32 %.0.i, %i.em
  %i.es = sub nsw i32 %.0.i, %i.er                ; 6 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.ex = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ew, ptr noundef nonnull dereferenceable(8) @.str.12) #44
  %.not129 = icmp eq i32 %i.ex, 0
  br i1 %.not129, label %bb.v, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

bb.v:                                             ; preds = %bb.u
  store ptr @.str.13, ptr %16, align 8, !tbaa !75
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 17, ptr %i.ey, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !77
  %i.fb = icmp eq i64 %i.fa, 11
  br i1 %i.fb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.w
  %i.fc = load ptr, ptr %15, align 8, !tbaa !75   ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 1
  %i.fe = xor i64 %i.fd, 7598524084642866532
  %i.ff = getelementptr i8, ptr %i.fc, i64 3
  %i.fg = load i64, ptr %i.ff, align 1
  %i.fh = xor i64 %i.fg, 6442239191163168114
  %i.fi = or i64 %i.fe, %i.fh
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %.not.i.i = icmp eq i32 %i.fk, 0
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.w, %bb.u
  %i.fl = phi i1 [ false, %bb.u ], [ false, %bb.w ], [ %.not.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 3 uses
  %i.fm = load i32, ptr %i.v, align 8, !tbaa !111 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.fo = add nsw i32 %i.fm, -1
  %i.fp = sdiv i32 %i.fo, %i.es
  %i.fq = add nsw i32 %i.fp, 1
  br label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %bb.x
  %i.fr = phi i32 [ %i.fq, %bb.x ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit ] ; 2 uses
  %i.fs = add nsw i32 %i.fr, -1
  %i.ft = mul nsw i32 %i.fs, %i.es
  %i.fu = select i1 %i.fl, i32 %i.ft, i32 0       ; 2 uses
  %i.fv = sub nsw i32 0, %i.es
  %i.fw = select i1 %i.fl, i32 %i.fv, i32 %i.es   ; 2 uses
  %i.fx = mul nsw i32 %i.fr, %i.fw
  %.fr249 = freeze i32 %i.fx                      ; 2 uses
  %i.fy = add nsw i32 %i.fu, %.fr249              ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !133 ; 3 uses
  %.not132235 = icmp sgt i32 %i.ga, 0
  br i1 %.not132235, label %.preheader.lr.ph, label %.thread183

.preheader.lr.ph:                                 ; preds = %bb.y
  %.not250 = icmp eq i32 %.fr249, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not250, label %.thread183, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.gd = sext i32 %i.fu to i64                   ; 2 uses
  %i.ge = sext i32 %i.fw to i64                   ; 2 uses
  br i1 %.not126, label %.preheader.us241, label %.preheader

.preheader.us241:                                 ; preds = %.preheader.lr.ph.split, %bb.z
  %i.gf = phi i32 [ %i.gh, %bb.z ], [ %i.ga, %.preheader.lr.ph.split ]
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %bb.z ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %.4113236.us243 = phi i8 [ %.5114.lcssa.us244, %bb.z ], [ 1, %.preheader.lr.ph.split ]
  %i.gg = trunc nuw i8 %.4113236.us243 to i1
  br i1 %i.gg, label %.lr.ph226.us, label %bb.z

bb.z:                                             ; preds = %._crit_edge227.split.us.us, %.preheader.us241
  %i.gh = phi i32 [ %.pre276, %._crit_edge227.split.us.us ], [ %i.gf, %.preheader.us241 ] ; 2 uses
  %.5114.lcssa.us244 = phi i8 [ %i.hd, %._crit_edge227.split.us.us ], [ 0, %.preheader.us241 ] ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %.not132.us245 = icmp slt i64 %indvars.iv.next271, %i.gi
  br i1 %.not132.us245, label %.preheader.us241, label %.thread183, !llvm.loop !162

.lr.ph226.us:                                     ; preds = %.preheader.us241
  %i.gj = mul nsw i64 %.0176, %indvars.iv270
  %i.gk = getelementptr inbounds i8, ptr %2, i64 %i.gj
  %i.gl = trunc nuw nsw i64 %indvars.iv270 to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph226.us
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %bb.ab ], [ %i.gd, %.lr.ph226.us ] ; 3 uses
  %i.gm = load i32, ptr %i.gb, align 4, !tbaa !135 ; 2 uses
  %i.gn = trunc nsw i64 %indvars.iv267 to i32
  %i.go = add nsw i32 %i.gm, %i.gn                ; 2 uses
  %i.gp = add nsw i32 %i.go, %i.es
  %i.gq = load i32, ptr %i.v, align 8, !tbaa !111
  %i.gr = add nsw i32 %i.gq, %i.gm
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.gr, i32 %i.gp)
  %i.gs = mul nsw i64 %.0175, %indvars.iv267
  %i.gt = getelementptr inbounds i8, ptr %i.gk, i64 %i.gs
  %i.gu = load i32, ptr %i.gc, align 8, !tbaa !136
  %i.gv = add nsw i32 %i.gu, %i.gl
  %.sroa.0.0.copyload.us.us = load i64, ptr %9, align 8
  %i.gw = load ptr, ptr %0, align 8, !tbaa !40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.go, i32 noundef %.sroa.speculated.us.us, i32 noundef %i.gv, i64 %.sroa.0.0.copyload.us.us, ptr noundef %i.gt, i64 noundef %.1174, i64 noundef %.0175)
          to label %bb.ab unwind label %.split230.us.split.us ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, %i.ge ; 2 uses
  %i.ha = trunc nsw i64 %indvars.iv.next268 to i32
  %i.hb = icmp ne i32 %i.fy, %i.ha
  %i.hc = and i1 %i.hb, %i.gz
  br i1 %i.hc, label %bb.aa, label %._crit_edge227.split.us.us, !llvm.loop !163

._crit_edge227.split.us.us:                       ; preds = %bb.ab
  %i.hd = zext i1 %i.gz to i8
  %.pre276 = load i32, ptr %i.fz, align 4, !tbaa !133
  br label %bb.z

.split230.us.split.us:                            ; preds = %bb.aa
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.preheader:                                       ; preds = %.preheader.lr.ph.split, %bb.ai
  %i.hf = phi i32 [ %i.ir, %bb.ai ], [ %i.ga, %.preheader.lr.ph.split ]
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %bb.ai ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %.4113236 = phi i8 [ %.5114.lcssa, %bb.ai ], [ 1, %.preheader.lr.ph.split ]
  %i.hg = trunc nuw i8 %.4113236 to i1
  br i1 %i.hg, label %.lr.ph226, label %bb.ai

.lr.ph226:                                        ; preds = %.preheader
  %i.hh = mul nsw i64 %.0176, %indvars.iv265
  %i.hi = getelementptr inbounds i8, ptr %2, i64 %i.hh
  %i.hj = trunc nuw nsw i64 %indvars.iv265 to i32 ; 2 uses
  br label %bb.ae

bb.ac:                                            ; preds = %bb.s
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ad:                                            ; preds = %bb.v, %bb.t
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ae:                                            ; preds = %.lr.ph226, %bb.ah
  %indvars.iv = phi i64 [ %i.gd, %.lr.ph226 ], [ %indvars.iv.next, %bb.ah ] ; 3 uses
  %i.hm = load i32, ptr %i.gb, align 4, !tbaa !135 ; 2 uses
  %i.hn = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.ho = add nsw i32 %i.hm, %i.hn                ; 2 uses
  %i.hp = add nsw i32 %i.ho, %i.es
  %i.hq = load i32, ptr %i.v, align 8, !tbaa !111
  %i.hr = add nsw i32 %i.hq, %i.hm
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.hr, i32 %i.hp)
  %i.hs = mul nsw i64 %.0175, %indvars.iv
  %i.ht = getelementptr inbounds i8, ptr %i.hi, i64 %i.hs
  %i.hu = load i32, ptr %i.gc, align 8, !tbaa !136
  %i.hv = add nsw i32 %i.hu, %i.hj
  %.sroa.0.0.copyload = load i64, ptr %9, align 8
  %i.hw = load ptr, ptr %0, align 8, !tbaa !40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 144
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke noundef zeroext i1 %i.hy(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.ho, i32 noundef %.sroa.speculated, i32 noundef %i.hv, i64 %.sroa.0.0.copyload, ptr noundef %i.ht, i64 noundef %.1174, i64 noundef %.0175)
          to label %bb.af unwind label %.split230 ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.ia = load i32, ptr %i.v, align 8, !tbaa !111 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_111ImageOutput20copy_to_image_bufferEiiiiiiNS0_8TypeDescEPKvlllPvS2_:bb.a
_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.a, %bb.b
  %.in125 = phi i64 [ %13, %bb.a ], [ %i.i, %bb.b ]
  %.in = phi i64 [ %i.e, %bb.a ], [ %i.j, %bb.b ]
  %i.k = lshr i64 %.in125, 8
  %i.l = trunc nuw i64 %.in to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !182
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i64 %7, ptr %14, align 8
  %i.s = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %14) #2
  %i.t = icmp eq i64 %9, -9223372036854775808
  br i1 %i.t, label %bb.c, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.u = lshr i64 %7, 8
  %i.v = lshr i64 %7, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = and i64 %i.u, 255
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.y = sext i32 %i.n to i64
  %i.z = mul nuw nsw i64 %i.x, %spec.select.i.i
  %i.aa = mul i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, %i.s
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit: ; preds = %bb.c, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %9, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ] ; 4 uses
  %i.ac = icmp eq i64 %10, -9223372036854775808
  %i.ad = sext i32 %i.p to i64
  %i.ae = mul nsw i64 %.1, %i.ad
  %.1112 = select i1 %i.ac, i64 %i.ae, i64 %10    ; 4 uses
  %i.af = icmp eq i64 %11, -9223372036854775808
  %i.ag = sext i32 %i.r to i64
  %i.ah = mul nsw i64 %.1112, %i.ag
  %.1114 = select i1 %i.af, i64 %i.ah, i64 %11    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !108
  %i.aj = sext i32 %i.ai to i64
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.ak = and i64 %i.k, 255
  %i.al = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %16) #2
  %i.am = mul nsw i64 %i.ak, %i.aj
  %i.an = mul i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, %spec.select.i           ; 3 uses
  %i.ap = load i32, ptr %i.o, align 4, !tbaa !182
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.ao, %i.aq                ; 3 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !125
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.ar, %i.at                ; 2 uses
  %i.av = load i32, ptr %i.a, align 8, !tbaa !120
  %i.aw = sub nsw i32 %1, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.ao, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !121
  %i.bb = sub nsw i32 %3, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.ar, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !123
  %i.bg = sub nsw i32 %5, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.au, %i.bh
  %i.bj = sub nsw i32 %2, %1                      ; 4 uses
  %i.bk = sub nsw i32 %4, %3                      ; 4 uses
  %i.bl = sub nsw i32 %6, %5                      ; 4 uses
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %i.bn = sext i32 %i.bk to i64                   ; 2 uses
  %i.bo = mul nsw i64 %i.bn, %i.bm
  %i.bp = sext i32 %i.bl to i64
  %i.bq = mul i64 %i.bo, %i.bp
  store ptr @.str.19, ptr %17, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.br, align 8, !tbaa !77
  %i.bs = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull dead_on_return %17, i32 noundef 0)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_18TypeDesc17is_floating_pointEv(ptr noundef nonnull align 4 dereferenceable(8) %15) #2
  %i.bu = load i8, ptr %16, align 8
  %i.bv = icmp eq i8 %i.bu, 2
  %or.cond = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bw = load i32, ptr %i.m, align 4, !tbaa !108 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 2                    ; 5 uses
  %i.bz = mul i64 %i.bq, %i.by                    ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 4611686018427387903
  %i.cb = shl i64 %i.bz, 2
  %i.cc = select i1 %i.ca, i64 -1, i64 %i.cb
  %i.cd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #41
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit unwind label %bb.j ; 6 uses

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.f
  %.sroa.05.0.copyload = load i64, ptr %15, align 8
  %i.ce = mul nsw i64 %i.by, %i.bm                ; 4 uses
  %i.cf = mul nsw i64 %i.ce, %i.bn                ; 3 uses
  %i.cg = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef %i.bw, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef %8, i64 %.sroa.05.0.copyload, i64 noundef %.1, i64 noundef %.1112, i64 noundef %.1114, ptr noundef nonnull %i.cd, i64 267, i64 noundef %i.by, i64 noundef %i.ce, i64 noundef %i.cf)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  store i64 267, ptr %15, align 8
  store ptr @.str.20, ptr %18, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 20, ptr %i.ch, align 8, !tbaa !77
  %i.ci = invoke noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull dead_on_return %18, float noundef f0x3B808081)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %i.m, align 4, !tbaa !108
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !194
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !195
  invoke void @_ZN11OpenImageIO4v3_110add_ditherEiiiiPflllfiijiiii(i32 noundef %i.cj, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef nonnull %i.cd, i64 noundef %i.by, i64 noundef %i.ce, i64 noundef %i.cf, float noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.bs, i32 noundef 0, i32 noundef %1, i32 noundef %3, i32 noundef %5)
          to label %bb.k unwind label %.thread

bb.i:                                             ; preds = %bb.k, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.sroa.097.0 = phi ptr [ %.sroa.097.2, %bb.k ], [ null, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit ]
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.f
  %.sroa.097.1 = phi ptr [ %i.cd, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ null, %bb.f ]
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.thread:                                          ; preds = %bb.g, %bb.h
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92

bb.k:                                             ; preds = %bb.h, %bb.e, %bb.d
  %.sroa.097.2 = phi ptr [ null, %bb.d ], [ %i.cd, %bb.h ], [ null, %bb.e ] ; 3 uses
  %.0113 = phi i64 [ %.1114, %bb.d ], [ %i.cf, %bb.h ], [ %.1114, %bb.e ]
  %.0111 = phi i64 [ %.1112, %bb.d ], [ %i.ce, %bb.h ], [ %.1112, %bb.e ]
  %.0110 = phi i64 [ %.1, %bb.d ], [ %i.by, %bb.h ], [ %.1, %bb.e ]
  %.0 = phi ptr [ %8, %bb.d ], [ %i.cd, %bb.h ], [ %8, %bb.e ]
  %i.cr = load i32, ptr %i.m, align 4, !tbaa !108
  %.sroa.04.0.copyload = load i64, ptr %15, align 8
  %i.cs = getelementptr i8, ptr %12, i64 %i.ay
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.bd
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bi
  %.sroa.0.0.copyload = load i64, ptr %16, align 8
  %i.cv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef %i.cr, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef %.0, i64 %.sroa.04.0.copyload, i64 noundef %.0110, i64 noundef %.0111, i64 noundef %.0113, ptr noundef %i.cu, i64 %.sroa.0.0.copyload, i64 noundef %i.ao, i64 noundef %i.ar, i64 noundef %i.au)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not.i90 = icmp eq ptr %.sroa.097.2, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.sroa.097.2) #39
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret i1 %i.cv

bb.m:                                             ; preds = %bb.j, %bb.i
  %.sroa.097.3 = phi ptr [ %.sroa.097.0, %bb.i ], [ %.sroa.097.1, %bb.j ] ; 2 uses
  %.pn88 = phi { ptr, i32 } [ %i.co, %bb.i ], [ %i.cp, %bb.j ] ; 2 uses
  %.not.i91 = icmp eq ptr %.sroa.097.3, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit93, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92: ; preds = %.thread, %bb.m
  %.pn88119 = phi { ptr, i32 } [ %i.cq, %.thread ], [ %.pn88, %bb.m ]
  %.sroa.097.3118 = phi ptr [ %i.cd, %.thread ], [ %.sroa.097.3, %bb.m ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.097.3118) #39
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit93

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit93: ; preds = %bb.m, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92
  %.pn88120 = phi { ptr, i32 } [ %.pn88, %bb.m ], [ %.pn88119, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92 ]
  resume { ptr, i32 } %.pn88120
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_18TypeDesc17is_floating_pointEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

declare noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput25copy_tile_to_image_bufferEiiiNS0_8TypeDescEPKvlllPvS2_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef %9, i64 %10) local_unnamed_addr #5 align 2 {
bb.a:
  %11 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not29 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not29
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.21)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %4, ptr %11, align 8
  %i.h = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %11) #2
  %i.i = icmp eq i64 %6, -9223372036854775808
  br i1 %i.i, label %bb.d, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %4, 8
  %i.k = lshr i64 %4, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = and i64 %i.j, 255
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.n = sext i32 %i.g to i64
  %i.o = mul nuw nsw i64 %i.m, %spec.select.i.i
  %i.p = mul i64 %i.o, %i.n
  %i.q = mul i64 %i.p, %i.h
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit: ; preds = %bb.d, %bb.c
  %.052 = phi i64 [ %i.q, %bb.d ], [ %6, %bb.c ]  ; 2 uses
  %i.r = icmp eq i64 %7, -9223372036854775808
  %i.s = sext i32 %i.b to i64
  %i.t = mul nsw i64 %.052, %i.s
  %.053 = select i1 %i.r, i64 %i.t, i64 %7        ; 2 uses
  %i.u = icmp eq i64 %8, -9223372036854775808
  %i.v = sext i32 %i.d to i64
  %i.w = mul nsw i64 %.053, %i.v
  %.054 = select i1 %i.u, i64 %i.w, i64 %8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.x = load i32, ptr %i.a, align 8, !tbaa !119
  %i.y = add nsw i32 %i.x, %1
  %i.z = load i32, ptr %i.e, align 8, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !182
  %i.ac = add nsw i32 %i.ab, %i.z
  %.sroa.speculated41 = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.y)
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !122
  %i.ae = add nsw i32 %i.ad, %2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !125
  %i.aj = add nsw i32 %i.ai, %i.ag
  %.sroa.speculated36 = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ae)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !124
  %i.am = add nsw i32 %i.al, %3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !123
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !126
  %i.ar = add nsw i32 %i.aq, %i.ao
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.am)
  %i.as = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput20copy_to_image_bufferEiiiiiiNS0_8TypeDescEPKvlllPvS2_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %.sroa.speculated41, i32 noundef %2, i32 noundef %.sroa.speculated36, i32 noundef %3, i32 noundef %.sroa.speculated, i64 %4, ptr noundef %5, i64 noundef %.052, i64 noundef %.053, i64 noundef %.054, ptr noundef %9, i64 %10)
  br label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit, %bb.b
  %.0 = phi i1 [ %i.as, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput9has_errorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit, !prof !140

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init()
  br label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit

_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit: ; preds = %bb.a, %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 4 uses
  %.0813.i.i.i.i.i = and i64 %i.h, %i.g           ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.0813.i.i.i.i.i ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !8
  %.not14.i.i.i.i.i = icmp slt i16 %i.l, 0
  br i1 %.not14.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit, %bb.c
  %i.m = phi ptr [ %i.s, %bb.c ], [ %i.k, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit ] ; 2 uses
  %.0816.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.c ], [ %.0813.i.i.i.i.i, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit ]
  %.015.i.i.i.i.i = phi i16 [ %i.r, %bb.c ], [ 0, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !102
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit, label %bb.c, !prof !197

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = add i64 %.0816.i.i.i.i.i, 1
  %i.r = add i16 %.015.i.i.i.i.i, 1               ; 2 uses
  %.08.i.i.i.i.i = and i64 %i.q, %i.h             ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.08.i.i.i.i.i ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !8
  %.not.i.i.i.i.i = icmp sgt i16 %i.r, %i.t
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !198

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !199
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.v
  br label %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit

_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.09.0.i.i.i.i.i = phi ptr [ %i.w, %._crit_edge.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.x = load i8, ptr @__tls_guard, align 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit2, !prof !140

bb.d:                                             ; preds = %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init()
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit2

_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit2: ; preds = %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit, %bb.d
  %i.aa = phi ptr [ %i.j, %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit ], [ %.pre, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = icmp eq ptr %.sroa.09.0.i.i.i.i.i, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit2
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !106
  %i.ah = icmp ne i64 %i.ag, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit2, %bb.e
  %.0 = phi i1 [ %i.ah, %bb.e ], [ false, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit2 ]
  ret i1 %.0
}

; Function Attrs: uwtable
define void @_ZNK11OpenImageIO4v3_111ImageOutput8geterrorB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, i1 noundef zeroext %2) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !106
  store i8 0, ptr %i.a, align 8, !tbaa !34
  %i.c = load i8, ptr @__tls_guard, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit, !prof !140

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init()
  br label %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit

_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !196  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 4 uses
  %.0813.i.i.i.i.i = and i64 %i.j, %i.i           ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.0813.i.i.i.i.i ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !8
  %.not14.i.i.i.i.i = icmp slt i16 %i.n, 0
  br i1 %.not14.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit, %bb.c
  %i.o = phi ptr [ %i.u, %bb.c ], [ %i.m, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit ] ; 2 uses
  %.0816.i.i.i.i.i = phi i64 [ %.08.i.i.i.i.i, %bb.c ], [ %.0813.i.i.i.i.i, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit ]
  %.015.i.i.i.i.i = phi i16 [ %i.t, %bb.c ], [ 0, %_ZTWN11OpenImageIO4v3_1L21output_error_messagesB5cxx11E.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !102
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKm.exit, label %bb.c, !prof !197
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm:bb.a
  br i1 %.not21, label %bb.p, label %thread-pre-split

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #2
  %i.ck = load ptr, ptr %0, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.cn, ptr %i.h, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #2
  br label %bb.bj

thread-pre-split:                                 ; preds = %bb.o
  %.pr = load i32, ptr %i.cc, align 4, !tbaa !133
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.n
  %i.co = phi i32 [ %.pr, %thread-pre-split ], [ %i.cd, %bb.n ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !233
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !234
  %i.ct = sub nsw i32 %i.cq, %i.cs                ; 2 uses
  %i.cu = icmp sgt i32 %i.co, %i.ct
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #2
  %i.cv = load ptr, ptr %0, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #2
  store i32 %i.ct, ptr %i.j, align 4, !tbaa !3
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciiiiEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #2
  br label %bb.bj

bb.s:                                             ; preds = %bb.q
  %i.cz = icmp slt i32 %i.co, 1
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.cc, align 4, !tbaa !133
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !109 ; 4 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !235
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !236
  %i.dh = sub nsw i32 %i.de, %i.dg
  %i.di = icmp sgt i32 %i.db, %i.dh
  br i1 %i.di, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = icmp ne i32 %i.db, 1
  %i.dk = and i64 %4, 1
  %.not22 = icmp eq i64 %i.dk, 0
  %or.cond = or i1 %.not22, %i.dj
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = icmp ne i32 %i.db, 2
  %i.dm = and i64 %4, 2
  %.not23 = icmp eq i64 %i.dm, 0
  %or.cond38 = or i1 %.not23, %i.dl
  br i1 %or.cond38, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #2
  %i.dn = load ptr, ptr %0, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.dq, ptr %i.k, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #2
  br label %bb.bj

bb.z:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146 ; 2 uses
  %i.dt = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %.not24 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not24, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = call fastcc noundef zeroext i1 @"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEEZNS3_11ImageOutput10check_openENSA_8OpenModeERKNS3_9ImageSpecENS3_3ROIEmE3$_0EbT_SH_T0_"(ptr %i.dt, ptr %i.ds, ptr %0)
  br i1 %i.du, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i, label %bb.ab

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.aa
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !146
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.6, ptr %9, align 8, !tbaa !75
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 14, ptr %i.dv, align 8, !tbaa !77
  %i.dw = load ptr, ptr %0, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %9)
  %.not25 = icmp eq i32 %i.dz, 0
  br i1 %.not25, label %bb.ac, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #2
  %i.ea = load ptr, ptr %0, align 8, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.ed, ptr %i.l, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #2
  br label %bb.bj

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ab, %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !237
  %i.eg = icmp slt i32 %i.ef, 1
  br i1 %i.eg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  %i.eh = load i32, ptr %i.aw, align 4, !tbaa !78
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !237
  %i.ei = load i32, ptr %i.ak, align 8, !tbaa !134
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !238
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !239
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.en = load i32, ptr %i.bd, align 8, !tbaa !111
  store i32 %i.en, ptr %i.ek, align 8, !tbaa !239
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !135
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !240
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !241
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eu = load i32, ptr %i.cc, align 4, !tbaa !133
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !241
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !242
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !243, !range !174, !noundef !175
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  store ptr @.str.40, ptr %10, align 8, !tbaa !75
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.fb, align 8, !tbaa !77
  %i.fc = load ptr, ptr %0, align 8, !tbaa !40
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef i32 %i.fe(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %10)
  %.not26 = icmp eq i32 %i.ff, 0
  br i1 %.not26, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #2
  %i.fg = load ptr, ptr %0, align 8, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef ptr %i.fi(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.fj, ptr %i.m, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.bj

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !130
  %.not27 = icmp eq i32 %i.fl, 0
  br i1 %.not27, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !128
  %.not28 = icmp eq i32 %i.fn, 0
  br i1 %.not28, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr @.str.10, ptr %11, align 8, !tbaa !75
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 5, ptr %i.fo, align 8, !tbaa !77
  %i.fp = load ptr, ptr %0, align 8, !tbaa !40
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %11)
  %.not29 = icmp eq i32 %i.fs, 0
  br i1 %.not29, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #2
  %i.ft = load ptr, ptr %0, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.fw, ptr %i.n, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  br label %bb.bj

bb.ap:                                            ; preds = %bb.an
  %i.fx = load i32, ptr %i.fk, align 8, !tbaa !130
  %i.fy = icmp slt i32 %i.fx, 1
  br i1 %i.fy, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !128
  %i.gb = icmp slt i32 %i.ga, 1
  br i1 %i.gb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !129
  %i.ge = icmp slt i32 %i.gd, 1
  br i1 %i.ge, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #2
  %i.gf = load ptr, ptr %0, align 8, !tbaa !40
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call noundef ptr %i.gh(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.gi, ptr %i.o, align 8, !tbaa !227
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciiiEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.fk, ptr noundef nonnull align 4 dereferenceable(4) %i.gj, ptr noundef nonnull align 4 dereferenceable(4) %i.gk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  br label %bb.bj

bb.at:                                            ; preds = %bb.ar, %bb.am
  %i.gl = load i32, ptr %i.ak, align 8, !tbaa !134
  %.not30 = icmp eq i32 %i.gl, 0
  br i1 %.not30, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !135
  %.not31 = icmp eq i32 %i.gn, 0
  br i1 %.not31, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !136
  %.not32 = icmp eq i32 %i.gp, 0
  br i1 %.not32, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  store ptr @.str.44, ptr %12, align 8, !tbaa !75
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 6, ptr %i.gq, align 8, !tbaa !77
  %i.gr = load ptr, ptr %0, align 8, !tbaa !40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
  %.not33 = icmp eq i32 %i.gu, 0
  br i1 %.not33, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gv = and i64 %4, 4294967296
  %.not34 = icmp eq i64 %i.gv, 0
  br i1 %.not34, label %.thread60, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #2
  %i.gw = load ptr, ptr %0, align 8, !tbaa !40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef ptr %i.gy(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.gz, ptr %i.p, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  br label %bb.bj

.thread60:                                        ; preds = %bb.ax
  store i32 0, ptr %i.ak, align 8, !tbaa !134
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !135
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.hb, align 8, !tbaa !136
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %.pr42 = load i32, ptr %i.ak, align 8, !tbaa !134
  %i.hc = icmp slt i32 %.pr42, 0
  br i1 %i.hc, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !135
  %i.hd = icmp slt i32 %.pre, 0
  br i1 %i.hd, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.thread60, %bb.ba
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !136
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  store ptr @.str.46, ptr %13, align 8, !tbaa !75
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.hh, align 8, !tbaa !77
  %i.hi = load ptr, ptr %0, align 8, !tbaa !40
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef i32 %i.hk(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %13)
  %.not35 = icmp eq i32 %i.hl, 0
  br i1 %.not35, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.hm = and i64 %4, 4294967296
  %.not36 = icmp eq i64 %i.hm, 0
  br i1 %.not36, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #2
  %i.hn = load ptr, ptr %0, align 8, !tbaa !40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call noundef ptr %i.hp(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.hq, ptr %i.q, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  store i32 0, ptr %i.ak, align 8, !tbaa !134
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !135
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.hs, align 8, !tbaa !136
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bb, %bb.bc, %bb.bf, %bb.av
  store ptr @.str.22, ptr %14, align 8, !tbaa !75
  %i.ht = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.ht, align 8, !tbaa !77
  %i.hu = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList8containsENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull dead_on_return %14, i64 256, i1 noundef zeroext true)
  br i1 %i.hu, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  store ptr @.str.22, ptr %15, align 8, !tbaa !75
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.hv, align 8, !tbaa !77
  %i.hw = load ptr, ptr %0, align 8, !tbaa !40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call noundef i32 %i.hy(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %15)
  %.not37 = icmp eq i32 %i.hz, 0
  br i1 %.not37, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #2
  %i.ia = load ptr, ptr %0, align 8, !tbaa !40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call noundef ptr %i.ic(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.id, ptr %i.r, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.be, %bb.ay, %bb.as, %bb.ao, %bb.ak, %bb.ac, %bb.y, %bb.r, %bb.p, %.thread40, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.r ], [ false, %bb.y ], [ false, %bb.as ], [ false, %bb.c ], [ false, %bb.bi ], [ false, %bb.be ], [ false, %bb.ay ], [ false, %bb.ao ], [ false, %bb.ak ], [ false, %bb.ac ], [ false, %bb.p ], [ false, %.thread40 ], [ false, %bb.e ], [ true, %bb.bh ], [ true, %bb.bg ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.166", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #2, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2, !noalias !244
  %i.b = load ptr, ptr %2, align 8, !tbaa !227, !noalias !244
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 16, !noalias !244
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 12, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2, !noalias !244
  %i.d = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %i.d, ptr %4, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106
  store i64 %i.g, ptr %i.e, align 8, !tbaa !77
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !30     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !30     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
end_hunk_3
begin_hunk_4_@llvm.abs.i64
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { builtin nounwind }
attributes #40 = { allocsize(0) }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { noreturn nounwind }
attributes #43 = { noreturn }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !10, i64 0, !11, i64 2, !5, i64 8}
!10 = !{!"short", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!9, !11, i64 2}
!13 = !{!14, !21, i64 32}
!14 = !{!"_ZTSN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EE", !15, i64 0, !17, i64 8, !21, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !23, i64 64, !23, i64 68, !11, i64 72, !11, i64 73}
!15 = !{!"_ZTSN3tsl2rh26power_of_two_growth_policyILm2EEE", !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !22, i64 0}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = !{!14, !11, i64 72}
!25 = !{!14, !11, i64 73}
!26 = !{!23, !23, i64 0}
!27 = !{!14, !16, i64 56}
!28 = !{!20, !21, i64 0}
!29 = !{!20, !21, i64 8}
!30 = !{!31, !33, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !16, i64 8, !5, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !22, i64 0}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!20, !21, i64 16}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !22, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !6, i64 0}
!42 = distinct !{null, null, null}
!43 = !{!44, !16, i64 0}
!44 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !16, i64 0, !4, i64 8, !39, i64 16, !45, i64 24}
!45 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_ELb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE", !48, i64 0}
!48 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EEE", !49, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110Filesystem7IOProxyELb0EE", !39, i64 0}
!51 = !{!44, !4, i64 8}
!52 = !{!53, !22, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !22, i64 0}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !56, i64 0}
!56 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !22, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !22, i64 0}
!60 = !{!58, !59, i64 8}
!61 = distinct !{!61, !36}
!62 = !{!58, !59, i64 16}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!66 = !{!64, !65, i64 8}
!67 = distinct !{!67, !36}
!68 = !{!64, !65, i64 16}
!69 = !{!70, !71, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !22, i64 0}
!72 = !{!70, !71, i64 16}
!73 = !{!56, !56, i64 0}
!74 = !{!22, !22, i64 0}
!75 = !{!76, !33, i64 0}
!76 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !33, i64 0, !16, i64 8}
!77 = !{!76, !16, i64 8}
!78 = !{!79, !4, i64 20}
!79 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutputE", !80, i64 8, !92, i64 168}
!80 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !81, i64 64, !82, i64 72, !85, i64 96, !4, i64 120, !4, i64 124, !11, i64 128, !88, i64 136}
!81 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!82 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !70, i64 0}
!85 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !64, i64 0}
!88 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !89, i64 0}
!89 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !58, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !93, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_ELb1ELb1EE", !94, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !95, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !96, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !97, i64 0, !55, i64 8}
!97 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !53, i64 0}
!98 = !{!99, !22, i64 0}
!99 = !{!"_ZTSN11OpenImageIO4v3_110image_spanIKSt4byteLm4EEE", !22, i64 0, !100, i64 8, !101, i64 40, !4, i64 56}
!100 = !{!"_ZTSSt5arrayIlLm4EE", !5, i64 0}
!101 = !{!"_ZTSSt5arrayIjLm4EE", !5, i64 0}
!102 = !{!16, !16, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!105 = distinct !{!105, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!106 = !{!31, !16, i64 8}
!107 = !{!99, !4, i64 56}
!108 = !{!80, !4, i64 60}
!109 = !{!79, !4, i64 68}
!110 = distinct !{!110, !36}
!111 = !{!79, !4, i64 24}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!114 = distinct !{!114, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!117 = distinct !{!117, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!118 = !{!116, !113}
!119 = !{!80, !4, i64 48}
!120 = !{!80, !4, i64 0}
!121 = !{!80, !4, i64 4}
!122 = !{!80, !4, i64 52}
!123 = !{!80, !4, i64 8}
!124 = !{!80, !4, i64 56}
!125 = !{!80, !4, i64 16}
!126 = !{!80, !4, i64 20}
!127 = distinct !{!127, !36}
!128 = !{!79, !4, i64 60}
!129 = !{!79, !4, i64 64}
!130 = !{!79, !4, i64 56}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = !{!79, !4, i64 28}
!134 = !{!79, !4, i64 8}
!135 = !{!79, !4, i64 12}
!136 = !{!79, !4, i64 16}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!139 = distinct !{!139, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!140 = !{!"branch_weights", i32 1, i32 1023}
!141 = !{!142, !142, i64 0}
!142 = !{!"p1 long", !22, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZSt16forward_as_tupleIJRKmEESt5tupleIJDpOT_EES5_: argument 0"}
!145 = distinct !{!145, !"_ZSt16forward_as_tupleIJRKmEESt5tupleIJDpOT_EES5_"}
!146 = !{!70, !71, i64 8}
!147 = !{!81, !5, i64 0}
!148 = !{!81, !5, i64 1}
!149 = !{!81, !5, i64 2}
!150 = !{!81, !4, i64 4}
!151 = !{!152, !33, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!153 = distinct !{!153, !36}
!154 = !{!79, !5, i64 72}
!155 = !{!79, !4, i64 128}
!156 = !{!79, !4, i64 132}
!157 = !{!152, !33, i64 8}
!158 = !{!152, !33, i64 16}
!159 = distinct !{!159, !36}
!160 = distinct !{!160, !36, !161}
!161 = !{!"llvm.loop.unswitch.partial.disable"}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = !{!165, !11, i64 0}
!165 = !{!"_ZTSN11OpenImageIO4v3_15TimerE", !11, i64 0, !11, i64 1, !16, i64 8, !16, i64 16, !33, i64 24}
!166 = !{!165, !11, i64 1}
!167 = !{!32, !33, i64 0}
!168 = !{!169, !4, i64 64}
!169 = !{!"_ZTSN11OpenImageIO4v3_13pvt11LoggedTimerE", !165, i64 0, !31, i64 32, !4, i64 64}
!170 = !{!171, !16, i64 0}
!171 = !{!"_ZTS8timespec", !16, i64 0, !16, i64 8}
!172 = !{!171, !16, i64 8}
!173 = !{!165, !16, i64 8}
!174 = !{i8 0, i8 2}
!175 = !{}
!176 = !{!165, !33, i64 24}
!177 = !{!165, !16, i64 16}
!178 = !{!179, !179, i64 0}
!179 = !{!"double", !5, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!182 = !{!80, !4, i64 12}
!183 = !{!80, !11, i64 128}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_S7_S7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!186 = distinct !{!186, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_S7_S7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_S3_S3_S3_ELi6ELi0ELy1118481EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!189 = distinct !{!189, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_S3_S3_S3_ELi6ELi0ELy1118481EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!190 = !{!188, !185}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!193 = distinct !{!193, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!194 = !{!80, !4, i64 120}
!195 = !{!80, !4, i64 124}
!196 = !{!15, !16, i64 0}
!197 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!198 = distinct !{!198, !36}
!199 = !{!14, !16, i64 40}
!200 = !{!44, !39, i64 16}
!201 = !{!202, !203, i64 48}
!202 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !31, i64 8, !16, i64 40, !203, i64 48, !31, i64 56}
!203 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!204 = distinct !{null, null, null}
!205 = !{!206, !11, i64 38}
!206 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !207, i64 0, !81, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !11, i64 37, !11, i64 38}
!207 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !33, i64 0}
!208 = distinct !{ptr @_ZN11OpenImageIO4v3_111ImageOutput13ioproxy_clearEv, null, null, null}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_DpOT0_: argument 0"}
!211 = distinct !{!211, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_DpOT0_"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKmS7_S7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESD_RKT_DpOT0_: argument 0"}
!214 = distinct !{!214, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKmS7_S7_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESD_RKT_DpOT0_"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKmS3_S3_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi4ELi0ELy54340EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!217 = distinct !{!217, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKmS3_S3_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi4ELi0ELy54340EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!218 = !{!216, !213}
!219 = distinct !{null}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKlRKmS9_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESF_RKT_DpOT0_: argument 0"}
!222 = distinct !{!222, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKlRKmS9_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESF_RKT_DpOT0_"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKlKmS4_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi4ELi0ELy54339EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!225 = distinct !{!225, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKlKmS4_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELi4ELi0ELy54339EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!226 = !{!224, !221}
!227 = !{!33, !33, i64 0}
!228 = !{!229, !4, i64 4}
!229 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!230 = !{!229, !4, i64 0}
!231 = !{!229, !4, i64 12}
!232 = !{!229, !4, i64 8}
!233 = !{!229, !4, i64 20}
!234 = !{!229, !4, i64 16}
!235 = !{!229, !4, i64 28}
!236 = !{!229, !4, i64 24}
!237 = !{!79, !4, i64 44}
!238 = !{!79, !4, i64 32}
!239 = !{!79, !4, i64 48}
!240 = !{!79, !4, i64 36}
!241 = !{!79, !4, i64 52}
!242 = !{!79, !4, i64 40}
!243 = !{!79, !11, i64 136}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!246 = distinct !{!246, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS9_S9_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!249 = distinct !{!249, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS9_S9_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS6_S6_S6_ELi5ELi0ELy69916EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!252 = distinct !{!252, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS6_S6_S6_ELi5ELi0ELy69916EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!253 = !{!251, !248}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!256 = distinct !{!256, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS6_ELi3ELi0ELy284EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!259 = distinct !{!259, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS6_ELi3ELi0ELy284EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!260 = !{!258, !255}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!263 = distinct !{!263, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiELi2ELi0ELy28EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!266 = distinct !{!266, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiELi2ELi0ELy28EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!267 = !{!265, !262}
!268 = distinct !{!268, !36}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS9_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!271 = distinct !{!271, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_RKiS9_S9_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS6_S6_ELi4ELi0ELy4380EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!274 = distinct !{!274, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKiS6_S6_ELi4ELi0ELy4380EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!275 = !{!273, !270}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_17basic_string_viewIcSt11char_traitsIcEEERKmSD_EEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_DpOT0_: argument 0"}
!278 = distinct !{!278, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_17basic_string_viewIcSt11char_traitsIcEEERKmSD_EEENSt7__cxx1112basic_stringIcS8_SaIcEEERKT_DpOT0_"}
!279 = !{!280, !277}
!280 = distinct !{!280, !281, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEEKmSA_ELi3ELi0ELy1101EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!281 = distinct !{!281, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEEKmSA_ELi3ELi0ELy1101EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!282 = !{!283, !22, i64 24}
!283 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !33, i64 0, !16, i64 8, !16, i64 16, !22, i64 24}
!284 = !{!283, !33, i64 0}
!285 = !{!283, !16, i64 16}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!288 = distinct !{!288, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!289 = !{!283, !16, i64 8}
!290 = !{!291, !291, i64 0}
!291 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!292 = !{!293, !293, i64 0}
!293 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !22, i64 0}
!294 = distinct !{null, null}
!295 = !{!296, !4, i64 16}
!296 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !297, i64 0, !4, i64 16}
!297 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !33, i64 0, !16, i64 8}
!298 = !{!299, !299, i64 0}
!299 = !{!"long long", !5, i64 0}
!300 = !{!301, !299, i64 0}
!301 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !299, i64 0, !5, i64 8}
!302 = !{!303, !305}
!303 = distinct !{!303, !304, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!304 = distinct !{!304, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!305 = distinct !{!305, !306, !"_ZNK3fmt3v127context3argEi: argument 0"}
!306 = distinct !{!306, !"_ZNK3fmt3v127context3argEi"}
!307 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!308 = distinct !{!308, !36}
!309 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!310 = distinct !{!310, !36}
!311 = !{!312, !4, i64 0}
!312 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!313 = !{!314, !4, i64 12}
!314 = !{!"_ZTSN3fmt3v1212format_specsE", !312, i64 0, !4, i64 8, !4, i64 12}
!315 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!316 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!317 = distinct !{!317, !36}
!318 = !{!319, !16, i64 0}
!319 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !16, i64 0, !4, i64 8}
!320 = !{!319, !4, i64 8}
!321 = !{!322, !322, i64 0}
!322 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !22, i64 0}
!323 = !{!324, !4, i64 8}
!324 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !322, i64 0, !4, i64 8}
!325 = !{!326, !328}
!326 = distinct !{!326, !327, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!327 = distinct !{!327, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!328 = distinct !{!328, !329, !"_ZNK3fmt3v127context3argEi: argument 0"}
!329 = distinct !{!329, !"_ZNK3fmt3v127context3argEi"}
!330 = distinct !{null, null, null}
end_hunk_4
