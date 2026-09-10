Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bytecode-graph-builder?download=true
inline.NumInlined: 3765
inline.NumDeleted: 902
begin_hunk_0_@_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC2EPS2_iiNS0_11interpreter8RegisterEPNS1_4NodeE:bb.a
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel, label %bb.b, !prof !22

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.v)
  %.pre.i25.peel = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel: ; preds = %bb.b, %.lr.ph
  %i.w = phi ptr [ %i.n, %.lr.ph ], [ %.pre.i25.peel, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.k, align 8
  store ptr %i.m, ptr %i.w, align 8
  %exitcond.peel.not = icmp eq i32 %3, 1
  br i1 %exitcond.peel.not, label %._crit_edge.loopexit, label %.peel.next

._crit_edge.loopexit:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel
  %.pre = load ptr, ptr %i.k, align 8
  %.pre31 = load ptr, ptr %i.i, align 8
  %i.y = ptrtoint ptr %.pre to i64
  %i.z = ptrtoint ptr %.pre31 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ad = phi i32 [ %i.ac, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %i.ad, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1144) %i.ah) #20
  %i.ai = load ptr, ptr %6, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = sext i32 %2 to i64                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.al = call noundef ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE19PrepareForInsertionEPKS4_mPm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.a) ; 4 uses
  %i.am = load i64, ptr %i.a, align 8             ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.015.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.al, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 3 uses
  store ptr %i.ai, ptr %.015.i, align 8
  %i.ap = icmp ult ptr %i.ao, %i.an
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.0.lcssa.i = phi ptr [ %i.al, %._crit_edge ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.ar = icmp ult ptr %.0.lcssa.i, %i.aq
  br i1 %i.ar, label %.lr.ph18.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit

.lr.ph18.i:                                       ; preds = %._crit_edge.i, %.lr.ph18.i
  %.116.i = phi ptr [ %i.as, %.lr.ph18.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.116.i, i64 8 ; 2 uses
  store ptr %i.ai, ptr %.116.i, align 8
  %i.at = icmp ult ptr %i.as, %i.aq
  br i1 %i.at, label %.lr.ph18.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit, !llvm.loop !34

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit: ; preds = %.lr.ph18.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.au = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.av = load ptr, ptr %i.i, align 8
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp ult ptr %i.au, %i.bd
  br i1 %i.be, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.bf, %i.ax
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.bi)
  %.pre.i24 = load ptr, ptr %i.ae, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit, %bb.c
  %i.bj = phi ptr [ %i.au, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6insertEPKS4_mRS6_.exit ], [ %.pre.i24, %bb.c ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.ae, align 8
  store ptr %i.ai, ptr %i.bj, align 8
  %i.bl = add nsw i32 %3, 2
  %i.bm = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef %i.bl, ptr noundef nonnull @.str.1)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bm, ptr %i.bn, align 8
  %.not = icmp eq i32 %4, 2147483647
  br i1 %.not, label %bb.f, label %bb.e

.peel.next:                                       ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26
  %.029 = phi i32 [ %i.ca, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26 ], [ 1, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26.peel ] ; 2 uses
  %i.bo = tail call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef %.029, ptr noundef null)
  %i.bp = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bq = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26, label %bb.d, !prof !22

bb.d:                                             ; preds = %.peel.next
  %i.bs = load ptr, ptr %i.i, align 8
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = add nsw i64 %i.bw, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.bx)
  %.pre.i25 = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit26: ; preds = %.peel.next, %bb.d
  %i.by = phi ptr [ %i.bp, %.peel.next ], [ %.pre.i25, %bb.d ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bo, ptr %i.by, align 8
  %i.ca = add nuw nsw i32 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.peel.next, !llvm.loop !35

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  %i.cb = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %1, i32 noundef %3, ptr noundef nonnull @.str.2)
  %i.cc = icmp slt i32 %4, 0
  %i.cd = sub nsw i32 -9, %4
  %i.ce = load i32, ptr %i.af, align 8
  %i.cf = add nsw i32 %i.ce, %4
  %.0.i = select i1 %i.cc, i32 %i.cd, i32 %i.cf
  %i.cg = sext i32 %.0.i to i64
  %i.ch = load ptr, ptr %i.i, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %i.cb, ptr %i.ci, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backERKS4_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder12GetParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(856) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = add nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not = icmp ugt i64 %i.l, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i64 %i.c, 1                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = ashr exact i64 %i.q, 3
  %.not.i.i = icmp ugt i64 %i.m, %i.r
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.m)
  %.pre.i = load ptr, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.t = phi ptr [ %i.h, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m ; 2 uses
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i
  %i.w = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = sext i32 %1 to i64
  %i.z = shl nsw i64 %i.y, 3
  %3 = add i64 %i.z, %i.x
  %i.aa = add i64 %3, 16
  %i.ab = add i64 %i.w, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ab)
  %4 = xor i64 %i.w, -1
  %5 = add i64 %umax, %4
  %i.ac = and i64 %5, -8
  %i.ad = add i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.ad, i1 false)
  %.pre8.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit: ; preds = %.lr.ph.i.preheader, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i
  %.pre8 = phi ptr [ %.pre8.pre, %.lr.ph.i.preheader ], [ %i.t, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i ]
  store ptr %i.u, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit, %bb.a
  %i.ae = phi ptr [ %.pre8, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEmRKS4_.exit ], [ %i.h, %bb.a ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.c
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9ParameterEiPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %1, ptr noundef %2) #20
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %i.aq, ptr %i.a, align 8
  %i.ar = call noundef ptr @_ZN2v88internal8compiler20BytecodeGraphBuilder8MakeNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %i.am, i32 noundef 1, ptr noundef nonnull %i.a, i1 noundef zeroext false), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.as = load ptr, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.c
  store ptr %i.ar, ptr %i.at, align 8
  %.pre9 = load ptr, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre9, i64 %i.c
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi ptr [ %.pre10, %bb.e ], [ %i.ag, %bb.d ]
  ret ptr %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2v88internal8compiler7JSGraph17UndefinedConstantEv(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(1144)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK2v88internal8compiler20BytecodeGraphBuilder11Environment21RegisterToValuesIndexENS0_11interpreter8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = sub nsw i32 -9, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add nsw i32 %i.d, %1
  %.0 = select i1 %i.a, i32 %i.b, i32 %i.e
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20BytecodeGraphBuilder11EnvironmentC2EPKS3_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 96)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ag = load i32, ptr %i.af, align 4
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ah) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not = icmp ult i64 %i.i, %i.n
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq ptr %i.k, %i.b
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.b, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.m                       ; 5 uses
  %.not23 = icmp eq ptr %i.v, %i.b
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %i.z = icmp sgt i64 %i.x, -1
  br i1 %i.z, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #21
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !24

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef %i.x) #20
  %.pre.i.i = load i64, ptr %i.ac, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi i64 [ %.pre.i.i, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = add i64 %i.ag, %i.x
  store i64 %i.ai, ptr %i.ac, align 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
end_hunk_0
