Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV0Decompressor?download=true
inline.NumInlined: 413
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed21SamsungV0Decompressor10decompressEv:bb.a
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
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ae, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %i.ad)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !92
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !157

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
  br i1 %i.ap, label %.preheader, label %._crit_edge74.split, !llvm.loop !158

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv77 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next78, %bb.c ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv77 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 2, !tbaa !121
  %i.au = load i16, ptr %i.as, align 2, !tbaa !121
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !121
  store i16 %i.at, ptr %i.as, align 2, !tbaa !121
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next78, %i.z
  br i1 %i.av, label %bb.c, label %._crit_edge72, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i177 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i154 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i128 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 40 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91, !noalias !164
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !117, !noalias !164
  %i.f = mul nsw i32 %i.e, %i.c                   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118, !noalias !164 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !119, !noalias !164
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
  %i.q = load i32, ptr %i.p, align 8, !tbaa !97   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !98   ; 3 uses
  %i.t = icmp uge i32 %i.s, %i.q
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = zext i32 %i.q to i64
  %i.w = sub nuw nsw i32 %i.s, %i.q               ; 101 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 66 uses
  %i.z = icmp samesign ult i32 %i.w, 4
  br i1 %i.z, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.aa = mul nuw nsw i32 %i.k, %i.h              ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !116, !noalias !164 ; 3 uses
  %i.ad = icmp slt i32 %1, 2                      ; 2 uses
  %i.ae = select i1 %i.ad, i32 7, i32 4           ; 4 uses
  %i.af = add nuw nsw i32 %i.w, 8                 ; 33 uses
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, %i.h       ; 2 uses
  %i.ai = mul nuw nsw i32 %i.k, %i.ag             ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, %i.f
  %i.ak = icmp samesign ule i32 %i.aj, %i.aa
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.al ; 14 uses
  %i.an = icmp samesign ult i32 %1, %i.h          ; 21 uses
  %i.ao = mul nuw nsw i32 %i.k, %1                ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, %i.f
  %i.aq = icmp samesign ule i32 %i.ap, %i.aa      ; 2 uses
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ar ; 47 uses
  %i.at = add nsw i32 %1, -2                      ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, %i.h       ; 2 uses
  %i.av = mul nuw nsw i32 %i.k, %i.at             ; 2 uses
  %i.aw = add nuw nsw i32 %i.av, %i.f
  %i.ax = icmp samesign ule i32 %i.aw, %i.aa
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ay ; 14 uses
  %i.ba = zext nneg i32 %i.f to i64               ; 27 uses
  %i.bb = zext nneg i32 %i.f to i64
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  ret void

bb.d:                                             ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.loopexit
  %.sroa.47.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.47.1691700, %.loopexit ] ; 2 uses
  %.sroa.32.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.32.1677686, %.loopexit ] ; 2 uses
  %.sroa.17.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.17.1663672, %.loopexit ] ; 2 uses
  %.sroa.0496.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0496.1705714, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %indvars.iv.next.pre-phi, %.loopexit ] ; 52 uses
  %.sroa.0198.0480 = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0198.8, %.loopexit ] ; 2 uses
  %.sroa.24.0479 = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.24.8, %.loopexit ] ; 5 uses
  %.sroa.63226.0478 = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.63226.7, %.loopexit ] ; 5 uses
  %i.bc = icmp samesign ult i32 %.sroa.24.0479, 65
  tail call void @llvm.assume(i1 %i.bc)
  %.not.i = icmp samesign ult i32 %.sroa.24.0479, 32
  br i1 %.not.i, label %bb.e, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bd = add nuw nsw i32 %.sroa.63226.0478, 4    ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.bd, %i.w
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !115

