inline.NumInlined: 413
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed21SamsungV0Decompressor10decompressEv:bb.a
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.af, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa, i64 568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149, !noalias !150 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 592
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20, !noalias !150
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa, i64 608
  %i.k = load i32, ptr %i.j, align 8, !tbaa !153, !noalias !150
  %i.l = mul nsw i32 %i.k, %i.i                   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa, i64 612
  %i.n = load i32, ptr %i.m, align 4, !tbaa !154, !noalias !150 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !155, !noalias !150
  %i.q = ashr i32 %i.p, 1                         ; 3 uses
  %i.r = icmp sgt i32 %i.l, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sgt i32 %i.n, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sge i32 %i.q, %i.l
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ugt i32 %i.n, 1
  %i.w = icmp samesign ugt i32 %i.l, 1
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge74.split

.preheader.preheader:                             ; preds = %._crit_edge
  %i.x = add nsw i32 %i.n, -1
  %i.y = add nsw i32 %i.l, -1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = zext nneg i32 %i.q to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.x to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ae, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %i.ad)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !156

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge72
  %indvars.iv80 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next81, %._crit_edge72 ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv80, %i.aa
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ak
  %i.am = or disjoint i64 %indvars.iv80, 1
  %i.an = mul nuw nsw i64 %i.am, %i.aa
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.an
  br label %bb.c

._crit_edge74.split:                              ; preds = %._crit_edge72, %._crit_edge
  ret void

._crit_edge72:                                    ; preds = %bb.c
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next81, %i.ab
  br i1 %i.ap, label %.preheader, label %._crit_edge74.split, !llvm.loop !157

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv77 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next78, %bb.c ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv77 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 2, !tbaa !158
  %i.au = load i16, ptr %i.as, align 2, !tbaa !158
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !158
  store i16 %i.at, ptr %i.as, align 2, !tbaa !158
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next78, %i.z
  br i1 %i.av, label %bb.c, label %._crit_edge72, !llvm.loop !160
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i177 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i154 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i128 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 40 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20, !noalias !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !153, !noalias !161
  %i.f = mul nsw i32 %i.e, %i.c                   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.h = load i32, ptr %i.g, align 4, !tbaa !154, !noalias !161 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !155, !noalias !161
  %i.k = ashr i32 %i.j, 1                         ; 5 uses
  %i.l = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp sge i32 %i.k, %i.f
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !110  ; 3 uses
  %i.t = icmp uge i32 %i.s, %i.q
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = sub i32 %i.s, %i.q                       ; 102 uses
  %i.w = zext i32 %i.q to i64
  %i.x = load ptr, ptr %2, align 8, !tbaa !112
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 66 uses
  %i.z = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp samesign ult i32 %i.v, 4
  br i1 %i.aa, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ab = mul nuw nsw i32 %i.k, %i.h              ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !149, !noalias !161 ; 3 uses
  %i.ae = icmp slt i32 %1, 2                      ; 2 uses
  %i.af = select i1 %i.ae, i32 7, i32 4           ; 4 uses
  %i.ag = add nuw nsw i32 %i.v, 8                 ; 33 uses
  %i.ah = add nsw i32 %1, -1                      ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, %i.h       ; 2 uses
  %i.aj = mul nuw nsw i32 %i.k, %i.ah             ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, %i.f
  %i.al = icmp samesign ule i32 %i.ak, %i.ab
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.am ; 14 uses
  %i.ao = icmp samesign ult i32 %1, %i.h          ; 21 uses
  %i.ap = mul nuw nsw i32 %i.k, %1                ; 2 uses
  %i.aq = add nuw nsw i32 %i.ap, %i.f
  %i.ar = icmp samesign ule i32 %i.aq, %i.ab      ; 2 uses
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.as ; 47 uses
  %i.au = add nsw i32 %1, -2                      ; 2 uses
  %i.av = icmp samesign ult i32 %i.au, %i.h       ; 2 uses
  %i.aw = mul nuw nsw i32 %i.k, %i.au             ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, %i.f
  %i.ay = icmp samesign ule i32 %i.ax, %i.ab
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.az ; 14 uses
  %i.bb = zext nneg i32 %i.f to i64               ; 27 uses
  %i.bc = zext nneg i32 %i.f to i64
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  ret void

bb.d:                                             ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.loopexit
  %.sroa.0496.0 = phi i32 [ %i.af, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0496.1705714, %.loopexit ] ; 2 uses
  %.sroa.17.0 = phi i32 [ %i.af, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.17.1663672, %.loopexit ] ; 2 uses
  %.sroa.32.0 = phi i32 [ %i.af, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.32.1677686, %.loopexit ] ; 2 uses
  %.sroa.47.0 = phi i32 [ %i.af, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.47.1691700, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %indvars.iv.next.pre-phi, %.loopexit ] ; 52 uses
  %.sroa.63226.0480 = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.63226.7, %.loopexit ] ; 5 uses
  %.sroa.24.0479 = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.24.8, %.loopexit ] ; 5 uses
  %.sroa.0198.0478 = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0198.8, %.loopexit ] ; 2 uses
  %i.bd = icmp samesign ult i32 %.sroa.24.0479, 65
  tail call void @llvm.assume(i1 %i.bd)
  %.not.i = icmp samesign ult i32 %.sroa.24.0479, 32
  br i1 %.not.i, label %bb.e, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.be = add nuw nsw i32 %.sroa.63226.0480, 4    ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.be, %i.v
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !148

bb.f:                                             ; preds = %bb.e
  %i.bf = zext nneg i32 %.sroa.63226.0480 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bf
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bh = icmp samesign ugt i32 %.sroa.63226.0480, %i.ag
  br i1 %i.bh, label %bb.h, label %bb.i, !prof !148

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.0480) ; 3 uses
  %i.bi = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.bi)
  %i.bj = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 5
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bl
  %i.bn = zext nneg i32 %i.bj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.i ], [ %i.bg, %bb.f ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bo = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.bp = or disjoint i32 %.sroa.24.0479, 32
  %i.bq = sub nuw nsw i32 32, %.sroa.24.0479
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw i64 %i.bo, %i.br
  %i.bt = or i64 %i.bs, %.sroa.0198.0478
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.d, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i
  %.sroa.0198.9 = phi i64 [ %i.bt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.0198.0478, %bb.d ] ; 7 uses
  %.sroa.24.9 = phi i32 [ %i.bp, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.24.0479, %bb.d ] ; 2 uses
  %.sroa.63226.8 = phi i32 [ %i.be, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.63226.0480, %bb.d ] ; 18 uses
  %i.bu = and i32 %.sroa.63226.8, 3
  %i.bv = icmp eq i32 %i.bu, 0
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr i64 %.sroa.0198.9, 61
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = and i32 %i.bx, 3
  %i.bz = lshr i64 %.sroa.0198.9, 59
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 3                        ; 2 uses
  %i.cc = lshr i64 %.sroa.0198.9, 57
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 3                        ; 2 uses
  %i.cf = lshr i64 %.sroa.0198.9, 55
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 3                        ; 2 uses
  %i.ci = add nsw i32 %.sroa.24.9, -9
  %i.cj = shl i64 %.sroa.0198.9, 9                ; 2 uses
  %.not94 = icmp sgt i64 %.sroa.0198.9, -1
  switch i32 %i.by, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.unreachabledefault [
    i32 3, label %.thread708
    i32 2, label %bb.r
    i32 1, label %bb.q
    i32 0, label %.thread780
  ]

.preheader431.1:                                  ; preds = %.thread708, %.thread780
  %.sroa.0496.1705714 = phi i32 [ %i.dj, %.thread708 ], [ %.sroa.0496.1705, %.thread780 ] ; 35 uses
  %.sroa.0198.3706713 = phi i64 [ %i.dl, %.thread708 ], [ %i.cj, %.thread780 ] ; 3 uses
  %.sroa.24.3707712 = phi i32 [ %i.dk, %.thread708 ], [ %i.ci, %.thread780 ] ; 2 uses
  switch i32 %i.cb, label %.preheader431.1.unreachabledefault [
    i32 3, label %.thread666
    i32 2, label %bb.j
    i32 1, label %bb.k
    i32 0, label %.thread768
  ]

bb.j:                                             ; preds = %.preheader431.1
  br label %bb.k

.thread666:                                       ; preds = %.preheader431.1
  %i.ck = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = lshr i64 %.sroa.0198.3706713, 60
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = add nsw i32 %.sroa.24.3707712, -4
  %i.co = shl i64 %.sroa.0198.3706713, 4
  br label %.preheader431.2

bb.k:                                             ; preds = %.preheader431.1, %bb.j
  %.sink = phi i32 [ -1, %bb.j ], [ %i.cb, %.preheader431.1 ]
  %i.cp = add nsw i32 %.sroa.17.0, %.sink         ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.s, label %.thread768

.preheader431.1.unreachabledefault:               ; preds = %.preheader431.1
  unreachable

.thread768:                                       ; preds = %.preheader431.1, %bb.k
  %.sroa.17.1663 = phi i32 [ %i.cp, %bb.k ], [ %.sroa.17.0, %.preheader431.1 ] ; 2 uses
  %i.cr = icmp samesign ugt i32 %.sroa.17.1663, 16
  br i1 %i.cr, label %bb.t, label %.preheader431.2

.preheader431.2:                                  ; preds = %.thread666, %.thread768
  %.sroa.17.1663672 = phi i32 [ %i.cm, %.thread666 ], [ %.sroa.17.1663, %.thread768 ] ; 35 uses
  %.sroa.0198.3.1664671 = phi i64 [ %i.co, %.thread666 ], [ %.sroa.0198.3706713, %.thread768 ] ; 3 uses
  %.sroa.24.3.1665670 = phi i32 [ %i.cn, %.thread666 ], [ %.sroa.24.3707712, %.thread768 ] ; 2 uses
  switch i32 %i.ce, label %.preheader431.2.unreachabledefault [
    i32 3, label %.thread680
    i32 2, label %bb.l
    i32 1, label %bb.m
    i32 0, label %.thread772
  ]

bb.l:                                             ; preds = %.preheader431.2
  br label %bb.m

.thread680:                                       ; preds = %.preheader431.2
  %i.cs = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = lshr i64 %.sroa.0198.3.1664671, 60
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = add nsw i32 %.sroa.24.3.1665670, -4
  %i.cw = shl i64 %.sroa.0198.3.1664671, 4
  br label %.preheader431.3

bb.m:                                             ; preds = %.preheader431.2, %bb.l
  %.sink784 = phi i32 [ -1, %bb.l ], [ %i.ce, %.preheader431.2 ]
  %i.cx = add nsw i32 %.sroa.32.0, %.sink784      ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.s, label %.thread772

.preheader431.2.unreachabledefault:               ; preds = %.preheader431.2
  unreachable

.thread772:                                       ; preds = %.preheader431.2, %bb.m
  %.sroa.32.1677 = phi i32 [ %i.cx, %bb.m ], [ %.sroa.32.0, %.preheader431.2 ] ; 2 uses
  %i.cz = icmp samesign ugt i32 %.sroa.32.1677, 16
  br i1 %i.cz, label %bb.t, label %.preheader431.3

.preheader431.3:                                  ; preds = %.thread680, %.thread772
  %.sroa.32.1677686 = phi i32 [ %i.cu, %.thread680 ], [ %.sroa.32.1677, %.thread772 ] ; 35 uses
  %.sroa.0198.3.2678685 = phi i64 [ %i.cw, %.thread680 ], [ %.sroa.0198.3.1664671, %.thread772 ] ; 3 uses
  %.sroa.24.3.2679684 = phi i32 [ %i.cv, %.thread680 ], [ %.sroa.24.3.1665670, %.thread772 ] ; 2 uses
  switch i32 %i.ch, label %.preheader431.3.unreachabledefault [
    i32 3, label %.thread694
    i32 2, label %bb.n
    i32 1, label %bb.o
    i32 0, label %.thread776
  ]

bb.n:                                             ; preds = %.preheader431.3
  br label %bb.o

.thread694:                                       ; preds = %.preheader431.3
  %i.da = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.da)
  %i.db = lshr i64 %.sroa.0198.3.2678685, 60
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = add nsw i32 %.sroa.24.3.2679684, -4
  %i.de = shl i64 %.sroa.0198.3.2678685, 4
  br label %bb.p

bb.o:                                             ; preds = %.preheader431.3, %bb.n
  %.sink785 = phi i32 [ -1, %bb.n ], [ %i.ch, %.preheader431.3 ]
  %i.df = add nsw i32 %.sroa.47.0, %.sink785      ; 2 uses
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.s, label %.thread776

.preheader431.3.unreachabledefault:               ; preds = %.preheader431.3
  unreachable

.thread776:                                       ; preds = %.preheader431.3, %bb.o
  %.sroa.47.1691 = phi i32 [ %i.df, %bb.o ], [ %.sroa.47.0, %.preheader431.3 ] ; 2 uses
  %i.dh = icmp samesign ugt i32 %.sroa.47.1691, 16
  br i1 %i.dh, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.thread694, %.thread776
  %.sroa.47.1691700 = phi i32 [ %i.dc, %.thread694 ], [ %.sroa.47.1691, %.thread776 ] ; 35 uses
  %.sroa.0198.3.3692699 = phi i64 [ %i.de, %.thread694 ], [ %.sroa.0198.3.2678685, %.thread776 ] ; 6 uses
  %.sroa.24.3.3693698 = phi i32 [ %i.dd, %.thread694 ], [ %.sroa.24.3.2679684, %.thread776 ] ; 10 uses
  br i1 %.not94, label %bb.dc, label %bb.u

.thread708:                                       ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.di = lshr i64 %i.cj, 60
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = add nsw i32 %.sroa.24.9, -13
  %i.dl = shl i64 %.sroa.0198.9, 13
  br label %.preheader431.1

bb.q:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  br label %bb.r

bb.r:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.q
  %.sink786 = phi i32 [ 1, %bb.q ], [ -1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ]
  %i.dm = add nsw i32 %.sroa.0496.0, %.sink786    ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.s, label %.thread780

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.unreachabledefault: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  unreachable

.thread780:                                       ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.r
  %.sroa.0496.1705 = phi i32 [ %i.dm, %bb.r ], [ %.sroa.0496.0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.do = icmp samesign ugt i32 %.sroa.0496.1705, 16
  br i1 %i.do, label %bb.t, label %.preheader431.1

bb.t:                                             ; preds = %.thread776, %.thread772, %.thread768, %.thread780
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.u:                                             ; preds = %bb.p
  br i1 %i.ae, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dp = add nuw nsw i64 %indvars.iv, 16         ; 2 uses
  %.not97 = icmp samesign ult i64 %i.dp, %i.bb
  br i1 %.not97, label %.preheader430.preheader, label %bb.x

.preheader430.preheader:                          ; preds = %bb.w
  %.not.i121 = icmp eq i32 %.sroa.0496.1705714, 0
  br i1 %.not.i121, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread, label %bb.y

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread: ; preds = %.preheader430.preheader
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.al)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !158
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ar)
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !158
  %i.dt = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !158
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dt
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !158
  %i.dx = or disjoint i64 %indvars.iv, 4          ; 3 uses
  %i.dy = icmp samesign ult i64 %i.dx, %i.bb
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.dx
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !158
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dx
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !158
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.y:                                             ; preds = %.preheader430.preheader
  %i.ec = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.ec)
  %.not.i.i.i122 = icmp samesign ult i32 %.sroa.24.3.3693698, %.sroa.0496.1705714
  br i1 %.not.i.i.i122, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ed = add nuw nsw i32 %.sroa.63226.8, 4       ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i32 %i.ed, %i.v
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa, !prof !148

bb.aa:                                            ; preds = %bb.z
  %i.ee = zext nneg i32 %.sroa.63226.8 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ee
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eg = icmp samesign ugt i32 %.sroa.63226.8, %i.ag
  br i1 %i.eg, label %bb.ac, label %bb.ad, !prof !148

