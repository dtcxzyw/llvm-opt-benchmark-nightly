inline.NumInlined: 780
inline.NumDeleted: 385
begin_hunk_0_@_ZN2v88internal8compiler22StringBuilderOptimizer9VisitNodeEPNS1_4NodeEPNS1_10BasicBlockE:bb.a
  %i.ry = phi ptr [ %i.rl, %bb.bi ], [ %.pre.i.i279, %bb.bj ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.rs ; 3 uses
  %i.sa = icmp ult ptr %i.rx, %i.rz
  br i1 %i.sa, label %.lr.ph.i.i275, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i268

.lr.ph.i.i275:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i267, %.lr.ph.i.i275
  %.01113.i.i276 = phi ptr [ %i.sb, %.lr.ph.i.i275 ], [ %i.rx, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i267 ] ; 2 uses
  store i64 4294967295, ptr %.01113.i.i276, align 4
  %i.sb = getelementptr inbounds nuw i8, ptr %.01113.i.i276, i64 8 ; 2 uses
  %i.sc = icmp ult ptr %i.sb, %i.rz
  br i1 %i.sc, label %.lr.ph.i.i275, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i277, !llvm.loop !11

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i277: ; preds = %.lr.ph.i.i275
  %.pre6.pre.i278 = load ptr, ptr %i.nx, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i268

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i268: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i277, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i267
  %.pre6.i269 = phi ptr [ %.pre6.pre.i278, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i277 ], [ %i.ry, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i267 ]
  store ptr %i.rz, ptr %i.nv, align 8
  %.pre5.i270 = load i32, ptr %i.nr, align 4
  %.pre8.i271 = and i32 %.pre5.i270, 16777215
  %.pre9.i272 = zext nneg i32 %.pre8.i271 to i64
  br label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit281

_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit281: ; preds = %bb.bh, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i268
  %.pre-phi10.i273 = phi i64 [ %.pre9.i272, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i268 ], [ %i.rj, %bb.bh ]
  %i.sd = phi ptr [ %.pre6.i269, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i268 ], [ %i.rl, %bb.bh ]
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.pre-phi10.i273 ; 2 uses
  store i32 -1, ptr %i.se, align 4
  %.sroa.4.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  store i8 7, ptr %.sroa.4.0..sroa_idx.i274, align 4
  %i.sf = load i32, ptr %i.pz, align 4
  %i.sg = and i32 %i.sf, 16777215                 ; 2 uses
  %i.sh = zext nneg i32 %i.sg to i64              ; 2 uses
  %i.si = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.sj = load ptr, ptr %i.nx, align 8            ; 3 uses
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = ptrtoint ptr %i.sj to i64               ; 2 uses
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = ashr exact i64 %i.sm, 3
  %.not.i282 = icmp ugt i64 %i.sn, %i.sh
  br i1 %.not.i282, label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit298, label %bb.bk

bb.bk:                                            ; preds = %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit281
  %i.so = uitofp nneg i32 %i.sg to double
  %i.sp = fmul nnan double %i.so, 1.100000e+00
  %i.sq = fptoui double %i.sp to i64              ; 3 uses
  %i.sr = load ptr, ptr %i.pj, align 8
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = sub i64 %i.ss, %i.sl
  %i.su = ashr exact i64 %i.st, 3
  %.not.i.i.i283 = icmp ult i64 %i.su, %i.sq
  br i1 %.not.i.i.i283, label %bb.bl, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284, !prof !10

bb.bl:                                            ; preds = %bb.bk
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.pi, i64 noundef %i.sq)
  %.pre.i.i296 = load ptr, ptr %i.nx, align 8
  %.pre.i297 = load ptr, ptr %i.nv, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284: ; preds = %bb.bl, %bb.bk
  %i.sv = phi ptr [ %i.si, %bb.bk ], [ %.pre.i297, %bb.bl ] ; 2 uses
  %i.sw = phi ptr [ %i.sj, %bb.bk ], [ %.pre.i.i296, %bb.bl ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.sq ; 3 uses
  %i.sy = icmp ult ptr %i.sv, %i.sx
  br i1 %i.sy, label %.lr.ph.i.i292, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i285

.lr.ph.i.i292:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284, %.lr.ph.i.i292
  %.01113.i.i293 = phi ptr [ %i.sz, %.lr.ph.i.i292 ], [ %i.sv, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284 ] ; 2 uses
  store i64 4294967295, ptr %.01113.i.i293, align 4
  %i.sz = getelementptr inbounds nuw i8, ptr %.01113.i.i293, i64 8 ; 2 uses
  %i.ta = icmp ult ptr %i.sz, %i.sx
  br i1 %i.ta, label %.lr.ph.i.i292, label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i294, !llvm.loop !11

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i294: ; preds = %.lr.ph.i.i292
  %.pre6.pre.i295 = load ptr, ptr %i.nx, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i285

_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i285: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i294, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284
  %.pre6.i286 = phi ptr [ %.pre6.pre.i295, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.loopexit.i294 ], [ %i.sw, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE14EnsureCapacityEm.exit.i.i284 ]
  store ptr %i.sx, ptr %i.nv, align 8
  %.pre5.i287 = load i32, ptr %i.pz, align 4
  %.pre8.i288 = and i32 %.pre5.i287, 16777215
  %.pre9.i289 = zext nneg i32 %.pre8.i288 to i64
  br label %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit298

_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit298: ; preds = %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit281, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i285
  %.pre-phi10.i290 = phi i64 [ %.pre9.i289, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i285 ], [ %i.sh, %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit281 ]
  %i.tb = phi ptr [ %.pre6.i286, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer6StatusEE6resizeEmRKS4_.exit.i285 ], [ %i.sj, %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit281 ]
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %.pre-phi10.i290 ; 2 uses
  store i32 -1, ptr %i.tc, align 4
  %.sroa.4.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  store i8 7, ptr %.sroa.4.0..sroa_idx.i291, align 4
  br label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit247.thread

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit247.thread: ; preds = %bb.bb, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit247, %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit298, %bb.bg, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit
  %.sroa.0299.0 = load ptr, ptr %.sroa.0299.0335, align 8 ; 2 uses
  %.not328 = icmp eq ptr %.sroa.0299.0, null
  br i1 %.not328, label %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit, label %bb.az

_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit: ; preds = %.critedge.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit247.thread, %bb.ay, %_ZN2v88internal8compiler12_GLOBAL__N_117HasConcatOrPhiUseEPNS1_4NodeE.exit.thread310, %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler22StringBuilderOptimizer13StringBuilderEE9push_backEOS4_.exit, %_ZN2v88internal8compiler22StringBuilderOptimizer9SetStatusEPNS1_4NodeENS2_5StateEi.exit244, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit227
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler22StringBuilderOptimizer22FinalizeStringBuildersEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::ZoneVector.30", align 8 ; 8 uses
  %2 = alloca %"class.v8::internal::ZoneVector.30", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %cond.i = icmp eq i32 %i.g, 0
  br i1 %cond.i, label %_ZN2v88internal8compiler20OneOrTwoByteAnalysisC2EPNS1_7TFGraphEPNS0_4ZoneEPNS1_12JSHeapBrokerE.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.h, 7
  %i.j = and i64 %i.i, 8589934584                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.c, label %.lr.ph.preheader.i.i, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.j) #19
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c, %bb.b
  %i.q = phi i64 [ %.pre.i.i.i.i, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = add i64 %i.q, %i.j
  store i64 %i.s, ptr %i.m, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.h, i1 false)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal8compiler20OneOrTwoByteAnalysisC2EPNS1_7TFGraphEPNS0_4ZoneEPNS1_12JSHeapBrokerE.exit

