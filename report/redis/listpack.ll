inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpRandomEntries:bb.a

bb.an:                                            ; preds = %bb.am
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 7
  %i.do = or disjoint i64 %i.dn, %i.dj
  br label %lpDecodeBacklen.exit

bb.ao:                                            ; preds = %bb.am
  %i.dp = and i8 %i.dl, 127
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 7
  %i.ds = or disjoint i64 %i.dr, %i.dj            ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dc, i64 -3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.du, -1
  br i1 %.not22.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 14
  %i.dx = or disjoint i64 %i.dw, %i.ds
  br label %lpDecodeBacklen.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dy = and i8 %i.du, 127
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 14
  %i.eb = or disjoint i64 %i.ea, %i.ds            ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.ed, -1
  br i1 %.not23.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 21
  %i.eg = or disjoint i64 %i.ef, %i.eb
  br label %lpDecodeBacklen.exit

bb.as:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds i8, ptr %i.dc, i64 -5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.ei, -1
  br i1 %.not24.i, label %bb.at, label %lpDecodeBacklen.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ej = and i8 %i.ed, 127
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 21
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = shl nuw nsw i64 %i.em, 28
  %i.eo = or disjoint i64 %i.en, %i.el
  %i.ep = or disjoint i64 %i.eo, %i.eb
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.0.i43 = phi i64 [ %i.dh, %bb.al ], [ %i.do, %bb.an ], [ %i.ep, %bb.at ], [ %i.eg, %bb.ar ], [ %i.dx, %bb.ap ]
  %.not44.i = icmp eq i64 %.0.i43, %i.da
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.as, %bb.y, %bb.u, %bb.v, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i39 = phi ptr [ null, %lpSkip.exit.i ], [ %i.bk, %lpDecodeBacklen.exit ] ; 2 uses
  %i.eq = add nuw i32 %.13362, 1                  ; 2 uses
  %exitcond76.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond76.not, label %lpGetValue.exit, label %.lr.ph65, !llvm.loop !53

lpGetValue.exit:                                  ; preds = %lpNext.exit, %.preheader
  %.133.lcssa = phi i32 [ %.03268, %.preheader ], [ %i.af, %lpNext.exit ]
  %.1.lcssa = phi ptr [ %.03070, %.preheader ], [ %.0.i39, %lpNext.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.et = call ptr @lpGet(ptr noundef readonly %.1.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not.i40 = icmp eq ptr %i.et, null             ; 2 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %spec.select = select i1 %.not.i40, i32 0, i32 %i.ev
  %spec.select51 = select i1 %.not.i40, i64 %i.eu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ew = sext i32 %i.es to i64
  %i.ex = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ew ; 3 uses
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %spec.select, ptr %i.ey, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %spec.select51, ptr %i.ez, align 8, !tbaa !37
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.d
  br i1 %exitcond81.not, label %._crit_edge71, label %.preheader, !llvm.loop !54
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @uintCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @lpRandomPairs(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1867) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @zmalloc_usable(i64 noundef %i.d, ptr noundef null) #21 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp eq i16 %i.g, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %0, align 1
  %i.m = zext i32 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.m)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.o = add i32 %.01520.i, 1                     ; 4 uses
  %i.p = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.p, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = icmp ult i32 %i.o, 65535
  br i1 %i.q, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.o, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.r = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.r, ptr %i.f, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.h, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ] ; 2 uses
  %i.s = udiv i32 %.016.in.i, %4
  %.not = icmp ult i32 %.016.in.i, %4
  br i1 %.not, label %bb.g, label %.preheader, !prof !18