bb.f:                                             ; preds = %bb.e
  %i.be = zext nneg i32 %.sroa.63226.0478 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.be
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bg = icmp samesign ugt i32 %.sroa.63226.0478, %i.af
  br i1 %i.bg, label %bb.h, label %bb.i, !prof !115

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.0478) ; 3 uses
  %i.bh = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.bh)
  %i.bi = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, 5
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bk
  %i.bm = zext nneg i32 %i.bi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.bl, i64 %i.bm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.i ], [ %i.bf, %bb.f ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bn = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.bo = or disjoint i32 %.sroa.24.0479, 32
  %i.bp = sub nuw nsw i32 32, %.sroa.24.0479
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bn, %i.bq
  %i.bs = or i64 %i.br, %.sroa.0198.0480
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.d, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i
  %.sroa.63226.8 = phi i32 [ %i.bd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.63226.0478, %bb.d ] ; 16 uses
  %.sroa.24.9 = phi i32 [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.24.0479, %bb.d ] ; 2 uses
  %.sroa.0198.9 = phi i64 [ %i.bs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.0198.0480, %bb.d ] ; 7 uses
  %i.bt = and i32 %.sroa.63226.8, 3
  %i.bu = icmp eq i32 %i.bt, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %.sroa.0198.9, 61
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 3
  %i.by = lshr i64 %.sroa.0198.9, 59
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 3                        ; 2 uses
  %i.cb = lshr i64 %.sroa.0198.9, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3                        ; 2 uses
  %i.ce = lshr i64 %.sroa.0198.9, 55
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = and i32 %i.cf, 3                        ; 2 uses
  %i.ch = add nsw i32 %.sroa.24.9, -9
  %i.ci = shl i64 %.sroa.0198.9, 9                ; 2 uses
  %.not94 = icmp sgt i64 %.sroa.0198.9, -1
  switch i32 %i.bx, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.unreachabledefault [
    i32 3, label %.thread708
    i32 2, label %bb.r
    i32 1, label %bb.q
    i32 0, label %.thread780
  ]

.preheader431.1:                                  ; preds = %.thread708, %.thread780
  %.sroa.0496.1705714 = phi i32 [ %i.df, %.thread708 ], [ %.sroa.0496.1705, %.thread780 ] ; 35 uses
  %.sroa.24.3706713 = phi i32 [ %i.dg, %.thread708 ], [ %i.ch, %.thread780 ] ; 2 uses
  %.sroa.0198.3707712 = phi i64 [ %i.dh, %.thread708 ], [ %i.ci, %.thread780 ] ; 3 uses
  switch i32 %i.ca, label %.preheader431.1.unreachabledefault [
    i32 3, label %.thread666
    i32 2, label %bb.j
    i32 1, label %bb.k
    i32 0, label %.thread768
  ]

bb.j:                                             ; preds = %.preheader431.1
  br label %bb.k

.thread666:                                       ; preds = %.preheader431.1
  %3 = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %3)
  %i.cj = lshr i64 %.sroa.0198.3707712, 60
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = add nsw i32 %.sroa.24.3706713, -4
  %i.cm = shl i64 %.sroa.0198.3707712, 4
  br label %.preheader431.2

bb.k:                                             ; preds = %.preheader431.1, %bb.j
  %.sink = phi i32 [ -1, %bb.j ], [ %i.ca, %.preheader431.1 ]
  %i.cn = add nsw i32 %.sroa.17.0, %.sink         ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.s, label %.thread768

.preheader431.1.unreachabledefault:               ; preds = %.preheader431.1
  unreachable

.thread768:                                       ; preds = %.preheader431.1, %bb.k
  %.sroa.17.1663 = phi i32 [ %i.cn, %bb.k ], [ %.sroa.17.0, %.preheader431.1 ] ; 2 uses
  %i.cp = icmp samesign ugt i32 %.sroa.17.1663, 16
  br i1 %i.cp, label %bb.t, label %.preheader431.2

.preheader431.2:                                  ; preds = %.thread666, %.thread768
  %.sroa.17.1663672 = phi i32 [ %i.ck, %.thread666 ], [ %.sroa.17.1663, %.thread768 ] ; 35 uses
  %.sroa.24.3.1664671 = phi i32 [ %i.cl, %.thread666 ], [ %.sroa.24.3706713, %.thread768 ] ; 2 uses
  %.sroa.0198.3.1665670 = phi i64 [ %i.cm, %.thread666 ], [ %.sroa.0198.3707712, %.thread768 ] ; 3 uses
  switch i32 %i.cd, label %.preheader431.2.unreachabledefault [
    i32 3, label %.thread680
    i32 2, label %bb.l
    i32 1, label %bb.m
    i32 0, label %.thread772
  ]

bb.l:                                             ; preds = %.preheader431.2
  br label %bb.m

.thread680:                                       ; preds = %.preheader431.2
  %i.cq = lshr i64 %.sroa.0198.3.1665670, 60
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = add nsw i32 %.sroa.24.3.1664671, -4
  %i.ct = shl i64 %.sroa.0198.3.1665670, 4
  br label %.preheader431.3

