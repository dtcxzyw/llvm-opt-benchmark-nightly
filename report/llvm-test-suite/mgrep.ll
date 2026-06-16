inline.NumInlined: 11
begin_hunk_0_@prepf:bb.a
  %i.l = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.06498, i64 1
  store i8 -128, ptr %.06498, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.165 = phi ptr [ %i.m, %bb.f ], [ %.06498, %.lr.ph ] ; 3 uses
  %i.n = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not82 = icmp eq i32 %i.n, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.165, i64 1
  store i8 10, ptr %.165, align 1, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.266 = phi ptr [ %i.o, %bb.h ], [ %.165, %bb.g ]
  %sext = shl i64 %.06399, 32
  %i.p = ashr exact i64 %sext, 32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.p, %bb.i ] ; 2 uses
  %.367 = phi ptr [ %i.s, %bb.j ], [ %.266, %bb.i ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.q = getelementptr inbounds i8, ptr @buf, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  store i8 %i.r, ptr %.367, align 1, !tbaa !8
  %.not83 = icmp eq i8 %i.r, 10
  %i.s = getelementptr inbounds nuw i8, ptr %.367, i64 1 ; 2 uses
  br i1 %.not83, label %bb.k, label %bb.j, !llvm.loop !37

bb.k:                                             ; preds = %bb.j
  %i.t = trunc nsw i64 %indvars.iv.next to i32
  %i.u = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not84 = icmp eq i32 %i.u, 0
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 -128, ptr %.367, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.468 = phi ptr [ %i.s, %bb.l ], [ %.367, %bb.k ] ; 3 uses
  %i.v = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not85 = icmp eq i32 %i.v, 0
  br i1 %.not85, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.468, i64 1
  store i8 10, ptr %.468, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.569 = phi ptr [ %i.w, %bb.n ], [ %.468, %bb.m ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.569, i64 1 ; 2 uses
  store i8 0, ptr %.569, align 1, !tbaa !8
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.y = icmp sgt i32 %.0, %i.t
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.o
  %i.z = trunc nuw i64 %indvars.iv.next125 to i32
  %i.aa = icmp samesign ugt i64 %indvars.iv124, 29999
  br i1 %i.aa, label %bb.p, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %bb.e, %._crit_edge
  %.064.lcssa165 = phi ptr [ %i.x, %._crit_edge ], [ @pat_spool, %bb.e ]
  %.070.lcssa164 = phi i32 [ %i.z, %._crit_edge ], [ 1, %bb.e ] ; 3 uses
  store i8 19, ptr %.064.lcssa165, align 1, !tbaa !8
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr @tr, align 16, !tbaa !8
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 16), align 16, !tbaa !8
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 32), align 16, !tbaa !8
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 48), align 16, !tbaa !8
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 64), align 16, !tbaa !8
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 80), align 16, !tbaa !8
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 96), align 16, !tbaa !8
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 112), align 16, !tbaa !8
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 128), align 16, !tbaa !8
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 144), align 16, !tbaa !8
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 160), align 16, !tbaa !8
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 176), align 16, !tbaa !8
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 192), align 16, !tbaa !8
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 208), align 16, !tbaa !8
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 224), align 16, !tbaa !8
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 240), align 16, !tbaa !8
  %i.ab = load i32, ptr @NOUPPER, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.loopexit91, label %.preheader90.preheader

bb.p:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname, i32 noundef 30000) #17 ; 0 uses
  tail call void @exit(i32 noundef 2) #18
  unreachable

.preheader90.preheader:                           ; preds = %.preheader93.preheader
  store <16 x i8> <i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 65), align 1, !tbaa !8
  store <8 x i8> <i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 81), align 1, !tbaa !8
  store i8 121, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 89), align 1, !tbaa !8
  store i8 122, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 90), align 2, !tbaa !8
  br label %.loopexit91

.loopexit91:                                      ; preds = %.preheader90.preheader, %.preheader93.preheader
  %i.ae = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not76 = icmp eq i32 %i.ae, 0
  br i1 %.not76, label %vector.body179, label %.preheader89

