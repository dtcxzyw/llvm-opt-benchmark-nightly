Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLowering?download=true
inline.NumInlined: 5380
inline.NumDeleted: 1748
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZL14CC_Hexagon_HVXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.lc, align 2, !tbaa !23, !alias.scope !534
  %i.ld = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 %.sroa.0243.5379.ph, ptr %i.ld, align 8, !tbaa !23, !alias.scope !534
  store i8 1, ptr %i.kt, align 8, !tbaa !379, !alias.scope !534
  store i64 %.0.i158, ptr %15, align 8, !tbaa !470, !alias.scope !534
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !393, !nonnull !19, !align !64 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 3 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !255 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !256
  %.not.i.i162 = icmp ult i32 %i.lh, %i.lj
  br i1 %.not.i.i162, label %bb.cm, label %bb.cl, !prof !394

bb.cl:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit161
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit163

bb.cm:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit161
  %i.lk = zext i32 %i.lh to i64
  %i.ll = load ptr, ptr %i.lf, align 8, !tbaa !21
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.ln = load i32, ptr %i.lg, align 8, !tbaa !255
  %i.lo = add i32 %i.ln, 1
  store i32 %i.lo, ptr %i.lg, align 8, !tbaa !255
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit163

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit163: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.cn

.thread413:                                       ; preds = %bb.bt, %.thread351, %bb.ce
  %.5108381482490 = phi i32 [ %.5108381.ph, %bb.ce ], [ %.2105319471478, %.thread351 ], [ %.5108381.ph, %bb.bt ]
  %.sroa.0243.5379485488 = phi i16 [ %.sroa.0243.5379.ph, %bb.ce ], [ %.sroa.0243.2317473477, %.thread351 ], [ %.sroa.0243.5379.ph, %bb.bt ]
  %i.lp = tail call noundef zeroext i1 @_ZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.0243.5379485488, i32 noundef %.5108381482490, i64 %4, i64 %5, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cd, %bb.bs, %bb.ak, %bb.z, %.thread413, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit163, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit157, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit137, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit131
  %.7 = phi i1 [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit131 ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit137 ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit157 ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit163 ], [ false, %bb.z ], [ %i.lp, %.thread413 ], [ false, %bb.cd ], [ false, %bb.bs ], [ false, %bb.ak ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL17CC_Hexagon_LegacyjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread134.fold.split [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 12, label %.thread134
    i16 14, label %.thread134
    i16 15, label %bb.c
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a
  %i.a = and i64 %4, 2
  %.not156 = icmp eq i64 %i.a, 0
  br i1 %.not156, label %bb.b, label %.thread134

bb.b:                                             ; preds = %.critedge
  %i.b = trunc i64 %4 to i1
  %spec.select = select i1 %i.b, i32 2, i32 3
  br label %.thread134

bb.c:                                             ; preds = %bb.a
  br label %.thread134

.thread134.fold.split:                            ; preds = %bb.a
  br label %.thread134

.thread134:                                       ; preds = %bb.b, %bb.a, %bb.a, %.thread134.fold.split, %.critedge, %bb.c
  %.3126 = phi i32 [ 7, %bb.c ], [ %3, %.thread134.fold.split ], [ 7, %bb.a ], [ 1, %.critedge ], [ %spec.select, %bb.b ], [ 7, %bb.a ] ; 5 uses
  %.sroa.098.3 = phi i16 [ 8, %bb.c ], [ %2, %.thread134.fold.split ], [ 7, %bb.a ], [ 7, %.critedge ], [ 7, %bb.b ], [ 7, %bb.a ] ; 8 uses
  %i.c = and i64 %4, 32
  %.not157 = icmp eq i64 %i.c, 0
  br i1 %.not157, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread134
  store i64 %4, ptr %8, align 8, !tbaa !172
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %.sroa.098.3, i32 noundef %.3126, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #25
  br label %bb.ai

bb.e:                                             ; preds = %.thread134
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.e = load i8, ptr %i.d, align 4, !tbaa !537, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = and i64 %4, 34359738368
  %i.h = icmp ne i64 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call fastcc noundef zeroext i1 @_ZL15CC_HexagonStackjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.098.3, i32 noundef %.3126, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.i, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i16 %.sroa.098.3, label %.thread147 [
    i16 7, label %bb.h
    i16 56, label %.critedge2
    i16 43, label %.critedge2
    i16 71, label %.critedge4
    i16 58, label %.critedge4
    i16 47, label %.critedge4
    i16 8, label %.critedge4
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = and i64 %4, 512
  %.not158 = icmp eq i64 %i.j, 0
  br i1 %.not158, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !150  ; 5 uses
  %i.o = and i32 %i.n, 4194304
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = and i32 %i.n, 8388608
  %.not.i.1.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.1.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = and i32 %i.n, 16777216
  %.not.i.2.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.2.i, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = and i32 %i.n, 33554432
  %.not.i.3.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = and i32 %i.n, 201326592
  %or.cond.i = icmp eq i32 %i.s, 67108864
  br i1 %or.cond.i, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.0613.i.lcssa.wide.i = phi i64 [ 3, %bb.l ], [ 1, %bb.j ], [ 5, %bb.m ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.lcssa.wide.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29   ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = lshr i32 %i.v, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !150
  %i.aa = and i32 %i.v, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not.i5.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i5.i, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.u) #25
  br label %.critedge2

.critedge2:                                       ; preds = %bb.g, %bb.g, %bb.h, %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !150 ; 6 uses
  %i.ah = and i32 %i.ag, 4194304
  %.not.i.i37 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i37, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %.critedge2
  %i.ai = and i32 %i.ag, 8388608
  %.not.i.i37.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i37.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = and i32 %i.ag, 16777216
  %.not.i.i37.2 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i37.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = and i32 %i.ag, 33554432
  %.not.i.i37.3 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i37.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = and i32 %i.ag, 67108864
  %.not.i.i37.4 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i37.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = and i32 %i.ag, 134217728
  %.not.i.i37.5 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i37.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread141

.thread141:                                       ; preds = %bb.t
  switch i16 %.sroa.098.3, label %.thread147 [
    i16 8, label %.critedge4
    i16 47, label %.critedge4
  ]

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.critedge2
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !29 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ao) #25
  %i.ap = zext i16 %i.ao to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.aq, align 8, !tbaa !379, !alias.scope !538
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ar, align 8, !tbaa !384, !alias.scope !538
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4, !alias.scope !538
  %i.au = and i8 %i.at, -128
  %i.av = trunc i32 %.3126 to i8
  %i.aw = shl i8 %i.av, 1
  %i.ax = and i8 %i.aw, 126
  %i.ay = or disjoint i8 %i.au, %i.ax
  store i8 %i.ay, ptr %i.as, align 4, !alias.scope !538
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.az, align 2, !tbaa !23, !alias.scope !538
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.098.3, ptr %i.ba, align 8, !tbaa !23, !alias.scope !538
  store i32 %i.ap, ptr %9, align 8, !tbaa !150, !alias.scope !538
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !393, !nonnull !19, !align !64 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !255 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !256
  %.not.i.i38 = icmp ult i32 %i.be, %i.bg
  br i1 %.not.i.i38, label %bb.v, label %bb.u, !prof !394

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.w

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bh = zext i32 %i.be to i64
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !255
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !255
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge4:                                       ; preds = %.thread141, %.thread141, %bb.g, %bb.g, %bb.g, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !150 ; 5 uses
  %i.bq = and i32 %i.bp, 4194304
  %.not.i.i39 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i39, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, label %bb.x

bb.x:                                             ; preds = %.critedge4
  %i.br = and i32 %i.bp, 8388608
  %.not.i.1.i40 = icmp eq i32 %i.br, 0
  br i1 %.not.i.1.i40, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = and i32 %i.bp, 16777216
  %.not.i.2.i41 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.2.i41, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = and i32 %i.bp, 33554432
  %.not.i.3.i42 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.3.i42, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = and i32 %i.bp, 201326592
  %or.cond.i43 = icmp eq i32 %i.bu, 67108864
  br i1 %or.cond.i43, label %bb.ab, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %.0613.i.lcssa.wide.i44 = phi i64 [ 3, %bb.z ], [ 1, %bb.x ], [ 5, %bb.aa ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.lcssa.wide.i44
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !29 ; 2 uses
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = lshr i32 %i.bx, 5
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !150
  %i.cc = and i32 %i.bx, 31
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = and i32 %i.cd, %i.cb
  %.not.i5.i45 = icmp eq i32 %i.ce, 0
  br i1 %.not.i5.i45, label %bb.ac, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bw) #25
  br label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46

_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %.critedge4
  switch i16 %.sroa.098.3, label %.thread147 [
    i16 71, label %.critedge6
    i16 58, label %.critedge6
    i16 47, label %.critedge6
    i16 8, label %.critedge6
  ]

.critedge6:                                       ; preds = %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46
  %i.cf = load ptr, ptr %i.bm, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !150 ; 3 uses
  %i.ci = and i32 %i.ch, 33554432
  %.not.i.i48 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i48, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51, label %bb.ad

bb.ad:                                            ; preds = %.critedge6
  %i.cj = and i32 %i.ch, 67108864
  %.not.i.i48.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i48.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = and i32 %i.ch, 134217728
  %.not.i.i48.2 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i48.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51, label %.thread147

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51: ; preds = %bb.ae, %bb.ad, %.critedge6
  %.0613.i.i47.lcssa.wide = phi i64 [ 0, %.critedge6 ], [ 1, %bb.ad ], [ 2, %bb.ae ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i47.lcssa.wide
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !29 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cm) #25
  %i.cn = zext i16 %i.cm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.co, align 8, !tbaa !379, !alias.scope !541
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.cp, align 8, !tbaa !384, !alias.scope !541
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 4, !alias.scope !541
  %i.cs = and i8 %i.cr, -128
  %i.ct = trunc i32 %.3126 to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = and i8 %i.cu, 126
  %i.cw = or disjoint i8 %i.cs, %i.cv
  store i8 %i.cw, ptr %i.cq, align 4, !alias.scope !541
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cx, align 2, !tbaa !23, !alias.scope !541
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.098.3, ptr %i.cy, align 8, !tbaa !23, !alias.scope !541
  store i32 %i.cn, ptr %10, align 8, !tbaa !150, !alias.scope !541
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !393, !nonnull !19, !align !64 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !255 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !256
  %.not.i.i52 = icmp ult i32 %i.dc, %i.de
  br i1 %.not.i.i52, label %bb.ag, label %bb.af, !prof !394

bb.af:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51
  %i.df = zext i32 %i.dc to i64
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.di = load i32, ptr %i.db, align 8, !tbaa !255
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.db, align 8, !tbaa !255
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ai

.thread147:                                       ; preds = %bb.ae, %bb.g, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, %.thread141
  %i.dk = tail call fastcc noundef zeroext i1 @_ZL15CC_HexagonStackjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.098.3, i32 noundef %.3126, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.w, %.thread147, %bb.f, %bb.d
  %.3 = phi i1 [ false, %bb.d ], [ false, %bb.ah ], [ false, %bb.w ], [ false, %bb.f ], [ %i.dk, %.thread147 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread149.fold.split [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 12, label %.thread149
    i16 14, label %.thread149
    i16 15, label %bb.c
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a
  %i.a = and i64 %4, 2
  %.not258 = icmp eq i64 %i.a, 0
  br i1 %.not258, label %bb.b, label %.thread149

bb.b:                                             ; preds = %.critedge
  %i.b = trunc i64 %4 to i1
  %spec.select = select i1 %i.b, i32 2, i32 3
  br label %.thread149

bb.c:                                             ; preds = %bb.a
  br label %.thread149

.thread149.fold.split:                            ; preds = %bb.a
  br label %.thread149

.thread149:                                       ; preds = %bb.b, %bb.a, %bb.a, %.thread149.fold.split, %.critedge, %bb.c
  %.3141 = phi i32 [ 7, %bb.c ], [ %3, %.thread149.fold.split ], [ 7, %bb.a ], [ 1, %.critedge ], [ %spec.select, %bb.b ], [ 7, %bb.a ] ; 9 uses
  %.sroa.0110.3 = phi i16 [ 8, %bb.c ], [ %2, %.thread149.fold.split ], [ 7, %bb.a ], [ 7, %.critedge ], [ 7, %bb.b ], [ 7, %bb.a ] ; 10 uses
  %i.c = and i64 %4, 32
  %.not259 = icmp eq i64 %i.c, 0
  br i1 %.not259, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread149
  store i64 %4, ptr %8, align 8, !tbaa !172
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.15.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %.sroa.0110.3, i32 noundef %.3141, i32 noundef 8, i8 0, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #25
  br label %bb.an

bb.e:                                             ; preds = %.thread149
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.e = load i8, ptr %i.d, align 4, !tbaa !537, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = and i64 %4, 34359738368
  %i.h = icmp ne i64 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call fastcc noundef zeroext i1 @_ZL15CC_HexagonStackjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.0110.3, i32 noundef %.3141, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.i, label %bb.g, label %bb.an

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i16 %.sroa.0110.3, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread [
    i16 7, label %bb.h
    i16 20, label %bb.p
    i16 22, label %bb.r
    i16 26, label %bb.t
    i16 56, label %.critedge2
    i16 43, label %.critedge2
    i16 8, label %.critedge4
    i16 71, label %.critedge4.fold.split
    i16 58, label %.critedge4.fold.split
    i16 47, label %.critedge4.fold.split256
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = and i64 %4, 512
  %.not263 = icmp eq i64 %i.j, 0
  br i1 %.not263, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !150  ; 5 uses
  %i.o = and i32 %i.n, 4194304
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = and i32 %i.n, 8388608
  %.not.i.1.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.1.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = and i32 %i.n, 16777216
  %.not.i.2.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.2.i, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = and i32 %i.n, 33554432
  %.not.i.3.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = and i32 %i.n, 201326592
  %or.cond.i = icmp eq i32 %i.s, 67108864
  br i1 %or.cond.i, label %bb.n, label %.critedge2

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.0613.i.lcssa.wide.i = phi i64 [ 3, %bb.l ], [ 1, %bb.j ], [ 5, %bb.m ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.lcssa.wide.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29   ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = lshr i32 %i.v, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !150
  %i.aa = and i32 %i.v, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.z
  %.not.i5.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i5.i, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.u) #25
  br label %.critedge2

bb.p:                                             ; preds = %bb.g
  %i.ad = and i64 %4, 2
  %.not262 = icmp eq i64 %i.ad, 0
  br i1 %.not262, label %bb.q, label %.critedge4

bb.q:                                             ; preds = %bb.p
  %i.ae = trunc i64 %4 to i1
  %spec.select252 = select i1 %i.ae, i32 2, i32 3
  br label %.critedge4

bb.r:                                             ; preds = %bb.g
  %i.af = and i64 %4, 2
  %.not261 = icmp eq i64 %i.af, 0
  br i1 %.not261, label %bb.s, label %.critedge4

bb.s:                                             ; preds = %bb.r
  %i.ag = trunc i64 %4 to i1
  %spec.select253 = select i1 %i.ag, i32 2, i32 3
  br label %.critedge4

bb.t:                                             ; preds = %bb.g
  %i.ah = and i64 %4, 2
  %.not260 = icmp eq i64 %i.ah, 0
  br i1 %.not260, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %bb.t
  %i.ai = trunc i64 %4 to i1
  %spec.select254 = select i1 %i.ai, i32 2, i32 3
  br label %.critedge4

.critedge2:                                       ; preds = %bb.g, %bb.g, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !150 ; 6 uses
  %i.an = and i32 %i.am, 4194304
  %.not.i.i37 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i37, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.v

bb.v:                                             ; preds = %.critedge2
  %i.ao = and i32 %i.am, 8388608
  %.not.i.i37.1 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i37.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = and i32 %i.am, 16777216
  %.not.i.i37.2 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i37.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = and i32 %i.am, 33554432
  %.not.i.i37.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i37.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = and i32 %i.am, 67108864
  %.not.i.i37.4 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i37.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = and i32 %i.am, 134217728
  %.not.i.i37.5 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i37.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread186

.thread186:                                       ; preds = %bb.z
  switch i16 %.sroa.0110.3, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread [
    i16 8, label %.critedge4
    i16 47, label %.critedge4.fold.split256
  ]

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.critedge2
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.v ], [ 2, %bb.w ], [ 3, %bb.x ], [ 4, %bb.y ], [ 5, %bb.z ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.au) #25
  %i.av = zext i16 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !379, !alias.scope !544
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ax, align 8, !tbaa !384, !alias.scope !544
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !alias.scope !544
  %i.ba = and i8 %i.az, -128
  %i.bb = trunc i32 %.3141 to i8
  %i.bc = shl i8 %i.bb, 1
  %i.bd = and i8 %i.bc, 126
  %i.be = or disjoint i8 %i.ba, %i.bd
  store i8 %i.be, ptr %i.ay, align 4, !alias.scope !544
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bf, align 2, !tbaa !23, !alias.scope !544
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.0110.3, ptr %i.bg, align 8, !tbaa !23, !alias.scope !544
  store i32 %i.av, ptr %9, align 8, !tbaa !150, !alias.scope !544
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !393, !nonnull !19, !align !64 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !255 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !256
  %.not.i.i38 = icmp ult i32 %i.bk, %i.bm
  br i1 %.not.i.i38, label %bb.ab, label %bb.aa, !prof !394

bb.aa:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bn = zext i32 %i.bk to i64
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bq = load i32, ptr %i.bj, align 8, !tbaa !255
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bj, align 8, !tbaa !255
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.an

.critedge4.fold.split:                            ; preds = %bb.g, %bb.g
  br label %.critedge4

.critedge4.fold.split256:                         ; preds = %.thread186, %bb.g
  br label %.critedge4

.critedge4:                                       ; preds = %bb.g, %bb.u, %bb.s, %bb.q, %.thread186, %.critedge4.fold.split256, %.critedge4.fold.split, %bb.t, %bb.r, %bb.p
  %i.bs = phi i1 [ true, %bb.g ], [ true, %.thread186 ], [ false, %bb.t ], [ false, %.critedge4.fold.split ], [ false, %bb.s ], [ false, %bb.p ], [ false, %.critedge4.fold.split256 ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.q ] ; 2 uses
  %.6167196 = phi i32 [ %.3141, %bb.g ], [ %.3141, %.thread186 ], [ 1, %bb.t ], [ %.3141, %.critedge4.fold.split ], [ %spec.select253, %bb.s ], [ 1, %bb.p ], [ %.3141, %.critedge4.fold.split256 ], [ %spec.select254, %bb.u ], [ 1, %bb.r ], [ %spec.select252, %bb.q ] ; 4 uses
  %.sroa.0110.6172192 = phi i16 [ %.sroa.0110.3, %bb.g ], [ %.sroa.0110.3, %.thread186 ], [ 47, %bb.t ], [ %.sroa.0110.3, %.critedge4.fold.split ], [ 58, %bb.s ], [ 71, %bb.p ], [ 47, %.critedge4.fold.split256 ], [ 47, %bb.u ], [ 58, %bb.r ], [ 71, %bb.q ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !150 ; 5 uses
  %i.bx = and i32 %i.bw, 4194304
  %.not.i.i39 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i39, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, label %bb.ad

bb.ad:                                            ; preds = %.critedge4
  %i.by = and i32 %i.bw, 8388608
  %.not.i.1.i40 = icmp eq i32 %i.by, 0
  br i1 %.not.i.1.i40, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = and i32 %i.bw, 16777216
  %.not.i.2.i41 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.2.i41, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = and i32 %i.bw, 33554432
  %.not.i.3.i42 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.3.i42, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = and i32 %i.bw, 201326592
  %or.cond.i43 = icmp eq i32 %i.cb, 67108864
  br i1 %or.cond.i43, label %bb.ah, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.0613.i.lcssa.wide.i44 = phi i64 [ 3, %bb.af ], [ 1, %bb.ad ], [ 5, %bb.ag ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.lcssa.wide.i44
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !29 ; 2 uses
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = lshr i32 %i.ce, 5
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !150
  %i.cj = and i32 %i.ce, 31
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = and i32 %i.ck, %i.ci
  %.not.i5.i45 = icmp eq i32 %i.cl, 0
  br i1 %.not.i5.i45, label %.split, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46

.split:                                           ; preds = %bb.ah
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cd) #25
  br i1 %i.bs, label %.critedge6, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread

_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46: ; preds = %bb.ah, %bb.ag, %bb.ae, %.critedge4
  br i1 %i.bs, label %.critedge6, label %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread

_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread: ; preds = %bb.g, %.thread186, %.split, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46
  %.sroa.0110.6172191211 = phi i16 [ %.sroa.0110.6172192, %.split ], [ %.sroa.0110.6172192, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46 ], [ %.sroa.0110.3, %.thread186 ], [ %.sroa.0110.3, %bb.g ] ; 5 uses
  %.6167195208 = phi i32 [ %.6167196, %.split ], [ %.6167196, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46 ], [ %.3141, %.thread186 ], [ %.3141, %bb.g ] ; 4 uses
  switch i16 %.sroa.0110.6172191211, label %.thread216 [
    i16 71, label %.critedge6
    i16 58, label %.critedge6
    i16 47, label %.critedge6
  ]

.critedge6:                                       ; preds = %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46, %.split
  %.sroa.0110.6172191209 = phi i16 [ %.sroa.0110.6172191211, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ], [ %.sroa.0110.6172192, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46 ], [ %.sroa.0110.6172191211, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ], [ %.sroa.0110.6172192, %.split ], [ %.sroa.0110.6172191211, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ] ; 2 uses
  %.6167195206 = phi i32 [ %.6167195208, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ], [ %.6167196, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46 ], [ %.6167195208, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ], [ %.6167196, %.split ], [ %.6167195208, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !150 ; 3 uses
  %i.cq = and i32 %i.cp, 33554432
  %.not.i.i48 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i48, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51, label %bb.ai

bb.ai:                                            ; preds = %.critedge6
  %i.cr = and i32 %i.cp, 67108864
  %.not.i.i48.1 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i48.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = and i32 %i.cp, 134217728
  %.not.i.i48.2 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i48.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51, label %.thread216

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51: ; preds = %bb.aj, %bb.ai, %.critedge6
  %.0613.i.i47.lcssa.wide = phi i64 [ 0, %.critedge6 ], [ 1, %bb.ai ], [ 2, %bb.aj ]
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_HexagonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i47.lcssa.wide
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !29 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cu) #25
  %i.cv = zext i16 %i.cu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.cw, align 8, !tbaa !379, !alias.scope !547
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.cx, align 8, !tbaa !384, !alias.scope !547
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 4, !alias.scope !547
  %i.da = and i8 %i.cz, -128
  %i.db = trunc i32 %.6167195206 to i8
  %i.dc = shl i8 %i.db, 1
  %i.dd = and i8 %i.dc, 126
  %i.de = or disjoint i8 %i.da, %i.dd
  store i8 %i.de, ptr %i.cy, align 4, !alias.scope !547
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.df, align 2, !tbaa !23, !alias.scope !547
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.0110.6172191209, ptr %i.dg, align 8, !tbaa !23, !alias.scope !547
  store i32 %i.cv, ptr %10, align 8, !tbaa !150, !alias.scope !547
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !393, !nonnull !19, !align !64 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !255 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !256
  %.not.i.i52 = icmp ult i32 %i.dk, %i.dm
  br i1 %.not.i.i52, label %bb.al, label %bb.ak, !prof !394

bb.ak:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.am

bb.al:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51
  %i.dn = zext i32 %i.dk to i64
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.dq = load i32, ptr %i.dj, align 8, !tbaa !255
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dj, align 8, !tbaa !255
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.an

.thread216:                                       ; preds = %bb.aj, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread
  %.sroa.0110.6173 = phi i16 [ %.sroa.0110.6172191211, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ], [ %.sroa.0110.6172191209, %bb.aj ]
  %.6168 = phi i32 [ %.6167195208, %_ZL10CC_SkipOddRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit46.thread ], [ %.6167195206, %bb.aj ]
  %i.ds = tail call fastcc noundef zeroext i1 @_ZL15CC_HexagonStackjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.0110.6173, i32 noundef %.6168, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ac, %.thread216, %bb.f, %bb.d
  %.3 = phi i1 [ false, %bb.d ], [ false, %bb.am ], [ false, %bb.ac ], [ false, %bb.f ], [ %i.ds, %.thread216 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering33IsEligibleForTailCallOptimizationENS_7SDValueEjbbbRKNS_15SmallVectorImplINS_3ISD9OutputArgEEERKNS2_IS1_EERKNS2_INS3_8InputArgEEERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %10) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468, !nonnull !19, !align !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !423
  %i.f = lshr i16 %i.e, 4
  %i.g = and i16 %i.f, 1023
  %i.h = zext nneg i16 %i.g to i32                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !463
  switch i32 %i.j, label %bb.e [
    i32 14, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
    i32 39, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
    i32 15, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
    i32 40, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
    i32 44, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
    i32 19, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
  ]

_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.k = icmp eq i32 %3, %i.h
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
  %i.l = or i32 %3, %i.h
  %i.m = and i32 %i.l, -9
  %or.cond = icmp ne i32 %i.m, 0
  %brmerge = or i1 %4, %or.cond
  br i1 %brmerge, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEENS_7SDValueEEEbRKT0_.exit.thread
  br i1 %4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %or.cond3 = or i1 %5, %6
  %not.or.cond3 = xor i1 %or.cond3, true
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.1 = phi i1 [ false, %bb.a ], [ %not.or.cond3, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

declare i32 @_ZNK4llvm19HexagonRegisterInfo16getStackRegisterEv(ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600), i16, ptr, i1 noundef zeroext) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #5

declare void @_ZN4llvm18MachinePointerInfo8getStackERNS_15MachineFunctionElh(ptr dead_on_unwind writable sret(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef nonnull align 8 dereferenceable(1065), i64 noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm16MachineFrameInfo18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(728), i8) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG23getTargetExternalSymbolEPKcNS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i16, ptr, i32 noundef) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG15getRegisterMaskEPKj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.225") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueEmmS1_RKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, i64 noundef %3, i64 noundef %4, ptr noundef byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.214", align 8 ; 14 uses
  %8 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true) #25 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.a, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.a, 1
  %i.b = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true) #25 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.b, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.b, 1
  %.sroa.024.0.copyload = load ptr, ptr %5, align 8, !tbaa !414 ; 2 uses
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.225.0.copyload = load i32, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.c = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 1, ptr null, i16 249, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.f, align 4, !tbaa !256
  store ptr %1, ptr %i.d, align 8
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %2, ptr %.sroa.32.0..sroa_idx.i.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.fca.0.extract5, ptr %i.g, align 8
  %.sroa.32.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %.fca.1.extract6, ptr %.sroa.32.0..sroa_idx.i26.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.fca.0.extract1, ptr %i.h, align 8
  %.sroa.32.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 %.fca.1.extract2, ptr %.sroa.32.0..sroa_idx.i29.i, align 8
  store i32 3, ptr %i.e, align 8, !tbaa !255
  %.not.i = icmp eq ptr %.sroa.024.0.copyload, null
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %.sroa.024.0.copyload, ptr %i.i, align 8
  %.sroa.32.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.sroa.225.0.copyload, ptr %.sroa.32.0..sroa_idx.i32.i, align 8
  store i32 4, ptr %i.e, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i: ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ 4, %bb.b ], [ 3, %bb.a ]
  %i.k = extractvalue { ptr, i32 } %i.c, 1
  %i.l = extractvalue { ptr, i32 } %i.c, 0
  store ptr %i.d, ptr %8, align 8, !tbaa !416
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.j, ptr %i.m, align 8, !tbaa !419
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 334, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.l, i32 %i.k, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %8) #25
  %i.o = load ptr, ptr %7, align 8, !tbaa !21     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueES1_S1_S1_RKNS_5SDLocE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i
  call void @free(ptr noundef %i.o) #25
  br label %_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueES1_S1_S1_RKNS_5SDLocE.exit

_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueES1_S1_S1_RKNS_5SDLocE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering26getPostIndexedAddressPartsEPNS_6SDNodeES2_RNS_7SDValueES4_RNS_3ISD14MemIndexedModeERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !463
  %i.c = and i32 %i.b, -2
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.c, 316
  %.not95 = icmp eq ptr %1, null
end_hunk_0
