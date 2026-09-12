Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12_GLOBAL__N_112BenesNetwork5routeEPiPSt6vectorIhSaIhEEjj:bb.a
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !148
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIiSt4lessIiESaIiEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !148
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val.i = load ptr, ptr %i.dw, align 8, !tbaa !148
  call fastcc void @_ZNSt8_Rb_treeIiSt4pairIKiN12_GLOBAL__N_19ColorKindEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef %.val.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.1106
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11HvxSelector7shuffp1EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %8 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %9 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %10 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %11 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %12 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %13 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %14 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %15 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %16 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %17 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %18 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %19 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %20 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %21 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !302  ; 11 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !tbaa !286 ; 9 uses
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %.not14.i = icmp eq i64 %i.c, 0
  br i1 %.not14.i, label %.loopexit131, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %.not.i, label %.loopexit131, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.copyload, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %i.g = zext i32 %i.e to i64
  %.not13.i = icmp eq i64 %indvars.iv.i, %i.g
  %or.cond.i = or i1 %i.f, %.not13.i
  br i1 %or.cond.i, label %bb.b, label %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit

.loopexit131:                                     ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !291
  br label %bb.ag

_ZL10isIdentityN4llvm8ArrayRefIiEE.exit:          ; preds = %.lr.ph.i
  %.idx.i = shl nuw nsw i64 %i.b, 2
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %.idx.i
  %.not14.i50 = icmp eq i64 %i.b, 0
  br i1 %.not14.i50, label %.loopexit, label %.lr.ph.i51

bb.c:                                             ; preds = %.lr.ph.i51
  %i.i = getelementptr inbounds nuw i8, ptr %.0915.i, i64 4 ; 2 uses
  %.not.i53 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i53, label %.loopexit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit, %bb.c
  %.0915.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.04.0.copyload, %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit ] ; 2 uses
  %i.j = load i32, ptr %.0915.i, align 4, !tbaa !34
  %.not12.i = icmp eq i32 %i.j, -1
  br i1 %.not12.i, label %bb.c, label %_ZL7isUndefN4llvm8ArrayRefIiEE.exit

.loopexit:                                        ; preds = %bb.c, %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !243
  %i.m = and i32 %i.l, 2147483647
  switch i32 %i.m, label %bb.d [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129
  ]