.preheader89:                                     ; preds = %.loopexit91
  %i.af = tail call ptr @__ctype_b_loc() #19      ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader89
  %indvars.iv134 = phi i64 [ 0, %.preheader89 ], [ %indvars.iv.next135.1, %bb.u ] ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv134
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !41
  %i.aj = and i16 %i.ai, 8
  %.not80 = icmp eq i16 %i.aj, 0
  br i1 %.not80, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv134
  store i8 -128, ptr %i.ak, align 2, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next135
  %i.an = load i16, ptr %i.am, align 2, !tbaa !41
  %i.ao = and i16 %i.an, 8
  %.not80.1 = icmp eq i16 %i.ao, 0
  br i1 %.not80.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv.next135
  store i8 -128, ptr %i.ap, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next135.1, 128
  br i1 %exitcond137.not.1, label %vector.body179, label %bb.q, !llvm.loop !43

vector.body179:                                   ; preds = %.loopexit91, %bb.u
  %wide.load = load <16 x i8>, ptr @tr, align 16, !tbaa !8
  %wide.load181 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 16), align 16, !tbaa !8
  %i.aq = and <16 x i8> %wide.load, splat (i8 15)
  %i.ar = and <16 x i8> %wide.load181, splat (i8 15)
  store <16 x i8> %i.aq, ptr @tr1, align 16, !tbaa !8
  store <16 x i8> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 16), align 16, !tbaa !8
  %wide.load.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 32), align 16, !tbaa !8
  %wide.load181.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 48), align 16, !tbaa !8
  %i.as = and <16 x i8> %wide.load.1, splat (i8 15)
  %i.at = and <16 x i8> %wide.load181.1, splat (i8 15)
  store <16 x i8> %i.as, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 32), align 16, !tbaa !8
  store <16 x i8> %i.at, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 48), align 16, !tbaa !8
  %wide.load.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 64), align 16, !tbaa !8
  %wide.load181.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 80), align 16, !tbaa !8
  %i.au = and <16 x i8> %wide.load.2, splat (i8 15)
  %i.av = and <16 x i8> %wide.load181.2, splat (i8 15)
  store <16 x i8> %i.au, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 64), align 16, !tbaa !8
  store <16 x i8> %i.av, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 80), align 16, !tbaa !8
  %wide.load.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 96), align 16, !tbaa !8
  %wide.load181.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 112), align 16, !tbaa !8
  %i.aw = and <16 x i8> %wide.load.3, splat (i8 15)
  %i.ax = and <16 x i8> %wide.load181.3, splat (i8 15)
  store <16 x i8> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 96), align 16, !tbaa !8
  store <16 x i8> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 112), align 16, !tbaa !8
  %wide.load.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 128), align 16, !tbaa !8
  %wide.load181.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 144), align 16, !tbaa !8
  %i.ay = and <16 x i8> %wide.load.4, splat (i8 15)
  %i.az = and <16 x i8> %wide.load181.4, splat (i8 15)
  store <16 x i8> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 128), align 16, !tbaa !8
  store <16 x i8> %i.az, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 144), align 16, !tbaa !8
  %wide.load.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 160), align 16, !tbaa !8
  %wide.load181.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 176), align 16, !tbaa !8
  %i.ba = and <16 x i8> %wide.load.5, splat (i8 15)
  %i.bb = and <16 x i8> %wide.load181.5, splat (i8 15)
  store <16 x i8> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 160), align 16, !tbaa !8
  store <16 x i8> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 176), align 16, !tbaa !8
  %wide.load.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 192), align 16, !tbaa !8
  %wide.load181.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 208), align 16, !tbaa !8
  %i.bc = and <16 x i8> %wide.load.6, splat (i8 15)
  %i.bd = and <16 x i8> %wide.load181.6, splat (i8 15)
  store <16 x i8> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 192), align 16, !tbaa !8
  store <16 x i8> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 208), align 16, !tbaa !8
  %wide.load.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 224), align 16, !tbaa !8
  %wide.load181.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 240), align 16, !tbaa !8
  %i.be = and <16 x i8> %wide.load.7, splat (i8 15)
  %i.bf = and <16 x i8> %wide.load181.7, splat (i8 15)
  store <16 x i8> %i.be, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 224), align 16, !tbaa !8
  store <16 x i8> %i.bf, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 240), align 16, !tbaa !8
  store i32 256, ptr @p_size, align 4, !tbaa !4
  %.not77.not106 = icmp samesign ugt i32 %.070.lcssa164, 1 ; 2 uses
  br i1 %.not77.not106, label %.lr.ph109.preheader, label %._crit_edge110.thread

