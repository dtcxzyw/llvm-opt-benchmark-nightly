inline.NumInlined: 653
inline.NumDeleted: 85
begin_hunk_0_@_ZN4absl18debugging_internalL17ParseCVQualifiersEPNS0_5StateE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bq = add nsw i32 %.val6.i20, 1
  store i32 %i.bq, ptr %i.bl, align 4
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit17, %bb.j, %bb.k
  %.0.i21 = phi i32 [ %i.bi, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit17 ], [ 1, %bb.k ], [ %i.bi, %bb.j ]
  %i.br = icmp ne i32 %.0.i21, 0
  %i.bs = add nsw i32 %storemerge.in, -2
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22
  %i.bt = phi i32 [ %i.bs, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22 ], [ %i.b, %bb.a ]
  %.010 = phi i1 [ %i.br, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22 ], [ false, %bb.a ]
  store i32 %i.bt, ptr %i.a, align 4
  ret i1 %.010
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ParsePrefixEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %"struct.absl::debugging_internal::ParseState", align 4 ; 5 uses
  %2 = alloca %"struct.absl::debugging_internal::ParseState", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 22 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 28         ; 13 uses
  %.pre = load i32, ptr %i.i, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %i.n = phi i32 [ %.pre, %.preheader.preheader ], [ %.be, %.preheader.backedge ] ; 2 uses
  %.0 = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader.backedge ]
  %i.o = shl i32 %i.n, 1
  %i.p = icmp slt i32 %i.o, 131072
  %.not.i.i = icmp sgt i32 %i.n, -1
  %or.cond.i = or i1 %.not.i.i, %i.p
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader
  %i.q = load i32, ptr %i.j, align 8              ; 2 uses
  %i.r = add nsw i32 %i.q, 1                      ; 2 uses
  %i.s = load i32, ptr %i.k, align 8              ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i.1, label %.loopexit.i17.thread.i

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader
  %i.u = load ptr, ptr %i.l, align 8
  store i32 %i.r, ptr %i.j, align 8
  %i.v = sext i32 %i.q to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store i8 58, ptr %i.w, align 1
  %i.x = load i32, ptr %i.j, align 8              ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  %i.z = load i32, ptr %i.k, align 8              ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.loopexit.i17.i, label %.loopexit.i17.thread.i

.loopexit.i17.i:                                  ; preds = %.lr.ph.i.i.1
  %i.ab = load ptr, ptr %i.l, align 8
  store i32 %i.y, ptr %i.j, align 8
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store i8 58, ptr %i.ad, align 1
  %.pre28.i = load i32, ptr %i.j, align 8         ; 2 uses
  %.pre29.i = load i32, ptr %i.k, align 8
  %i.ae = icmp slt i32 %.pre28.i, %.pre29.i
  br i1 %i.ae, label %bb.b, label %_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit

.loopexit.i17.thread.i:                           ; preds = %.lr.ph.i.i.1, %.lr.ph.i.i.preheader
  %.lcssa = phi i32 [ %i.s, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.1 ]
  %i.af = add nsw i32 %.lcssa, 1
  store i32 %i.af, ptr %i.j, align 8
  br label %_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit

bb.b:                                             ; preds = %.loopexit.i17.i
  %i.ag = load ptr, ptr %i.l, align 8
  %i.ah = sext i32 %.pre28.i to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  br label %_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit

_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit: ; preds = %bb.b, %.loopexit.i17.i, %.loopexit.i17.thread.i, %.preheader
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL18ParseTemplateParamEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.aj, label %bb.r, label %bb.c