bb.d:                                             ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split:   ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %.loopexit, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split, %bb.d
  %.sroa.0.0.i = phi i32 [ -2147483648, %bb.d ], [ -2147483607, %.loopexit ], [ -2147483597, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126 ], [ -2147483598, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125 ], [ -2147483596, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127 ], [ -2147483605, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split ], [ -2147483595, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128 ], [ -2147483603, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split121 ], [ -2147483601, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split122 ], [ -2147483600, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123 ], [ -2147483599, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124 ], [ -2147483594, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !1156
  store i32 %.sroa.0.0.i, ptr %i.n, align 8, !tbaa !293, !alias.scope !1156
  br label %bb.ag

_ZL7isUndefN4llvm8ArrayRefIiEE.exit:              ; preds = %.lr.ph.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.o = ashr exact i64 %sext, 32                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 128, ptr %i.r, align 4, !tbaa !33
  %i.s = icmp eq i64 %sext, 0
  br i1 %i.s, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.e

bb.e:                                             ; preds = %_ZL7isUndefN4llvm8ArrayRefIiEE.exit
  %i.t = icmp ugt i64 %i.o, 128
  br i1 %i.t, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %7, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.o, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %bb.e
  %i.u = phi ptr [ %i.p, %bb.e ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.e ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.pre-phi.i.i3.i
  %i.w = sub nsw i64 %i.o, %.pre-phi.i.i3.i
  %i.x = shl nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.x, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.u, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.y = trunc i64 %i.b to i32
  store i32 %i.y, ptr %i.q, align 8, !tbaa !32
  %i.z = and i64 %i.b, 4294967295
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %_ZL7isUndefN4llvm8ArrayRefIiEE.exit, %.sink.split.i.i.i
  %i.aa = phi i64 [ 0, %_ZL7isUndefN4llvm8ArrayRefIiEE.exit ], [ %i.z, %.sink.split.i.i.i ]
  %i.ab = phi ptr [ %i.p, %_ZL7isUndefN4llvm8ArrayRefIiEE.exit ], [ %.pre, %.sink.split.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val36 = load i32, ptr %i.ac, align 8, !tbaa !293 ; 2 uses
  %i.ad = and i32 %.val36, -1342177281            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, i8 0, i64 16, i1 false), !alias.scope !1157
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !293, !alias.scope !1157
  %i.af = and i32 %.val36, -805306369             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 16, i1 false), !alias.scope !1158
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !293, !alias.scope !1158
  call fastcc void @_ZN4llvm11HvxSelector5packsEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackENS_15MutableArrayRefIiEEj(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.04.0.copyload, i64 %i.b, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %8, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.ab, i64 %i.aa)
  %.val29 = load ptr, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val30 = load i32, ptr %i.ah, align 8
  %i.ai = icmp ne ptr %.val29, null
  %i.aj = and i32 %.val30, 268435456
  %.not.i54 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %i.ai, i1 true, i1 %.not.i54
  br i1 %i.ak, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit, label %bb.o

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit: ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %i.al = load ptr, ptr %7, align 8, !tbaa !31    ; 8 uses
  %i.am = load i32, ptr %i.q, align 8, !tbaa !32  ; 9 uses
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val39 = load i32, ptr %i.ao, align 8
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.am, 1
  br i1 %.not15.i.i, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ] ; 3 uses
  %.0317.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.ap, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %i.as = sub nsw i32 %i.ar, %.0317.i.i
  %.not5.i.i = icmp eq i32 %i.as, 1
  br i1 %.not5.i.i, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !7

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.3.0.ph.i.i = phi i64 [ %i.an, %bb.f ], [ %indvars.iv.i.i, %.lr.ph.i.i ]
  %i.at = and i64 %.sroa.3.0.ph.i.i, 4294967295
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i

_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i:        ; preds = %.critedge.loopexit.i.i, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit
  %.sroa.3.0.i.i = phi i64 [ 1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ], [ %i.at, %.critedge.loopexit.i.i ] ; 8 uses
  %.sroa.440.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.i.i to i32 ; 2 uses
  %.not.i59 = icmp ne i32 %i.ap, 0
  %i.au = add nsw i64 %.sroa.3.0.i.i, -3
  %or.cond.i60 = icmp ult i64 %i.au, -2
  %or.cond34.i = select i1 %.not.i59, i1 true, i1 %or.cond.i60
  br i1 %or.cond34.i, label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i
  %i.av = shl nuw nsw i32 %.sroa.440.0.extract.trunc.i, 1 ; 2 uses
  %.not5415.i = icmp slt i32 %i.av, %i.am
  br i1 %.not5415.i, label %.lr.ph.preheader.i61, label %.critedge58.preheader.i

.lr.ph.preheader.i61:                             ; preds = %bb.g
  %i.aw = shl nuw nsw i64 %.sroa.3.0.i.i, 1       ; 2 uses
  br label %.lr.ph.i62

bb.h:                                             ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, %i.aw ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next25.i to i32
  %.not54.i = icmp sgt i32 %i.am, %i.ax
  br i1 %.not54.i, label %.lr.ph.i62, label %.critedge58.preheader.i, !llvm.loop !1135

.critedge58.preheader.i:                          ; preds = %bb.h, %bb.g
  %.not5717.i = icmp sgt i32 %i.am, %.sroa.440.0.extract.trunc.i
  br i1 %.not5717.i, label %.lr.ph19.preheader.i, label %.critedge63.i

.lr.ph19.preheader.i:                             ; preds = %.critedge58.preheader.i
  %i.ay = shl nuw nsw i64 %.sroa.3.0.i.i, 1
  br label %.lr.ph19.i