.lr.ph109.preheader:                              ; preds = %vector.body179
  %wide.trip.count = zext nneg i32 %.070.lcssa164 to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.w
  %indvars.iv142 = phi i64 [ 1, %.lr.ph109.preheader ], [ %indvars.iv.next143, %bb.w ] ; 3 uses
  %i.bg = phi i32 [ 256, %.lr.ph109.preheader ], [ %i.bo, %bb.w ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv142
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #20 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 4 uses
  %i.bl = trunc i64 %i.bj to i8
  %i.bm = getelementptr inbounds nuw i8, ptr @pat_len, i64 %indvars.iv142
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !8
  %.not79 = icmp ne i32 %i.bk, 0
  %i.bn = icmp sgt i32 %i.bg, %i.bk
  %or.cond87 = select i1 %.not79, i1 %i.bn, i1 false
  br i1 %or.cond87, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph109
  store i32 %i.bk, ptr @p_size, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph109, %bb.v
  %i.bo = phi i32 [ %i.bg, %.lr.ph109 ], [ %i.bk, %bb.v ] ; 5 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !44

._crit_edge110:                                   ; preds = %bb.w
  %i.bp = icmp sgt i32 %.0, 400
  %i.bq = icmp sgt i32 %i.bo, 2
  %or.cond = and i1 %i.bp, %i.bq
  br i1 %or.cond, label %.preheader88.preheader.sink.split, label %bb.x

._crit_edge110.thread:                            ; preds = %vector.body179
  %i.br = icmp sgt i32 %.0, 400
  br i1 %i.br, label %.preheader88.preheader.sink.split, label %.preheader88.preheader.thread

.preheader88.preheader.thread:                    ; preds = %._crit_edge110.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 -2, i64 4096, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !11
  br label %._crit_edge116

bb.x:                                             ; preds = %._crit_edge110
  %i.bs = icmp eq i32 %i.bo, 1
  br i1 %i.bs, label %.preheader88.preheader.sink.split, label %.preheader88.preheader

.preheader88.preheader.sink.split:                ; preds = %bb.x, %._crit_edge110, %._crit_edge110.thread
  %LONG.sink = phi ptr [ @LONG, %._crit_edge110 ], [ @LONG, %._crit_edge110.thread ], [ @SHORT, %bb.x ]
  %.ph = phi i32 [ %i.bo, %._crit_edge110 ], [ 256, %._crit_edge110.thread ], [ 1, %bb.x ]
  store i32 1, ptr %LONG.sink, align 4, !tbaa !4
  br label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.preheader.sink.split, %bb.x
  %i.bt = phi i32 [ %i.bo, %bb.x ], [ %.ph, %.preheader88.preheader.sink.split ]
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = add i8 %i.bu, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 %i.bv, i64 4096, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !11
  br i1 %.not77.not106, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %.preheader88.preheader
  %wide.trip.count155 = zext nneg i32 %.070.lcssa164 to i64
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.lr.ph115
  %indvars.iv152 = phi i64 [ 1, %.lr.ph115.preheader ], [ %indvars.iv.next153, %.lr.ph115 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv152
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !17
  %i.by = trunc nuw nsw i64 %indvars.iv152 to i32
  tail call void @f_prep(i32 noundef %i.by, ptr noundef %i.bx)
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !45

._crit_edge116:                                   ; preds = %.lr.ph115, %.preheader88.preheader.thread, %.preheader88.preheader
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @monkey1(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @p_size, align 4, !tbaa !4 ; 4 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = add nsw i32 %i.a, -1                     ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = sext i32 %i.d to i64                     ; 3 uses
  %i.i = add nsw i64 %i.e, %i.h
  %.not157 = icmp sgt i64 %i.i, %i.b
  br i1 %.not157, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.k = load i32, ptr @LONG, align 4, !tbaa !4
  %.not101 = icmp eq i32 %i.k, 0
  %i.l = sub nsw i64 0, %i.h
  %i.m = trunc i32 %i.d to i8                     ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.n = icmp ult i32 %i.a, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod205 = icmp ne i64 %xtraiter, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %.loopexit134
  %.067159 = phi ptr [ %i.g, %.lr.ph161 ], [ %.572, %.loopexit134 ] ; 9 uses
  %.081158 = phi ptr [ %i.j, %.lr.ph161 ], [ %i.fd, %.loopexit134 ] ; 17 uses
  %.081158178 = ptrtoint ptr %.081158 to i64
  %.067159179 = ptrtoint ptr %.067159 to i64
  %i.o = load i8, ptr %.081158, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 4
  %i.u = getelementptr inbounds i8, ptr %.081158, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.t, %i.z              ; 2 uses
  br i1 %.not101, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i32 %i.aa, 4
  %i.ac = getelementptr inbounds i8, ptr %.081158, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ab, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.088 = phi i32 [ %i.ai, %bb.c ], [ %i.aa, %bb.b ]
  %i.aj = zext nneg i32 %.088 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @SHIFT1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %.preheader137.preheader, label %.loopexit134

.preheader137.preheader:                          ; preds = %bb.d
  br i1 %i.n, label %.preheader137.epil.preheader, label %.preheader137

.preheader137:                                    ; preds = %.preheader137.preheader, %.preheader137
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader137 ], [ 0, %.preheader137.preheader ] ; 5 uses
  %.189145 = phi i32 [ %i.bw, %.preheader137 ], [ 0, %.preheader137.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader137 ], [ 0, %.preheader137.preheader ]
  %i.an = sub nsw i64 0, %indvars.iv
  %i.ao = getelementptr inbounds i8, ptr %.081158, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %.189145, 8
  %i.av = shl nuw nsw i32 %i.at, 4
  %i.aw = add i32 %i.au, %i.av
  %i.ax = xor i64 %indvars.iv, -1
  %i.ay = getelementptr inbounds i8, ptr %.081158, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %i.aw, %i.bd
  %i.bf = sub nuw nsw i64 -2, %indvars.iv
  %i.bg = getelementptr inbounds i8, ptr %.081158, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl i32 %i.be, 8
  %i.bn = shl nuw nsw i32 %i.bl, 4
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = sub nuw nsw i64 -3, %indvars.iv
  %i.bq = getelementptr inbounds i8, ptr %.081158, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %i.bo, %i.bv                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader137, !llvm.loop !46

.unr-lcssa:                                       ; preds = %.preheader137
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader137.epil.preheader

.preheader137.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader137.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader137.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.189145.epil.init = phi i32 [ 0, %.preheader137.preheader ], [ %i.bw, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod205)
  br label %.preheader137.epil

.preheader137.epil:                               ; preds = %.preheader137.epil, %.preheader137.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.preheader137.epil ], [ %indvars.iv.epil.init, %.preheader137.epil.preheader ] ; 2 uses
  %.189145.epil = phi i32 [ %i.cf, %.preheader137.epil ], [ %.189145.epil.init, %.preheader137.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader137.epil ], [ 0, %.preheader137.epil.preheader ]
  %i.bx = shl i32 %.189145.epil, 4
  %i.by = sub nsw i64 0, %indvars.iv.epil
  %i.bz = getelementptr inbounds i8, ptr %.081158, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add i32 %i.bx, %i.ce                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader137.epil, !llvm.loop !47

.epilog-lcssa:                                    ; preds = %.preheader137.epil, %.unr-lcssa
  %.lcssa = phi i32 [ %i.bw, %.unr-lcssa ], [ %i.cf, %.preheader137.epil ]
  %i.cg = and i32 %.lcssa, 8191
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @HASH, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %.old4.not = icmp eq ptr %i.cj, null
  br i1 %.old4.not, label %.loopexit134, label %.preheader135

.preheader135:                                    ; preds = %.epilog-lcssa
  %i.ck = getelementptr inbounds i8, ptr %.081158, i64 %i.l ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @tr, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.preheader135, %bb.u
  %.074 = phi ptr [ %i.cr, %bb.u ], [ %i.cj, %.preheader135 ] ; 2 uses
  %i.cp = load i32, ptr %.074, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr @patt, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @tr, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = icmp eq i8 %i.cy, %i.co
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.lr.ph ], [ 0, %bb.e ]
  %.075147 = phi ptr [ %i.da, %.lr.ph ], [ %i.ck, %bb.e ]
  %i.da = getelementptr inbounds nuw i8, ptr %.075147, i64 1 ; 2 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.next176
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @tr, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @tr, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = icmp eq i8 %i.df, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.dl = trunc nuw nsw i64 %indvars.iv.next176 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.091.lcssa = phi i32 [ 0, %bb.e ], [ %i.dl, %._crit_edge.loopexit ] ; 2 uses
  %.not103 = icmp slt i32 %.091.lcssa, %i.a
  br i1 %.not103, label %bb.u, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds i8, ptr @pat_len, i64 %i.cs
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = zext i8 %i.dn to i32
  %.not104.a = icmp samesign ult i32 %.091.lcssa, %i.do
  br i1 %.not104.a, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = icmp ugt ptr %.081158, %i.c
  br i1 %i.dp, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr @num_of_matched, align 4, !tbaa !4
  %i.ds = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = load i32, ptr @SILENT, align 4
  %i.dv = icmp ne i32 %i.du, 0
  %or.cond = select i1 %i.dt, i1 true, i1 %i.dv
  br i1 %or.cond, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dw = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not105.a = icmp eq i32 %i.dw, 0
  br i1 %.not105.a, label %bb.j, label %.preheader133