.preheader:                                       ; preds = %lpLength.exit
  %.not134 = icmp eq i32 %1, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %lpLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1878) #21
  tail call void @abort() #22
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @uintCompare) #21
  %i.t = load i32, ptr %i.e, align 4, !tbaa !55   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = tail call ptr @lpSeek(ptr noundef nonnull %0, i64 noundef %i.u) ; 2 uses
  %i.w = icmp ne ptr %i.v, null
  %i.x = icmp ne i32 %1, 0
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %._crit_edge
  %.not60 = icmp eq ptr %3, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 2)
  %i.aa = add nsw i32 %5, -2
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ab = tail call i32 @rand() #21
  %i.ac = urem i32 %i.ab, %i.s
  %i.ad = mul i32 %i.ac, %4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %lpNext.exit
  %i.ah = icmp ne ptr %.0.i, null
  %i.ai = icmp ult i32 %.151.lcssa, %1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %._crit_edge133, !llvm.loop !59

bb.h:                                             ; preds = %.lr.ph132, %.loopexit
  %.049129 = phi ptr [ %i.v, %.lr.ph132 ], [ %.0.i, %.loopexit ] ; 13 uses
  %.050128 = phi i32 [ 0, %.lr.ph132 ], [ %.151.lcssa, %.loopexit ] ; 3 uses
  %.052126 = phi i32 [ %i.t, %.lr.ph132 ], [ %i.fe, %.loopexit ] ; 3 uses
  %.083125 = phi i64 [ 0, %.lr.ph132 ], [ %.184, %.loopexit ] ; 3 uses
  %.085124 = phi i64 [ 0, %.lr.ph132 ], [ %.186, %.loopexit ] ; 3 uses
  %.087123 = phi i32 [ 0, %.lr.ph132 ], [ %.188, %.loopexit ]
  %.089122 = phi i32 [ 0, %.lr.ph132 ], [ %.190, %.loopexit ]
  %i.ak = load i8, ptr %.049129, align 1, !tbaa !13 ; 6 uses
  %i.al = zext i8 %i.ak to i32                    ; 6 uses
  %i.am = and i32 %i.al, 192
  %i.an = icmp eq i32 %i.am, 128
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.al, 63
  %i.ap = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  br label %lpGetValue.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = and i32 %i.al, 240
  %i.ar = icmp eq i32 %i.aq, 224
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl nuw nsw i32 %i.al, 8
  %i.at = and i32 %i.as, 3840
  %i.au = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.049129, i64 2
  br label %lpGetValue.exit

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i8 %i.ak, -16
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.049129, i64 5
  br label %lpGetValue.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp sgt i8 %i.ak, -1
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i8 %i.ak to i64
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.bf = and i32 %i.al, 224
  %i.bg = icmp eq i32 %i.bf, 192
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = shl nuw nsw i32 %i.al, 8
  %i.bi = and i32 %i.bh, 7936
  %i.bj = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = zext nneg i32 %i.bm to i64
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  switch i8 %i.ak, label %bb.w [
    i8 -15, label %bb.s
    i8 -14, label %bb.t
    i8 -13, label %bb.u
    i8 -12, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = zext i16 %i.bp to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.049129, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 16
  %i.by = or disjoint i64 %i.bx, %i.bt
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.cd = load i64, ptr %i.cc, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.ce = zext i8 %i.ak to i64
  %i.cf = or disjoint i64 %i.ce, 12345678900000000
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o
  %.061.i.i = phi i64 [ %i.be, %bb.o ], [ %i.bn, %bb.q ], [ %i.bq, %bb.s ], [ %i.by, %bb.t ], [ %i.cb, %bb.u ], [ %i.cd, %bb.v ], [ %i.cf, %bb.w ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.o ], [ 4096, %bb.q ], [ 32768, %bb.s ], [ 8388608, %bb.t ], [ 2147483648, %bb.u ], [ -9223372036854775808, %bb.v ], [ -1, %bb.w ]
  %.059.neg.i.i = phi i64 [ 0, %bb.o ], [ -8191, %bb.q ], [ -65535, %bb.s ], [ -16777215, %bb.t ], [ -4294967295, %bb.u ], [ 1, %bb.v ], [ 0, %bb.w ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.cg = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.cg
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %bb.m, %bb.k, %bb.i, %bb.x
  %.0.i.i97 = phi ptr [ null, %bb.x ], [ %i.bc, %bb.m ], [ %i.ay, %bb.k ], [ %i.ap, %bb.i ] ; 2 uses
  %.190 = phi i32 [ %.089122, %bb.x ], [ %i.bb, %bb.m ], [ %i.ax, %bb.k ], [ %i.ao, %bb.i ] ; 3 uses
  %.186 = phi i64 [ %.062.i.i, %bb.x ], [ %.085124, %bb.m ], [ %.085124, %bb.k ], [ %.085124, %bb.i ] ; 3 uses
  %i.ch = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.049129) ; 14 uses
  %.not59 = icmp eq ptr %i.ch, null
  br i1 %.not59, label %bb.y, label %bb.z, !prof !18

bb.y:                                             ; preds = %lpGetValue.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1896) #21
  tail call void @abort() #22
  unreachable