_ZN2v88internal8compiler20OneOrTwoByteAnalysisC2EPNS1_7TFGraphEPNS0_4ZoneEPNS1_12JSHeapBrokerE.exit: ; preds = %.lr.ph.preheader.i.i, %bb.a
  %i.t = phi ptr [ %.pre, %.lr.ph.preheader.i.i ], [ %i.e, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %i.t, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.t, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %.not149 = icmp eq i32 %i.x, 0
  br i1 %.not149, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %_ZN2v88internal8compiler20OneOrTwoByteAnalysisC2EPNS1_7TFGraphEPNS0_4ZoneEPNS1_12JSHeapBrokerE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.d

._crit_edge148:                                   ; preds = %bb.z, %_ZN2v88internal8compiler20OneOrTwoByteAnalysisC2EPNS1_7TFGraphEPNS0_4ZoneEPNS1_12JSHeapBrokerE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.d:                                             ; preds = %.lr.ph147, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.ah = load ptr, ptr %i.y, align 8
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 16777215
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = load ptr, ptr %i.z, align 8
  %i.ap = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %i.au = icmp ult i64 %i.at, %i.an
  br i1 %i.au, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  %.sroa.0.0.copyload.i = load i64, ptr %i.av, align 4
  %i.aw = and i64 %.sroa.0.0.copyload.i, 1095216660480
  %.not = icmp eq i64 %i.aw, 4294967296
  br i1 %.not, label %3, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread

3:                                                ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %5 = load i8, ptr %4, align 4, !range !5, !noundef !6
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.e, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit.thread: ; preds = %bb.d, %3, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.pre.i = load i32, ptr %i.ak, align 4
  %.pre8.i = load ptr, ptr %i.aa, align 8
  %.pre9.i = and i32 %.pre.i, 16777215
  %.pre10.i = zext nneg i32 %.pre9.i to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre8.i, i64 %.pre10.i ; 2 uses
  store i32 -1, ptr %i.ax, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 7, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.z

bb.e:                                             ; preds = %3
  %i.ay = load ptr, ptr %i.u, align 8             ; 4 uses
  store ptr %i.ay, ptr %i.ab, align 8
  %i.az = load ptr, ptr %i.v, align 8
  store ptr %i.az, ptr %i.ac, align 8
  %i.ba = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = add nsw i64 %i.bf, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bg)
  %.pre.i47 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %bb.e, %bb.f
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %.pre.i47, %bb.f ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.ab, align 8
  store ptr %i.aj, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.u, align 8
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, %._crit_edge.thread
  %i.bm = phi ptr [ %i.ek, %._crit_edge.thread ], [ %i.bj, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit ]
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 9 uses
  store ptr %i.bn, ptr %i.ab, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 16777215
  %i.bs = zext nneg i32 %i.br to i64              ; 3 uses
  %i.bt = load ptr, ptr %i.z, align 8
  %i.bu = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.by, %i.bs
  br i1 %i.bz, label %_ZN2v88internal8compiler22StringBuilderOptimizer12UpdateStatusEPNS1_4NodeENS2_5StateE.exit, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit50

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit50: ; preds = %.lr.ph133
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.ca, align 4 ; 2 uses
  %.sroa.024.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i48 to i32 ; 2 uses
  %.sroa.425.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i48, 32
  %.sroa.425.0.extract.trunc = trunc i64 %.sroa.425.0.extract.shift to i8
  switch i8 %.sroa.425.0.extract.trunc, label %_ZN2v88internal8compiler22StringBuilderOptimizer12UpdateStatusEPNS1_4NodeENS2_5StateE.exit [
    i8 4, label %._crit_edge.thread
    i8 1, label %bb.g
  ]