bb.c:                                             ; preds = %_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit
  %i.ak = load i32, ptr %i.a, align 4             ; 5 uses
  %i.al = add nsw i32 %i.ak, 1                    ; 5 uses
  %i.am = load i32, ptr %i.d, align 8             ; 6 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.d, align 8
  %i.ao = icmp sgt i32 %i.ak, 255
  %i.ap = icmp sgt i32 %i.am, 131071
  %or.cond61 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond61, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.aq = add nsw i32 %i.ak, 2                    ; 2 uses
  store i32 %i.aq, ptr %i.a, align 4
  %i.ar = add nsw i32 %i.am, 2
  store i32 %i.ar, ptr %i.d, align 8
  %i.as = icmp sgt i32 %i.ak, 254
  %i.at = icmp sgt i32 %i.am, 131070
  %or.cond.i31 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i31, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val5.i32 = load ptr, ptr %0, align 8          ; 2 uses
  %.val6.i33 = load i32, ptr %i.m, align 4        ; 3 uses
  %i.au = sext i32 %.val6.i33 to i64
  %i.av = getelementptr inbounds i8, ptr %.val5.i32, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 68
  br i1 %i.ax, label %bb.f, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %.val6.i33, 1               ; 2 uses
  store i32 %i.ay, ptr %i.m, align 4
  store i32 %i.aq, ptr %i.a, align 4
  %i.az = add nsw i32 %i.am, 3
  store i32 %i.az, ptr %i.d, align 8
  %i.ba = icmp sgt i32 %i.am, 131069
  br i1 %i.ba, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds i8, ptr %.val5.i32, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  switch i8 %i.bd, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit [
    i8 84, label %bb.h
    i8 116, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.be = add nsw i32 %.val6.i33, 2
  store i32 %i.be, ptr %i.m, align 4
  store i32 %i.al, ptr %i.a, align 4
  %i.bf = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !18
  %storemerge.in.pre.pre = load i32, ptr %i.a, align 4 ; 6 uses
  br i1 %i.bf, label %bb.i, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = add nsw i32 %storemerge.in.pre.pre, 1
  store i32 %i.bg, ptr %i.a, align 4
  %i.bh = load i32, ptr %i.d, align 8             ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.d, align 8
  %i.bj = icmp sgt i32 %storemerge.in.pre.pre, 255
  %i.bk = icmp sgt i32 %i.bh, 131071
  %or.cond.i24 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond.i24, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val5.i25 = load ptr, ptr %0, align 8
  %.val6.i26 = load i32, ptr %i.m, align 4        ; 2 uses
  %i.bl = sext i32 %.val6.i26 to i64
  %i.bm = getelementptr inbounds i8, ptr %.val5.i25, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 69
  br i1 %i.bo, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread53, label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit

_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread53: ; preds = %bb.j
  %i.bp = add nsw i32 %.val6.i26, 1
  store i32 %i.bp, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.sink.split

_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.g, %bb.e, %bb.d, %bb.h
  %storemerge.in.pre = phi i32 [ %storemerge.in.pre.pre, %bb.h ], [ %i.al, %bb.f ], [ %i.al, %bb.e ], [ %i.al, %bb.d ], [ %storemerge.in.pre.pre, %bb.j ], [ %i.al, %bb.g ], [ %storemerge.in.pre.pre, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bq = add nsw i32 %storemerge.in.pre, -1
  br label %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread

_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread: ; preds = %bb.c, %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit
  %storemerge.in = phi i32 [ %i.ak, %bb.c ], [ %i.bq, %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit ]
  store i32 %storemerge.in, ptr %i.a, align 4
  %i.br = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseSubstitutionEPNS0_5StateEb(ptr noundef nonnull %0, i1 noundef zeroext true)
  br i1 %i.br, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread
  %3 = load <2 x i32>, ptr %i.a, align 4          ; 4 uses
  %4 = extractelement <2 x i32> %3, i64 0         ; 5 uses
  %i.bs = add nsw i32 %4, 1
  %5 = extractelement <2 x i32> %3, i64 1         ; 2 uses
  %i.bt = add nsw i32 %5, 1
  store i32 %i.bt, ptr %i.d, align 8
  %i.bu = icmp sgt i32 %4, 255
  %i.bv = icmp sgt i32 %5, 131071
  %or.cond62 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond62, label %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  %6 = add nsw <2 x i32> %3, splat (i32 2)
  store <2 x i32> %6, ptr %i.a, align 4
  %7 = icmp sgt <2 x i32> %3, <i32 254, i32 131070> ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond.i38 = select i1 %8, i1 true, i1 %9
  br i1 %or.cond.i38, label %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val5.i39 = load ptr, ptr %0, align 8
  %.val6.i40 = load i32, ptr %i.m, align 4        ; 2 uses
  %i.bw = sext i32 %.val6.i40 to i64
  %i.bx = getelementptr inbounds i8, ptr %.val5.i39, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, 117
  br i1 %i.bz, label %bb.n, label %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit

bb.n:                                             ; preds = %bb.m
  %i.ca = add nsw i32 %.val6.i40, 1
  store i32 %i.ca, ptr %i.m, align 4
  store i32 %i.bs, ptr %i.a, align 4
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !19
  br i1 %i.cb, label %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread58, label %._ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit_crit_edge

._ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit_crit_edge: ; preds = %bb.n
  %storemerge63.in.pre.pre = load i32, ptr %i.a, align 4
  %i.cc = add nsw i32 %storemerge63.in.pre.pre, -1
  br label %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit

_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread58: ; preds = %bb.n
  %i.cd = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ce = load i32, ptr %i.a, align 4
  br label %.sink.split

_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit: ; preds = %bb.m, %bb.l, %._ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit_crit_edge
  %storemerge63.in.pre = phi i32 [ %i.cc, %._ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit_crit_edge ], [ %4, %bb.l ], [ %4, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread

_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread: ; preds = %bb.k, %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit
  %storemerge63.in = phi i32 [ %4, %bb.k ], [ %storemerge63.in.pre, %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit ]
  store i32 %storemerge63.in, ptr %i.a, align 4
  %i.cf = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseUnscopedNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.cf, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread
  %10 = load i32, ptr %i.a, align 4               ; 4 uses
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %i.a, align 4
  %12 = load i32, ptr %i.d, align 8               ; 2 uses
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %i.d, align 8
  %14 = icmp sgt i32 %10, 255
  %15 = icmp sgt i32 %12, 131071
  %or.cond.i20 = select i1 %14, i1 true, i1 %15
  br i1 %or.cond.i20, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.m, align 4          ; 2 uses
  %i.cg = sext i32 %.val6.i to i64
  %i.ch = getelementptr inbounds i8, ptr %.val5.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 77
  br i1 %i.cj, label %bb.q, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.o, %bb.p
  store i32 %10, ptr %i.a, align 4
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ck = add nsw i32 %.val6.i, 1
  store i32 %i.ck, ptr %i.m, align 4
  store i32 %10, ptr %i.a, align 4
  %i.cl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL20ParseUnnamedTypeNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.cl, label %bb.r, label %.loopexit

.sink.split:                                      ; preds = %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread53, %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread58
  %.sink96 = phi i32 [ %i.ce, %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread58 ], [ %storemerge.in.pre.pre, %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread53 ]
  %i.cm = add nsw i32 %.sink96, -1
  store i32 %i.cm, ptr %i.a, align 4
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q, %_ZN4absl18debugging_internalL23ParseVendorExtendedTypeEPNS0_5StateE.exit.thread, %_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE.exit.thread, %_ZN4absl18debugging_internalL20MaybeAppendSeparatorEPNS0_5StateE.exit
  %i.cn = load i32, ptr %i.i, align 8             ; 3 uses
  %i.co = shl i32 %i.cn, 1
  %i.cp = ashr i32 %i.co, 17                      ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.s, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.r, %bb.s
  %.be = phi i32 [ %i.cn, %bb.r ], [ %i.cu, %bb.s ]
  br label %.preheader, !llvm.loop !20

bb.s:                                             ; preds = %bb.r
  %i.cr = shl nuw nsw i32 %i.cp, 16
  %i.cs = add nuw nsw i32 %i.cr, 65536
  %i.ct = and i32 %i.cn, -2147418113
  %i.cu = or disjoint i32 %i.cs, %i.ct            ; 2 uses
  store i32 %i.cu, ptr %i.i, align 8
  br label %.preheader.backedge

.loopexit:                                        ; preds = %bb.q, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread
  %i.cv = load i32, ptr %i.i, align 8             ; 2 uses
  %i.cw = shl i32 %i.cv, 1
  %i.cx = icmp slt i32 %i.cw, 131072
  %.not.i = icmp sgt i32 %i.cv, -1
  %or.cond.i22 = or i1 %.not.i, %i.cx
  br i1 %or.cond.i22, label %_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.cy = load i32, ptr %i.j, align 8             ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.u, label %_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit

bb.u:                                             ; preds = %bb.t
  %i.da = add nsw i32 %i.cy, -2                   ; 2 uses
  store i32 %i.da, ptr %i.j, align 8
  %i.db = load ptr, ptr %i.l, align 8
  %i.dc = zext nneg i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 0, ptr %i.dd, align 1
  br label %_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit

_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit: ; preds = %.loopexit, %bb.t, %bb.u
  br i1 %.0, label %bb.v, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.v:                                             ; preds = %_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit
  %i.de = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.de, label %bb.w, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.df = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ParsePrefixEPNS0_5StateE(ptr noundef nonnull %0)
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.w, %_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit, %bb.v
  %.1 = phi i1 [ false, %bb.a ], [ %i.df, %bb.w ], [ true, %_ZN4absl18debugging_internalL24MaybeCancelLastSeparatorEPNS0_5StateE.exit ], [ true, %bb.v ]
  %i.dg = load i32, ptr %i.a, align 4
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %1 = alloca %"struct.absl::debugging_internal::ParseState", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = add nsw i32 %i.d, 2
  store i32 %i.j, ptr %i.c, align 8
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.b, 3
  store i32 %i.m, ptr %i.a, align 4
  %i.n = add nsw i32 %i.d, 3
  store i32 %i.n, ptr %i.c, align 8
  %i.o = icmp sgt i32 %i.b, 253
  %i.p = icmp sgt i32 %i.d, 131069
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.p
  %.val30.pre.i = load ptr, ptr %0, align 8       ; 3 uses
  %.val31.pre.i = load i32, ptr %i.h, align 4     ; 4 uses
  br i1 %or.cond.i.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sext i32 %.val31.pre.i to i64
  %i.r = getelementptr inbounds i8, ptr %.val30.pre.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 110
  br i1 %i.t, label %bb.e, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.val31.pre.i, 1             ; 2 uses
  store i32 %i.u, ptr %i.h, align 4
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.val31.i = phi i32 [ %.val31.pre.i, %bb.d ], [ %i.u, %bb.e ], [ %.val31.pre.i, %bb.c ] ; 2 uses
  %.0.i33.i = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ]
  store i32 %i.i, ptr %i.a, align 4
  %i.v = sext i32 %.val31.i to i64
  %i.w = getelementptr inbounds i8, ptr %.val30.pre.i, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %.lr.ph.i, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread

.lr.ph.i:                                         ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, %.lr.ph.i
  %i.aa = phi i8 [ %i.ag, %.lr.ph.i ], [ %i.x, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %.038.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %.01937.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.w, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %i.ab = mul i32 %.038.i, 10
  %i.ac = zext nneg i8 %i.aa to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01937.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %bb.f, !llvm.loop !21

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.w to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = add nsw i32 %.val31.i, %i.am            ; 2 uses
  store i32 %i.an, ptr %i.h, align 4
  %i.ao = sub i32 0, %i.ae
  %spec.select.i = select i1 %.0.i33.i, i32 %i.ao, i32 %i.ae ; 4 uses
  %i.ap = sext i32 %spec.select.i to i64          ; 2 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.aq = add nsw i32 %i.d, 4
  store i32 %i.aq, ptr %i.c, align 8
  %i.ar = icmp sgt i32 %i.d, 131068
  br i1 %i.ar, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = sext i32 %i.an to i64
  %i.at = getelementptr inbounds i8, ptr %.val30.pre.i, i64 %i.as ; 4 uses
  %i.au = icmp eq i32 %spec.select.i, 0
  br i1 %i.au, label %_ZN4absl18debugging_internalL30IdentifierIsAnonymousNamespaceEPNS0_5StateEm.exit.thread.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.av = add nuw i64 %.068.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i, label %bb.i, label %.lr.ph.i.i, !llvm.loop !22

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.068.i.i = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.068.i.i
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp ugt i32 %spec.select.i, 11
  br i1 %i.ay, label %bb.j, label %_ZN4absl18debugging_internalL30IdentifierIsAnonymousNamespaceEPNS0_5StateEm.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.az = load i8, ptr %i.at, align 1             ; 2 uses
  %.not1.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not1.i.i.i, label %_ZN4absl18debugging_internalL30IdentifierIsAnonymousNamespaceEPNS0_5StateEm.exit.thread.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = add nuw nsw i64 %.02.i.i.i, 1           ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  %.not12.i.i.i = icmp eq i64 %i.ba, 11           ; 2 uses
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4absl18debugging_internalL30IdentifierIsAnonymousNamespaceEPNS0_5StateEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !23

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %i.bd = phi i8 [ %i.bc, %bb.k ], [ %i.az, %bb.j ]
  %.02.i.i.i = phi i64 [ %i.ba, %bb.k ], [ 0, %bb.j ] ; 2 uses
end_hunk_0
