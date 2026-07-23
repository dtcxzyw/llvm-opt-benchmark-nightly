inline.NumInlined: 2798
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19PNMOutput16write_raw_binaryEPKhl:bb.a
  %.not20.not.not.not.not = icmp sge i32 %.013, %i.c ; 2 uses
  br i1 %.not20.not.not.not.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.d = sext i32 %.013 to i64                    ; 9 uses
  %i.e = sext i32 %i.c to i64                     ; 7 uses
  %i.f = mul nsw i64 %2, %i.d
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %.not = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not, i8 -128, i8 0           ; 2 uses
  %indvars.iv.next = add nsw i64 %i.d, 1          ; 3 uses
  %i.j = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.j, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa = phi i8 [ %i.i, %bb.c ], [ %i.q, %bb.d ], [ %i.w, %bb.e ], [ %i.ac, %bb.f ], [ %i.ai, %bb.g ], [ %i.ao, %bb.h ], [ %i.au, %bb.i ], [ %i.ba, %bb.j ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next.1, %bb.d ], [ %indvars.iv.next.2, %bb.e ], [ %indvars.iv.next.3, %bb.f ], [ %indvars.iv.next.4, %bb.g ], [ %indvars.iv.next.5, %bb.h ], [ %indvars.iv.next.6, %bb.i ], [ %indvars.iv.next.7, %bb.j ]
  %i.k = trunc nsw i64 %indvars.iv.next.lcssa to i32
  store i8 %.lcssa, ptr %i.a, align 1, !tbaa !16
  %i.l = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.l, label %bb.b, label %bb.k, !llvm.loop !56

bb.d:                                             ; preds = %bb.c
  %i.m = mul nsw i64 %2, %indvars.iv.next
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %.not.1 = icmp eq i8 %i.o, 0
  %i.p = select i1 %.not.1, i8 64, i8 0
  %i.q = or disjoint i8 %i.p, %i.i                ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %i.d, 2        ; 3 uses
  %i.r = icmp slt i64 %indvars.iv.next.1, %i.e
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = mul nsw i64 %2, %indvars.iv.next.1
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %.not.2 = icmp eq i8 %i.u, 0
  %i.v = select i1 %.not.2, i8 32, i8 0
  %i.w = or disjoint i8 %i.v, %i.q                ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %i.d, 3        ; 3 uses
  %i.x = icmp slt i64 %indvars.iv.next.2, %i.e
  br i1 %i.x, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = mul nsw i64 %2, %indvars.iv.next.2
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %.not.3 = icmp eq i8 %i.aa, 0
  %i.ab = select i1 %.not.3, i8 16, i8 0
  %i.ac = or disjoint i8 %i.ab, %i.w              ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %i.d, 4        ; 3 uses
  %i.ad = icmp slt i64 %indvars.iv.next.3, %i.e
  br i1 %i.ad, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = mul nsw i64 %2, %indvars.iv.next.3
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %.not.4 = icmp eq i8 %i.ag, 0
  %i.ah = select i1 %.not.4, i8 8, i8 0
  %i.ai = or disjoint i8 %i.ah, %i.ac             ; 2 uses
  %indvars.iv.next.4 = add nsw i64 %i.d, 5        ; 3 uses
  %i.aj = icmp slt i64 %indvars.iv.next.4, %i.e
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ak = mul nsw i64 %2, %indvars.iv.next.4
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %.not.5 = icmp eq i8 %i.am, 0
  %i.an = select i1 %.not.5, i8 4, i8 0
  %i.ao = or disjoint i8 %i.an, %i.ai             ; 2 uses
  %indvars.iv.next.5 = add nsw i64 %i.d, 6        ; 3 uses
  %i.ap = icmp slt i64 %indvars.iv.next.5, %i.e
  br i1 %i.ap, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aq = mul nsw i64 %2, %indvars.iv.next.5
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %.not.6 = icmp eq i8 %i.as, 0
  %i.at = select i1 %.not.6, i8 2, i8 0
  %i.au = or disjoint i8 %i.at, %i.ao             ; 2 uses
  %indvars.iv.next.6 = add nsw i64 %i.d, 7        ; 3 uses
  %i.av = icmp slt i64 %indvars.iv.next.6, %i.e
  br i1 %i.av, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.aw = mul nsw i64 %2, %indvars.iv.next.6
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %.not.7 = icmp eq i8 %i.ay, 0
  %i.az = zext i1 %.not.7 to i8
  %i.ba = add i8 %i.au, %i.az
  %indvars.iv.next.7 = add nsw i64 %i.d, 8
  br label %.critedge