.preheader133:                                    ; preds = %bb.i, %.preheader133
  %.283 = phi ptr [ %i.dy, %.preheader133 ], [ %.081158, %bb.i ] ; 3 uses
  %i.dx = load i8, ptr %.283, align 1, !tbaa !8
  %.not115 = icmp eq i8 %i.dx, 10
  %i.dy = getelementptr inbounds nuw i8, ptr %.283, i64 1
  br i1 %.not115, label %.loopexit134, label %.preheader133, !llvm.loop !49

bb.j:                                             ; preds = %bb.i
  %i.dz = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not106.a = icmp eq i32 %i.dz, 0
  %i.ea = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not107.a = icmp eq i32 %i.ea, 0               ; 2 uses
  br i1 %.not106.a, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not107.a, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.m
  %.384 = phi ptr [ %i.ec, %bb.m ], [ %.081158, %.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %.384, i64 -1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !8
  %.not108.a = icmp eq i8 %i.ed, 10
  br i1 %.not108.a, label %.preheader132, label %bb.m, !llvm.loop !50

.preheader132:                                    ; preds = %bb.m
  %i.ee = load i8, ptr %.384, align 1, !tbaa !8   ; 2 uses
  %.not109153 = icmp eq i8 %i.ee, 10
  br i1 %.not109153, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader132, %.lr.ph154
  %i.ef = phi i8 [ %i.el, %.lr.ph154 ], [ %i.ee, %.preheader132 ]
  %i.eg = phi ptr [ %i.ek, %.lr.ph154 ], [ %.384, %.preheader132 ]
  %i.eh = zext i8 %i.ef to i32
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ej = tail call noundef i32 @putc(i32 noundef %i.eh, ptr noundef %i.ei), !inline_history !24 ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8   ; 2 uses
  %.not109 = icmp eq i8 %i.el, 10
  br i1 %.not109, label %._crit_edge155, label %.lr.ph154, !llvm.loop !51

._crit_edge155:                                   ; preds = %.lr.ph154, %.preheader132
  %.lcssa142 = phi ptr [ %.384, %.preheader132 ], [ %i.ek, %.lr.ph154 ]
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.en = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.em), !inline_history !24 ; 0 uses
  br label %.loopexit134

