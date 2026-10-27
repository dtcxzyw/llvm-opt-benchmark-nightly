Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERj:bb.a
  %i.z = add i32 %.055, 1
  %i.aa = icmp ult i32 %i.z, 5
  br i1 %i.aa, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.critedge
  %i.ab = icmp eq i32 %.0, -1
  %i.ac = add i32 %.0, 1
  %i.ad = icmp ult i32 %i.ac, 5
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !544 ; 2 uses
  %i.af = load i32, ptr %i.e, align 4, !tbaa !545
  %.not.i = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !547

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i32 %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = zext i32 %i.ae to i64
  %i.ah = load ptr, ptr %6, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  store ptr %2, ptr %i.ai, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %3, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !544
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.d, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.k, %bb.l
  %i.al = and i32 %.055, 3
  %i.am = select i1 %i.y, i32 0, i32 %i.al
  br label %bb.r

bb.m:                                             ; preds = %bb.i, %.critedge
  %i.an = icmp sge i32 %.055, %i.a
  %i.ao = icmp slt i32 %.055, %i.c
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = select i1 %i.y, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.n, label %.critedge31

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp eq i32 %.0, -1                     ; 2 uses
  %i.as = icmp sge i32 %.0, %i.a
  %i.at = icmp slt i32 %.0, %i.c
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  %i.av = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %i.av, label %bb.o, label %.critedge31

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !544 ; 2 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !545
  %.not.i37 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i37, label %bb.q, label %bb.p, !prof !547

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %4, i32 %5)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39

bb.q:                                             ; preds = %bb.o
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %6, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  store ptr %4, ptr %i.ba, align 1
  %.sroa.32.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %5, ptr %.sroa.32.0..sroa_idx.i38, align 1
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !544
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.d, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39: ; preds = %bb.p, %bb.q
  %i.bd = sub i32 %.055, %i.a
  %i.be = and i32 %i.bd, 3
  %i.bf = select i1 %i.y, i32 0, i32 %i.be
  %i.bg = sub i32 %.0, %i.a
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39
  %.0.sink = phi i32 [ %.0, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39 ]
  %.sink94 = phi i1 [ %i.ab, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.ar, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39 ]
  %.sink93 = phi i32 [ %i.am, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.bf, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39 ]
  %.sink = load i32, ptr %7, align 4, !tbaa !160
  %i.bh = shl i32 %.0.sink, 2
  %i.bi = and i32 %i.bh, 12
  %i.bj = select i1 %.sink94, i32 0, i32 %i.bi
  %i.bk = or disjoint i32 %i.bj, %.sink93
  %i.bl = or i32 %.sink, %i.bk
  store i32 %i.bl, ptr %7, align 4, !tbaa !160
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !160 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !160 ; 5 uses
  br i1 %i.b, label %bb.s, label %.critedge.1

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !160 ; 4 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = icmp eq i32 %i.bn, -1
  br i1 %i.bt, label %bb.u, label %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.1"

"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.1": ; preds = %bb.t
  %i.bu = add nsw i32 %i.bn, 4
  %i.bv = icmp eq i32 %i.br, %i.bu
  br i1 %i.bv, label %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1", label %.critedge31

bb.u:                                             ; preds = %bb.t
  %i.bw = and i32 %i.br, 4
  %.not.not89 = icmp eq i32 %i.bw, 0
  br i1 %.not.not89, label %.critedge31, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = add nsw i32 %i.br, -4
  br label %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1"

"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1": ; preds = %bb.v, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.1", %bb.s
  %.15664.1 = phi i32 [ %i.bn, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.1" ], [ %i.bx, %bb.v ], [ %i.bn, %bb.s ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !160 ; 4 uses
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %.critedge.1, label %bb.w

bb.w:                                             ; preds = %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1"
  %i.cb = icmp eq i32 %i.bp, -1
  br i1 %i.cb, label %bb.x, label %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1"

"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1": ; preds = %bb.w
  %i.cc = add nsw i32 %i.bp, 4
  %i.cd = icmp eq i32 %i.bz, %i.cc
  br i1 %i.cd, label %.critedge.1, label %.critedge31

bb.x:                                             ; preds = %bb.w
  %i.ce = and i32 %i.bz, 4
  %.not.not90 = icmp eq i32 %i.ce, 0
  br i1 %.not.not90, label %.critedge31, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = add nsw i32 %i.bz, -4
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.y, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1", %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1", %bb.r
  %.055.1 = phi i32 [ %i.bn, %bb.r ], [ %.15664.1, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1" ], [ %.15664.1, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1" ], [ %.15664.1, %bb.y ] ; 6 uses
  %.0.1 = phi i32 [ %i.bp, %bb.r ], [ %i.bp, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1" ], [ %i.bp, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.thread.1" ], [ %i.cf, %bb.y ] ; 7 uses
  %i.cg = icmp eq i32 %.055.1, -1                 ; 3 uses
  %i.ch = add i32 %.055.1, 1
  %i.ci = icmp ult i32 %i.ch, 5
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.1
  %i.cj = icmp eq i32 %.0.1, -1
  %i.ck = add i32 %.0.1, 1
  %i.cl = icmp ult i32 %i.ck, 5
  br i1 %i.cl, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.1
  %i.cm = icmp sge i32 %.055.1, %i.a
  %i.cn = icmp slt i32 %.055.1, %i.c
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  %i.cp = select i1 %i.cg, i1 true, i1 %i.co
  br i1 %i.cp, label %bb.ab, label %.critedge31

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp eq i32 %.0.1, -1                   ; 2 uses
  %i.cr = icmp sge i32 %.0.1, %i.a
  %i.cs = icmp slt i32 %.0.1, %i.c
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %i.cu = select i1 %i.cq, i1 true, i1 %i.ct
  br i1 %i.cu, label %bb.ac, label %.critedge31

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load i32, ptr %i.d, align 8, !tbaa !544 ; 2 uses
  %i.cw = load i32, ptr %i.e, align 4, !tbaa !545
  %.not.i37.1 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i37.1, label %bb.ae, label %bb.ad, !prof !547

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %4, i32 %5)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1