bb.k:                                             ; preds = %bb.b, %.critedge
  ret i1 %.not20.not.not.not.not
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19PNMOutput11write_floatEPKvNS0_8TypeDescEl(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57   ; 6 uses
  store ptr @.str.6, ptr %4, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.g, align 8, !tbaa !60
  %i.h = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull dead_on_return %4, i32 noundef 0)
  %i.i = icmp eq i32 %i.h, 1                      ; 3 uses
  switch i8 %.sroa.0.0.extract.trunc, label %.critedge86 [
    i8 10, label %bb.b
    i8 11, label %bb.q
    i8 12, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  %.not84130 = icmp sgt i32 %i.k, 0
  br i1 %.not84130, label %.lr.ph132, label %.critedge86

.lr.ph132:                                        ; preds = %bb.b
  %i.l = lshr i64 %3, 1
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.not83127 = icmp sgt i32 %i.f, 0
  br i1 %.not83127, label %.lr.ph132.split, label %.critedge86

.lr.ph132.split:                                  ; preds = %.lr.ph132
  %wide.trip.count174 = zext nneg i32 %i.f to i64 ; 2 uses
  br i1 %i.i, label %.lr.ph129.us, label %.lr.ph129

.lr.ph129.us:                                     ; preds = %.lr.ph132.split, %..critedge_crit_edge.split.us.us
  %.067131.us = phi i32 [ %i.al, %..critedge_crit_edge.split.us.us ], [ 0, %.lr.ph132.split ] ; 2 uses
  %i.n = mul i32 %.067131.us, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph129.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.d ], [ 0, %.lr.ph129.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = trunc nuw nsw i64 %indvars.iv171 to i32
  %i.p = add i32 %i.n, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !61   ; 2 uses
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 13
  %i.v = and i32 %i.u, 268427264                  ; 6 uses
  %.signext.i.i.us.us = sext i16 %i.s to i32
  %i.w = and i32 %.signext.i.i.us.us, -2147483648 ; 3 uses
  %i.x = icmp samesign ugt i32 %i.v, 8388607
  br i1 %i.x, label %bb.g, label %bb.e, !prof !64

bb.d:                                             ; preds = %_ZNK9Imath_3_14halfcvfEv.exit.us.us
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %..critedge_crit_edge.split.us.us, label %bb.c, !llvm.loop !65

bb.e:                                             ; preds = %bb.c
  %.not.i.i.us.us = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.us.us, label %_ZNK9Imath_3_14halfcvfEv.exit.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 true)
  %i.z = add nsw i32 %i.y, -8                     ; 2 uses
  %i.aa = shl i32 %i.v, %i.z
  %i.ab = or i32 %i.w, %i.aa
  %i.ac = or i32 %i.ab, 947912704
  %i.ad = shl nuw nsw i32 %i.z, 23
  %i.ae = sub nuw i32 %i.ac, %i.ad
  br label %_ZNK9Imath_3_14halfcvfEv.exit.us.us

bb.g:                                             ; preds = %bb.c
  %i.af = or disjoint i32 %i.v, %i.w              ; 2 uses
  %i.ag = icmp samesign ult i32 %i.v, 260046848
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.ah = or i32 %i.af, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.us.us

bb.i:                                             ; preds = %bb.g
  %i.ai = add nuw nsw i32 %i.af, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.us.us

_ZNK9Imath_3_14halfcvfEv.exit.us.us:              ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.us.us = phi i32 [ %i.ai, %bb.i ], [ %i.ah, %bb.h ], [ %i.ae, %bb.f ], [ %i.w, %bb.e ]
  %i.aj = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.i.i.us.us)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !66
  %i.ak = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ak, label %bb.d, label %.critedge86

..critedge_crit_edge.split.us.us:                 ; preds = %bb.d
  %i.al = add nuw nsw i32 %.067131.us, 1          ; 2 uses
  %i.am = load i32, ptr %i.j, align 4, !tbaa !21
  %.not84.us = icmp slt i32 %i.al, %i.am
  br i1 %.not84.us, label %.lr.ph129.us, label %.critedge86, !llvm.loop !68

.lr.ph129:                                        ; preds = %.lr.ph132.split, %..critedge_crit_edge.split
  %.067131 = phi i32 [ %i.bk, %..critedge_crit_edge.split ], [ 0, %.lr.ph132.split ] ; 2 uses
  %i.an = mul i32 %.067131, %i.m
  br label %bb.k