bb.ac:                                            ; preds = %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar, %bb.am, %bb.ah, %bb.ab
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.8) ; 3 uses
  %i.eh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.eh)
  %i.ei = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.ej = icmp ult i32 %i.ei, 5
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ek
  %i.em = zext nneg i32 %i.ei to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.el, i64 %i.em, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i: ; preds = %bb.ad, %bb.aa
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.ad ], [ %i.ef, %bb.aa ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.en = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i to i64
  %i.eo = add nuw nsw i32 %.sroa.24.3.3693698, 32
  %i.ep = sub nuw nsw i32 32, %.sroa.24.3.3693698
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.en, %i.eq
  %i.es = or i64 %i.er, %.sroa.0198.3.3692699
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i
  %.sroa.63226.10 = phi i32 [ %i.ed, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.63226.8, %bb.y ] ; 6 uses
  %i.et = phi i64 [ %i.es, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.0198.3.3692699, %bb.y ] ; 2 uses
  %i.eu = phi i32 [ %i.eo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.24.3.3693698, %bb.y ]
  %i.ev = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = sub nsw i32 %i.eu, %.sroa.0496.1705714  ; 5 uses
  %i.ey = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.ez = shl i64 %i.et, %i.ey                    ; 2 uses
  %i.fa = ashr i64 %i.et, %i.ew
  %i.fb = trunc nsw i64 %i.fa to i16
  tail call void @llvm.assume(i1 %i.ai)
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !158
  %i.fe = add i16 %i.fd, %i.fb
  tail call void @llvm.assume(i1 %i.ao)
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !158
  %i.fg = icmp samesign ult i32 %i.ex, 65
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = and i32 %.sroa.63226.10, 3
  %i.fi = icmp eq i32 %i.fh, 0
  tail call void @llvm.assume(i1 %i.fi)
  %.not.i.i.i122.1 = icmp samesign ult i32 %i.ex, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.1, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.fj = add nuw nsw i32 %.sroa.63226.10, 4      ; 2 uses
  %.not.i.i.i.i.1 = icmp samesign ugt i32 %i.fj, %i.v
  br i1 %.not.i.i.i.i.1, label %bb.ah, label %bb.ag, !prof !148

bb.ag:                                            ; preds = %bb.af
  %i.fk = zext nneg i32 %.sroa.63226.10 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1

bb.ah:                                            ; preds = %bb.af
  %i.fm = icmp samesign ugt i32 %.sroa.63226.10, %i.ag
  br i1 %i.fm, label %bb.ac, label %bb.ai, !prof !148

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.10) ; 3 uses
  %i.fn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.1, 4
  %.sroa.speculated.i.i.i.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.fn)
  %i.fo = sub nsw i32 %.sroa.speculated.i.i.i.i.i.1, %.sroa.speculated27.i.i.i.i.i.1 ; 2 uses
  %i.fp = icmp ult i32 %i.fo, 5
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.1 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fq
  %i.fs = zext nneg i32 %i.fo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.fr, i64 %i.fs, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1: ; preds = %bb.ai, %bb.ag
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.1 = phi ptr [ %.sroa.0.i.i.i.i, %bb.ai ], [ %i.fl, %bb.ag ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ft = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.1 to i64
  %i.fu = add nuw nsw i32 %i.ex, 32
  %i.fv = sub nuw nsw i32 32, %i.ex
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = shl nuw i64 %i.ft, %i.fw
  %i.fy = or i64 %i.fx, %i.ez
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1, %bb.ae
  %.sroa.63226.10.1 = phi i32 [ %i.fj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %.sroa.63226.10, %bb.ae ] ; 6 uses
  %i.fz = phi i64 [ %i.fy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %i.ez, %bb.ae ] ; 2 uses
  %i.ga = phi i32 [ %i.fu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %i.ex, %bb.ae ]
  %i.gb = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = sub nsw i32 %i.ga, %.sroa.0496.1705714  ; 5 uses
  %i.ge = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.gf = shl i64 %i.fz, %i.ge                    ; 2 uses
  %i.gg = ashr i64 %i.fz, %i.gc
  %i.gh = trunc nsw i64 %i.gg to i16
  %i.gi = or disjoint i64 %indvars.iv, 2          ; 3 uses
  %i.gj = icmp samesign ult i64 %i.gi, %i.bb
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.gi
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !158
  %i.gm = add i16 %i.gl, %i.gh
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.gi
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !158
  %i.go = icmp samesign ult i32 %i.gd, 65
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = and i32 %.sroa.63226.10.1, 3
  %i.gq = icmp eq i32 %i.gp, 0
  tail call void @llvm.assume(i1 %i.gq)
  %.not.i.i.i122.2 = icmp samesign ult i32 %i.gd, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.2, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gr = add nuw nsw i32 %.sroa.63226.10.1, 4    ; 2 uses
  %.not.i.i.i.i.2 = icmp samesign ugt i32 %i.gr, %i.v
  br i1 %.not.i.i.i.i.2, label %bb.am, label %bb.al, !prof !148

bb.al:                                            ; preds = %bb.ak
  %i.gs = zext nneg i32 %.sroa.63226.10.1 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2

bb.am:                                            ; preds = %bb.ak
  %i.gu = icmp samesign ugt i32 %.sroa.63226.10.1, %i.ag
  br i1 %i.gu, label %bb.ac, label %bb.an, !prof !148

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.10.1) ; 3 uses
  %i.gv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.2, 4
  %.sroa.speculated.i.i.i.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.gv)
  %i.gw = sub nsw i32 %.sroa.speculated.i.i.i.i.i.2, %.sroa.speculated27.i.i.i.i.i.2 ; 2 uses
  %i.gx = icmp ult i32 %i.gw, 5
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.2 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gy
  %i.ha = zext nneg i32 %i.gw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.gz, i64 %i.ha, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2: ; preds = %bb.an, %bb.al
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.2 = phi ptr [ %.sroa.0.i.i.i.i, %bb.an ], [ %i.gt, %bb.al ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.hb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.2 to i64
  %i.hc = add nuw nsw i32 %i.gd, 32
  %i.hd = sub nuw nsw i32 32, %i.gd
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl nuw i64 %i.hb, %i.he
  %i.hg = or i64 %i.hf, %i.gf
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2, %bb.aj
  %.sroa.63226.10.2 = phi i32 [ %i.gr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %.sroa.63226.10.1, %bb.aj ] ; 6 uses
  %i.hh = phi i64 [ %i.hg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %i.gf, %bb.aj ] ; 2 uses
  %i.hi = phi i32 [ %i.hc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %i.gd, %bb.aj ]
  %i.hj = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = sub nsw i32 %i.hi, %.sroa.0496.1705714  ; 5 uses
  %i.hm = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.hn = shl i64 %i.hh, %i.hm                    ; 2 uses
  %i.ho = ashr i64 %i.hh, %i.hk
  %i.hp = trunc nsw i64 %i.ho to i16
  %i.hq = or disjoint i64 %indvars.iv, 4          ; 3 uses
  %i.hr = icmp samesign ult i64 %i.hq, %i.bb
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.hq
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !158
  %i.hu = add i16 %i.ht, %i.hp
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hq
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !158
  %i.hw = icmp samesign ult i32 %i.hl, 65
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = and i32 %.sroa.63226.10.2, 3
  %i.hy = icmp eq i32 %i.hx, 0
  tail call void @llvm.assume(i1 %i.hy)
  %.not.i.i.i122.3 = icmp samesign ult i32 %i.hl, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.3, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.hz = add nuw nsw i32 %.sroa.63226.10.2, 4    ; 2 uses
  %.not.i.i.i.i.3 = icmp samesign ugt i32 %i.hz, %i.v
  br i1 %.not.i.i.i.i.3, label %bb.ar, label %bb.aq, !prof !148

bb.aq:                                            ; preds = %bb.ap
  %i.ia = zext nneg i32 %.sroa.63226.10.2 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ia
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3

bb.ar:                                            ; preds = %bb.ap
  %i.ic = icmp samesign ugt i32 %.sroa.63226.10.2, %i.ag
  br i1 %i.ic, label %bb.ac, label %bb.as, !prof !148

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.10.2) ; 3 uses
  %i.id = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.3, 4
  %.sroa.speculated.i.i.i.i.i.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.id)
  %i.ie = sub nsw i32 %.sroa.speculated.i.i.i.i.i.3, %.sroa.speculated27.i.i.i.i.i.3 ; 2 uses
  %i.if = icmp ult i32 %i.ie, 5
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.3 to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ig
  %i.ii = zext nneg i32 %i.ie to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ih, i64 %i.ii, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3: ; preds = %bb.as, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.3 = phi ptr [ %.sroa.0.i.i.i.i, %bb.as ], [ %i.ib, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ij = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.3 to i64
  %i.ik = add nuw nsw i32 %i.hl, 32
  %i.il = sub nuw nsw i32 32, %i.hl
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl nuw i64 %i.ij, %i.im
  %i.io = or i64 %i.in, %i.hn
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3, %bb.ao
  %.sroa.63226.10.3 = phi i32 [ %i.hz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %.sroa.63226.10.2, %bb.ao ]
  %i.ip = phi i64 [ %i.io, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %i.hn, %bb.ao ] ; 2 uses
  %i.iq = phi i32 [ %i.ik, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %i.hl, %bb.ao ]
  %i.ir = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = sub nsw i32 %i.iq, %.sroa.0496.1705714
  %i.iu = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.iv = shl i64 %i.ip, %i.iu
  %i.iw = ashr i64 %i.ip, %i.is
  %i.ix = trunc nsw i64 %i.iw to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3
  %.sroa.0198.10.3 = phi i64 [ %.sroa.0198.3.3692699, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.iv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 3 uses
  %.sroa.24.10.3 = phi i32 [ %.sroa.24.3.3693698, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.it, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 6 uses
  %.sroa.63226.11.3 = phi i32 [ %.sroa.63226.8, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %.sroa.63226.10.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 8 uses
  %.0.i.3 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.ix, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ]
  %i.iy = or disjoint i64 %indvars.iv, 6          ; 3 uses
  %i.iz = icmp samesign ult i64 %i.iy, %i.bb
  tail call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.iy
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !158
  %i.jc = add i16 %i.jb, %.0.i.3
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iy
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !158
  %.not.i121.4 = icmp eq i32 %.sroa.17.1663672, 0
  br i1 %.not.i121.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread, label %bb.at

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3
  %i.je = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !158
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.je
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !158
  %i.ji = or disjoint i64 %indvars.iv, 10         ; 2 uses
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !158
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ji
  store i16 %i.jk, ptr %i.jl, align 2, !tbaa !158
  %i.jm = or disjoint i64 %indvars.iv, 12         ; 3 uses
  %i.jn = icmp samesign ult i64 %i.jm, %i.bb
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.jm
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !158
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.jm
  store i16 %i.jp, ptr %i.jq, align 2, !tbaa !158
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7

bb.at:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3
  %i.jr = icmp samesign ult i32 %.sroa.24.10.3, 65
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = icmp sgt i32 %.sroa.63226.11.3, -1
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = and i32 %.sroa.63226.11.3, 3
  %i.ju = icmp eq i32 %i.jt, 0
  tail call void @llvm.assume(i1 %i.ju)
  %.not.i.i.i122.4 = icmp samesign ult i32 %.sroa.24.10.3, %.sroa.17.1663672
  br i1 %.not.i.i.i122.4, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.jv = add nuw nsw i32 %.sroa.63226.11.3, 4    ; 2 uses
  %.not.i.i.i.i.4 = icmp samesign ugt i32 %i.jv, %i.v
  br i1 %.not.i.i.i.i.4, label %bb.aw, label %bb.av, !prof !148

bb.av:                                            ; preds = %bb.au
  %i.jw = zext nneg i32 %.sroa.63226.11.3 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.jw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4

bb.aw:                                            ; preds = %bb.au
  %i.jy = icmp samesign ugt i32 %.sroa.63226.11.3, %i.ag
  br i1 %i.jy, label %bb.ac, label %bb.ax, !prof !148

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.11.3) ; 3 uses
  %i.jz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.4, 4
  %.sroa.speculated.i.i.i.i.i.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.jz)
  %i.ka = sub nsw i32 %.sroa.speculated.i.i.i.i.i.4, %.sroa.speculated27.i.i.i.i.i.4 ; 2 uses
  %i.kb = icmp ult i32 %i.ka, 5
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.4 to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.kc
  %i.ke = zext nneg i32 %i.ka to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.kd, i64 %i.ke, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4: ; preds = %bb.ax, %bb.av
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.4 = phi ptr [ %.sroa.0.i.i.i.i, %bb.ax ], [ %i.jx, %bb.av ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.4 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.kf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.4 to i64
  %i.kg = add nuw nsw i32 %.sroa.24.10.3, 32
  %i.kh = sub nuw nsw i32 32, %.sroa.24.10.3
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl nuw i64 %i.kf, %i.ki
  %i.kk = or i64 %i.kj, %.sroa.0198.10.3
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4, %bb.at
  %.sroa.63226.10.4 = phi i32 [ %i.jv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.63226.11.3, %bb.at ] ; 6 uses
  %i.kl = phi i64 [ %i.kk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.0198.10.3, %bb.at ] ; 2 uses
  %i.km = phi i32 [ %i.kg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.24.10.3, %bb.at ]
  %i.kn = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = sub nsw i32 %i.km, %.sroa.17.1663672    ; 5 uses
  %i.kq = zext nneg i32 %.sroa.17.1663672 to i64
  %i.kr = shl i64 %i.kl, %i.kq                    ; 2 uses
  %i.ks = ashr i64 %i.kl, %i.ko
  %i.kt = trunc nsw i64 %i.ks to i16
  %i.ku = or disjoint i64 %indvars.iv, 8          ; 3 uses
  %i.kv = icmp samesign ult i64 %i.ku, %i.bb
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ku
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !158
  %i.ky = add i16 %i.kx, %i.kt
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ku
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !158
  %i.la = icmp samesign ult i32 %i.kp, 65
  tail call void @llvm.assume(i1 %i.la)
  %i.lb = and i32 %.sroa.63226.10.4, 3
  %i.lc = icmp eq i32 %i.lb, 0
  tail call void @llvm.assume(i1 %i.lc)
  %.not.i.i.i122.5 = icmp samesign ult i32 %i.kp, %.sroa.17.1663672
  br i1 %.not.i.i.i122.5, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ld = add nuw nsw i32 %.sroa.63226.10.4, 4    ; 2 uses
  %.not.i.i.i.i.5 = icmp samesign ugt i32 %i.ld, %i.v
  br i1 %.not.i.i.i.i.5, label %bb.bb, label %bb.ba, !prof !148

bb.ba:                                            ; preds = %bb.az
  %i.le = zext nneg i32 %.sroa.63226.10.4 to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.le
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5

bb.bb:                                            ; preds = %bb.az
  %i.lg = icmp samesign ugt i32 %.sroa.63226.10.4, %i.ag
  br i1 %i.lg, label %bb.ac, label %bb.bc, !prof !148

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.10.4) ; 3 uses
  %i.lh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.5, 4
  %.sroa.speculated.i.i.i.i.i.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.lh)
  %i.li = sub nsw i32 %.sroa.speculated.i.i.i.i.i.5, %.sroa.speculated27.i.i.i.i.i.5 ; 2 uses
  %i.lj = icmp ult i32 %i.li, 5
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.5 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.lk
  %i.lm = zext nneg i32 %i.li to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ll, i64 %i.lm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5: ; preds = %bb.bc, %bb.ba
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.5 = phi ptr [ %.sroa.0.i.i.i.i, %bb.bc ], [ %i.lf, %bb.ba ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.5 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.5, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ln = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.5 to i64
  %i.lo = add nuw nsw i32 %i.kp, 32
  %i.lp = sub nuw nsw i32 32, %i.kp
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = shl nuw i64 %i.ln, %i.lq
  %i.ls = or i64 %i.lr, %i.kr
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5, %bb.ay
  %.sroa.63226.10.5 = phi i32 [ %i.ld, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5 ], [ %.sroa.63226.10.4, %bb.ay ] ; 6 uses
  %i.lt = phi i64 [ %i.ls, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5 ], [ %i.kr, %bb.ay ] ; 2 uses
  %i.lu = phi i32 [ %i.lo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5 ], [ %i.kp, %bb.ay ]
  %i.lv = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = sub nsw i32 %i.lu, %.sroa.17.1663672    ; 5 uses
  %i.ly = zext nneg i32 %.sroa.17.1663672 to i64
  %i.lz = shl i64 %i.lt, %i.ly                    ; 2 uses
  %i.ma = ashr i64 %i.lt, %i.lw
  %i.mb = trunc nsw i64 %i.ma to i16
  %i.mc = or disjoint i64 %indvars.iv, 10         ; 3 uses
  %i.md = icmp samesign ult i64 %i.mc, %i.bb
  tail call void @llvm.assume(i1 %i.md)
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.mc
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !158
  %i.mg = add i16 %i.mf, %i.mb
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.mc
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !158
  %i.mi = icmp samesign ult i32 %i.lx, 65
  tail call void @llvm.assume(i1 %i.mi)
  %i.mj = and i32 %.sroa.63226.10.5, 3
  %i.mk = icmp eq i32 %i.mj, 0
  tail call void @llvm.assume(i1 %i.mk)
  %.not.i.i.i122.6 = icmp samesign ult i32 %i.lx, %.sroa.17.1663672
  br i1 %.not.i.i.i122.6, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ml = add nuw nsw i32 %.sroa.63226.10.5, 4    ; 2 uses
  %.not.i.i.i.i.6 = icmp samesign ugt i32 %i.ml, %i.v
  br i1 %.not.i.i.i.i.6, label %bb.bg, label %bb.bf, !prof !148

bb.bf:                                            ; preds = %bb.be
  %i.mm = zext nneg i32 %.sroa.63226.10.5 to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.mm
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6

bb.bg:                                            ; preds = %bb.be
  %i.mo = icmp samesign ugt i32 %.sroa.63226.10.5, %i.ag
  br i1 %i.mo, label %bb.ac, label %bb.bh, !prof !148

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.10.5) ; 3 uses
  %i.mp = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.6, 4
  %.sroa.speculated.i.i.i.i.i.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.mp)
  %i.mq = sub nsw i32 %.sroa.speculated.i.i.i.i.i.6, %.sroa.speculated27.i.i.i.i.i.6 ; 2 uses
  %i.mr = icmp ult i32 %i.mq, 5
  tail call void @llvm.assume(i1 %i.mr)
  %i.ms = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.6 to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ms
  %i.mu = zext nneg i32 %i.mq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.mt, i64 %i.mu, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6: ; preds = %bb.bh, %bb.bf
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.6 = phi ptr [ %.sroa.0.i.i.i.i, %bb.bh ], [ %i.mn, %bb.bf ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.6 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.6, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.mv = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.6 to i64
  %i.mw = add nuw nsw i32 %i.lx, 32
  %i.mx = sub nuw nsw i32 32, %i.lx
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl nuw i64 %i.mv, %i.my
  %i.na = or i64 %i.mz, %i.lz
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6, %bb.bd
  %.sroa.63226.10.6 = phi i32 [ %i.ml, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6 ], [ %.sroa.63226.10.5, %bb.bd ] ; 6 uses
  %i.nb = phi i64 [ %i.na, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6 ], [ %i.lz, %bb.bd ] ; 2 uses
  %i.nc = phi i32 [ %i.mw, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6 ], [ %i.lx, %bb.bd ]
  %i.nd = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = sub nsw i32 %i.nc, %.sroa.17.1663672    ; 5 uses
  %i.ng = zext nneg i32 %.sroa.17.1663672 to i64
  %i.nh = shl i64 %i.nb, %i.ng                    ; 2 uses
  %i.ni = ashr i64 %i.nb, %i.ne
  %i.nj = trunc nsw i64 %i.ni to i16
  %i.nk = or disjoint i64 %indvars.iv, 12         ; 3 uses
  %i.nl = icmp samesign ult i64 %i.nk, %i.bb
  tail call void @llvm.assume(i1 %i.nl)
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.nk
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !158
  %i.no = add i16 %i.nn, %i.nj
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.nk
  store i16 %i.no, ptr %i.np, align 2, !tbaa !158
  %i.nq = icmp samesign ult i32 %i.nf, 65
  tail call void @llvm.assume(i1 %i.nq)
  %i.nr = and i32 %.sroa.63226.10.6, 3
  %i.ns = icmp eq i32 %i.nr, 0
  tail call void @llvm.assume(i1 %i.ns)
  %.not.i.i.i122.7 = icmp samesign ult i32 %i.nf, %.sroa.17.1663672
  br i1 %.not.i.i.i122.7, label %bb.bj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.nt = add nuw nsw i32 %.sroa.63226.10.6, 4    ; 2 uses
  %.not.i.i.i.i.7 = icmp samesign ugt i32 %i.nt, %i.v
  br i1 %.not.i.i.i.i.7, label %bb.bl, label %bb.bk, !prof !148

bb.bk:                                            ; preds = %bb.bj
  %i.nu = zext nneg i32 %.sroa.63226.10.6 to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.nu
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7

bb.bl:                                            ; preds = %bb.bj
  %i.nw = icmp samesign ugt i32 %.sroa.63226.10.6, %i.ag
  br i1 %i.nw, label %bb.ac, label %bb.bm, !prof !148

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.10.6) ; 3 uses
  %i.nx = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.7, 4
  %.sroa.speculated.i.i.i.i.i.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.nx)
  %i.ny = sub nsw i32 %.sroa.speculated.i.i.i.i.i.7, %.sroa.speculated27.i.i.i.i.i.7 ; 2 uses
  %i.nz = icmp ult i32 %i.ny, 5
  tail call void @llvm.assume(i1 %i.nz)
  %i.oa = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.7 to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.oa
  %i.oc = zext nneg i32 %i.ny to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ob, i64 %i.oc, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7: ; preds = %bb.bm, %bb.bk
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.7 = phi ptr [ %.sroa.0.i.i.i.i, %bb.bm ], [ %i.nv, %bb.bk ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.7 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.7, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.od = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.7 to i64
  %i.oe = add nuw nsw i32 %i.nf, 32
  %i.of = sub nuw nsw i32 32, %i.nf
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = shl nuw i64 %i.od, %i.og
  %i.oi = or i64 %i.oh, %i.nh
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7, %bb.bi
  %.sroa.63226.10.7 = phi i32 [ %i.nt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7 ], [ %.sroa.63226.10.6, %bb.bi ]
  %i.oj = phi i64 [ %i.oi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7 ], [ %i.nh, %bb.bi ] ; 2 uses
  %i.ok = phi i32 [ %i.oe, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7 ], [ %i.nf, %bb.bi ]
  %i.ol = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = sub nsw i32 %i.ok, %.sroa.17.1663672
  %i.oo = zext nneg i32 %.sroa.17.1663672 to i64
  %i.op = shl i64 %i.oj, %i.oo
  %i.oq = ashr i64 %i.oj, %i.om
  %i.or = trunc nsw i64 %i.oq to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7
  %.sroa.0198.10.7 = phi i64 [ %.sroa.0198.10.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %i.op, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ] ; 3 uses
  %.sroa.24.10.7 = phi i32 [ %.sroa.24.10.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %i.on, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ] ; 6 uses
  %.sroa.63226.11.7 = phi i32 [ %.sroa.63226.11.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %.sroa.63226.10.7, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ] ; 8 uses
  %.0.i.7 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %i.or, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ]
  %i.os = or disjoint i64 %indvars.iv, 14         ; 3 uses
  %i.ot = icmp samesign ult i64 %i.os, %i.bb
  tail call void @llvm.assume(i1 %i.ot)
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.os
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !158
  %i.ow = add i16 %i.ov, %.0.i.7
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.os
  store i16 %i.ow, ptr %i.ox, align 2, !tbaa !158
  %.not.i129 = icmp eq i32 %.sroa.32.1677686, 0
  br i1 %.not.i129, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread, label %bb.bn

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7
  %i.oy = or disjoint i64 %indvars.iv, 1          ; 2 uses
  tail call void @llvm.assume(i1 %i.av)
  tail call void @llvm.assume(i1 %i.ay)
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.oy
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !158
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.oy
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !158
  %i.pc = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.pc
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !158
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.pc
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !158
  %i.pg = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !158
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.pg
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !158
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.3