bb.z:                                             ; preds = %lpGetValue.exit
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13  ; 6 uses
  %i.cj = zext i8 %i.ci to i32                    ; 6 uses
  %i.ck = and i32 %i.cj, 192
  %i.cl = icmp eq i32 %i.ck, 128
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = and i32 %i.cj, 63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  br label %lpGetValue.exit63

bb.ab:                                            ; preds = %bb.z
  %i.co = and i32 %i.cj, 240
  %i.cp = icmp eq i32 %i.co, 224
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = shl nuw nsw i32 %i.cj, 8
  %i.cr = and i32 %i.cq, 3840
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  br label %lpGetValue.exit63

bb.ad:                                            ; preds = %bb.ab
  %i.cx = icmp eq i8 %i.ci, -16
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  br label %lpGetValue.exit63

bb.af:                                            ; preds = %bb.ad
  %i.db = icmp sgt i8 %i.ci, -1
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = zext nneg i8 %i.ci to i64
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.dd = and i32 %i.cj, 224
end_hunk_0
begin_hunk_1_@lpRepr:bb.a
  %i.bi = load i8, ptr %.02848, align 1, !tbaa !13 ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 6 uses
  %i.bk = and i32 %i.bj, 192
  %i.bl = icmp eq i32 %i.bk, 128
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = and i32 %i.bj, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  br label %lpGet.exit