.lr.ph.i62:                                       ; preds = %bb.h, %.lr.ph.preheader.i61
  %indvars.iv.pn = phi i32 [ %indvars.iv, %bb.h ], [ %i.am, %.lr.ph.preheader.i61 ]
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.h ], [ %i.aw, %.lr.ph.preheader.i61 ] ; 4 uses
  %indvars.iv = sub i32 %indvars.iv.pn, %i.av     ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv24.i ; 2 uses
  %22 = sub nuw nsw i64 %i.an, %indvars.iv24.i    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %.not15.i69.i = icmp eq i64 %22, 1
  br i1 %.not15.i69.i, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i, label %.lr.ph.i70.i

.lr.ph.i70.i:                                     ; preds = %.lr.ph.i62, %bb.i
  %indvars.iv.i71.i = phi i64 [ %indvars.iv.next.i80.i, %bb.i ], [ 1, %.lr.ph.i62 ] ; 3 uses
  %.0317.i72.i = phi i32 [ %i.bc, %bb.i ], [ %i.ba, %.lr.ph.i62 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i71.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.0317.i72.i
  %.not5.i73.i = icmp eq i32 %i.bd, 1
  br i1 %.not5.i73.i, label %bb.i, label %.critedge.loopexit.i75.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i70.i
  %indvars.iv.next.i80.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %lftr.wideiv170 = trunc i64 %indvars.iv.next.i80.i to i32
  %exitcond171 = icmp eq i32 %indvars.iv, %lftr.wideiv170
  br i1 %exitcond171, label %.critedge.loopexit.i75.loopexit.i, label %.lr.ph.i70.i, !llvm.loop !7

.critedge.loopexit.i75.loopexit.i:                ; preds = %bb.i, %.lr.ph.i70.i
  %.sroa.3.0.ph.i76.in.i = phi i64 [ %indvars.iv.i71.i, %.lr.ph.i70.i ], [ %22, %bb.i ]
  %23 = and i64 %.sroa.3.0.ph.i76.in.i, 4294967295
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i

_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i:      ; preds = %.critedge.loopexit.i75.loopexit.i, %.lr.ph.i62
  %.sroa.3.0.i77.i = phi i64 [ 1, %.lr.ph.i62 ], [ %23, %.critedge.loopexit.i75.loopexit.i ]
  %.not52.i = icmp eq i64 %.sroa.3.0.i77.i, %.sroa.3.0.i.i
  %i.be = shl nsw i32 %i.ba, 1
  %i.bf = zext i32 %i.be to i64
  %.not53.i = icmp eq i64 %indvars.iv24.i, %i.bf
  %or.cond36.i = select i1 %.not52.i, i1 %.not53.i, i1 false
  br i1 %or.cond36.i, label %bb.h, label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread

.critedge58.i:                                    ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, %i.ay ; 2 uses
  %i.bg = trunc nuw i64 %indvars.iv.next27.i to i32
  %.not57.i = icmp sgt i32 %i.am, %i.bg
  br i1 %.not57.i, label %.lr.ph19.i, label %.critedge63.i, !llvm.loop !1136

.lr.ph19.i:                                       ; preds = %.critedge58.i, %.lr.ph19.preheader.i
  %indvars.iv26.i = phi i64 [ %.sroa.3.0.i.i, %.lr.ph19.preheader.i ], [ %indvars.iv.next27.i, %.critedge58.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv26.i ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv26.i to i32
  %i.bj = sub nsw i32 %i.am, %i.bi                ; 3 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %.not15.i86.i = icmp eq i32 %i.bj, 1
  br i1 %.not15.i86.i, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.lr.ph19.i, %bb.j
  %indvars.iv.i88.i = phi i64 [ %indvars.iv.next.i97.i, %bb.j ], [ 1, %.lr.ph19.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i88.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34, !noalias !1159
  %.not5.i90.i = icmp eq i32 %i.bm, %i.bk
  br i1 %.not5.i90.i, label %bb.j, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i

bb.j:                                             ; preds = %.lr.ph.i87.i
  %indvars.iv.next.i97.i = add nuw nsw i64 %indvars.iv.i88.i, 1 ; 2 uses
  %lftr.wideiv.i98.i = trunc i64 %indvars.iv.next.i97.i to i32
  %exitcond.i99.i = icmp eq i32 %i.bj, %lftr.wideiv.i98.i
  br i1 %exitcond.i99.i, label %.critedge.loopexit.i92.loopexit.i, label %.lr.ph.i87.i, !llvm.loop !7

.critedge.loopexit.i92.loopexit.i:                ; preds = %bb.j
  %i.bn = zext i32 %i.bj to i64
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i

_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i:     ; preds = %.lr.ph.i87.i, %.critedge.loopexit.i92.loopexit.i, %.lr.ph19.i
  %.sroa.3.0.i94.i = phi i64 [ 1, %.lr.ph19.i ], [ %i.bn, %.critedge.loopexit.i92.loopexit.i ], [ %indvars.iv.i88.i, %.lr.ph.i87.i ]
  %.not55.i = icmp eq i32 %i.bk, -1
  %.not56.i = icmp eq i64 %.sroa.3.0.i94.i, %.sroa.3.0.i.i
  %or.cond59.i = and i1 %.not55.i, %.not56.i
  br i1 %or.cond59.i, label %.critedge58.i, label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread

.critedge63.i:                                    ; preds = %.critedge58.i, %.critedge58.preheader.i
  %i.bo = icmp eq i64 %.sroa.3.0.i.i, 1
  %i.bp = select i1 %i.bo, i32 3332, i32 3333
  %i.bq = and i32 %.val39, 2147483647
  switch i32 %i.bq, label %bb.k [
    i32 1, label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit
    i32 2, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i
    i32 3, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i
    i32 4, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i
    i32 8, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i
    i32 16, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i
    i32 32, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i
    i32 64, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i
    i32 128, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i
    i32 256, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i
    i32 512, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i
  ]

bb.k:                                             ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i: ; preds = %.critedge63.i
  br label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit

_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread: ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i, %_ZL9findStripN4llvm8ArrayRefIiEEij.exit100.i, %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.br = lshr i64 %i.an, 1                       ; 5 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !286, !alias.scope !1160
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.br, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !250, !alias.scope !1160
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i32 -1, ptr %i.bs, align 8, !tbaa !289, !alias.scope !1160
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  store i32 -1, ptr %i.bt, align 4, !tbaa !290, !alias.scope !1160
  %.idx.i.i = shl nuw nsw i64 %i.br, 2            ; 2 uses
  %.not12.i.i = icmp eq i64 %i.br, 0              ; 2 uses
  br i1 %.not12.i.i, label %_ZNK12_GLOBAL__N_111ShuffleMask2loEv.exit, label %.lr.ph.i.i65.preheader

.lr.ph.i.i65.preheader:                           ; preds = %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread
  %i.bu = add nsw i64 %.idx.i.i, -4               ; 3 uses
  %i.bv = lshr exact i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %.lr.ph.i.i65.epil.preheader, label %.lr.ph.i.i65.preheader.new

.lr.ph.i.i65.preheader.new:                       ; preds = %.lr.ph.i.i65.preheader
  %unroll_iter = and i64 %i.bw, 9223372036854775806
  br label %.lr.ph.i.i65

_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit: ; preds = %.critedge63.i, %bb.k, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i
  %.sroa.0.0.i.i = phi i16 [ 0, %bb.k ], [ 41, %.critedge63.i ], [ 51, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split9.i ], [ 50, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split8.i ], [ 52, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split10.i ], [ 43, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split.i ], [ 53, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split11.i ], [ 45, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split4.i ], [ 47, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split5.i ], [ 48, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split6.i ], [ 49, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split7.i ], [ 54, %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split12.i ]
  %i.by = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25, !noalias !1159 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.by, ptr noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !1159
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bp, ptr %5, align 8, !tbaa !280, !noalias !1159
  store i16 %.sroa.0.0.i.i, ptr %i.bz, align 4, !tbaa !242, !noalias !1159
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25, !noalias !1159 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !1159
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !281, !noalias !1159
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !282, !noalias !1159
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !283, !noalias !1159
  %i.cf = call fastcc noundef i32 @_ZN12_GLOBAL__N_111ResultStack4pushERKNS_12NodeTemplateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %5), !noalias !1159 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 24) #27, !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !1159
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 24) #27, !noalias !1159
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val67.i = load ptr, ptr %i.cg, align 8, !tbaa !284, !noalias !1159
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val68.i = load ptr, ptr %i.ch, align 8, !tbaa !285, !noalias !1159
  %i.ci = ptrtoint ptr %.val68.i to i64
  %i.cj = ptrtoint ptr %.val67.i to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = lshr exact i64 %i.ck, 5
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %i.cm, 268435455
  %i.co = and i32 %i.cn, 268435455
  %i.cp = or disjoint i32 %i.co, 1610612736
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %i.cp, ptr %.sroa.7105.0..sroa_idx, align 8, !tbaa !34
  br label %bb.ae