bb.m:                                             ; preds = %.preheader431.2, %bb.l
  %.sink784 = phi i32 [ -1, %bb.l ], [ %i.cd, %.preheader431.2 ]
  %i.cu = add nsw i32 %.sroa.32.0, %.sink784      ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %.thread772

.preheader431.2.unreachabledefault:               ; preds = %.preheader431.2
  unreachable

.thread772:                                       ; preds = %.preheader431.2, %bb.m
  %.sroa.32.1677 = phi i32 [ %i.cu, %bb.m ], [ %.sroa.32.0, %.preheader431.2 ] ; 2 uses
  %i.cw = icmp samesign ugt i32 %.sroa.32.1677, 16
  br i1 %i.cw, label %bb.t, label %.preheader431.3

.preheader431.3:                                  ; preds = %.thread680, %.thread772
  %.sroa.32.1677686 = phi i32 [ %i.cr, %.thread680 ], [ %.sroa.32.1677, %.thread772 ] ; 35 uses
  %.sroa.24.3.2678685 = phi i32 [ %i.cs, %.thread680 ], [ %.sroa.24.3.1664671, %.thread772 ] ; 2 uses
  %.sroa.0198.3.2679684 = phi i64 [ %i.ct, %.thread680 ], [ %.sroa.0198.3.1665670, %.thread772 ] ; 3 uses
  switch i32 %i.cg, label %.preheader431.3.unreachabledefault [
    i32 3, label %.thread694
    i32 2, label %bb.n
    i32 1, label %bb.o
    i32 0, label %.thread776
  ]

bb.n:                                             ; preds = %.preheader431.3
  br label %bb.o

.thread694:                                       ; preds = %.preheader431.3
  %i.cx = lshr i64 %.sroa.0198.3.2679684, 60
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = add nsw i32 %.sroa.24.3.2678685, -4
  %i.da = shl i64 %.sroa.0198.3.2679684, 4
  br label %bb.p

bb.o:                                             ; preds = %.preheader431.3, %bb.n
  %.sink785 = phi i32 [ -1, %bb.n ], [ %i.cg, %.preheader431.3 ]
  %i.db = add nsw i32 %.sroa.47.0, %.sink785      ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %.thread776

.preheader431.3.unreachabledefault:               ; preds = %.preheader431.3
  unreachable

.thread776:                                       ; preds = %.preheader431.3, %bb.o
  %.sroa.47.1691 = phi i32 [ %i.db, %bb.o ], [ %.sroa.47.0, %.preheader431.3 ] ; 2 uses
  %i.dd = icmp samesign ugt i32 %.sroa.47.1691, 16
  br i1 %i.dd, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.thread694, %.thread776
  %.sroa.47.1691700 = phi i32 [ %i.cy, %.thread694 ], [ %.sroa.47.1691, %.thread776 ] ; 35 uses
  %.sroa.24.3.3692699 = phi i32 [ %i.cz, %.thread694 ], [ %.sroa.24.3.2678685, %.thread776 ] ; 10 uses
  %.sroa.0198.3.3693698 = phi i64 [ %i.da, %.thread694 ], [ %.sroa.0198.3.2679684, %.thread776 ] ; 6 uses
  br i1 %.not94, label %bb.dc, label %bb.u

.thread708:                                       ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.de = lshr i64 %i.ci, 60
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nsw i32 %.sroa.24.9, -13
  %i.dh = shl i64 %.sroa.0198.9, 13
  br label %.preheader431.1

bb.q:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  br label %bb.r

bb.r:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.q
  %.sink786 = phi i32 [ 1, %bb.q ], [ -1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ]
  %i.di = add nsw i32 %.sroa.0496.0, %.sink786    ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.s, label %.thread780

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.unreachabledefault: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  unreachable