bb.j:                                             ; preds = %_ZNK9Imath_3_14halfcvfEv.exit
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count174
  br i1 %exitcond170.not, label %..critedge_crit_edge.split, label %bb.k, !llvm.loop !65

bb.k:                                             ; preds = %.lr.ph129, %bb.j
  %indvars.iv166 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next167, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ao = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !61 ; 2 uses
  %i.at = zext i16 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 13
  %i.av = and i32 %i.au, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.as to i32
  %i.aw = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.ax = icmp samesign ugt i32 %i.av, 8388607
  br i1 %i.ax, label %bb.l, label %bb.o, !prof !64

bb.l:                                             ; preds = %bb.k
  %i.ay = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.az = icmp samesign ult i32 %i.av, 260046848
  br i1 %i.az, label %bb.m, label %bb.n, !prof !64

bb.m:                                             ; preds = %bb.l
  %i.ba = add nuw nsw i32 %i.ay, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bb = or i32 %i.ay, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.o:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.av, i1 true)
  %i.bd = add nsw i32 %i.bc, -8                   ; 2 uses
  %i.be = shl i32 %i.av, %i.bd
  %i.bf = or i32 %i.aw, %i.be
  %i.bg = or i32 %i.bf, 947912704
  %i.bh = shl nuw nsw i32 %i.bd, 23
  %i.bi = sub nuw i32 %i.bg, %i.bh
  br label %_ZNK9Imath_3_14halfcvfEv.exit

_ZNK9Imath_3_14halfcvfEv.exit:                    ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i.i = phi i32 [ %i.ba, %bb.m ], [ %i.bb, %bb.n ], [ %i.bi, %bb.p ], [ %i.aw, %bb.o ]
  store i32 %.sroa.0.0.i.i, ptr %i.a, align 4, !tbaa !66
  %i.bj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.bj, label %bb.j, label %.critedge86

..critedge_crit_edge.split:                       ; preds = %bb.j
  %i.bk = add nuw nsw i32 %.067131, 1             ; 2 uses
  %i.bl = load i32, ptr %i.j, align 4, !tbaa !21
  %.not84 = icmp slt i32 %i.bk, %i.bl
  br i1 %.not84, label %.lr.ph129, label %.critedge86, !llvm.loop !68

bb.q:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21
  %.not82120 = icmp sgt i32 %i.bn, 0
  br i1 %.not82120, label %.lr.ph122, label %.critedge86

.lr.ph122:                                        ; preds = %bb.q
  %i.bo = lshr i64 %3, 2
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %.not81117 = icmp sgt i32 %i.f, 0
  br i1 %.not81117, label %.lr.ph122.split, label %.critedge86

.lr.ph122.split:                                  ; preds = %.lr.ph122
  %wide.trip.count164 = zext nneg i32 %i.f to i64 ; 2 uses
  br i1 %i.i, label %.lr.ph119.us, label %.lr.ph119

.lr.ph119.us:                                     ; preds = %.lr.ph122.split, %..critedge88_crit_edge.split.us.us
  %.078121.us = phi i32 [ %i.by, %..critedge88_crit_edge.split.us.us ], [ 0, %.lr.ph122.split ] ; 2 uses
  %i.bq = mul i32 %.078121.us, %i.bp
  br label %.lr.ph.i95.preheader.us.us