.lr.ph.i.i65:                                     ; preds = %bb.l, %.lr.ph.i.i65.preheader.new
  %i.cq = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.do, %bb.l ]
  %i.cr = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.dp, %bb.l ]
  %.013.i.i = phi ptr [ %i.al, %.lr.ph.i.i65.preheader.new ], [ %i.ds, %bb.l ] ; 3 uses
  %.else.val.i.i = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.dr, %bb.l ] ; 3 uses
  %i.cs = phi i32 [ -1, %.lr.ph.i.i65.preheader.new ], [ %i.dq, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i65.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.ct = load i32, ptr %.013.i.i, align 4, !tbaa !34, !noalias !1160 ; 5 uses
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %.lr.ph.i.i65.1, label %.cont.i.i

.cont.i.i:                                        ; preds = %.lr.ph.i.i65
  %i.cv = icmp eq i32 %.else.val.i.i, -1
  %i.cw = call i32 @llvm.smin.i32(i32 %i.ct, i32 %.else.val.i.i)
  %i.cx = select i1 %i.cv, i32 %i.ct, i32 %i.cw   ; 2 uses
  %i.cy = icmp eq i32 %i.cs, -1
  %i.cz = call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.ct)
  %i.da = select i1 %i.cy, i32 %i.ct, i32 %i.cz   ; 2 uses
  br label %.lr.ph.i.i65.1