bb.bn:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7
  %i.pk = icmp samesign ult i32 %.sroa.24.10.7, 65
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = icmp sgt i32 %.sroa.63226.11.7, -1
  tail call void @llvm.assume(i1 %i.pl)
  %i.pm = and i32 %.sroa.63226.11.7, 3
  %i.pn = icmp eq i32 %i.pm, 0
  tail call void @llvm.assume(i1 %i.pn)
  %.not.i.i.i130 = icmp samesign ult i32 %.sroa.24.10.7, %.sroa.32.1677686
  br i1 %.not.i.i.i130, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.po = add nuw nsw i32 %.sroa.63226.11.7, 4    ; 2 uses
  %.not.i.i.i.i135 = icmp samesign ugt i32 %i.po, %i.v
  br i1 %.not.i.i.i.i135, label %bb.bq, label %bb.bp, !prof !148

bb.bp:                                            ; preds = %bb.bo
  %i.pp = zext nneg i32 %.sroa.63226.11.7 to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.pp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137

bb.bq:                                            ; preds = %bb.bo
  %i.pr = icmp samesign ugt i32 %.sroa.63226.11.7, %i.ag
  br i1 %i.pr, label %bb.br, label %bb.bs, !prof !148

bb.br:                                            ; preds = %bb.da, %bb.cv, %bb.cq, %bb.cl, %bb.cg, %bb.cb, %bb.bw, %bb.bq
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.11.7) ; 3 uses
  %i.ps = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142, 4
  %.sroa.speculated.i.i.i.i.i143 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.ps)
  %i.pt = sub nsw i32 %.sroa.speculated.i.i.i.i.i143, %.sroa.speculated27.i.i.i.i.i142 ; 2 uses
  %i.pu = icmp ult i32 %i.pt, 5
  tail call void @llvm.assume(i1 %i.pu)
  %i.pv = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142 to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.pv
  %i.px = zext nneg i32 %i.pt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.pw, i64 %i.px, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137: ; preds = %bb.bs, %bb.bp
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.bs ], [ %i.pq, %bb.bp ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.py = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139 to i64
  %i.pz = add nuw nsw i32 %.sroa.24.10.7, 32
  %i.qa = sub nuw nsw i32 32, %.sroa.24.10.7
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = shl nuw i64 %i.py, %i.qb
  %i.qd = or i64 %i.qc, %.sroa.0198.10.7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137
  %.sroa.63226.12 = phi i32 [ %i.po, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137 ], [ %.sroa.63226.11.7, %bb.bn ] ; 6 uses
  %i.qe = phi i64 [ %i.qd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137 ], [ %.sroa.0198.10.7, %bb.bn ] ; 2 uses
  %i.qf = phi i32 [ %i.pz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137 ], [ %.sroa.24.10.7, %bb.bn ]
  %i.qg = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = sub nsw i32 %i.qf, %.sroa.32.1677686    ; 5 uses
  %i.qj = zext nneg i32 %.sroa.32.1677686 to i64
  %i.qk = shl i64 %i.qe, %i.qj                    ; 2 uses
  %i.ql = ashr i64 %i.qe, %i.qh
  %i.qm = trunc nsw i64 %i.ql to i16
  %i.qn = or disjoint i64 %indvars.iv, 1          ; 2 uses
  tail call void @llvm.assume(i1 %i.av)
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !158
  %i.qq = add i16 %i.qp, %i.qm
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.qn
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !158
  %i.qs = icmp samesign ult i32 %i.qi, 65
  tail call void @llvm.assume(i1 %i.qs)
  %i.qt = and i32 %.sroa.63226.12, 3
  %i.qu = icmp eq i32 %i.qt, 0
  tail call void @llvm.assume(i1 %i.qu)
  %.not.i.i.i130.1 = icmp samesign ult i32 %i.qi, %.sroa.32.1677686
  br i1 %.not.i.i.i130.1, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.qv = add nuw nsw i32 %.sroa.63226.12, 4      ; 2 uses
  %.not.i.i.i.i135.1 = icmp samesign ugt i32 %i.qv, %i.v
  br i1 %.not.i.i.i.i135.1, label %bb.bw, label %bb.bv, !prof !148

bb.bv:                                            ; preds = %bb.bu
  %i.qw = zext nneg i32 %.sroa.63226.12 to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.qw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1

bb.bw:                                            ; preds = %bb.bu
  %i.qy = icmp samesign ugt i32 %.sroa.63226.12, %i.ag
  br i1 %i.qy, label %bb.br, label %bb.bx, !prof !148

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.12) ; 3 uses
  %i.qz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.1, 4
  %.sroa.speculated.i.i.i.i.i143.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.qz)
  %i.ra = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.1, %.sroa.speculated27.i.i.i.i.i142.1 ; 2 uses
  %i.rb = icmp ult i32 %i.ra, 5
  tail call void @llvm.assume(i1 %i.rb)
  %i.rc = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.1 to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.rc
  %i.re = zext nneg i32 %i.ra to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.rd, i64 %i.re, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1: ; preds = %bb.bx, %bb.bv
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.1 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.bx ], [ %i.qx, %bb.bv ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.rf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.1 to i64
  %i.rg = add nuw nsw i32 %i.qi, 32
  %i.rh = sub nuw nsw i32 32, %i.qi
  %i.ri = zext nneg i32 %i.rh to i64
  %i.rj = shl nuw i64 %i.rf, %i.ri
  %i.rk = or i64 %i.rj, %i.qk
  br label %bb.by

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1, %bb.bt
  %.sroa.63226.12.1 = phi i32 [ %i.qv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1 ], [ %.sroa.63226.12, %bb.bt ] ; 6 uses
  %i.rl = phi i64 [ %i.rk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1 ], [ %i.qk, %bb.bt ] ; 2 uses
  %i.rm = phi i32 [ %i.rg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.1 ], [ %i.qi, %bb.bt ]
  %i.rn = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = sub nsw i32 %i.rm, %.sroa.32.1677686    ; 5 uses
  %i.rq = zext nneg i32 %.sroa.32.1677686 to i64
  %i.rr = shl i64 %i.rl, %i.rq                    ; 2 uses
  %i.rs = ashr i64 %i.rl, %i.ro
  %i.rt = trunc nsw i64 %i.rs to i16
  %i.ru = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ru
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !158
  %i.rx = add i16 %i.rw, %i.rt
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ru
  store i16 %i.rx, ptr %i.ry, align 2, !tbaa !158
  %i.rz = icmp samesign ult i32 %i.rp, 65
  tail call void @llvm.assume(i1 %i.rz)
  %i.sa = and i32 %.sroa.63226.12.1, 3
  %i.sb = icmp eq i32 %i.sa, 0
  tail call void @llvm.assume(i1 %i.sb)
  %.not.i.i.i130.2 = icmp samesign ult i32 %i.rp, %.sroa.32.1677686
  br i1 %.not.i.i.i130.2, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.sc = add nuw nsw i32 %.sroa.63226.12.1, 4    ; 2 uses
  %.not.i.i.i.i135.2 = icmp samesign ugt i32 %i.sc, %i.v
  br i1 %.not.i.i.i.i135.2, label %bb.cb, label %bb.ca, !prof !148

bb.ca:                                            ; preds = %bb.bz
  %i.sd = zext nneg i32 %.sroa.63226.12.1 to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.sd
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2

bb.cb:                                            ; preds = %bb.bz
  %i.sf = icmp samesign ugt i32 %.sroa.63226.12.1, %i.ag
  br i1 %i.sf, label %bb.br, label %bb.cc, !prof !148

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.12.1) ; 3 uses
  %i.sg = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.2, 4
  %.sroa.speculated.i.i.i.i.i143.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.sg)
  %i.sh = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.2, %.sroa.speculated27.i.i.i.i.i142.2 ; 2 uses
  %i.si = icmp ult i32 %i.sh, 5
  tail call void @llvm.assume(i1 %i.si)
  %i.sj = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.2 to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.sj
  %i.sl = zext nneg i32 %i.sh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.sk, i64 %i.sl, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2: ; preds = %bb.cc, %bb.ca
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.2 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.cc ], [ %i.se, %bb.ca ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.sm = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.2 to i64
  %i.sn = add nuw nsw i32 %i.rp, 32
  %i.so = sub nuw nsw i32 32, %i.rp
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = shl nuw i64 %i.sm, %i.sp
  %i.sr = or i64 %i.sq, %i.rr
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2, %bb.by
  %.sroa.63226.12.2 = phi i32 [ %i.sc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2 ], [ %.sroa.63226.12.1, %bb.by ] ; 6 uses
  %i.ss = phi i64 [ %i.sr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2 ], [ %i.rr, %bb.by ] ; 2 uses
  %i.st = phi i32 [ %i.sn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.2 ], [ %i.rp, %bb.by ]
  %i.su = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = sub nsw i32 %i.st, %.sroa.32.1677686    ; 5 uses
  %i.sx = zext nneg i32 %.sroa.32.1677686 to i64
  %i.sy = shl i64 %i.ss, %i.sx                    ; 2 uses
  %i.sz = ashr i64 %i.ss, %i.sv
  %i.ta = trunc nsw i64 %i.sz to i16
  %i.tb = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.tb
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !158
  %i.te = add i16 %i.td, %i.ta
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.tb
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !158
  %i.tg = icmp samesign ult i32 %i.sw, 65
  tail call void @llvm.assume(i1 %i.tg)
  %i.th = and i32 %.sroa.63226.12.2, 3
  %i.ti = icmp eq i32 %i.th, 0
  tail call void @llvm.assume(i1 %i.ti)
  %.not.i.i.i130.3 = icmp samesign ult i32 %i.sw, %.sroa.32.1677686
  br i1 %.not.i.i.i130.3, label %bb.ce, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.tj = add nuw nsw i32 %.sroa.63226.12.2, 4    ; 2 uses
  %.not.i.i.i.i135.3 = icmp samesign ugt i32 %i.tj, %i.v
  br i1 %.not.i.i.i.i135.3, label %bb.cg, label %bb.cf, !prof !148

bb.cf:                                            ; preds = %bb.ce
  %i.tk = zext nneg i32 %.sroa.63226.12.2 to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.tk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3

bb.cg:                                            ; preds = %bb.ce
  %i.tm = icmp samesign ugt i32 %.sroa.63226.12.2, %i.ag
  br i1 %i.tm, label %bb.br, label %bb.ch, !prof !148

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.12.2) ; 3 uses
  %i.tn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.3, 4
  %.sroa.speculated.i.i.i.i.i143.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.tn)
  %i.to = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.3, %.sroa.speculated27.i.i.i.i.i142.3 ; 2 uses
  %i.tp = icmp ult i32 %i.to, 5
  tail call void @llvm.assume(i1 %i.tp)
  %i.tq = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.3 to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.tq
  %i.ts = zext nneg i32 %i.to to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.tr, i64 %i.ts, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3: ; preds = %bb.ch, %bb.cf
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.3 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.ch ], [ %i.tl, %bb.cf ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.tt = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.3 to i64
  %i.tu = add nuw nsw i32 %i.sw, 32
  %i.tv = sub nuw nsw i32 32, %i.sw
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = shl nuw i64 %i.tt, %i.tw
  %i.ty = or i64 %i.tx, %i.sy
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3, %bb.cd
  %.sroa.63226.12.3 = phi i32 [ %i.tj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3 ], [ %.sroa.63226.12.2, %bb.cd ]
  %i.tz = phi i64 [ %i.ty, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3 ], [ %i.sy, %bb.cd ] ; 2 uses
  %i.ua = phi i32 [ %i.tu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.3 ], [ %i.sw, %bb.cd ]
  %i.ub = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = sub nsw i32 %i.ua, %.sroa.32.1677686
  %i.ue = zext nneg i32 %.sroa.32.1677686 to i64
  %i.uf = shl i64 %i.tz, %i.ue
  %i.ug = ashr i64 %i.tz, %i.uc
  %i.uh = trunc nsw i64 %i.ug to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.3

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.3: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3
  %.sroa.0198.11.3 = phi i64 [ %.sroa.0198.10.7, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread ], [ %i.uf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3 ] ; 3 uses
  %.sroa.24.11.3 = phi i32 [ %.sroa.24.10.7, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread ], [ %i.ud, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3 ] ; 6 uses
  %.sroa.63226.13.3 = phi i32 [ %.sroa.63226.11.7, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread ], [ %.sroa.63226.12.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3 ] ; 8 uses
  %.0.i134.3 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread ], [ %i.uh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.3 ]
  %i.ui = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ui
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !158
  %i.ul = add i16 %i.uk, %.0.i134.3
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ui
  store i16 %i.ul, ptr %i.um, align 2, !tbaa !158
  %.not.i129.4 = icmp eq i32 %.sroa.47.1691700, 0
  br i1 %.not.i129.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread, label %bb.ci

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.3
  %i.un = or disjoint i64 %indvars.iv, 9          ; 2 uses
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.un
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !158
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.un
  store i16 %i.up, ptr %i.uq, align 2, !tbaa !158
  %i.ur = or disjoint i64 %indvars.iv, 11         ; 2 uses
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ur
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !158
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ur
  store i16 %i.ut, ptr %i.uu, align 2, !tbaa !158
  %i.uv = or disjoint i64 %indvars.iv, 13         ; 2 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !158
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.uv
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !158
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7