bb.y:                                             ; preds = %bb.w
  %i.bp = and i32 %i.bj, 240
  %i.bq = icmp eq i32 %i.bp, 224
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = shl nuw nsw i32 %i.bj, 8
  %i.bs = and i32 %i.br, 3840
  %i.bt = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.02848, i64 2
  br label %lpGet.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = icmp eq i8 %i.bi, -16
  br i1 %i.bz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.02848, i64 5
  br label %lpGet.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ce = icmp sgt i8 %i.bi, -1
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = zext nneg i8 %i.bi to i64
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.cg = and i32 %i.bj, 224
  %i.ch = icmp eq i32 %i.cg, 192
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ci = shl nuw nsw i32 %i.bj, 8
  %i.cj = and i32 %i.ci, 7936
  %i.ck = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  switch i8 %i.bi, label %bb.al [
    i8 -15, label %bb.ah
    i8 -14, label %bb.ai
    i8 -13, label %bb.aj
    i8 -12, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i64
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.ct = load i16, ptr %i.cs, align 1
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.02848, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 16
  %i.cz = or disjoint i64 %i.cy, %i.cu
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = zext i32 %i.db to i64
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.de = load i64, ptr %i.dd, align 1
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  %i.df = zext i8 %i.bi to i64
  %i.dg = or disjoint i64 %i.df, 12345678900000000
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.061.i.i = phi i64 [ %i.cf, %bb.ad ], [ %i.co, %bb.af ], [ %i.cr, %bb.ah ], [ %i.cz, %bb.ai ], [ %i.dc, %bb.aj ], [ %i.de, %bb.ak ], [ %i.dg, %bb.al ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.ad ], [ 4096, %bb.af ], [ 32768, %bb.ah ], [ 8388608, %bb.ai ], [ 2147483648, %bb.aj ], [ -9223372036854775808, %bb.ak ], [ -1, %bb.al ]
  %.059.neg.i.i = phi i64 [ 0, %bb.ad ], [ -8191, %bb.af ], [ -65535, %bb.ah ], [ -16777215, %bb.ai ], [ -4294967295, %bb.aj ], [ 1, %bb.ak ], [ 0, %bb.al ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.dh = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.dh
  %i.di = call i32 @ll2string(ptr noundef nonnull %i.c, i64 noundef 21, i64 noundef %.062.i.i) #21
  %i.dj = sext i32 %i.di to i64
  br label %lpGet.exit

lpGet.exit:                                       ; preds = %bb.x, %bb.z, %bb.ab, %bb.am
  %.037 = phi i64 [ %i.bn, %bb.x ], [ %i.bx, %bb.z ], [ %i.cc, %bb.ab ], [ %i.dj, %bb.am ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bo, %bb.x ], [ %i.by, %bb.z ], [ %i.cd, %bb.ab ], [ %i.c, %bb.am ] ; 2 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) ; 0 uses
  %i.dl = icmp sgt i64 %.037, 40
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !64 ; 2 uses
  br i1 %i.dl, label %bb.ao, label %bb.ar

bb.an:                                            ; preds = %lpEncodeBacklenBytes.exit, %bb.an
  %i.dn = phi i64 [ 0, %lpEncodeBacklenBytes.exit ], [ %i.dt, %bb.an ]
  %.045 = phi i32 [ 0, %lpEncodeBacklenBytes.exit ], [ %i.ds, %bb.an ]
  %i.do = getelementptr inbounds nuw i8, ptr %.02848, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i32
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dq) ; 0 uses
  %i.ds = add i32 %.045, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp samesign ugt i64 %i.be, %i.dt
  br i1 %i.du, label %bb.an, label %bb.w, !llvm.loop !66

bb.ao:                                            ; preds = %lpGet.exit
  %i.dv = call i64 @fwrite(ptr noundef nonnull %.0.i.i, i64 noundef 40, i64 noundef 1, ptr noundef %i.dm)
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @perror(ptr noundef nonnull @.str.24) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) ; 0 uses
  br label %bb.at

bb.ar:                                            ; preds = %lpGet.exit
  %i.dy = call i64 @fwrite(ptr noundef nonnull %.0.i.i, i64 noundef %.037, i64 noundef 1, ptr noundef %i.dm)
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @perror(ptr noundef nonnull @.str.24) #24
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %puts32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ea = add nuw nsw i32 %.02947, 1
  %i.eb = call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.02848) ; 2 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.at, %lpLength.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #16

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !11, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !15}
!24 = !{!25, !25, i64 0}
!25 = !{!"long long", !11, i64 0}
!26 = distinct !{!26, !15}
!27 = !{!28, !20, i64 0}
!28 = !{!"lpFindArg", !20, i64 0, !10, i64 8, !10, i64 12, !17, i64 16}
!29 = !{!28, !10, i64 8}
!30 = !{!28, !10, i64 12}
!31 = !{!28, !17, i64 16}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
!33 = !{!34, !20, i64 0}
!34 = !{!"", !20, i64 0, !10, i64 8, !25, i64 16}
!35 = !{!36, !10, i64 0}
!36 = !{!"listpackInsertEntry", !10, i64 0, !17, i64 8, !11, i64 16, !11, i64 25, !17, i64 32}
!37 = !{!34, !25, i64 16}
!38 = !{!34, !10, i64 8}
!39 = !{!36, !17, i64 8}
!40 = !{!36, !17, i64 32}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = !{!"branch_weights", !"expected", i32 1215604, i32 2146268044}
!49 = !{!50, !10, i64 0}
!50 = !{!"pick", !10, i64 0, !10, i64 4}
!51 = !{!50, !10, i64 4}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = !{!56, !10, i64 0}
!56 = !{!"", !10, i64 0, !10, i64 4}
!57 = !{!56, !10, i64 4}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
end_hunk_1