bb.ae:                                            ; preds = %bb.ac
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %6, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  store ptr %4, ptr %i.cz, align 1
  %.sroa.32.0..sroa_idx.i38.1 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %5, ptr %.sroa.32.0..sroa_idx.i38.1, align 1
  %i.da = load i32, ptr %i.d, align 8, !tbaa !544
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.d, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1: ; preds = %bb.ae, %bb.ad
  %i.dc = sub i32 %.055.1, %i.a
  %i.dd = and i32 %i.dc, 3
  %i.de = select i1 %i.cg, i32 0, i32 %i.dd
  %i.df = sub i32 %.0.1, %i.a
  br label %bb.ai

bb.af:                                            ; preds = %bb.z
  %i.dg = load i32, ptr %i.d, align 8, !tbaa !544 ; 2 uses
  %i.dh = load i32, ptr %i.e, align 4, !tbaa !545
  %.not.i.1 = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i.1, label %bb.ah, label %bb.ag, !prof !547

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i32 %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1

bb.ah:                                            ; preds = %bb.af
  %i.di = zext i32 %i.dg to i64
  %i.dj = load ptr, ptr %6, align 8, !tbaa !34
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.di ; 2 uses
  store ptr %2, ptr %i.dk, align 1
  %.sroa.32.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %3, ptr %.sroa.32.0..sroa_idx.i.1, align 1
  %i.dl = load i32, ptr %i.d, align 8, !tbaa !544
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.d, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1: ; preds = %bb.ah, %bb.ag
  %i.dn = and i32 %.055.1, 3
  %i.do = select i1 %i.cg, i32 0, i32 %i.dn
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1
  %.0.1.sink = phi i32 [ %.0.1, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1 ], [ %i.df, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1 ]
  %.sink101.a = phi i1 [ %i.cj, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1 ], [ %i.cq, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1 ]
  %.sink100 = phi i32 [ %i.do, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.1 ], [ %i.de, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit39.1 ]
  %.sink97 = load i32, ptr %7, align 4, !tbaa !160
  %i.dp = shl i32 %.0.1.sink, 2
  %i.dq = and i32 %i.dp, 12
  %i.dr = select i1 %.sink101.a, i32 0, i32 %i.dq
  %i.ds = or disjoint i32 %i.dr, %.sink100
  %8 = shl nuw nsw i32 %i.ds, 4
  %i.dt = or i32 %.sink97, %8
  store i32 %i.dt, ptr %7, align 4, !tbaa !160
  br label %.critedge31

.critedge31:                                      ; preds = %bb.ai, %bb.ab, %bb.aa, %bb.x, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1", %bb.u, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.1", %bb.g, %bb.d, %bb.m, %bb.n, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit", %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36"
  %.lcssa = phi i1 [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.m ], [ false, %bb.n ], [ false, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit" ], [ false, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36" ], [ true, %bb.ai ], [ false, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit.1" ], [ false, %bb.u ], [ false, %"_ZZL15buildVPERMIInfoN4llvm8ArrayRefIiEENS_7SDValueES2_RNS_15SmallVectorImplIS2_EERjENK3$_2clERii.exit36.1" ], [ false, %bb.x ], [ false, %bb.aa ], [ false, %bb.ab ]
  ret i1 %.lcssa
}

declare noundef zeroext i1 @_ZN4llvm20widenShuffleMaskEltsENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL28lowerVECTOR_SHUFFLE_XVSHUF4IRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, i16 %.374.val) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = icmp eq i64 %2, 4
  br i1 %i.a, label %.preheader.preheader, label %bb.o