bb.n:                                             ; preds = %bb.j
  br i1 %.not107.a, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %scevgep = getelementptr i8, ptr %.067159, i64 -1
  %i.ep = sub i64 %.081158178, %.067159179
  %scevgep180 = getelementptr i8, ptr %scevgep, i64 %i.ep
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv181 = phi ptr [ %scevgep182, %bb.q ], [ %scevgep180, %bb.p ] ; 2 uses
  %.586 = phi ptr [ %i.eq, %bb.q ], [ %.081158, %bb.p ]
  %i.eq = getelementptr inbounds i8, ptr %.586, i64 -1 ; 4 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !8
  %.not111 = icmp eq i8 %i.er, 10
  %scevgep182 = getelementptr i8, ptr %indvars.iv181, i64 -1
  br i1 %.not111, label %bb.r, label %bb.q, !llvm.loop !52

bb.r:                                             ; preds = %bb.q
  %.not113.a = icmp ult ptr %.067159, %i.eq
  br i1 %.not113.a, label %.lr.ph151, label %._crit_edge152.preheader

.lr.ph151:                                        ; preds = %bb.r, %.lr.ph151
  %.269149 = phi ptr [ %i.es, %.lr.ph151 ], [ %.067159, %bb.r ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.269149, i64 1 ; 2 uses
  %i.et = load i8, ptr %.269149, align 1, !tbaa !8
  %i.eu = zext i8 %i.et to i32
  %i.ev = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ew = tail call noundef i32 @putc(i32 noundef %i.eu, ptr noundef %i.ev), !inline_history !24 ; 0 uses
  %exitcond183.not = icmp eq ptr %i.es, %indvars.iv181
  br i1 %exitcond183.not, label %bb.s, label %.lr.ph151, !llvm.loop !53

bb.s:                                             ; preds = %.lr.ph151
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ey = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ex), !inline_history !24 ; 0 uses
  br label %._crit_edge152.preheader