.thread780:                                       ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.r
  %.sroa.0496.1705 = phi i32 [ %i.di, %bb.r ], [ %.sroa.0496.0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.dk = icmp samesign ugt i32 %.sroa.0496.1705, 16
  br i1 %i.dk, label %bb.t, label %.preheader431.1

bb.t:                                             ; preds = %.thread776, %.thread772, %.thread768, %.thread780
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.u:                                             ; preds = %bb.p
  br i1 %i.ad, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dl = add nuw nsw i64 %indvars.iv, 16         ; 2 uses
  %.not97 = icmp samesign ult i64 %i.dl, %i.ba
  br i1 %.not97, label %.preheader430.preheader, label %bb.x

.preheader430.preheader:                          ; preds = %bb.w
  %.not.i121 = icmp eq i32 %.sroa.0496.1705714, 0
  br i1 %.not.i121, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread, label %bb.y

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread: ; preds = %.preheader430.preheader
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ak)
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !121
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.assume(i1 %i.aq)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !121
  %i.dp = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !121
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.dp
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !121
  %i.dt = or disjoint i64 %indvars.iv, 4          ; 3 uses
  %i.du = icmp samesign ult i64 %i.dt, %i.ba
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.dt
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !121
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.dt
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !121
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.y:                                             ; preds = %.preheader430.preheader
  %i.dy = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.dy)
  %.not.i.i.i122 = icmp samesign ult i32 %.sroa.24.3.3692699, %.sroa.0496.1705714
  br i1 %.not.i.i.i122, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.dz = add nuw nsw i32 %.sroa.63226.8, 4       ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i32 %i.dz, %i.w
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa, !prof !115

bb.aa:                                            ; preds = %bb.z
  %i.ea = zext nneg i32 %.sroa.63226.8 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ea
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = icmp samesign ugt i32 %.sroa.63226.8, %i.af
  br i1 %i.ec, label %bb.ac, label %bb.ad, !prof !115