_ZN2v88internal8compiler22StringBuilderOptimizer12UpdateStatusEPNS1_4NodeENS2_5StateE.exit: ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit50, %.lr.ph133
  %.sroa.024.0.extract.trunc118120 = phi i32 [ -1, %.lr.ph133 ], [ %.sroa.024.0.extract.trunc, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit50 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs ; 2 uses
  store i32 %.sroa.024.0.extract.trunc118120, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i8 4, ptr %.sroa.4.0..sroa_idx.i53, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit50, %_ZN2v88internal8compiler22StringBuilderOptimizer12UpdateStatusEPNS1_4NodeENS2_5StateE.exit
  %.sroa.024.0.extract.trunc117 = phi i32 [ %.sroa.024.0.extract.trunc, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit50 ], [ %.sroa.024.0.extract.trunc118120, %_ZN2v88internal8compiler22StringBuilderOptimizer12UpdateStatusEPNS1_4NodeENS2_5StateE.exit ]
  %.val = load ptr, ptr %i.bo, align 8
  %i.cc = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i16, ptr %i.cc, align 8
  switch i16 %.val.val, label %bb.i [
    i16 357, label %bb.h
    i16 317, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  call void @_ZN2v88internal8compiler22StringBuilderOptimizer26ReplaceConcatInputIfNeededEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.bo, i32 noundef 1)
  call void @_ZN2v88internal8compiler22StringBuilderOptimizer26ReplaceConcatInputIfNeededEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.bo, i32 noundef 2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.091.0128 = load ptr, ptr %i.cd, align 8  ; 2 uses
  %.not124129 = icmp eq ptr %.sroa.091.0128, null
  br i1 %.not124129, label %.critedge, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.i, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread
  %.sroa.091.0131.ph = phi ptr [ %.sroa.091.0178, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread ], [ %.sroa.091.0128, %bb.i ]
  %.041130.ph = phi i1 [ true, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread ], [ false, %bb.i ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread
  br i1 %.041130.ph, label %._crit_edge.thread, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.outer, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread
  %.sroa.091.0131 = phi ptr [ %.sroa.091.0, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread ], [ %.sroa.091.0131.ph, %.lr.ph.outer ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.091.0131, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.091.0131, i64 16
  %i.cg = load i32, ptr %i.cf, align 8            ; 2 uses
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.ci ; 2 uses
  %i.ck = trunc i32 %i.cg to i1
  br i1 %i.ck, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %i.cj, align 8
  br label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit: ; preds = %.lr.ph, %bb.j
  %i.cm = phi ptr [ %i.cl, %bb.j ], [ %i.cj, %.lr.ph ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 16777215
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = load ptr, ptr %i.z, align 8
  %i.cs = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3
  %i.cx = icmp ult i64 %i.cw, %i.cq
  br i1 %i.cx, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56: ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.cy, align 4 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i54, 32
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.cz = icmp eq i8 %.sroa.4.0.extract.trunc, 2
  switch i8 %.sroa.4.0.extract.trunc, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread [
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i54 to i32
  %i.da = icmp eq i32 %.sroa.024.0.extract.trunc117, %.sroa.0.0.extract.trunc
  br i1 %i.da, label %bb.l, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread

bb.l:                                             ; preds = %bb.k
  br i1 %i.cz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.db = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.dc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.dd = icmp ult ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit58, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.de = load ptr, ptr %i.u, align 8
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3
  %i.dj = add nsw i64 %i.di, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dj)
  %.pre.i57 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit58

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit58: ; preds = %bb.m, %bb.n
  %i.dk = phi ptr [ %i.db, %bb.m ], [ %.pre.i57, %bb.n ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.ab, align 8
  store ptr %i.cm, ptr %i.dk, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit58, %bb.l
  %i.dm = load ptr, ptr %i.bo, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i16, ptr %i.dn, align 8
  %i.dp = icmp eq i16 %i.do, 36
  br i1 %i.dp, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9IsLoopPhiEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread

_ZNK2v88internal8compiler22StringBuilderOptimizer9IsLoopPhiEPNS1_4NodeE.exit: ; preds = %bb.o
  %i.dq = load ptr, ptr %i.ae, align 8
  %i.dr = call noundef ptr @_ZNK2v88internal8compiler8Schedule5blockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.dq, ptr noundef nonnull %i.bo) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8
  %.not125 = icmp eq ptr %i.dt, null
  br i1 %.not125, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9IsLoopPhiEPNS1_4NodeE.exit
  %i.du = load ptr, ptr %i.ae, align 8
  %i.dv = call noundef ptr @_ZNK2v88internal8compiler8Schedule5blockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull %i.bo) #19
  %i.dw = load ptr, ptr %i.ae, align 8
  %i.dx = call noundef ptr @_ZNK2v88internal8compiler8Schedule5blockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull %i.cm) #19
  %i.dy = call noundef zeroext i1 @_ZNK2v88internal8compiler10BasicBlock12LoopContainsEPS2_(ptr noundef nonnull align 8 dereferenceable(168) %i.dv, ptr noundef %i.dx) #19
  br i1 %i.dy, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread, label %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread: ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit, %_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56, %bb.p, %bb.k
  %.sroa.091.0 = load ptr, ptr %.sroa.091.0131, align 8 ; 2 uses
  %.not124 = icmp eq ptr %.sroa.091.0, null
  br i1 %.not124, label %._crit_edge, label %.lr.ph

_ZNK2v88internal8compiler22StringBuilderOptimizer9GetStatusEPNS1_4NodeE.exit56.thread.thread: ; preds = %_ZNK2v88internal8compiler22StringBuilderOptimizer9IsLoopPhiEPNS1_4NodeE.exit, %bb.p, %bb.o
  %.sroa.091.0178 = load ptr, ptr %.sroa.091.0131, align 8 ; 2 uses
  %.not124179 = icmp eq ptr %.sroa.091.0178, null
  br i1 %.not124179, label %._crit_edge.thread, label %.lr.ph.outer

end_hunk_0