bb.ci:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.3
  %i.uz = icmp samesign ult i32 %.sroa.24.11.3, 65
  tail call void @llvm.assume(i1 %i.uz)
  %i.va = icmp sgt i32 %.sroa.63226.13.3, -1
  tail call void @llvm.assume(i1 %i.va)
  %i.vb = and i32 %.sroa.63226.13.3, 3
  %i.vc = icmp eq i32 %i.vb, 0
  tail call void @llvm.assume(i1 %i.vc)
  %.not.i.i.i130.4 = icmp samesign ult i32 %.sroa.24.11.3, %.sroa.47.1691700
  br i1 %.not.i.i.i130.4, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.vd = add nuw nsw i32 %.sroa.63226.13.3, 4    ; 2 uses
  %.not.i.i.i.i135.4 = icmp samesign ugt i32 %i.vd, %i.v
  br i1 %.not.i.i.i.i135.4, label %bb.cl, label %bb.ck, !prof !148

bb.ck:                                            ; preds = %bb.cj
  %i.ve = zext nneg i32 %.sroa.63226.13.3 to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ve
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4

bb.cl:                                            ; preds = %bb.cj
  %i.vg = icmp samesign ugt i32 %.sroa.63226.13.3, %i.ag
  br i1 %i.vg, label %bb.br, label %bb.cm, !prof !148

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.13.3) ; 3 uses
  %i.vh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.4, 4
  %.sroa.speculated.i.i.i.i.i143.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.vh)
  %i.vi = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.4, %.sroa.speculated27.i.i.i.i.i142.4 ; 2 uses
  %i.vj = icmp ult i32 %i.vi, 5
  tail call void @llvm.assume(i1 %i.vj)
  %i.vk = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.4 to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.vk
  %i.vm = zext nneg i32 %i.vi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.vl, i64 %i.vm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4: ; preds = %bb.cm, %bb.ck
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.4 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.cm ], [ %i.vf, %bb.ck ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.4 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.vn = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.4 to i64
  %i.vo = add nuw nsw i32 %.sroa.24.11.3, 32
  %i.vp = sub nuw nsw i32 32, %.sroa.24.11.3
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = shl nuw i64 %i.vn, %i.vq
  %i.vs = or i64 %i.vr, %.sroa.0198.11.3
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4, %bb.ci
  %.sroa.63226.12.4 = phi i32 [ %i.vd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4 ], [ %.sroa.63226.13.3, %bb.ci ] ; 6 uses
  %i.vt = phi i64 [ %i.vs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4 ], [ %.sroa.0198.11.3, %bb.ci ] ; 2 uses
  %i.vu = phi i32 [ %i.vo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.4 ], [ %.sroa.24.11.3, %bb.ci ]
  %i.vv = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = sub nsw i32 %i.vu, %.sroa.47.1691700    ; 5 uses
  %i.vy = zext nneg i32 %.sroa.47.1691700 to i64
  %i.vz = shl i64 %i.vt, %i.vy                    ; 2 uses
  %i.wa = ashr i64 %i.vt, %i.vw
  %i.wb = trunc nsw i64 %i.wa to i16
  %i.wc = or disjoint i64 %indvars.iv, 9          ; 2 uses
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.wc
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !158
  %i.wf = add i16 %i.we, %i.wb
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.wc
  store i16 %i.wf, ptr %i.wg, align 2, !tbaa !158
  %i.wh = icmp samesign ult i32 %i.vx, 65
  tail call void @llvm.assume(i1 %i.wh)
  %i.wi = and i32 %.sroa.63226.12.4, 3
  %i.wj = icmp eq i32 %i.wi, 0
  tail call void @llvm.assume(i1 %i.wj)
  %.not.i.i.i130.5 = icmp samesign ult i32 %i.vx, %.sroa.47.1691700
  br i1 %.not.i.i.i130.5, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.wk = add nuw nsw i32 %.sroa.63226.12.4, 4    ; 2 uses
  %.not.i.i.i.i135.5 = icmp samesign ugt i32 %i.wk, %i.v
  br i1 %.not.i.i.i.i135.5, label %bb.cq, label %bb.cp, !prof !148

bb.cp:                                            ; preds = %bb.co
  %i.wl = zext nneg i32 %.sroa.63226.12.4 to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.wl
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5

bb.cq:                                            ; preds = %bb.co
  %i.wn = icmp samesign ugt i32 %.sroa.63226.12.4, %i.ag
  br i1 %i.wn, label %bb.br, label %bb.cr, !prof !148

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.12.4) ; 3 uses
  %i.wo = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.5, 4
  %.sroa.speculated.i.i.i.i.i143.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.wo)
  %i.wp = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.5, %.sroa.speculated27.i.i.i.i.i142.5 ; 2 uses
  %i.wq = icmp ult i32 %i.wp, 5
  tail call void @llvm.assume(i1 %i.wq)
  %i.wr = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.5 to i64
  %i.ws = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.wr
  %i.wt = zext nneg i32 %i.wp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.ws, i64 %i.wt, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5: ; preds = %bb.cr, %bb.cp
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.5 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.cr ], [ %i.wm, %bb.cp ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.5 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.5, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.wu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.5 to i64
  %i.wv = add nuw nsw i32 %i.vx, 32
  %i.ww = sub nuw nsw i32 32, %i.vx
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = shl nuw i64 %i.wu, %i.wx
  %i.wz = or i64 %i.wy, %i.vz
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5, %bb.cn
  %.sroa.63226.12.5 = phi i32 [ %i.wk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5 ], [ %.sroa.63226.12.4, %bb.cn ] ; 6 uses
  %i.xa = phi i64 [ %i.wz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5 ], [ %i.vz, %bb.cn ] ; 2 uses
  %i.xb = phi i32 [ %i.wv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.5 ], [ %i.vx, %bb.cn ]
  %i.xc = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = sub nsw i32 %i.xb, %.sroa.47.1691700    ; 5 uses
  %i.xf = zext nneg i32 %.sroa.47.1691700 to i64
  %i.xg = shl i64 %i.xa, %i.xf                    ; 2 uses
  %i.xh = ashr i64 %i.xa, %i.xd
  %i.xi = trunc nsw i64 %i.xh to i16
  %i.xj = or disjoint i64 %indvars.iv, 11         ; 2 uses
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.xj
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !158
  %i.xm = add i16 %i.xl, %i.xi
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.xj
  store i16 %i.xm, ptr %i.xn, align 2, !tbaa !158
  %i.xo = icmp samesign ult i32 %i.xe, 65
  tail call void @llvm.assume(i1 %i.xo)
  %i.xp = and i32 %.sroa.63226.12.5, 3
  %i.xq = icmp eq i32 %i.xp, 0
  tail call void @llvm.assume(i1 %i.xq)
  %.not.i.i.i130.6 = icmp samesign ult i32 %i.xe, %.sroa.47.1691700
  br i1 %.not.i.i.i130.6, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.xr = add nuw nsw i32 %.sroa.63226.12.5, 4    ; 2 uses
  %.not.i.i.i.i135.6 = icmp samesign ugt i32 %i.xr, %i.v
  br i1 %.not.i.i.i.i135.6, label %bb.cv, label %bb.cu, !prof !148

bb.cu:                                            ; preds = %bb.ct
  %i.xs = zext nneg i32 %.sroa.63226.12.5 to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.xs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6

bb.cv:                                            ; preds = %bb.ct
  %i.xu = icmp samesign ugt i32 %.sroa.63226.12.5, %i.ag
  br i1 %i.xu, label %bb.br, label %bb.cw, !prof !148

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.12.5) ; 3 uses
  %i.xv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.6, 4
  %.sroa.speculated.i.i.i.i.i143.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.xv)
  %i.xw = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.6, %.sroa.speculated27.i.i.i.i.i142.6 ; 2 uses
  %i.xx = icmp ult i32 %i.xw, 5
  tail call void @llvm.assume(i1 %i.xx)
  %i.xy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.6 to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.xy
  %i.ya = zext nneg i32 %i.xw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.xz, i64 %i.ya, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6: ; preds = %bb.cw, %bb.cu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.6 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.cw ], [ %i.xt, %bb.cu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.6 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.6, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.yb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.6 to i64
  %i.yc = add nuw nsw i32 %i.xe, 32
  %i.yd = sub nuw nsw i32 32, %i.xe
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = shl nuw i64 %i.yb, %i.ye
  %i.yg = or i64 %i.yf, %i.xg
  br label %bb.cx

bb.cx:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6, %bb.cs
  %.sroa.63226.12.6 = phi i32 [ %i.xr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6 ], [ %.sroa.63226.12.5, %bb.cs ] ; 6 uses
  %i.yh = phi i64 [ %i.yg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6 ], [ %i.xg, %bb.cs ] ; 2 uses
  %i.yi = phi i32 [ %i.yc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.6 ], [ %i.xe, %bb.cs ]
  %i.yj = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = sub nsw i32 %i.yi, %.sroa.47.1691700    ; 5 uses
  %i.ym = zext nneg i32 %.sroa.47.1691700 to i64
  %i.yn = shl i64 %i.yh, %i.ym                    ; 2 uses
  %i.yo = ashr i64 %i.yh, %i.yk
  %i.yp = trunc nsw i64 %i.yo to i16
  %i.yq = or disjoint i64 %indvars.iv, 13         ; 2 uses
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.yq
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !158
  %i.yt = add i16 %i.ys, %i.yp
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.yq
  store i16 %i.yt, ptr %i.yu, align 2, !tbaa !158
  %i.yv = icmp samesign ult i32 %i.yl, 65
  tail call void @llvm.assume(i1 %i.yv)
  %i.yw = and i32 %.sroa.63226.12.6, 3
  %i.yx = icmp eq i32 %i.yw, 0
  tail call void @llvm.assume(i1 %i.yx)
  %.not.i.i.i130.7 = icmp samesign ult i32 %i.yl, %.sroa.47.1691700
  br i1 %.not.i.i.i130.7, label %bb.cy, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.yy = add nuw nsw i32 %.sroa.63226.12.6, 4    ; 2 uses
  %.not.i.i.i.i135.7 = icmp samesign ugt i32 %i.yy, %i.v
  br i1 %.not.i.i.i.i135.7, label %bb.da, label %bb.cz, !prof !148

bb.cz:                                            ; preds = %bb.cy
  %i.yz = zext nneg i32 %.sroa.63226.12.6 to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.yz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7

bb.da:                                            ; preds = %bb.cy
  %i.zb = icmp samesign ugt i32 %.sroa.63226.12.6, %i.ag
  br i1 %i.zb, label %bb.br, label %bb.db, !prof !148

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %.sroa.0.i.i.i.i128, align 4
  %.sroa.speculated27.i.i.i.i.i142.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.12.6) ; 3 uses
  %i.zc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i142.7, 4
  %.sroa.speculated.i.i.i.i.i143.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.zc)
  %i.zd = sub nsw i32 %.sroa.speculated.i.i.i.i.i143.7, %.sroa.speculated27.i.i.i.i.i142.7 ; 2 uses
  %i.ze = icmp ult i32 %i.zd, 5
  tail call void @llvm.assume(i1 %i.ze)
  %i.zf = zext nneg i32 %.sroa.speculated27.i.i.i.i.i142.7 to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.zf
  %i.zh = zext nneg i32 %i.zd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i128, ptr align 1 %i.zg, i64 %i.zh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7: ; preds = %bb.db, %bb.cz
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.7 = phi ptr [ %.sroa.0.i.i.i.i128, %bb.db ], [ %i.za, %bb.cz ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.7 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i138.7, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.zi = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i139.7 to i64
  %i.zj = add nuw nsw i32 %i.yl, 32
  %i.zk = sub nuw nsw i32 32, %i.yl
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = shl nuw i64 %i.zi, %i.zl
  %i.zn = or i64 %i.zm, %i.yn
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7, %bb.cx
  %.sroa.63226.12.7 = phi i32 [ %i.yy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7 ], [ %.sroa.63226.12.6, %bb.cx ]
  %i.zo = phi i64 [ %i.zn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7 ], [ %i.yn, %bb.cx ] ; 2 uses
  %i.zp = phi i32 [ %i.zj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137.7 ], [ %i.yl, %bb.cx ]
  %i.zq = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = sub nsw i32 %i.zp, %.sroa.47.1691700
  %i.zt = zext nneg i32 %.sroa.47.1691700 to i64
  %i.zu = shl i64 %i.zo, %i.zt
  %i.zv = ashr i64 %i.zo, %i.zr
  %i.zw = trunc nsw i64 %i.zv to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7
  %.sroa.0198.11.7 = phi i64 [ %.sroa.0198.11.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread ], [ %i.zu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7 ]
  %.sroa.24.11.7 = phi i32 [ %.sroa.24.11.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread ], [ %i.zs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7 ]
  %.sroa.63226.13.7 = phi i32 [ %.sroa.63226.13.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread ], [ %.sroa.63226.12.7, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7 ]
  %.0.i134.7 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.6.thread ], [ %i.zw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i133.7 ]
  %i.zx = or disjoint i64 %indvars.iv, 15         ; 3 uses
  %i.zy = icmp samesign ult i64 %i.zx, %i.bb
  tail call void @llvm.assume(i1 %i.zy)
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.zx
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !158
  %i.aab = add i16 %i.aaa, %.0.i134.7
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.zx
  store i16 %i.aab, ptr %i.aac, align 2, !tbaa !158
  br label %.loopexit

bb.dc:                                            ; preds = %bb.p
  %.not96 = icmp eq i64 %indvars.iv, 0            ; 2 uses
  br i1 %.not96, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aad = add nsw i64 %indvars.iv, -2            ; 2 uses
  %i.aae = icmp slt i64 %i.aad, %i.bc
  tail call void @llvm.assume(i1 %i.aae)
  tail call void @llvm.assume(i1 %i.ao)
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aad
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !158
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.aah = phi i16 [ %i.aag, %bb.dd ], [ 128, %bb.dc ] ; 9 uses
  %.not.i155 = icmp eq i32 %.sroa.0496.1705714, 0 ; 3 uses
  br i1 %.not.i155, label %.thread763, label %bb.df

.thread763:                                       ; preds = %bb.de
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ar)
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv
  store i16 %i.aah, ptr %i.aai, align 2, !tbaa !158
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.1