.lr.ph.i.i65.1:                                   ; preds = %.cont.i.i, %.lr.ph.i.i65
  %i.db = phi i32 [ %i.cq, %.lr.ph.i.i65 ], [ %i.da, %.cont.i.i ]
  %i.dc = phi i32 [ %i.cr, %.lr.ph.i.i65 ], [ %i.cx, %.cont.i.i ]
  %i.dd = phi i32 [ %i.cs, %.lr.ph.i.i65 ], [ %i.da, %.cont.i.i ] ; 3 uses
  %i.de = phi i32 [ %.else.val.i.i, %.lr.ph.i.i65 ], [ %i.cx, %.cont.i.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !34, !noalias !1160 ; 5 uses
  %i.dh = icmp eq i32 %i.dg, -1
  br i1 %i.dh, label %bb.l, label %.cont.i.i.1

.cont.i.i.1:                                      ; preds = %.lr.ph.i.i65.1
  %i.di = icmp eq i32 %i.de, -1
  %i.dj = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.de)
  %i.dk = select i1 %i.di, i32 %i.dg, i32 %i.dj   ; 2 uses
  %i.dl = icmp eq i32 %i.dd, -1
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dd, i32 %i.dg)
  %i.dn = select i1 %i.dl, i32 %i.dg, i32 %i.dm   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.cont.i.i.1, %.lr.ph.i.i65.1
end_hunk_0