._crit_edge152.preheader:                         ; preds = %bb.r, %bb.s
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.preheader, %._crit_edge152
  %.687 = phi ptr [ %i.ez, %._crit_edge152 ], [ %i.eq, %._crit_edge152.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.687, i64 1 ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %.not114 = icmp eq i8 %i.fa, 10
  br i1 %.not114, label %bb.t, label %._crit_edge152, !llvm.loop !54

bb.t:                                             ; preds = %._crit_edge152
  %i.fb = getelementptr inbounds nuw i8, ptr %.687, i64 2
  br label %.loopexit134

bb.u:                                             ; preds = %bb.f, %._crit_edge
  %.not131 = icmp eq ptr %i.cr, null
  br i1 %.not131, label %.loopexit134, label %bb.e, !llvm.loop !55

.loopexit134:                                     ; preds = %bb.u, %.preheader133, %._crit_edge155, %bb.t, %.epilog-lcssa, %bb.d
  %.092 = phi i8 [ %i.al, %bb.d ], [ %i.m, %._crit_edge155 ], [ 1, %.epilog-lcssa ], [ %i.m, %.preheader133 ], [ %i.m, %bb.t ], [ 1, %bb.u ]
  %.9 = phi ptr [ %.081158, %bb.d ], [ %.lcssa142, %._crit_edge155 ], [ %.081158, %.epilog-lcssa ], [ %.283, %.preheader133 ], [ %i.ez, %bb.t ], [ %.081158, %bb.u ]
  %.572 = phi ptr [ %.067159, %bb.d ], [ %.067159, %._crit_edge155 ], [ %.067159, %.epilog-lcssa ], [ %.067159, %.preheader133 ], [ %i.fb, %bb.t ], [ %.067159, %bb.u ] ; 2 uses
  %i.fc = zext i8 %.092 to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %.9, i64 %i.fc ; 2 uses
  %.not = icmp ugt ptr %i.fd, %i.c
  br i1 %.not, label %._crit_edge162, label %bb.b, !llvm.loop !56

._crit_edge162:                                   ; preds = %.loopexit134, %bb.a
  %.067.lcssa = phi ptr [ %i.g, %bb.a ], [ %.572, %.loopexit134 ] ; 2 uses
  %i.fe = load i32, ptr @INVERSE, align 4, !tbaa !4
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = load i32, ptr @COUNT, align 4
  %i.fh = icmp ne i32 %i.fg, 0
  %or.cond3 = select i1 %i.ff, i1 true, i1 %i.fh
  %.not100164 = icmp ugt ptr %.067.lcssa, %i.c
  %or.cond167 = select i1 %or.cond3, i1 true, i1 %.not100164
  br i1 %or.cond167, label %.loopexit, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge162, %.lr.ph166
  %.673165 = phi ptr [ %i.fi, %.lr.ph166 ], [ %.067.lcssa, %._crit_edge162 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.673165, i64 1 ; 2 uses
  %i.fj = load i8, ptr %.673165, align 1, !tbaa !8
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.fm = tail call noundef i32 @putc(i32 noundef %i.fk, ptr noundef %i.fl), !inline_history !24 ; 0 uses
  %.not100 = icmp ugt ptr %i.fi, %i.c
  br i1 %.not100, label %.loopexit, label %.lr.ph166, !llvm.loop !57

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph166, %._crit_edge162
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @mgrep(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [17408 x i8], align 16            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 10, ptr %i.b, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 6 uses
  %i.d = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 8192) #16 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %i.g = phi i32 [ %i.bd, %bb.l ], [ %i.e, %bb.a ]
  %i.h = phi i64 [ %i.bc, %bb.l ], [ %i.d, %bb.a ] ; 4 uses
  %.03039 = phi i32 [ %spec.store.select, %bb.l ], [ 1023, %bb.a ] ; 3 uses
  %i.i = load i32, ptr @INVERSE, align 4, !tbaa !4
  %i.j = icmp ne i32 %i.i, 0
  %i.k = load i32, ptr @COUNT, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i, label %countline.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %total_line.promoted.i = load i32, ptr @total_line, align 4 ; 2 uses
end_hunk_0