.preheader.preheader:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !160  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !160  ; 5 uses
  switch i32 %i.c, label %.thread15 [
    i32 -1, label %bb.b
    i32 5, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader.preheader, %.preheader.preheader, %.preheader.preheader, %.preheader.preheader, %.preheader.preheader
  switch i32 %i.e, label %.thread15 [
    i32 -1, label %bb.c
    i32 7, label %bb.c
    i32 6, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = icmp eq i32 %i.e, -1                     ; 2 uses
  %i.g = icmp eq i32 %i.c, -1                     ; 2 uses
  %or.cond10.not21 = or i1 %i.g, %i.f
  %i.h = add nsw i32 %i.c, 2
  %.not = icmp eq i32 %i.e, %i.h
  %or.cond81 = select i1 %or.cond10.not21, i1 true, i1 %.not
  br i1 %or.cond81, label %bb.d, label %.thread15

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i32 %i.c, 2
  %i.j = xor i32 %i.c, 2
  %i.k = select i1 %i.i, i32 %i.c, i32 %i.j
  %i.l = and i32 %i.k, 3
  br label %.preheader.1

bb.f:                                             ; preds = %bb.d
  br i1 %i.f, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ult i32 %i.e, 4
  %.v = select i1 %i.m, i32 2, i32 4
  %i.n = add nuw nsw i32 %.v, %i.e
  %i.o = and i32 %i.n, 3
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.e, %bb.f, %bb.g
  %.2.ph = phi i32 [ %i.o, %bb.g ], [ %i.l, %bb.e ], [ 0, %bb.f ]
  %i.p = load i32, ptr %1, align 4, !tbaa !160    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !160  ; 5 uses
  switch i32 %i.p, label %.thread15 [
    i32 -1, label %bb.h
    i32 5, label %bb.h
    i32 4, label %bb.h
    i32 1, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader.1, %.preheader.1, %.preheader.1, %.preheader.1, %.preheader.1
  switch i32 %i.r, label %.thread15 [
    i32 -1, label %bb.i
    i32 7, label %bb.i
    i32 6, label %bb.i
    i32 3, label %bb.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.s = icmp eq i32 %i.r, -1                     ; 2 uses
  %i.t = icmp eq i32 %i.p, -1                     ; 2 uses
  %or.cond10.not21.1 = or i1 %i.t, %i.s
  %i.u = add nsw i32 %i.p, 2
  %.not.1 = icmp eq i32 %i.r, %i.u
  %or.cond81.1 = select i1 %or.cond10.not21.1, i1 true, i1 %.not.1
  br i1 %or.cond81.1, label %bb.j, label %.thread15

bb.j:                                             ; preds = %bb.i
  %i.v = shl nuw nsw i32 %.2.ph, 2                ; 3 uses
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp samesign ult i32 %i.p, 2
  %i.x = xor i32 %i.p, 2
  %i.y = select i1 %i.w, i32 %i.p, i32 %i.x
  %i.z = and i32 %i.y, 3
  %i.aa = or disjoint i32 %i.z, %i.v
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %i.s, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp samesign ult i32 %i.r, 4
  %.v.1 = select i1 %i.ab, i32 2, i32 4
  %i.ac = add nuw nsw i32 %.v.1, %i.r
  %i.ad = and i32 %i.ac, 3
  %i.ae = or disjoint i32 %i.ad, %i.v
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.2.ph.1 = phi i32 [ %i.ae, %bb.m ], [ %i.aa, %bb.k ], [ %i.v, %bb.l ]
  store ptr %4, ptr %8, align 8, !tbaa !365
  %.sroa.365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %5, ptr %.sroa.365.0..sroa_idx, align 8, !tbaa !160
  %i.af = zext nneg i32 %.2.ph.1 to i64
  %i.ag = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract20, ptr %9, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.223.0..sroa_idx, align 8
  %i.ah = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 639, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #28 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.ah, 1
  br label %.thread15

bb.o:                                             ; preds = %bb.a
  %i.ai = tail call fastcc { ptr, i32 } @_ZL27lowerVECTOR_SHUFFLE_VSHUF4IRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %7, i16 %.374.val) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ai, 1
  br label %.thread15

.thread15:                                        ; preds = %bb.c, %.preheader.preheader, %bb.b, %.preheader.1, %bb.h, %bb.i, %bb.n, %bb.o
  %.sroa.7.3 = phi i32 [ %.fca.1.extract17, %bb.n ], [ %.fca.1.extract, %bb.o ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %.preheader.1 ], [ 0, %bb.b ], [ 0, %.preheader.preheader ], [ 0, %bb.c ]
  %.sroa.06.3 = phi ptr [ %.fca.0.extract16, %bb.n ], [ %.fca.0.extract, %bb.o ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.preheader.1 ], [ null, %bb.b ], [ null, %.preheader.preheader ], [ null, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.06.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL27lowerVECTOR_SHUFFLE_XVPERMIRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr %.0.val, i32 %.8.val, ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %.374.val) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.659", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.b = trunc i64 %2 to i32                      ; 3 uses
  %i.c = add i16 %3, -163
  %spec.select.i.i = icmp ult i16 %i.c, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.83) #29
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.d = zext i16 %3 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !155
  %i.h = zext i16 %i.g to i32
  %.not = icmp eq i32 %i.h, %i.b
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  switch i16 %3, label %.loopexit [
    i16 77, label %.critedge
    i16 140, label %.critedge
    i16 96, label %.critedge2
    i16 156, label %.critedge2
  ]

.critedge:                                        ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !544
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 2, ptr %i.k, align 4, !tbaa !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !160
end_hunk_0