bb.df:                                            ; preds = %bb.de
  %i.aaj = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.aaj)
  %.not.i.i.i156 = icmp samesign ult i32 %.sroa.24.3.3693698, %.sroa.0496.1705714
  br i1 %.not.i.i.i156, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aak = add nuw nsw i32 %.sroa.63226.8, 4      ; 2 uses
  %.not.i.i.i.i161 = icmp samesign ugt i32 %i.aak, %i.v
  br i1 %.not.i.i.i.i161, label %bb.di, label %bb.dh, !prof !148

bb.dh:                                            ; preds = %bb.dg
  %i.aal = zext nneg i32 %.sroa.63226.8 to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aal
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163

bb.di:                                            ; preds = %bb.dg
  %i.aan = icmp samesign ugt i32 %.sroa.63226.8, %i.ag
  br i1 %i.aan, label %bb.dj, label %bb.dk, !prof !148

bb.dj:                                            ; preds = %bb.fe, %bb.ex, %bb.eq, %bb.ej, %bb.ec, %bb.dv, %bb.do, %bb.di
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.dk:                                            ; preds = %bb.di
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.8) ; 3 uses
  %i.aao = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168, 4
  %.sroa.speculated.i.i.i.i.i169 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.aao)
  %i.aap = sub nsw i32 %.sroa.speculated.i.i.i.i.i169, %.sroa.speculated27.i.i.i.i.i168 ; 2 uses
  %i.aaq = icmp ult i32 %i.aap, 5
  tail call void @llvm.assume(i1 %i.aaq)
  %i.aar = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168 to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aar
  %i.aat = zext nneg i32 %i.aap to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.aas, i64 %i.aat, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163: ; preds = %bb.dk, %bb.dh
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.dk ], [ %i.aam, %bb.dh ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aau = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165 to i64
  %i.aav = add nuw nsw i32 %.sroa.24.3.3693698, 32
  %i.aaw = sub nuw nsw i32 32, %.sroa.24.3.3693698
  %i.aax = zext nneg i32 %i.aaw to i64
  %i.aay = shl nuw nsw i64 %i.aau, %i.aax
  %i.aaz = or i64 %i.aay, %.sroa.0198.3.3692699
  br label %bb.dl

bb.dl:                                            ; preds = %bb.df, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163
  %.sroa.63226.14 = phi i32 [ %i.aak, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163 ], [ %.sroa.63226.8, %bb.df ] ; 6 uses
  %i.aba = phi i64 [ %i.aaz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163 ], [ %.sroa.0198.3.3692699, %bb.df ] ; 2 uses
  %i.abb = phi i32 [ %i.aav, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163 ], [ %.sroa.24.3.3693698, %bb.df ]
  %i.abc = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = sub nsw i32 %i.abb, %.sroa.0496.1705714 ; 5 uses
  %i.abf = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.abg = shl i64 %i.aba, %i.abf                 ; 2 uses
  %i.abh = ashr i64 %i.aba, %i.abd
  %i.abi = trunc nsw i64 %i.abh to i16
  %i.abj = add i16 %i.aah, %i.abi
  tail call void @llvm.assume(i1 %i.ao)
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !158
  %i.abl = icmp samesign ult i32 %i.abe, 65
  tail call void @llvm.assume(i1 %i.abl)
  %i.abm = and i32 %.sroa.63226.14, 3
  %i.abn = icmp eq i32 %i.abm, 0
  tail call void @llvm.assume(i1 %i.abn)
  %.not.i.i.i156.1 = icmp samesign ult i32 %i.abe, %.sroa.0496.1705714
  br i1 %.not.i.i.i156.1, label %bb.dm, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.abo = add nuw nsw i32 %.sroa.63226.14, 4     ; 2 uses
  %.not.i.i.i.i161.1 = icmp samesign ugt i32 %i.abo, %i.v
  br i1 %.not.i.i.i.i161.1, label %bb.do, label %bb.dn, !prof !148

bb.dn:                                            ; preds = %bb.dm
  %i.abp = zext nneg i32 %.sroa.63226.14 to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.abp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1

bb.do:                                            ; preds = %bb.dm
  %i.abr = icmp samesign ugt i32 %.sroa.63226.14, %i.ag
  br i1 %i.abr, label %bb.dj, label %bb.dp, !prof !148

bb.dp:                                            ; preds = %bb.do
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.14) ; 3 uses
  %i.abs = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.1, 4
  %.sroa.speculated.i.i.i.i.i169.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.abs)
  %i.abt = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.1, %.sroa.speculated27.i.i.i.i.i168.1 ; 2 uses
  %i.abu = icmp ult i32 %i.abt, 5
  tail call void @llvm.assume(i1 %i.abu)
  %i.abv = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.1 to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.abv
  %i.abx = zext nneg i32 %i.abt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.abw, i64 %i.abx, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1: ; preds = %bb.dp, %bb.dn
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.1 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.dp ], [ %i.abq, %bb.dn ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aby = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.1 to i64
  %i.abz = add nuw nsw i32 %i.abe, 32
  %i.aca = sub nuw nsw i32 32, %i.abe
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = shl nuw i64 %i.aby, %i.acb
  %i.acd = or i64 %i.acc, %i.abg
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1, %bb.dl
  %.sroa.63226.14.1 = phi i32 [ %i.abo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1 ], [ %.sroa.63226.14, %bb.dl ]
  %i.ace = phi i64 [ %i.acd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1 ], [ %i.abg, %bb.dl ] ; 2 uses
  %i.acf = phi i32 [ %i.abz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.1 ], [ %i.abe, %bb.dl ]
  %i.acg = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = sub nsw i32 %i.acf, %.sroa.0496.1705714
  %i.acj = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.ack = shl i64 %i.ace, %i.acj
  %i.acl = ashr i64 %i.ace, %i.ach
  %i.acm = trunc nsw i64 %i.acl to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.1

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.1: ; preds = %.thread763, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1
  %.sroa.0198.12.1 = phi i64 [ %.sroa.0198.3.3692699, %.thread763 ], [ %i.ack, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1 ] ; 3 uses
  %.sroa.24.12.1 = phi i32 [ %.sroa.24.3.3693698, %.thread763 ], [ %i.aci, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1 ] ; 6 uses
  %.sroa.63226.15.1 = phi i32 [ %.sroa.63226.8, %.thread763 ], [ %.sroa.63226.14.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1 ] ; 8 uses
  %.0.i160.1 = phi i16 [ 0, %.thread763 ], [ %i.acm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.1 ]
  %i.acn = or disjoint i64 %indvars.iv, 2         ; 2 uses
  %i.aco = icmp samesign ult i64 %i.acn, %i.bb
  br i1 %i.aco, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.1
  %i.acp = add i16 %.0.i160.1, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.acn
  store i16 %i.acp, ptr %i.acq, align 2, !tbaa !158
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.1
  br i1 %.not.i155, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.2, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.acr = icmp samesign ult i32 %.sroa.24.12.1, 65
  tail call void @llvm.assume(i1 %i.acr)
  %i.acs = icmp sgt i32 %.sroa.63226.15.1, -1
  tail call void @llvm.assume(i1 %i.acs)
  %i.act = and i32 %.sroa.63226.15.1, 3
  %i.acu = icmp eq i32 %i.act, 0
  tail call void @llvm.assume(i1 %i.acu)
  %.not.i.i.i156.2 = icmp samesign ult i32 %.sroa.24.12.1, %.sroa.0496.1705714
  br i1 %.not.i.i.i156.2, label %bb.dt, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.acv = add nuw nsw i32 %.sroa.63226.15.1, 4   ; 2 uses
  %.not.i.i.i.i161.2 = icmp samesign ugt i32 %i.acv, %i.v
  br i1 %.not.i.i.i.i161.2, label %bb.dv, label %bb.du, !prof !148

bb.du:                                            ; preds = %bb.dt
  %i.acw = zext nneg i32 %.sroa.63226.15.1 to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.acw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2

bb.dv:                                            ; preds = %bb.dt
  %i.acy = icmp samesign ugt i32 %.sroa.63226.15.1, %i.ag
  br i1 %i.acy, label %bb.dj, label %bb.dw, !prof !148

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.1) ; 3 uses
  %i.acz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.2, 4
  %.sroa.speculated.i.i.i.i.i169.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.acz)
  %i.ada = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.2, %.sroa.speculated27.i.i.i.i.i168.2 ; 2 uses
  %i.adb = icmp ult i32 %i.ada, 5
  tail call void @llvm.assume(i1 %i.adb)
  %i.adc = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.2 to i64
  %i.add = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.adc
  %i.ade = zext nneg i32 %i.ada to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.add, i64 %i.ade, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2: ; preds = %bb.dw, %bb.du
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.2 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.dw ], [ %i.acx, %bb.du ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.adf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.2 to i64
  %i.adg = add nuw nsw i32 %.sroa.24.12.1, 32
  %i.adh = sub nuw nsw i32 32, %.sroa.24.12.1
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = shl nuw i64 %i.adf, %i.adi
  %i.adk = or i64 %i.adj, %.sroa.0198.12.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2, %bb.ds
  %.sroa.63226.14.2 = phi i32 [ %i.acv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2 ], [ %.sroa.63226.15.1, %bb.ds ]
  %i.adl = phi i64 [ %i.adk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2 ], [ %.sroa.0198.12.1, %bb.ds ] ; 2 uses
  %i.adm = phi i32 [ %i.adg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.2 ], [ %.sroa.24.12.1, %bb.ds ]
  %i.adn = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = sub nsw i32 %i.adm, %.sroa.0496.1705714
  %i.adq = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.adr = shl i64 %i.adl, %i.adq
  %i.ads = ashr i64 %i.adl, %i.ado
  %i.adt = trunc nsw i64 %i.ads to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.2

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.2: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2, %bb.dr
  %.sroa.0198.12.2 = phi i64 [ %.sroa.0198.12.1, %bb.dr ], [ %i.adr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2 ] ; 3 uses
  %.sroa.24.12.2 = phi i32 [ %.sroa.24.12.1, %bb.dr ], [ %i.adp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2 ] ; 6 uses
  %.sroa.63226.15.2 = phi i32 [ %.sroa.63226.15.1, %bb.dr ], [ %.sroa.63226.14.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2 ] ; 8 uses
  %.0.i160.2 = phi i16 [ 0, %bb.dr ], [ %i.adt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.2 ]
  %i.adu = or disjoint i64 %indvars.iv, 4         ; 2 uses
  %i.adv = icmp samesign ult i64 %i.adu, %i.bb
  br i1 %i.adv, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.2
  %i.adw = add i16 %.0.i160.2, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.adx = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.adu
  store i16 %i.adw, ptr %i.adx, align 2, !tbaa !158
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.2
  br i1 %.not.i155, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.3, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ady = icmp samesign ult i32 %.sroa.24.12.2, 65
  tail call void @llvm.assume(i1 %i.ady)
  %i.adz = icmp sgt i32 %.sroa.63226.15.2, -1
  tail call void @llvm.assume(i1 %i.adz)
  %i.aea = and i32 %.sroa.63226.15.2, 3
  %i.aeb = icmp eq i32 %i.aea, 0
  tail call void @llvm.assume(i1 %i.aeb)
  %.not.i.i.i156.3 = icmp samesign ult i32 %.sroa.24.12.2, %.sroa.0496.1705714
  br i1 %.not.i.i.i156.3, label %bb.ea, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aec = add nuw nsw i32 %.sroa.63226.15.2, 4   ; 2 uses
  %.not.i.i.i.i161.3 = icmp samesign ugt i32 %i.aec, %i.v
  br i1 %.not.i.i.i.i161.3, label %bb.ec, label %bb.eb, !prof !148

bb.eb:                                            ; preds = %bb.ea
  %i.aed = zext nneg i32 %.sroa.63226.15.2 to i64
  %i.aee = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aed
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3

bb.ec:                                            ; preds = %bb.ea
  %i.aef = icmp samesign ugt i32 %.sroa.63226.15.2, %i.ag
  br i1 %i.aef, label %bb.dj, label %bb.ed, !prof !148

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.2) ; 3 uses
  %i.aeg = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.3, 4
  %.sroa.speculated.i.i.i.i.i169.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.aeg)
  %i.aeh = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.3, %.sroa.speculated27.i.i.i.i.i168.3 ; 2 uses
  %i.aei = icmp ult i32 %i.aeh, 5
  tail call void @llvm.assume(i1 %i.aei)
  %i.aej = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.3 to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aej
  %i.ael = zext nneg i32 %i.aeh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.aek, i64 %i.ael, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3: ; preds = %bb.ed, %bb.eb
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.3 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.ed ], [ %i.aee, %bb.eb ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aem = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.3 to i64
  %i.aen = add nuw nsw i32 %.sroa.24.12.2, 32
  %i.aeo = sub nuw nsw i32 32, %.sroa.24.12.2
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = shl nuw i64 %i.aem, %i.aep
  %i.aer = or i64 %i.aeq, %.sroa.0198.12.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3, %bb.dz
  %.sroa.63226.14.3 = phi i32 [ %i.aec, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3 ], [ %.sroa.63226.15.2, %bb.dz ]
  %i.aes = phi i64 [ %i.aer, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3 ], [ %.sroa.0198.12.2, %bb.dz ] ; 2 uses
  %i.aet = phi i32 [ %i.aen, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.3 ], [ %.sroa.24.12.2, %bb.dz ]
  %i.aeu = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = sub nsw i32 %i.aet, %.sroa.0496.1705714
  %i.aex = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.aey = shl i64 %i.aes, %i.aex
  %i.aez = ashr i64 %i.aes, %i.aev
  %i.afa = trunc nsw i64 %i.aez to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.3

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.3: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3, %bb.dy
  %.sroa.0198.12.3 = phi i64 [ %.sroa.0198.12.2, %bb.dy ], [ %i.aey, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3 ] ; 3 uses
  %.sroa.24.12.3 = phi i32 [ %.sroa.24.12.2, %bb.dy ], [ %i.aew, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3 ] ; 6 uses
  %.sroa.63226.15.3 = phi i32 [ %.sroa.63226.15.2, %bb.dy ], [ %.sroa.63226.14.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3 ] ; 8 uses
  %.0.i160.3 = phi i16 [ 0, %bb.dy ], [ %i.afa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.3 ]
  %i.afb = or disjoint i64 %indvars.iv, 6         ; 2 uses
  %i.afc = icmp samesign ult i64 %i.afb, %i.bb
  br i1 %i.afc, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.3
  %i.afd = add i16 %.0.i160.3, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.afe = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.afb
  store i16 %i.afd, ptr %i.afe, align 2, !tbaa !158
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.3
  %.not.i155.4 = icmp eq i32 %.sroa.17.1663672, 0 ; 4 uses
  br i1 %.not.i155.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.4, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aff = icmp samesign ult i32 %.sroa.24.12.3, 65
  tail call void @llvm.assume(i1 %i.aff)
  %i.afg = icmp sgt i32 %.sroa.63226.15.3, -1
  tail call void @llvm.assume(i1 %i.afg)
  %i.afh = and i32 %.sroa.63226.15.3, 3
  %i.afi = icmp eq i32 %i.afh, 0
  tail call void @llvm.assume(i1 %i.afi)
  %.not.i.i.i156.4 = icmp samesign ult i32 %.sroa.24.12.3, %.sroa.17.1663672
  br i1 %.not.i.i.i156.4, label %bb.eh, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.afj = add nuw nsw i32 %.sroa.63226.15.3, 4   ; 2 uses
  %.not.i.i.i.i161.4 = icmp samesign ugt i32 %i.afj, %i.v
  br i1 %.not.i.i.i.i161.4, label %bb.ej, label %bb.ei, !prof !148

bb.ei:                                            ; preds = %bb.eh
  %i.afk = zext nneg i32 %.sroa.63226.15.3 to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.afk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4

bb.ej:                                            ; preds = %bb.eh
  %i.afm = icmp samesign ugt i32 %.sroa.63226.15.3, %i.ag
  br i1 %i.afm, label %bb.dj, label %bb.ek, !prof !148

bb.ek:                                            ; preds = %bb.ej
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.3) ; 3 uses
  %i.afn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.4, 4
  %.sroa.speculated.i.i.i.i.i169.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.afn)
  %i.afo = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.4, %.sroa.speculated27.i.i.i.i.i168.4 ; 2 uses
  %i.afp = icmp ult i32 %i.afo, 5
  tail call void @llvm.assume(i1 %i.afp)
  %i.afq = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.4 to i64
  %i.afr = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.afq
  %i.afs = zext nneg i32 %i.afo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.afr, i64 %i.afs, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4: ; preds = %bb.ek, %bb.ei
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.4 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.ek ], [ %i.afl, %bb.ei ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.4 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aft = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.4 to i64
  %i.afu = add nuw nsw i32 %.sroa.24.12.3, 32
  %i.afv = sub nuw nsw i32 32, %.sroa.24.12.3
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = shl nuw i64 %i.aft, %i.afw
  %i.afy = or i64 %i.afx, %.sroa.0198.12.3
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4, %bb.eg
  %.sroa.63226.14.4 = phi i32 [ %i.afj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4 ], [ %.sroa.63226.15.3, %bb.eg ]
  %i.afz = phi i64 [ %i.afy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4 ], [ %.sroa.0198.12.3, %bb.eg ] ; 2 uses
  %i.aga = phi i32 [ %i.afu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.4 ], [ %.sroa.24.12.3, %bb.eg ]
  %i.agb = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = sub nsw i32 %i.aga, %.sroa.17.1663672
  %i.age = zext nneg i32 %.sroa.17.1663672 to i64
  %i.agf = shl i64 %i.afz, %i.age
  %i.agg = ashr i64 %i.afz, %i.agc
  %i.agh = trunc nsw i64 %i.agg to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.4

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.4: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4, %bb.ef
  %.sroa.0198.12.4 = phi i64 [ %.sroa.0198.12.3, %bb.ef ], [ %i.agf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4 ] ; 3 uses
  %.sroa.24.12.4 = phi i32 [ %.sroa.24.12.3, %bb.ef ], [ %i.agd, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4 ] ; 6 uses
  %.sroa.63226.15.4 = phi i32 [ %.sroa.63226.15.3, %bb.ef ], [ %.sroa.63226.14.4, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4 ] ; 8 uses
  %.0.i160.4 = phi i16 [ 0, %bb.ef ], [ %i.agh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.4 ]
  %i.agi = or disjoint i64 %indvars.iv, 8         ; 2 uses
  %i.agj = icmp samesign ult i64 %i.agi, %i.bb
  br i1 %i.agj, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.4
  %i.agk = add i16 %.0.i160.4, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.agi
  store i16 %i.agk, ptr %i.agl, align 2, !tbaa !158
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.4
  br i1 %.not.i155.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.agm = icmp samesign ult i32 %.sroa.24.12.4, 65
  tail call void @llvm.assume(i1 %i.agm)
  %i.agn = icmp sgt i32 %.sroa.63226.15.4, -1
  tail call void @llvm.assume(i1 %i.agn)
  %i.ago = and i32 %.sroa.63226.15.4, 3
  %i.agp = icmp eq i32 %i.ago, 0
  tail call void @llvm.assume(i1 %i.agp)
  %.not.i.i.i156.5 = icmp samesign ult i32 %.sroa.24.12.4, %.sroa.17.1663672
  br i1 %.not.i.i.i156.5, label %bb.eo, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.agq = add nuw nsw i32 %.sroa.63226.15.4, 4   ; 2 uses
  %.not.i.i.i.i161.5 = icmp samesign ugt i32 %i.agq, %i.v
  br i1 %.not.i.i.i.i161.5, label %bb.eq, label %bb.ep, !prof !148

bb.ep:                                            ; preds = %bb.eo
  %i.agr = zext nneg i32 %.sroa.63226.15.4 to i64
  %i.ags = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.agr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5

bb.eq:                                            ; preds = %bb.eo
  %i.agt = icmp samesign ugt i32 %.sroa.63226.15.4, %i.ag
  br i1 %i.agt, label %bb.dj, label %bb.er, !prof !148

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.4) ; 3 uses
  %i.agu = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.5, 4
  %.sroa.speculated.i.i.i.i.i169.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.agu)
  %i.agv = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.5, %.sroa.speculated27.i.i.i.i.i168.5 ; 2 uses
  %i.agw = icmp ult i32 %i.agv, 5
  tail call void @llvm.assume(i1 %i.agw)
  %i.agx = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.5 to i64
  %i.agy = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.agx
  %i.agz = zext nneg i32 %i.agv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.agy, i64 %i.agz, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5: ; preds = %bb.er, %bb.ep
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.5 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.er ], [ %i.ags, %bb.ep ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.5 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.5, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aha = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.5 to i64
  %i.ahb = add nuw nsw i32 %.sroa.24.12.4, 32
  %i.ahc = sub nuw nsw i32 32, %.sroa.24.12.4
  %i.ahd = zext nneg i32 %i.ahc to i64
  %i.ahe = shl nuw i64 %i.aha, %i.ahd
  %i.ahf = or i64 %i.ahe, %.sroa.0198.12.4
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5, %bb.en
  %.sroa.63226.14.5 = phi i32 [ %i.agq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5 ], [ %.sroa.63226.15.4, %bb.en ]
  %i.ahg = phi i64 [ %i.ahf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5 ], [ %.sroa.0198.12.4, %bb.en ] ; 2 uses
  %i.ahh = phi i32 [ %i.ahb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5 ], [ %.sroa.24.12.4, %bb.en ]
  %i.ahi = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.ahj = zext nneg i32 %i.ahi to i64
  %i.ahk = sub nsw i32 %i.ahh, %.sroa.17.1663672
  %i.ahl = zext nneg i32 %.sroa.17.1663672 to i64
  %i.ahm = shl i64 %i.ahg, %i.ahl
  %i.ahn = ashr i64 %i.ahg, %i.ahj
  %i.aho = trunc nsw i64 %i.ahn to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5, %bb.em
  %.sroa.0198.12.5 = phi i64 [ %.sroa.0198.12.4, %bb.em ], [ %i.ahm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ] ; 3 uses
  %.sroa.24.12.5 = phi i32 [ %.sroa.24.12.4, %bb.em ], [ %i.ahk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ] ; 6 uses
  %.sroa.63226.15.5 = phi i32 [ %.sroa.63226.15.4, %bb.em ], [ %.sroa.63226.14.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ] ; 8 uses
  %.0.i160.5 = phi i16 [ 0, %bb.em ], [ %i.aho, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ]
  %i.ahp = or disjoint i64 %indvars.iv, 10        ; 2 uses
  %i.ahq = icmp samesign ult i64 %i.ahp, %i.bb
  br i1 %i.ahq, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5
  %i.ahr = add i16 %.0.i160.5, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ahp
  store i16 %i.ahr, ptr %i.ahs, align 2, !tbaa !158
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5
  br i1 %.not.i155.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aht = icmp samesign ult i32 %.sroa.24.12.5, 65
  tail call void @llvm.assume(i1 %i.aht)
  %i.ahu = icmp sgt i32 %.sroa.63226.15.5, -1
  tail call void @llvm.assume(i1 %i.ahu)
  %i.ahv = and i32 %.sroa.63226.15.5, 3
  %i.ahw = icmp eq i32 %i.ahv, 0
  tail call void @llvm.assume(i1 %i.ahw)
  %.not.i.i.i156.6 = icmp samesign ult i32 %.sroa.24.12.5, %.sroa.17.1663672
  br i1 %.not.i.i.i156.6, label %bb.ev, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.ahx = add nuw nsw i32 %.sroa.63226.15.5, 4   ; 2 uses
  %.not.i.i.i.i161.6 = icmp samesign ugt i32 %i.ahx, %i.v
  br i1 %.not.i.i.i.i161.6, label %bb.ex, label %bb.ew, !prof !148

bb.ew:                                            ; preds = %bb.ev
  %i.ahy = zext nneg i32 %.sroa.63226.15.5 to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ahy
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6

bb.ex:                                            ; preds = %bb.ev
  %i.aia = icmp samesign ugt i32 %.sroa.63226.15.5, %i.ag
  br i1 %i.aia, label %bb.dj, label %bb.ey, !prof !148

bb.ey:                                            ; preds = %bb.ex
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.5) ; 3 uses
  %i.aib = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.6, 4
  %.sroa.speculated.i.i.i.i.i169.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.aib)
  %i.aic = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.6, %.sroa.speculated27.i.i.i.i.i168.6 ; 2 uses
  %i.aid = icmp ult i32 %i.aic, 5
  tail call void @llvm.assume(i1 %i.aid)
  %i.aie = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.6 to i64
  %i.aif = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aie
  %i.aig = zext nneg i32 %i.aic to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.aif, i64 %i.aig, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6: ; preds = %bb.ey, %bb.ew
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.6 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.ey ], [ %i.ahz, %bb.ew ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.6 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.6, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aih = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.6 to i64
  %i.aii = add nuw nsw i32 %.sroa.24.12.5, 32
  %i.aij = sub nuw nsw i32 32, %.sroa.24.12.5
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = shl nuw i64 %i.aih, %i.aik
  %i.aim = or i64 %i.ail, %.sroa.0198.12.5
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6, %bb.eu
  %.sroa.63226.14.6 = phi i32 [ %i.ahx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6 ], [ %.sroa.63226.15.5, %bb.eu ]
  %i.ain = phi i64 [ %i.aim, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6 ], [ %.sroa.0198.12.5, %bb.eu ] ; 2 uses
  %i.aio = phi i32 [ %i.aii, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6 ], [ %.sroa.24.12.5, %bb.eu ]
  %i.aip = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = sub nsw i32 %i.aio, %.sroa.17.1663672
  %i.ais = zext nneg i32 %.sroa.17.1663672 to i64
  %i.ait = shl i64 %i.ain, %i.ais
  %i.aiu = ashr i64 %i.ain, %i.aiq
  %i.aiv = trunc nsw i64 %i.aiu to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6, %bb.et
  %.sroa.0198.12.6 = phi i64 [ %.sroa.0198.12.5, %bb.et ], [ %i.ait, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ] ; 3 uses
  %.sroa.24.12.6 = phi i32 [ %.sroa.24.12.5, %bb.et ], [ %i.air, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ] ; 6 uses
  %.sroa.63226.15.6 = phi i32 [ %.sroa.63226.15.5, %bb.et ], [ %.sroa.63226.14.6, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ] ; 8 uses
  %.0.i160.6 = phi i16 [ 0, %bb.et ], [ %i.aiv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ]
  %i.aiw = or disjoint i64 %indvars.iv, 12        ; 2 uses
  %i.aix = icmp samesign ult i64 %i.aiw, %i.bb
  br i1 %i.aix, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6
  %i.aiy = add i16 %.0.i160.6, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aiw
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !158
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6
  br i1 %.not.i155.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aja = icmp samesign ult i32 %.sroa.24.12.6, 65
  tail call void @llvm.assume(i1 %i.aja)
  %i.ajb = icmp sgt i32 %.sroa.63226.15.6, -1
  tail call void @llvm.assume(i1 %i.ajb)
  %i.ajc = and i32 %.sroa.63226.15.6, 3
  %i.ajd = icmp eq i32 %i.ajc, 0
  tail call void @llvm.assume(i1 %i.ajd)
  %.not.i.i.i156.7 = icmp samesign ult i32 %.sroa.24.12.6, %.sroa.17.1663672
  br i1 %.not.i.i.i156.7, label %bb.fc, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aje = add nuw nsw i32 %.sroa.63226.15.6, 4   ; 2 uses
  %.not.i.i.i.i161.7 = icmp samesign ugt i32 %i.aje, %i.v
  br i1 %.not.i.i.i.i161.7, label %bb.fe, label %bb.fd, !prof !148

bb.fd:                                            ; preds = %bb.fc
  %i.ajf = zext nneg i32 %.sroa.63226.15.6 to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ajf
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7

bb.fe:                                            ; preds = %bb.fc
  %i.ajh = icmp samesign ugt i32 %.sroa.63226.15.6, %i.ag
  br i1 %i.ajh, label %bb.dj, label %bb.ff, !prof !148

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.6) ; 3 uses
  %i.aji = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.7, 4
  %.sroa.speculated.i.i.i.i.i169.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.aji)
  %i.ajj = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.7, %.sroa.speculated27.i.i.i.i.i168.7 ; 2 uses
  %i.ajk = icmp ult i32 %i.ajj, 5
  tail call void @llvm.assume(i1 %i.ajk)
  %i.ajl = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.7 to i64
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ajl
  %i.ajn = zext nneg i32 %i.ajj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.ajm, i64 %i.ajn, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7: ; preds = %bb.ff, %bb.fd
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.7 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.ff ], [ %i.ajg, %bb.fd ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.7 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.7, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.ajo = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.7 to i64
  %i.ajp = add nuw nsw i32 %.sroa.24.12.6, 32
  %i.ajq = sub nuw nsw i32 32, %.sroa.24.12.6
  %i.ajr = zext nneg i32 %i.ajq to i64
  %i.ajs = shl nuw i64 %i.ajo, %i.ajr
  %i.ajt = or i64 %i.ajs, %.sroa.0198.12.6
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7, %bb.fb
  %.sroa.63226.14.7 = phi i32 [ %i.aje, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7 ], [ %.sroa.63226.15.6, %bb.fb ]
  %i.aju = phi i64 [ %i.ajt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7 ], [ %.sroa.0198.12.6, %bb.fb ] ; 2 uses
  %i.ajv = phi i32 [ %i.ajp, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7 ], [ %.sroa.24.12.6, %bb.fb ]
  %i.ajw = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.ajx = zext nneg i32 %i.ajw to i64
  %i.ajy = sub nsw i32 %i.ajv, %.sroa.17.1663672
  %i.ajz = zext nneg i32 %.sroa.17.1663672 to i64
  %i.aka = shl i64 %i.aju, %i.ajz
  %i.akb = ashr i64 %i.aju, %i.ajx
  %i.akc = trunc nsw i64 %i.akb to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7, %bb.fa
  %.sroa.0198.12.7 = phi i64 [ %.sroa.0198.12.6, %bb.fa ], [ %i.aka, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ] ; 3 uses
  %.sroa.24.12.7 = phi i32 [ %.sroa.24.12.6, %bb.fa ], [ %i.ajy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ] ; 6 uses
  %.sroa.63226.15.7 = phi i32 [ %.sroa.63226.15.6, %bb.fa ], [ %.sroa.63226.14.7, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ] ; 8 uses
  %.0.i160.7 = phi i16 [ 0, %bb.fa ], [ %i.akc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ]
  %i.akd = or disjoint i64 %indvars.iv, 14        ; 2 uses
  %i.ake = icmp samesign ult i64 %i.akd, %i.bb
  br i1 %i.ake, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7
  %i.akf = add i16 %.0.i160.7, %i.aah
  tail call void @llvm.assume(i1 %i.ao)
  %i.akg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.akd
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !158
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7
  br i1 %.not96, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @llvm.assume(i1 %i.ao)
  %i.akh = getelementptr [2 x i8], ptr %i.at, i64 %indvars.iv
  %i.aki = getelementptr i8, ptr %i.akh, i64 -2
  %i.akj = load i16, ptr %i.aki, align 2, !tbaa !158
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  %i.akk = phi i16 [ %i.akj, %bb.fi ], [ 128, %bb.fh ] ; 8 uses
  %.not.i178 = icmp eq i32 %.sroa.32.1677686, 0   ; 4 uses
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akl = icmp samesign ult i32 %.sroa.24.12.7, 65
  tail call void @llvm.assume(i1 %i.akl)
  %i.akm = icmp sgt i32 %.sroa.63226.15.7, -1
  tail call void @llvm.assume(i1 %i.akm)
  %i.akn = and i32 %.sroa.63226.15.7, 3
  %i.ako = icmp eq i32 %i.akn, 0
  tail call void @llvm.assume(i1 %i.ako)
  %.not.i.i.i179 = icmp samesign ult i32 %.sroa.24.12.7, %.sroa.32.1677686
  br i1 %.not.i.i.i179, label %bb.fl, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.akp = add nuw nsw i32 %.sroa.63226.15.7, 4   ; 2 uses
  %.not.i.i.i.i184 = icmp samesign ugt i32 %i.akp, %i.v
  br i1 %.not.i.i.i.i184, label %bb.fn, label %bb.fm, !prof !148

bb.fm:                                            ; preds = %bb.fl
  %i.akq = zext nneg i32 %.sroa.63226.15.7 to i64
  %i.akr = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.akq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186

bb.fn:                                            ; preds = %bb.fl
  %i.aks = icmp samesign ugt i32 %.sroa.63226.15.7, %i.ag
  br i1 %i.aks, label %bb.fo, label %bb.fp, !prof !148

bb.fo:                                            ; preds = %bb.hl, %bb.he, %bb.gx, %bb.gq, %bb.gj, %bb.gc, %bb.fv, %bb.fn
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.fp:                                            ; preds = %bb.fn
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.15.7) ; 3 uses
  %i.akt = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191, 4
  %.sroa.speculated.i.i.i.i.i192 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.akt)
  %i.aku = sub nsw i32 %.sroa.speculated.i.i.i.i.i192, %.sroa.speculated27.i.i.i.i.i191 ; 2 uses
  %i.akv = icmp ult i32 %i.aku, 5
  tail call void @llvm.assume(i1 %i.akv)
  %i.akw = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191 to i64
  %i.akx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.akw
  %i.aky = zext nneg i32 %i.aku to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.akx, i64 %i.aky, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186: ; preds = %bb.fp, %bb.fm
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.fp ], [ %i.akr, %bb.fm ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.akz = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188 to i64
  %i.ala = add nuw nsw i32 %.sroa.24.12.7, 32
  %i.alb = sub nuw nsw i32 32, %.sroa.24.12.7
  %i.alc = zext nneg i32 %i.alb to i64
  %i.ald = shl nuw i64 %i.akz, %i.alc
  %i.ale = or i64 %i.ald, %.sroa.0198.12.7
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182: ; preds = %bb.fk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186
  %.sroa.63226.16 = phi i32 [ %i.akp, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186 ], [ %.sroa.63226.15.7, %bb.fk ]
  %i.alf = phi i64 [ %i.ale, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186 ], [ %.sroa.0198.12.7, %bb.fk ] ; 2 uses
  %i.alg = phi i32 [ %i.ala, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186 ], [ %.sroa.24.12.7, %bb.fk ]
  %i.alh = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.ali = zext nneg i32 %i.alh to i64
  %i.alj = sub nsw i32 %i.alg, %.sroa.32.1677686
  %i.alk = zext nneg i32 %.sroa.32.1677686 to i64
  %i.all = shl i64 %i.alf, %i.alk
  %i.alm = ashr i64 %i.alf, %i.ali
  %i.aln = trunc nsw i64 %i.alm to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193: ; preds = %bb.fj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182
  %.sroa.0198.13 = phi i64 [ %.sroa.0198.12.7, %bb.fj ], [ %i.all, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ] ; 3 uses
  %.sroa.24.13 = phi i32 [ %.sroa.24.12.7, %bb.fj ], [ %i.alj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ] ; 6 uses
  %.sroa.63226.17 = phi i32 [ %.sroa.63226.15.7, %bb.fj ], [ %.sroa.63226.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ] ; 8 uses
  %.0.i183 = phi i16 [ 0, %bb.fj ], [ %i.aln, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ]
  %i.alo = or disjoint i64 %indvars.iv, 1         ; 2 uses
  %i.alp = icmp samesign ult i64 %i.alo, %i.bb
  br i1 %i.alp, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193
  %i.alq = add i16 %.0.i183, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.alr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.alo
  store i16 %i.alq, ptr %i.alr, align 2, !tbaa !158
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.als = icmp samesign ult i32 %.sroa.24.13, 65
  tail call void @llvm.assume(i1 %i.als)
  %i.alt = icmp sgt i32 %.sroa.63226.17, -1
  tail call void @llvm.assume(i1 %i.alt)
  %i.alu = and i32 %.sroa.63226.17, 3
  %i.alv = icmp eq i32 %i.alu, 0
  tail call void @llvm.assume(i1 %i.alv)
  %.not.i.i.i179.1 = icmp samesign ult i32 %.sroa.24.13, %.sroa.32.1677686
  br i1 %.not.i.i.i179.1, label %bb.ft, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.alw = add nuw nsw i32 %.sroa.63226.17, 4     ; 2 uses
  %.not.i.i.i.i184.1 = icmp samesign ugt i32 %i.alw, %i.v
  br i1 %.not.i.i.i.i184.1, label %bb.fv, label %bb.fu, !prof !148

bb.fu:                                            ; preds = %bb.ft
  %i.alx = zext nneg i32 %.sroa.63226.17 to i64
  %i.aly = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.alx
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1

bb.fv:                                            ; preds = %bb.ft
  %i.alz = icmp samesign ugt i32 %.sroa.63226.17, %i.ag
  br i1 %i.alz, label %bb.fo, label %bb.fw, !prof !148

bb.fw:                                            ; preds = %bb.fv
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17) ; 3 uses
  %i.ama = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.1, 4
  %.sroa.speculated.i.i.i.i.i192.1 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.ama)
  %i.amb = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.1, %.sroa.speculated27.i.i.i.i.i191.1 ; 2 uses
  %i.amc = icmp ult i32 %i.amb, 5
  tail call void @llvm.assume(i1 %i.amc)
  %i.amd = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.1 to i64
  %i.ame = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.amd
  %i.amf = zext nneg i32 %i.amb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.ame, i64 %i.amf, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1: ; preds = %bb.fw, %bb.fu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.1 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.fw ], [ %i.aly, %bb.fu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.amg = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.1 to i64
  %i.amh = add nuw nsw i32 %.sroa.24.13, 32
  %i.ami = sub nuw nsw i32 32, %.sroa.24.13
  %i.amj = zext nneg i32 %i.ami to i64
  %i.amk = shl nuw i64 %i.amg, %i.amj
  %i.aml = or i64 %i.amk, %.sroa.0198.13
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1, %bb.fs
  %.sroa.63226.16.1 = phi i32 [ %i.alw, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1 ], [ %.sroa.63226.17, %bb.fs ]
  %i.amm = phi i64 [ %i.aml, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1 ], [ %.sroa.0198.13, %bb.fs ] ; 2 uses
  %i.amn = phi i32 [ %i.amh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1 ], [ %.sroa.24.13, %bb.fs ]
  %i.amo = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = sub nsw i32 %i.amn, %.sroa.32.1677686
  %i.amr = zext nneg i32 %.sroa.32.1677686 to i64
  %i.ams = shl i64 %i.amm, %i.amr
  %i.amt = ashr i64 %i.amm, %i.amp
  %i.amu = trunc nsw i64 %i.amt to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1, %bb.fr
  %.sroa.0198.13.1 = phi i64 [ %.sroa.0198.13, %bb.fr ], [ %i.ams, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ] ; 3 uses
  %.sroa.24.13.1 = phi i32 [ %.sroa.24.13, %bb.fr ], [ %i.amq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ] ; 6 uses
  %.sroa.63226.17.1 = phi i32 [ %.sroa.63226.17, %bb.fr ], [ %.sroa.63226.16.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ] ; 8 uses
  %.0.i183.1 = phi i16 [ 0, %bb.fr ], [ %i.amu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ]
  %i.amv = or disjoint i64 %indvars.iv, 3         ; 2 uses
  %i.amw = icmp samesign ult i64 %i.amv, %i.bb
  br i1 %i.amw, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1
  %i.amx = add i16 %.0.i183.1, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.amy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.amv
  store i16 %i.amx, ptr %i.amy, align 2, !tbaa !158
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.2, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.amz = icmp samesign ult i32 %.sroa.24.13.1, 65
  tail call void @llvm.assume(i1 %i.amz)
  %i.ana = icmp sgt i32 %.sroa.63226.17.1, -1
  tail call void @llvm.assume(i1 %i.ana)
  %i.anb = and i32 %.sroa.63226.17.1, 3
  %i.anc = icmp eq i32 %i.anb, 0
  tail call void @llvm.assume(i1 %i.anc)
  %.not.i.i.i179.2 = icmp samesign ult i32 %.sroa.24.13.1, %.sroa.32.1677686
  br i1 %.not.i.i.i179.2, label %bb.ga, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.and = add nuw nsw i32 %.sroa.63226.17.1, 4   ; 2 uses
  %.not.i.i.i.i184.2 = icmp samesign ugt i32 %i.and, %i.v
  br i1 %.not.i.i.i.i184.2, label %bb.gc, label %bb.gb, !prof !148

bb.gb:                                            ; preds = %bb.ga
  %i.ane = zext nneg i32 %.sroa.63226.17.1 to i64
  %i.anf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ane
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2

bb.gc:                                            ; preds = %bb.ga
  %i.ang = icmp samesign ugt i32 %.sroa.63226.17.1, %i.ag
  br i1 %i.ang, label %bb.fo, label %bb.gd, !prof !148

bb.gd:                                            ; preds = %bb.gc
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17.1) ; 3 uses
  %i.anh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.2, 4
  %.sroa.speculated.i.i.i.i.i192.2 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.anh)
  %i.ani = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.2, %.sroa.speculated27.i.i.i.i.i191.2 ; 2 uses
  %i.anj = icmp ult i32 %i.ani, 5
  tail call void @llvm.assume(i1 %i.anj)
  %i.ank = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.2 to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ank
  %i.anm = zext nneg i32 %i.ani to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.anl, i64 %i.anm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2: ; preds = %bb.gd, %bb.gb
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.2 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.gd ], [ %i.anf, %bb.gb ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.ann = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.2 to i64
  %i.ano = add nuw nsw i32 %.sroa.24.13.1, 32
  %i.anp = sub nuw nsw i32 32, %.sroa.24.13.1
  %i.anq = zext nneg i32 %i.anp to i64
  %i.anr = shl nuw i64 %i.ann, %i.anq
  %i.ans = or i64 %i.anr, %.sroa.0198.13.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2, %bb.fz
  %.sroa.63226.16.2 = phi i32 [ %i.and, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2 ], [ %.sroa.63226.17.1, %bb.fz ]
  %i.ant = phi i64 [ %i.ans, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2 ], [ %.sroa.0198.13.1, %bb.fz ] ; 2 uses
  %i.anu = phi i32 [ %i.ano, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2 ], [ %.sroa.24.13.1, %bb.fz ]
  %i.anv = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = sub nsw i32 %i.anu, %.sroa.32.1677686
  %i.any = zext nneg i32 %.sroa.32.1677686 to i64
  %i.anz = shl i64 %i.ant, %i.any
  %i.aoa = ashr i64 %i.ant, %i.anw
  %i.aob = trunc nsw i64 %i.aoa to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.2

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.2: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2, %bb.fy
  %.sroa.0198.13.2 = phi i64 [ %.sroa.0198.13.1, %bb.fy ], [ %i.anz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2 ] ; 3 uses
  %.sroa.24.13.2 = phi i32 [ %.sroa.24.13.1, %bb.fy ], [ %i.anx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2 ] ; 6 uses
  %.sroa.63226.17.2 = phi i32 [ %.sroa.63226.17.1, %bb.fy ], [ %.sroa.63226.16.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2 ] ; 8 uses
  %.0.i183.2 = phi i16 [ 0, %bb.fy ], [ %i.aob, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2 ]
  %i.aoc = or disjoint i64 %indvars.iv, 5         ; 2 uses
  %i.aod = icmp samesign ult i64 %i.aoc, %i.bb
  br i1 %i.aod, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.2
  %i.aoe = add i16 %.0.i183.2, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aoc
  store i16 %i.aoe, ptr %i.aof, align 2, !tbaa !158
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.2
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.3, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aog = icmp samesign ult i32 %.sroa.24.13.2, 65
  tail call void @llvm.assume(i1 %i.aog)
  %i.aoh = icmp sgt i32 %.sroa.63226.17.2, -1
  tail call void @llvm.assume(i1 %i.aoh)
  %i.aoi = and i32 %.sroa.63226.17.2, 3
  %i.aoj = icmp eq i32 %i.aoi, 0
  tail call void @llvm.assume(i1 %i.aoj)
  %.not.i.i.i179.3 = icmp samesign ult i32 %.sroa.24.13.2, %.sroa.32.1677686
  br i1 %.not.i.i.i179.3, label %bb.gh, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.aok = add nuw nsw i32 %.sroa.63226.17.2, 4   ; 2 uses
  %.not.i.i.i.i184.3 = icmp samesign ugt i32 %i.aok, %i.v
  br i1 %.not.i.i.i.i184.3, label %bb.gj, label %bb.gi, !prof !148

bb.gi:                                            ; preds = %bb.gh
  %i.aol = zext nneg i32 %.sroa.63226.17.2 to i64
  %i.aom = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aol
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3

bb.gj:                                            ; preds = %bb.gh
  %i.aon = icmp samesign ugt i32 %.sroa.63226.17.2, %i.ag
  br i1 %i.aon, label %bb.fo, label %bb.gk, !prof !148

bb.gk:                                            ; preds = %bb.gj
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17.2) ; 3 uses
  %i.aoo = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.3, 4
  %.sroa.speculated.i.i.i.i.i192.3 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.aoo)
  %i.aop = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.3, %.sroa.speculated27.i.i.i.i.i191.3 ; 2 uses
  %i.aoq = icmp ult i32 %i.aop, 5
  tail call void @llvm.assume(i1 %i.aoq)
  %i.aor = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.3 to i64
  %i.aos = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aor
  %i.aot = zext nneg i32 %i.aop to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.aos, i64 %i.aot, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3: ; preds = %bb.gk, %bb.gi
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.3 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.gk ], [ %i.aom, %bb.gi ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.aou = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.3 to i64
  %i.aov = add nuw nsw i32 %.sroa.24.13.2, 32
  %i.aow = sub nuw nsw i32 32, %.sroa.24.13.2
  %i.aox = zext nneg i32 %i.aow to i64
  %i.aoy = shl nuw i64 %i.aou, %i.aox
  %i.aoz = or i64 %i.aoy, %.sroa.0198.13.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3, %bb.gg
  %.sroa.63226.16.3 = phi i32 [ %i.aok, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3 ], [ %.sroa.63226.17.2, %bb.gg ]
  %i.apa = phi i64 [ %i.aoz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3 ], [ %.sroa.0198.13.2, %bb.gg ] ; 2 uses
  %i.apb = phi i32 [ %i.aov, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.3 ], [ %.sroa.24.13.2, %bb.gg ]
  %i.apc = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.apd = zext nneg i32 %i.apc to i64
  %i.ape = sub nsw i32 %i.apb, %.sroa.32.1677686
  %i.apf = zext nneg i32 %.sroa.32.1677686 to i64
  %i.apg = shl i64 %i.apa, %i.apf
  %i.aph = ashr i64 %i.apa, %i.apd
  %i.api = trunc nsw i64 %i.aph to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.3

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.3: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3, %bb.gf
  %.sroa.0198.13.3 = phi i64 [ %.sroa.0198.13.2, %bb.gf ], [ %i.apg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3 ] ; 3 uses
  %.sroa.24.13.3 = phi i32 [ %.sroa.24.13.2, %bb.gf ], [ %i.ape, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3 ] ; 6 uses
  %.sroa.63226.17.3 = phi i32 [ %.sroa.63226.17.2, %bb.gf ], [ %.sroa.63226.16.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3 ] ; 8 uses
  %.0.i183.3 = phi i16 [ 0, %bb.gf ], [ %i.api, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.3 ]
  %i.apj = or disjoint i64 %indvars.iv, 7         ; 2 uses
  %i.apk = icmp samesign ult i64 %i.apj, %i.bb
  br i1 %i.apk, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.3
  %i.apl = add i16 %.0.i183.3, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.apm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.apj
  store i16 %i.apl, ptr %i.apm, align 2, !tbaa !158
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.3
  %.not.i178.4 = icmp eq i32 %.sroa.47.1691700, 0 ; 4 uses
  br i1 %.not.i178.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.4, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.apn = icmp samesign ult i32 %.sroa.24.13.3, 65
  tail call void @llvm.assume(i1 %i.apn)
  %i.apo = icmp sgt i32 %.sroa.63226.17.3, -1
  tail call void @llvm.assume(i1 %i.apo)
  %i.app = and i32 %.sroa.63226.17.3, 3
  %i.apq = icmp eq i32 %i.app, 0
  tail call void @llvm.assume(i1 %i.apq)
  %.not.i.i.i179.4 = icmp samesign ult i32 %.sroa.24.13.3, %.sroa.47.1691700
  br i1 %.not.i.i.i179.4, label %bb.go, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.apr = add nuw nsw i32 %.sroa.63226.17.3, 4   ; 2 uses
  %.not.i.i.i.i184.4 = icmp samesign ugt i32 %i.apr, %i.v
  br i1 %.not.i.i.i.i184.4, label %bb.gq, label %bb.gp, !prof !148

bb.gp:                                            ; preds = %bb.go
  %i.aps = zext nneg i32 %.sroa.63226.17.3 to i64
  %i.apt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aps
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4

bb.gq:                                            ; preds = %bb.go
  %i.apu = icmp samesign ugt i32 %.sroa.63226.17.3, %i.ag
  br i1 %i.apu, label %bb.fo, label %bb.gr, !prof !148

bb.gr:                                            ; preds = %bb.gq
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17.3) ; 3 uses
  %i.apv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.4, 4
  %.sroa.speculated.i.i.i.i.i192.4 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.apv)
  %i.apw = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.4, %.sroa.speculated27.i.i.i.i.i191.4 ; 2 uses
  %i.apx = icmp ult i32 %i.apw, 5
  tail call void @llvm.assume(i1 %i.apx)
  %i.apy = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.4 to i64
  %i.apz = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.apy
  %i.aqa = zext nneg i32 %i.apw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.apz, i64 %i.aqa, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4: ; preds = %bb.gr, %bb.gp
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.4 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.gr ], [ %i.apt, %bb.gp ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.4 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.aqb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.4 to i64
  %i.aqc = add nuw nsw i32 %.sroa.24.13.3, 32
  %i.aqd = sub nuw nsw i32 32, %.sroa.24.13.3
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = shl nuw i64 %i.aqb, %i.aqe
  %i.aqg = or i64 %i.aqf, %.sroa.0198.13.3
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4, %bb.gn
  %.sroa.63226.16.4 = phi i32 [ %i.apr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4 ], [ %.sroa.63226.17.3, %bb.gn ]
  %i.aqh = phi i64 [ %i.aqg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4 ], [ %.sroa.0198.13.3, %bb.gn ] ; 2 uses
  %i.aqi = phi i32 [ %i.aqc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.4 ], [ %.sroa.24.13.3, %bb.gn ]
  %i.aqj = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = sub nsw i32 %i.aqi, %.sroa.47.1691700
  %i.aqm = zext nneg i32 %.sroa.47.1691700 to i64
  %i.aqn = shl i64 %i.aqh, %i.aqm
  %i.aqo = ashr i64 %i.aqh, %i.aqk
  %i.aqp = trunc nsw i64 %i.aqo to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.4

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.4: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4, %bb.gm
  %.sroa.0198.13.4 = phi i64 [ %.sroa.0198.13.3, %bb.gm ], [ %i.aqn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4 ] ; 3 uses
  %.sroa.24.13.4 = phi i32 [ %.sroa.24.13.3, %bb.gm ], [ %i.aql, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4 ] ; 6 uses
  %.sroa.63226.17.4 = phi i32 [ %.sroa.63226.17.3, %bb.gm ], [ %.sroa.63226.16.4, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4 ] ; 8 uses
  %.0.i183.4 = phi i16 [ 0, %bb.gm ], [ %i.aqp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.4 ]
  %i.aqq = or disjoint i64 %indvars.iv, 9         ; 2 uses
  %i.aqr = icmp samesign ult i64 %i.aqq, %i.bb
  br i1 %i.aqr, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.4
  %i.aqs = add i16 %.0.i183.4, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.aqt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aqq
  store i16 %i.aqs, ptr %i.aqt, align 2, !tbaa !158
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.4
  br i1 %.not.i178.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.5, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aqu = icmp samesign ult i32 %.sroa.24.13.4, 65
  tail call void @llvm.assume(i1 %i.aqu)
  %i.aqv = icmp sgt i32 %.sroa.63226.17.4, -1
  tail call void @llvm.assume(i1 %i.aqv)
  %i.aqw = and i32 %.sroa.63226.17.4, 3
  %i.aqx = icmp eq i32 %i.aqw, 0
  tail call void @llvm.assume(i1 %i.aqx)
  %.not.i.i.i179.5 = icmp samesign ult i32 %.sroa.24.13.4, %.sroa.47.1691700
  br i1 %.not.i.i.i179.5, label %bb.gv, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.aqy = add nuw nsw i32 %.sroa.63226.17.4, 4   ; 2 uses
  %.not.i.i.i.i184.5 = icmp samesign ugt i32 %i.aqy, %i.v
  br i1 %.not.i.i.i.i184.5, label %bb.gx, label %bb.gw, !prof !148

bb.gw:                                            ; preds = %bb.gv
  %i.aqz = zext nneg i32 %.sroa.63226.17.4 to i64
  %i.ara = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aqz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5

bb.gx:                                            ; preds = %bb.gv
  %i.arb = icmp samesign ugt i32 %.sroa.63226.17.4, %i.ag
  br i1 %i.arb, label %bb.fo, label %bb.gy, !prof !148

bb.gy:                                            ; preds = %bb.gx
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17.4) ; 3 uses
  %i.arc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.5, 4
  %.sroa.speculated.i.i.i.i.i192.5 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.arc)
  %i.ard = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.5, %.sroa.speculated27.i.i.i.i.i191.5 ; 2 uses
  %i.are = icmp ult i32 %i.ard, 5
  tail call void @llvm.assume(i1 %i.are)
  %i.arf = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.5 to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.arf
  %i.arh = zext nneg i32 %i.ard to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.arg, i64 %i.arh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5: ; preds = %bb.gy, %bb.gw
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.5 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.gy ], [ %i.ara, %bb.gw ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.5 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.5, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.ari = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.5 to i64
  %i.arj = add nuw nsw i32 %.sroa.24.13.4, 32
  %i.ark = sub nuw nsw i32 32, %.sroa.24.13.4
  %i.arl = zext nneg i32 %i.ark to i64
  %i.arm = shl nuw i64 %i.ari, %i.arl
  %i.arn = or i64 %i.arm, %.sroa.0198.13.4
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5, %bb.gu
  %.sroa.63226.16.5 = phi i32 [ %i.aqy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5 ], [ %.sroa.63226.17.4, %bb.gu ]
  %i.aro = phi i64 [ %i.arn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5 ], [ %.sroa.0198.13.4, %bb.gu ] ; 2 uses
  %i.arp = phi i32 [ %i.arj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.5 ], [ %.sroa.24.13.4, %bb.gu ]
  %i.arq = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.arr = zext nneg i32 %i.arq to i64
  %i.ars = sub nsw i32 %i.arp, %.sroa.47.1691700
  %i.art = zext nneg i32 %.sroa.47.1691700 to i64
  %i.aru = shl i64 %i.aro, %i.art
  %i.arv = ashr i64 %i.aro, %i.arr
  %i.arw = trunc nsw i64 %i.arv to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.5

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.5: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5, %bb.gt
  %.sroa.0198.13.5 = phi i64 [ %.sroa.0198.13.4, %bb.gt ], [ %i.aru, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5 ] ; 3 uses
  %.sroa.24.13.5 = phi i32 [ %.sroa.24.13.4, %bb.gt ], [ %i.ars, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5 ] ; 6 uses
  %.sroa.63226.17.5 = phi i32 [ %.sroa.63226.17.4, %bb.gt ], [ %.sroa.63226.16.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5 ] ; 8 uses
  %.0.i183.5 = phi i16 [ 0, %bb.gt ], [ %i.arw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.5 ]
  %i.arx = or disjoint i64 %indvars.iv, 11        ; 2 uses
  %i.ary = icmp samesign ult i64 %i.arx, %i.bb
  br i1 %i.ary, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.5
  %i.arz = add i16 %.0.i183.5, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.asa = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.arx
  store i16 %i.arz, ptr %i.asa, align 2, !tbaa !158
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.5
  br i1 %.not.i178.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.6, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.asb = icmp samesign ult i32 %.sroa.24.13.5, 65
  tail call void @llvm.assume(i1 %i.asb)
  %i.asc = icmp sgt i32 %.sroa.63226.17.5, -1
  tail call void @llvm.assume(i1 %i.asc)
  %i.asd = and i32 %.sroa.63226.17.5, 3
  %i.ase = icmp eq i32 %i.asd, 0
  tail call void @llvm.assume(i1 %i.ase)
  %.not.i.i.i179.6 = icmp samesign ult i32 %.sroa.24.13.5, %.sroa.47.1691700
  br i1 %.not.i.i.i179.6, label %bb.hc, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.asf = add nuw nsw i32 %.sroa.63226.17.5, 4   ; 2 uses
  %.not.i.i.i.i184.6 = icmp samesign ugt i32 %i.asf, %i.v
  br i1 %.not.i.i.i.i184.6, label %bb.he, label %bb.hd, !prof !148

bb.hd:                                            ; preds = %bb.hc
  %i.asg = zext nneg i32 %.sroa.63226.17.5 to i64
  %i.ash = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.asg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6

bb.he:                                            ; preds = %bb.hc
  %i.asi = icmp samesign ugt i32 %.sroa.63226.17.5, %i.ag
  br i1 %i.asi, label %bb.fo, label %bb.hf, !prof !148

bb.hf:                                            ; preds = %bb.he
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17.5) ; 3 uses
  %i.asj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.6, 4
  %.sroa.speculated.i.i.i.i.i192.6 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.asj)
  %i.ask = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.6, %.sroa.speculated27.i.i.i.i.i191.6 ; 2 uses
  %i.asl = icmp ult i32 %i.ask, 5
  tail call void @llvm.assume(i1 %i.asl)
  %i.asm = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.6 to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.asm
  %i.aso = zext nneg i32 %i.ask to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.asn, i64 %i.aso, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6: ; preds = %bb.hf, %bb.hd
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.6 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.hf ], [ %i.ash, %bb.hd ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.6 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.6, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.asp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.6 to i64
  %i.asq = add nuw nsw i32 %.sroa.24.13.5, 32
  %i.asr = sub nuw nsw i32 32, %.sroa.24.13.5
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = shl nuw i64 %i.asp, %i.ass
  %i.asu = or i64 %i.ast, %.sroa.0198.13.5
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6, %bb.hb
  %.sroa.63226.16.6 = phi i32 [ %i.asf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6 ], [ %.sroa.63226.17.5, %bb.hb ]
  %i.asv = phi i64 [ %i.asu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6 ], [ %.sroa.0198.13.5, %bb.hb ] ; 2 uses
  %i.asw = phi i32 [ %i.asq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.6 ], [ %.sroa.24.13.5, %bb.hb ]
  %i.asx = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.asy = zext nneg i32 %i.asx to i64
  %i.asz = sub nsw i32 %i.asw, %.sroa.47.1691700
  %i.ata = zext nneg i32 %.sroa.47.1691700 to i64
  %i.atb = shl i64 %i.asv, %i.ata
  %i.atc = ashr i64 %i.asv, %i.asy
  %i.atd = trunc nsw i64 %i.atc to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.6

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.6: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6, %bb.ha
  %.sroa.0198.13.6 = phi i64 [ %.sroa.0198.13.5, %bb.ha ], [ %i.atb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6 ] ; 3 uses
  %.sroa.24.13.6 = phi i32 [ %.sroa.24.13.5, %bb.ha ], [ %i.asz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6 ] ; 6 uses
  %.sroa.63226.17.6 = phi i32 [ %.sroa.63226.17.5, %bb.ha ], [ %.sroa.63226.16.6, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6 ] ; 8 uses
  %.0.i183.6 = phi i16 [ 0, %bb.ha ], [ %i.atd, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.6 ]
  %i.ate = or disjoint i64 %indvars.iv, 13        ; 2 uses
  %i.atf = icmp samesign ult i64 %i.ate, %i.bb
  br i1 %i.atf, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.6
  %i.atg = add i16 %.0.i183.6, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.ath = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ate
  store i16 %i.atg, ptr %i.ath, align 2, !tbaa !158
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.6
  br i1 %.not.i178.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.7, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ati = icmp samesign ult i32 %.sroa.24.13.6, 65
  tail call void @llvm.assume(i1 %i.ati)
  %i.atj = icmp sgt i32 %.sroa.63226.17.6, -1
  tail call void @llvm.assume(i1 %i.atj)
  %i.atk = and i32 %.sroa.63226.17.6, 3
  %i.atl = icmp eq i32 %i.atk, 0
  tail call void @llvm.assume(i1 %i.atl)
  %.not.i.i.i179.7 = icmp samesign ult i32 %.sroa.24.13.6, %.sroa.47.1691700
  br i1 %.not.i.i.i179.7, label %bb.hj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.atm = add nuw nsw i32 %.sroa.63226.17.6, 4   ; 2 uses
  %.not.i.i.i.i184.7 = icmp samesign ugt i32 %i.atm, %i.v
  br i1 %.not.i.i.i.i184.7, label %bb.hl, label %bb.hk, !prof !148

bb.hk:                                            ; preds = %bb.hj
  %i.atn = zext nneg i32 %.sroa.63226.17.6 to i64
  %i.ato = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.atn
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7

bb.hl:                                            ; preds = %bb.hj
  %i.atp = icmp samesign ugt i32 %.sroa.63226.17.6, %i.ag
  br i1 %i.atp, label %bb.fo, label %bb.hm, !prof !148

bb.hm:                                            ; preds = %bb.hl
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.sroa.63226.17.6) ; 3 uses
  %i.atq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.7, 4
  %.sroa.speculated.i.i.i.i.i192.7 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.atq)
  %i.atr = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.7, %.sroa.speculated27.i.i.i.i.i191.7 ; 2 uses
  %i.ats = icmp ult i32 %i.atr, 5
  tail call void @llvm.assume(i1 %i.ats)
  %i.att = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.7 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.att
  %i.atv = zext nneg i32 %i.atr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.atu, i64 %i.atv, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7: ; preds = %bb.hm, %bb.hk
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.7 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.hm ], [ %i.ato, %bb.hk ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.7 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.7, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.atw = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.7 to i64
  %i.atx = add nuw nsw i32 %.sroa.24.13.6, 32
  %i.aty = sub nuw nsw i32 32, %.sroa.24.13.6
  %i.atz = zext nneg i32 %i.aty to i64
  %i.aua = shl nuw i64 %i.atw, %i.atz
  %i.aub = or i64 %i.aua, %.sroa.0198.13.6
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7, %bb.hi
  %.sroa.63226.16.7 = phi i32 [ %i.atm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7 ], [ %.sroa.63226.17.6, %bb.hi ]
  %i.auc = phi i64 [ %i.aub, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7 ], [ %.sroa.0198.13.6, %bb.hi ] ; 2 uses
  %i.aud = phi i32 [ %i.atx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.7 ], [ %.sroa.24.13.6, %bb.hi ]
  %i.aue = sub nuw nsw i32 64, %.sroa.47.1691700
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = sub nsw i32 %i.aud, %.sroa.47.1691700
  %i.auh = zext nneg i32 %.sroa.47.1691700 to i64
  %i.aui = shl i64 %i.auc, %i.auh
  %i.auj = ashr i64 %i.auc, %i.auf
  %i.auk = trunc nsw i64 %i.auj to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.7

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.7: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7, %bb.hh
  %.sroa.0198.13.7 = phi i64 [ %.sroa.0198.13.6, %bb.hh ], [ %i.aui, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7 ]
  %.sroa.24.13.7 = phi i32 [ %.sroa.24.13.6, %bb.hh ], [ %i.aug, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7 ]
  %.sroa.63226.17.7 = phi i32 [ %.sroa.63226.17.6, %bb.hh ], [ %.sroa.63226.16.7, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7 ]
  %.0.i183.7 = phi i16 [ 0, %bb.hh ], [ %i.auk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.7 ]
  %i.aul = or disjoint i64 %indvars.iv, 15        ; 2 uses
  %i.aum = icmp samesign ult i64 %i.aul, %i.bb
  br i1 %i.aum, label %bb.hn, label %.loopexit.loopexit

bb.hn:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.7
  %i.aun = add i16 %.0.i183.7, %i.akk
  tail call void @llvm.assume(i1 %i.ao)
  %i.auo = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aul
  store i16 %i.aun, ptr %i.auo, align 2, !tbaa !158
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.hn, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.7
  %.pre = add nuw nsw i64 %indvars.iv, 16
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7, %.loopexit.loopexit
  %indvars.iv.next.pre-phi = phi i64 [ %i.dp, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7 ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.0198.8 = phi i64 [ %.sroa.0198.11.7, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7 ], [ %.sroa.0198.13.7, %.loopexit.loopexit ]
  %.sroa.24.8 = phi i32 [ %.sroa.24.11.7, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7 ], [ %.sroa.24.13.7, %.loopexit.loopexit ]
  %.sroa.63226.7 = phi i32 [ %.sroa.63226.13.7, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.7 ], [ %.sroa.63226.17.7, %.loopexit.loopexit ]
  %i.aup = icmp samesign ult i64 %indvars.iv.next.pre-phi, %i.bb
  br i1 %i.aup, label %bb.d, label %bb.c, !llvm.loop !164
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !165  ; 5 uses
  %i.c = icmp samesign ult i32 %i.b, 65
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !167  ; 5 uses
  %i.f = icmp sgt i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !169  ; 6 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i32 %i.h, 3
  %i.k = icmp eq i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i32 %1, 33
  tail call void @llvm.assume(i1 %i.l)
  %.not.i.i = icmp samesign ult i32 %i.b, %1
  br i1 %.not.i.i, label %bb.c, label %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i

._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %0, align 8, !tbaa !171
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = add nuw nsw i32 %i.h, 4                  ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.n, %i.e
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !148

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !172, !noalias !173
  %i.o = zext nneg i32 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.o
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = icmp samesign ugt i32 %i.h, %i.q
  br i1 %i.r, label %bb.f, label %bb.g, !prof !148

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !172
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.h) ; 3 uses
  %i.s = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.s)
  %i.t = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.u = icmp ult i32 %i.t, 5
  tail call void @llvm.assume(i1 %i.u)
  %i.v = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.v
  %i.x = zext nneg i32 %i.t to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.w, i64 %i.x, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.p, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i = load i64, ptr %0, align 8
  %i.y = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.z = add nuw nsw i32 %i.b, 32
  %i.aa = sub nuw nsw i32 32, %i.b
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 %i.y, %i.ab
  %i.ad = or i64 %i.ac, %.promoted8.i.i.i
  store i32 %i.n, ptr %i.g, align 8, !tbaa !169
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit: ; preds = %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i
  %i.ae = phi i64 [ %.pre.i, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i ], [ %i.ad, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ] ; 2 uses
  %i.af = phi i32 [ %i.b, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i ], [ %i.z, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ]
  %i.ag = sub nuw nsw i32 64, %1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = sub nsw i32 %i.af, %1
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !165
  %i.aj = zext nneg i32 %1 to i64
  %i.ak = shl i64 %i.ae, %i.aj
  store i64 %i.ak, ptr %0, align 8, !tbaa !171
  %i.al = ashr i64 %i.ae, %i.ah
  %i.am = trunc nsw i64 %i.al to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %.0 = phi i32 [ %i.am, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !call_target !139, !inline_history !176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !call_target !147, !inline_history !176
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #21 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !137
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !137
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #24
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef %0)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !137
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16
end_hunk_0