.lr.ph.i95.preheader.us.us:                       ; preds = %bb.r, %.lr.ph119.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %bb.r ], [ 0, %.lr.ph119.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.br = trunc nuw nsw i64 %indvars.iv161 to i32
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !66
  %i.bw = call i32 @llvm.bswap.i32(i32 %i.bv)
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !66
  %i.bx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.bx, label %bb.r, label %.critedge86

bb.r:                                             ; preds = %.lr.ph.i95.preheader.us.us
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %..critedge88_crit_edge.split.us.us, label %.lr.ph.i95.preheader.us.us, !llvm.loop !69

..critedge88_crit_edge.split.us.us:               ; preds = %bb.r
  %i.by = add nuw nsw i32 %.078121.us, 1          ; 2 uses
  %i.bz = load i32, ptr %i.bm, align 4, !tbaa !21
  %.not82.us = icmp slt i32 %i.by, %i.bz
  br i1 %.not82.us, label %.lr.ph119.us, label %.critedge86, !llvm.loop !70

.lr.ph119:                                        ; preds = %.lr.ph122.split, %..critedge88_crit_edge.split
  %.078121 = phi i32 [ %i.ch, %..critedge88_crit_edge.split ], [ 0, %.lr.ph122.split ] ; 2 uses
  %i.ca = mul i32 %.078121, %i.bp
  br label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit99

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit99
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count164
  br i1 %exitcond160.not, label %..critedge88_crit_edge.split, label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit99, !llvm.loop !69

_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit99: ; preds = %.lr.ph119, %bb.s
  %indvars.iv156 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next157, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.cb = trunc nuw nsw i64 %indvars.iv156 to i32
  %i.cc = add i32 %i.ca, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !66
  store float %i.cf, ptr %i.b, align 4, !tbaa !66
  %i.cg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.cg, label %bb.s, label %.critedge86

..critedge88_crit_edge.split:                     ; preds = %bb.s
  %i.ch = add nuw nsw i32 %.078121, 1             ; 2 uses
  %i.ci = load i32, ptr %i.bm, align 4, !tbaa !21
  %.not82 = icmp slt i32 %i.ch, %i.ci
  br i1 %.not82, label %.lr.ph119, label %.critedge86, !llvm.loop !70

bb.t:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !21
  %.not80112 = icmp sgt i32 %i.ck, 0
  br i1 %.not80112, label %.lr.ph114, label %.critedge86

.lr.ph114:                                        ; preds = %bb.t
  %i.cl = lshr i64 %3, 3
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %.not110 = icmp sgt i32 %i.f, 0
  br i1 %.not110, label %.lr.ph114.split, label %.critedge86

.lr.ph114.split:                                  ; preds = %.lr.ph114
  %wide.trip.count154 = zext nneg i32 %i.f to i64 ; 2 uses
  br i1 %i.i, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph114.split, %..critedge92_crit_edge.split.us.us
  %.066113.us = phi i32 [ %i.cw, %..critedge92_crit_edge.split.us.us ], [ 0, %.lr.ph114.split ] ; 2 uses
  %i.cn = mul i32 %.066113.us, %i.cm
  br label %.lr.ph.i100.preheader.us.us

.lr.ph.i100.preheader.us.us:                      ; preds = %bb.u, %.lr.ph.us
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.u ], [ 0, %.lr.ph.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.co = trunc nuw nsw i64 %indvars.iv151 to i32
  %i.cp = add i32 %i.cn, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !71
  %i.ct = fptrunc double %i.cs to float
  %.promoted.us.us.cast = bitcast float %i.ct to i32
  %i.cu = call i32 @llvm.bswap.i32(i32 %.promoted.us.us.cast)
  store i32 %i.cu, ptr %i.c, align 4, !tbaa !66
  %i.cv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %i.cv, label %bb.u, label %.critedge86

bb.u:                                             ; preds = %.lr.ph.i100.preheader.us.us
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %..critedge92_crit_edge.split.us.us, label %.lr.ph.i100.preheader.us.us, !llvm.loop !73

..critedge92_crit_edge.split.us.us:               ; preds = %bb.u
  %i.cw = add nuw nsw i32 %.066113.us, 1          ; 2 uses
  %i.cx = load i32, ptr %i.cj, align 4, !tbaa !21
  %.not80.us = icmp slt i32 %i.cw, %i.cx
  br i1 %.not80.us, label %.lr.ph.us, label %.critedge86, !llvm.loop !74

.lr.ph:                                           ; preds = %.lr.ph114.split, %..critedge92_crit_edge.split
  %.066113 = phi i32 [ %i.dg, %..critedge92_crit_edge.split ], [ 0, %.lr.ph114.split ] ; 2 uses
  %i.cy = mul i32 %.066113, %i.cm
  br label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit104

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count154
  br i1 %exitcond.not, label %..critedge92_crit_edge.split, label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit104, !llvm.loop !73

_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit104: ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  %i.da = add i32 %i.cy, %i.cz
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !71
  %i.de = fptrunc double %i.dd to float
  store float %i.de, ptr %i.c, align 4, !tbaa !66
  %i.df = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %i.df, label %bb.v, label %.critedge86

..critedge92_crit_edge.split:                     ; preds = %bb.v
  %i.dg = add nuw nsw i32 %.066113, 1             ; 2 uses
  %i.dh = load i32, ptr %i.cj, align 4, !tbaa !21
  %.not80 = icmp slt i32 %i.dg, %i.dh
  br i1 %.not80, label %.lr.ph, label %.critedge86, !llvm.loop !74

.critedge86:                                      ; preds = %..critedge92_crit_edge.split, %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit104, %..critedge92_crit_edge.split.us.us, %.lr.ph.i100.preheader.us.us, %..critedge88_crit_edge.split, %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit99, %..critedge88_crit_edge.split.us.us, %.lr.ph.i95.preheader.us.us, %..critedge_crit_edge.split, %_ZNK9Imath_3_14halfcvfEv.exit, %..critedge_crit_edge.split.us.us, %_ZNK9Imath_3_14halfcvfEv.exit.us.us, %bb.t, %.lr.ph114, %bb.q, %.lr.ph122, %bb.b, %.lr.ph132, %bb.a
  %.15 = phi i1 [ true, %..critedge88_crit_edge.split ], [ true, %bb.t ], [ true, %bb.a ], [ true, %bb.q ], [ true, %bb.b ], [ false, %_ZNK9Imath_3_14halfcvfEv.exit.us.us ], [ true, %..critedge88_crit_edge.split.us.us ], [ true, %.lr.ph132 ], [ false, %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit99 ], [ false, %.lr.ph.i95.preheader.us.us ], [ true, %..critedge92_crit_edge.split.us.us ], [ true, %.lr.ph122 ], [ false, %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit104 ], [ false, %.lr.ph.i100.preheader.us.us ], [ false, %_ZNK9Imath_3_14halfcvfEv.exit ], [ true, %.lr.ph114 ], [ true, %..critedge_crit_edge.split ], [ true, %..critedge_crit_edge.split.us.us ], [ true, %..critedge92_crit_edge.split ]
  ret i1 %.15
}

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19PNMOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.90", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.90", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.90", align 16 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store <4 x i32> <i32 0, i32 65535, i32 0, i32 65535>, ptr %18, align 16, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 3>, ptr %i.c, align 16, !tbaa !3
  %i.d = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %18, i64 noundef 2)
  br i1 %i.d, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 7 uses
  store i32 0, ptr %i.e, align 4, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str.7, i64 noundef 0) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr @.str.8, ptr %19, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 18, ptr %i.k, align 8, !tbaa !60
  %i.l = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %19, i64 256, i1 noundef zeroext false)
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store ptr @.str.9, ptr %21, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 10, ptr %i.m, align 8, !tbaa !60
  %i.n = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %21, i32 noundef 1)
  %.not3588 = icmp eq i32 %i.n, 0
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr @.str.8, ptr %20, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 18, ptr %i.o, align 8, !tbaa !60
  %i.p = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %20, i32 noundef 8) ; 2 uses
  store ptr @.str.9, ptr %21, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 10, ptr %i.q, align 8, !tbaa !60
  %i.r = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %21, i32 noundef 1)
  %.not35 = icmp eq i32 %i.r, 0                   ; 4 uses
  switch i32 %i.p, label %bb.k [
    i32 1, label %bb.d
    i32 16, label %bb.e
    i32 8, label %bb.e
    i32 32, label %bb.f
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = select i1 %.not35, i32 1, i32 4
  store i32 %i.s, ptr %i.e, align 4, !tbaa !75
  br label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57
  %i.v = icmp eq i32 %i.u, 1
  %i.w = select i1 %.not35, i32 2, i32 5
  %i.x = select i1 %.not35, i32 3, i32 6
  %i.y = select i1 %i.v, i32 %i.w, i32 %i.x
  store i32 %i.y, ptr %i.e, align 4, !tbaa !75
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = icmp eq i32 %i.aa, 1
  %.str.10..str.11 = select i1 %i.ab, ptr @.str.10, ptr @.str.11
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !13
  %i.ad = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.ac, ptr noundef nonnull %.str.10..str.11, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %.thread, %bb.c
  %.not3591 = phi i1 [ %.not3588, %.thread ], [ %.not35, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !80
  switch i8 %i.af, label %bb.j [
    i8 2, label %bb.h
    i8 4, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.i
    i8 12, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !57
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = select i1 %.not3591, i32 2, i32 5
  %i.ak = select i1 %.not3591, i32 3, i32 6
  %i.al = select i1 %i.ai, i32 %i.aj, i32 %i.ak
  store i32 %i.al, ptr %i.e, align 4, !tbaa !75
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.an = load i32, ptr %i.am, align 4, !tbaa !57
  %i.ao = icmp eq i32 %i.an, 1
  %.str.10..str.112 = select i1 %i.ao, ptr @.str.10, ptr @.str.11
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !13
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.ap, ptr noundef nonnull %.str.10..str.112, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ar = call noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8) %i.ae)
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !81
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ak

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = call noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8) %i.as)
  store ptr %i.at, ptr %i.b, align 8, !tbaa !81
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ak

bb.l:                                             ; preds = %bb.e, %bb.i, %bb.h, %bb.f, %bb.d
end_hunk_0