bb.ac:                                            ; preds = %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar, %bb.am, %bb.ah, %bb.ab
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.8) ; 3 uses
  %i.ed = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ed)
  %i.ee = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.ef = icmp samesign ult i32 %i.ee, 5
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.eg
  %i.ei = zext nneg i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.eh, i64 %i.ei, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i: ; preds = %bb.ad, %bb.aa
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.ad ], [ %i.eb, %bb.aa ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ej = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i to i64
  %i.ek = add nuw nsw i32 %.sroa.24.3.3692699, 32
  %i.el = sub nuw nsw i32 32, %.sroa.24.3.3692699
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.ej, %i.em
  %i.eo = or i64 %i.en, %.sroa.0198.3.3693698
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i
  %.sroa.63226.10 = phi i32 [ %i.dz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.63226.8, %bb.y ] ; 6 uses
  %i.ep = phi i64 [ %i.eo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.0198.3.3693698, %bb.y ] ; 2 uses
  %i.eq = phi i32 [ %i.ek, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.24.3.3692699, %bb.y ]
  %i.er = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.es = zext nneg i32 %i.er to i64
  %i.et = sub nuw nsw i32 %i.eq, %.sroa.0496.1705714 ; 5 uses
  %i.eu = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.ev = shl i64 %i.ep, %i.eu                    ; 2 uses
  %i.ew = ashr i64 %i.ep, %i.es
  %i.ex = trunc nsw i64 %i.ew to i16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !121
  %i.fa = add i16 %i.ez, %i.ex
  tail call void @llvm.assume(i1 %i.an)
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !121
  %i.fc = icmp samesign ult i32 %i.et, 65
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = and i32 %.sroa.63226.10, 3
  %i.fe = icmp eq i32 %i.fd, 0
  tail call void @llvm.assume(i1 %i.fe)
  %.not.i.i.i122.1 = icmp samesign ult i32 %i.et, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.1, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ff = add nuw nsw i32 %.sroa.63226.10, 4      ; 2 uses
  %.not.i.i.i.i.1 = icmp samesign ugt i32 %i.ff, %i.w
  br i1 %.not.i.i.i.i.1, label %bb.ah, label %bb.ag, !prof !115

bb.ag:                                            ; preds = %bb.af
  %i.fg = zext nneg i32 %.sroa.63226.10 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1

bb.ah:                                            ; preds = %bb.af
  %i.fi = icmp samesign ugt i32 %.sroa.63226.10, %i.af
  br i1 %i.fi, label %bb.ac, label %bb.ai, !prof !115

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10) ; 3 uses
  %i.fj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.1, 4
  %.sroa.speculated.i.i.i.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.fj)
  %i.fk = sub nsw i32 %.sroa.speculated.i.i.i.i.i.1, %.sroa.speculated27.i.i.i.i.i.1 ; 2 uses
  %i.fl = icmp samesign ult i32 %i.fk, 5
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.1 to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fm
  %i.fo = zext nneg i32 %i.fk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.fn, i64 %i.fo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1: ; preds = %bb.ai, %bb.ag
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.1 = phi ptr [ %.sroa.0.i.i.i.i, %bb.ai ], [ %i.fh, %bb.ag ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.fp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.1 to i64
  %i.fq = add nuw nsw i32 %i.et, 32
  %i.fr = sub nuw nsw i32 32, %i.et
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl nuw i64 %i.fp, %i.fs
  %i.fu = or i64 %i.ft, %i.ev
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1, %bb.ae
  %.sroa.63226.10.1 = phi i32 [ %i.ff, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %.sroa.63226.10, %bb.ae ] ; 6 uses
  %i.fv = phi i64 [ %i.fu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %i.ev, %bb.ae ] ; 2 uses
  %i.fw = phi i32 [ %i.fq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %i.et, %bb.ae ]
  %i.fx = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = sub nuw nsw i32 %i.fw, %.sroa.0496.1705714 ; 5 uses
  %i.ga = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.gb = shl i64 %i.fv, %i.ga                    ; 2 uses
  %i.gc = ashr i64 %i.fv, %i.fy
  %i.gd = trunc nsw i64 %i.gc to i16
  %i.ge = or disjoint i64 %indvars.iv, 2          ; 3 uses
  %i.gf = icmp samesign ult i64 %i.ge, %i.ba
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ge
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !121
  %i.gi = add i16 %i.gh, %i.gd
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ge
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !121
  %i.gk = icmp samesign ult i32 %i.fz, 65
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = and i32 %.sroa.63226.10.1, 3
  %i.gm = icmp eq i32 %i.gl, 0
  tail call void @llvm.assume(i1 %i.gm)
  %.not.i.i.i122.2 = icmp samesign ult i32 %i.fz, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.2, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gn = add nuw nsw i32 %.sroa.63226.10.1, 4    ; 2 uses
  %.not.i.i.i.i.2 = icmp samesign ugt i32 %i.gn, %i.w
  br i1 %.not.i.i.i.i.2, label %bb.am, label %bb.al, !prof !115

bb.al:                                            ; preds = %bb.ak
  %i.go = zext nneg i32 %.sroa.63226.10.1 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.go
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2

bb.am:                                            ; preds = %bb.ak
  %i.gq = icmp samesign ugt i32 %.sroa.63226.10.1, %i.af
  br i1 %i.gq, label %bb.ac, label %bb.an, !prof !115

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.1) ; 3 uses
  %i.gr = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.2, 4
  %.sroa.speculated.i.i.i.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.gr)
  %i.gs = sub nsw i32 %.sroa.speculated.i.i.i.i.i.2, %.sroa.speculated27.i.i.i.i.i.2 ; 2 uses
  %i.gt = icmp samesign ult i32 %i.gs, 5
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.2 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gu
  %i.gw = zext nneg i32 %i.gs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.gv, i64 %i.gw, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2: ; preds = %bb.an, %bb.al
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.2 = phi ptr [ %.sroa.0.i.i.i.i, %bb.an ], [ %i.gp, %bb.al ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gx = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.2 to i64
  %i.gy = add nuw nsw i32 %i.fz, 32
  %i.gz = sub nuw nsw i32 32, %i.fz
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw i64 %i.gx, %i.ha
  %i.hc = or i64 %i.hb, %i.gb
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2, %bb.aj
  %.sroa.63226.10.2 = phi i32 [ %i.gn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %.sroa.63226.10.1, %bb.aj ] ; 6 uses
  %i.hd = phi i64 [ %i.hc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %i.gb, %bb.aj ] ; 2 uses
  %i.he = phi i32 [ %i.gy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %i.fz, %bb.aj ]
  %i.hf = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = sub nuw nsw i32 %i.he, %.sroa.0496.1705714 ; 5 uses
  %i.hi = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.hj = shl i64 %i.hd, %i.hi                    ; 2 uses
  %i.hk = ashr i64 %i.hd, %i.hg
  %i.hl = trunc nsw i64 %i.hk to i16
  %i.hm = or disjoint i64 %indvars.iv, 4          ; 3 uses
  %i.hn = icmp samesign ult i64 %i.hm, %i.ba
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hm
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !121
  %i.hq = add i16 %i.hp, %i.hl
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.hm
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !121
  %i.hs = icmp samesign ult i32 %i.hh, 65
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = icmp sgt i32 %.sroa.63226.10.2, -1
  tail call void @llvm.assume(i1 %i.ht)
  %.not.i.i.i122.3 = icmp samesign ult i32 %i.hh, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.3, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.hu = add nuw nsw i32 %.sroa.63226.10.2, 4    ; 2 uses
  %.not.i.i.i.i.3 = icmp samesign ugt i32 %i.hu, %i.w
  br i1 %.not.i.i.i.i.3, label %bb.ar, label %bb.aq, !prof !115

bb.aq:                                            ; preds = %bb.ap
  %i.hv = zext nneg i32 %.sroa.63226.10.2 to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3

bb.ar:                                            ; preds = %bb.ap
  %i.hx = icmp samesign ugt i32 %.sroa.63226.10.2, %i.af
  br i1 %i.hx, label %bb.ac, label %bb.as, !prof !115

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.3 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.2) ; 3 uses
  %i.hy = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.3, 4
  %.sroa.speculated.i.i.i.i.i.3 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.hy)
  %i.hz = sub nsw i32 %.sroa.speculated.i.i.i.i.i.3, %.sroa.speculated27.i.i.i.i.i.3 ; 2 uses
  %i.ia = icmp samesign ult i32 %i.hz, 5
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.3 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ib
  %i.id = zext nneg i32 %i.hz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ic, i64 %i.id, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3: ; preds = %bb.as, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.3 = phi ptr [ %.sroa.0.i.i.i.i, %bb.as ], [ %i.hw, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ie = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.3 to i64
  %i.if = add nuw nsw i32 %i.hh, 32
  %i.ig = sub nuw nsw i32 32, %i.hh
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = shl nuw i64 %i.ie, %i.ih
  %i.ij = or i64 %i.ii, %i.hj
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3, %bb.ao
  %.sroa.63226.10.3 = phi i32 [ %i.hu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %.sroa.63226.10.2, %bb.ao ]
  %i.ik = phi i64 [ %i.ij, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %i.hj, %bb.ao ] ; 2 uses
  %i.il = phi i32 [ %i.if, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %i.hh, %bb.ao ]
  %i.im = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.in = zext nneg i32 %i.im to i64
  %i.io = sub nuw nsw i32 %i.il, %.sroa.0496.1705714
  %i.ip = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.iq = shl i64 %i.ik, %i.ip
  %i.ir = ashr i64 %i.ik, %i.in
  %i.is = trunc nsw i64 %i.ir to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3
  %.sroa.63226.11.3 = phi i32 [ %.sroa.63226.8, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %.sroa.63226.10.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 8 uses
  %.sroa.24.10.3 = phi i32 [ %.sroa.24.3.3692699, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.io, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 6 uses
  %.sroa.0198.10.3 = phi i64 [ %.sroa.0198.3.3693698, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.iq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 3 uses
  %.0.i.3 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.is, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ]
  %i.it = or disjoint i64 %indvars.iv, 6          ; 3 uses
  %i.iu = icmp samesign ult i64 %i.it, %i.ba
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.it
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !121
  %i.ix = add i16 %i.iw, %.0.i.3
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.it
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !121
  %.not.i121.4 = icmp eq i32 %.sroa.17.1663672, 0
  br i1 %.not.i121.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread, label %bb.at

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3
  %i.iz = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !121
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.iz
  store i16 %i.jb, ptr %i.jc, align 2, !tbaa !121
  %i.jd = or disjoint i64 %indvars.iv, 10         ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !121
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.jd
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !121
  %i.jh = or disjoint i64 %indvars.iv, 12         ; 3 uses
  %i.ji = icmp samesign ult i64 %i.jh, %i.ba
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.jh
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !121
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.jh
  store i16 %i.jk, ptr %i.jl, align 2, !tbaa !121
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7

bb.at:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3
  %i.jm = icmp samesign ult i32 %.sroa.24.10.3, 65
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp sgt i32 %.sroa.63226.11.3, -1
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = and i32 %.sroa.63226.11.3, 3
  %i.jp = icmp eq i32 %i.jo, 0
  tail call void @llvm.assume(i1 %i.jp)
  %.not.i.i.i122.4 = icmp samesign ult i32 %.sroa.24.10.3, %.sroa.17.1663672
  br i1 %.not.i.i.i122.4, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.jq = add nuw nsw i32 %.sroa.63226.11.3, 4    ; 2 uses
  %.not.i.i.i.i.4 = icmp samesign ugt i32 %i.jq, %i.w
  br i1 %.not.i.i.i.i.4, label %bb.aw, label %bb.av, !prof !115

bb.av:                                            ; preds = %bb.au
  %i.jr = zext nneg i32 %.sroa.63226.11.3 to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.jr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4

bb.aw:                                            ; preds = %bb.au
  %i.jt = icmp samesign ugt i32 %.sroa.63226.11.3, %i.af
  br i1 %i.jt, label %bb.ac, label %bb.ax, !prof !115

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.4 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.11.3) ; 3 uses
  %i.ju = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.4, 4
  %.sroa.speculated.i.i.i.i.i.4 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ju)
  %i.jv = sub nsw i32 %.sroa.speculated.i.i.i.i.i.4, %.sroa.speculated27.i.i.i.i.i.4 ; 2 uses
  %i.jw = icmp samesign ult i32 %i.jv, 5
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.4 to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.jx
  %i.jz = zext nneg i32 %i.jv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.jy, i64 %i.jz, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4: ; preds = %bb.ax, %bb.av
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.4 = phi ptr [ %.sroa.0.i.i.i.i, %bb.ax ], [ %i.js, %bb.av ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.4 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ka = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.4 to i64
  %i.kb = add nuw nsw i32 %.sroa.24.10.3, 32
  %i.kc = sub nuw nsw i32 32, %.sroa.24.10.3
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl nuw i64 %i.ka, %i.kd
  %i.kf = or i64 %i.ke, %.sroa.0198.10.3
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4, %bb.at
  %.sroa.63226.10.4 = phi i32 [ %i.jq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.63226.11.3, %bb.at ] ; 6 uses
  %i.kg = phi i64 [ %i.kf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.0198.10.3, %bb.at ] ; 2 uses
  %i.kh = phi i32 [ %i.kb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.24.10.3, %bb.at ]
  %i.ki = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = sub nuw nsw i32 %i.kh, %.sroa.17.1663672 ; 5 uses
  %i.kl = zext nneg i32 %.sroa.17.1663672 to i64
  %i.km = shl i64 %i.kg, %i.kl                    ; 2 uses
  %i.kn = ashr i64 %i.kg, %i.kj
  %i.ko = trunc nsw i64 %i.kn to i16
  %i.kp = or disjoint i64 %indvars.iv, 8          ; 3 uses
  %i.kq = icmp samesign ult i64 %i.kp, %i.ba
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.kp
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !121
  %i.kt = add i16 %i.ks, %i.ko
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.kp
  store i16 %i.kt, ptr %i.ku, align 2, !tbaa !121
  %i.kv = icmp samesign ult i32 %i.kk, 65
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = and i32 %.sroa.63226.10.4, 3
  %i.kx = icmp eq i32 %i.kw, 0
  tail call void @llvm.assume(i1 %i.kx)
  %.not.i.i.i122.5 = icmp samesign ult i32 %i.kk, %.sroa.17.1663672
  br i1 %.not.i.i.i122.5, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ky = add nuw nsw i32 %.sroa.63226.10.4, 4    ; 2 uses
  %.not.i.i.i.i.5 = icmp samesign ugt i32 %i.ky, %i.w
  br i1 %.not.i.i.i.i.5, label %bb.bb, label %bb.ba, !prof !115

bb.ba:                                            ; preds = %bb.az
  %i.kz = zext nneg i32 %.sroa.63226.10.4 to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.kz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5

bb.bb:                                            ; preds = %bb.az
  %i.lb = icmp samesign ugt i32 %.sroa.63226.10.4, %i.af
  br i1 %i.lb, label %bb.ac, label %bb.bc, !prof !115

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.5 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.4) ; 3 uses
  %i.lc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.5, 4
  %.sroa.speculated.i.i.i.i.i.5 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.lc)
  %i.ld = sub nsw i32 %.sroa.speculated.i.i.i.i.i.5, %.sroa.speculated27.i.i.i.i.i.5 ; 2 uses
  %i.le = icmp samesign ult i32 %i.ld, 5
  tail call void @llvm.assume(i1 %i.le)
  %i.lf = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.5 to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.lf
  %i.lh = zext nneg i32 %i.ld to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.lg, i64 %i.lh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5
end_hunk_0
