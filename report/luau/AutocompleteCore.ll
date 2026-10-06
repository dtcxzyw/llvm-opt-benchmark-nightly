Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AutocompleteCore?download=true
inline.NumInlined: 4528
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv:bb.a
  %i.bi = phi i64 [ 0, %bb.k ], [ %i.be, %bb.j ]
  %i.bj = icmp eq i64 %i.bf, 0
  br i1 %i.bj, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread, label %bb.i, !llvm.loop !930

bb.l:                                             ; preds = %bb.g, %bb.h
  %i.bk = mul i64 %i.y, 3
  %i.bl = lshr i64 %i.bk, 2
  %.not.i.i6 = icmp ult i64 %i.u, %i.bl
  br i1 %.not.i.i6, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %.thread17

.thread18:                                        ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !435 ; 2 uses
  %i.bn = mul i64 %i.bm, 3
  %.not.i.i619.not = icmp ult i64 %i.bn, 4
  br i1 %.not.i.i619.not, label %.loopexit.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i

.thread:                                          ; preds = %bb.d
  %i.bo = mul i64 %i.y, 3
  %i.bp = lshr i64 %i.bo, 2
  %.not.i.i616 = icmp ult i64 %i.u, %i.bp
  br i1 %.not.i.i616, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %.loopexit.i.i

.thread17:                                        ; preds = %bb.l
  %i.bq = add i64 %i.y, -1                        ; 2 uses
  %i.br = ptrtoint ptr %i.t to i64
  %i.bs = mul i64 %i.br, -4658895280553007687     ; 2 uses
  %i.bt = lshr i64 %i.bs, 31
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !307
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.thread17
  %.pn.i.i.i = phi i64 [ %i.bu, %.thread17 ], [ %i.cb, %bb.o ]
  %.01832.i.i.i = phi i64 [ 0, %.thread17 ], [ %i.ca, %bb.o ]
  %.01933.i.i.i = and i64 %.pn.i.i.i, %i.bq       ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.01933.i.i.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !309 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.t
  br i1 %i.by, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq ptr %i.bx, %i.w
  br i1 %i.bz, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.cb = add i64 %i.ca, %.01933.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ca, %i.bq
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.m, !llvm.loop !929

.loopexit.i.i:                                    ; preds = %bb.o, %bb.n, %.thread, %.thread18
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %.pre.i7 = load i64, ptr %i.h, align 8, !tbaa !435
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i

_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i: ; preds = %bb.m, %.thread18, %.thread, %.loopexit.i.i, %bb.l
  %i.cc = phi i64 [ %.pre.i7, %.loopexit.i.i ], [ %i.y, %bb.l ], [ %i.bm, %.thread18 ], [ %i.y, %.thread ], [ %i.y, %bb.m ]
  %i.cd = add i64 %i.cc, -1                       ; 3 uses
  %i.ce = ptrtoint ptr %i.t to i64
  %i.cf = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cg = lshr i64 %i.cf, 31
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !307 ; 3 uses
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !309 ; 2 uses
  %.02136.i6.i = and i64 %i.cd, %i.ch             ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.02136.i6.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !309 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.cj
  br i1 %i.cm, label %._crit_edge.i, label %.lr.ph.i8

._crit_edge.i:                                    ; preds = %bb.p, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i
  %.02136.i.lcssa5.i = phi i64 [ %.02136.i6.i, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ], [ %.02136.i.i, %bb.p ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.02136.i.lcssa5.i
  store ptr %i.t, ptr %i.cn, align 8, !tbaa !309
  %i.co = load i64, ptr %i.f, align 8, !tbaa !931
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.f, align 8, !tbaa !931
  br label %_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit

.lr.ph.i8:                                        ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, %bb.p
  %i.cq = phi ptr [ %i.cv, %bb.p ], [ %i.cl, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %.02136.i8.i = phi i64 [ %.02136.i.i, %bb.p ], [ %.02136.i6.i, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %.02035.i7.i = phi i64 [ %i.cs, %bb.p ], [ 0, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %i.cr = icmp eq ptr %i.cq, %i.t
  br i1 %i.cr, label %_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i8
  %i.cs = add i64 %.02035.i7.i, 1                 ; 3 uses
  %i.ct = add i64 %i.cs, %.02136.i8.i
  %.not.i3.i = icmp ule i64 %i.cs, %i.cd
  tail call void @llvm.assume(i1 %.not.i3.i)
  %.02136.i.i = and i64 %i.ct, %i.cd              ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.02136.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !309 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cj
  br i1 %i.cw, label %._crit_edge.i, label %.lr.ph.i8

_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit: ; preds = %.lr.ph.i8, %._crit_edge.i
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !298
  %i.cy = load i64, ptr %i.i, align 8, !tbaa !308
  %i.cz = icmp eq i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  tail call void @_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE4growEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  %i.da = load i64, ptr %i.d, align 8, !tbaa !300 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.s, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE10push_frontERKS5_.exit

bb.s:                                             ; preds = %bb.r
  %i.dc = load i64, ptr %i.i, align 8, !tbaa !308
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE10push_frontERKS5_.exit

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE10push_frontERKS5_.exit: ; preds = %bb.r, %bb.s
  %.in.i = phi i64 [ %i.dc, %bb.s ], [ %i.da, %bb.r ]
  %i.dd = add i64 %.in.i, -1                      ; 2 uses
  store i64 %i.dd, ptr %i.d, align 8, !tbaa !300
  %i.de = load ptr, ptr %0, align 8, !tbaa !299
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dd ; 2 uses
  store ptr %i.t, ptr %i.df, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !298
  %i.dh = add i64 %i.dg, 1                        ; 2 uses
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !298
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit, !llvm.loop !930

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit: ; preds = %bb.i, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE10push_frontERKS5_.exit
  %i.di = phi i64 [ %i.dh, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE10push_frontERKS5_.exit ], [ %.pre.pre, %bb.i ]
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread, label %bb.b

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread: ; preds = %_ZNK4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit, %bb.b, %bb.c, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !435  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !309  ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !309 ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %spec.select, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.i, align 8, !tbaa !309
  store <2 x ptr> %broadcast.splat, ptr %i.j, align 8, !tbaa !309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.05.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.05.i.i
  store ptr %.pre.i.i, ptr %i.l, align 8, !tbaa !309
  %i.m = add nuw i64 %.05.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %spec.select
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !933

_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load i64, ptr %i.a, align 8, !tbaa !435
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit

_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit ]
  %i.o = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.o, 0
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !937 ; 3 uses
  br i1 %.not, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit
  %i.p = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.c

._crit_edge28:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !937
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !49
  %.not.i11 = icmp eq ptr %.pre30, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge28
  tail call void @_ZdlPv(ptr noundef nonnull %.pre30) #26
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit: ; preds = %._crit_edge28, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph27, %bb.f
  %.026 = phi i64 [ 0, %.lr.ph27 ], [ %i.ah, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre30, i64 %.026
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !309  ; 4 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %.02136.i22 = and i64 %i.w, %i.p                ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i22
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !309  ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.af, %bb.e ], [ %i.y, %bb.d ]
  %.02136.i24 = phi i64 [ %.02136.i, %bb.e ], [ %.02136.i22, %bb.d ] ; 2 uses
  %.02035.i23 = phi i64 [ %i.ac, %bb.e ], [ 0, %bb.d ]
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.02035.i23, 1                  ; 3 uses
  %i.ad = add i64 %i.ac, %.02136.i24
  %.not.i12 = icmp ule i64 %i.ac, %i.p
  tail call void @llvm.assume(i1 %.not.i12)
  %.02136.i = and i64 %i.ad, %i.p                 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !309 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit: ; preds = %.lr.ph, %bb.e, %bb.d
  %.02136.i24.lcssa.sink = phi i64 [ %.02136.i22, %bb.d ], [ %.02136.i, %bb.e ], [ %.02136.i24, %.lr.ph ]
  %1 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i24.lcssa.sink
  store ptr %i.r, ptr %1, align 8, !tbaa !309
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_9UnionTypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit, %bb.c
  %i.ah = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.o
  br i1 %exitcond.not, label %._crit_edge28, label %bb.c, !llvm.loop !934
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE4growEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !308  ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = mul i64 %i.b, 3
  %i.d = lshr i64 %i.c, 1
  %i.e = add nuw i64 %i.d, 1
  %i.f = select i1 %.not, i64 4, i64 %i.e         ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.h, align 8, !tbaa !132
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %i.f, 576460752303423487
  br i1 %i.i, label %bb.d, label %_ZNSt15__new_allocatorISt4pairIPKN4Luau9UnionTypeEmEE8allocateEmPKv.exit, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPKN4Luau9UnionTypeEmEE8allocateEmPKv.exit: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.f, 4
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !300  ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !49   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p) ; 4 uses
  %i.q = sub nuw i64 %i.p, %.sroa.speculated
  %.not19 = icmp eq i64 %.sroa.speculated, 0
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !299 ; 4 uses
  br i1 %.not19, label %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIPKN4Luau9UnionTypeEmEE8allocateEmPKv.exit
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.pre.pre, i64 %i.n ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 4    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.t = add nsw i64 %.idx, -16                   ; 2 uses
  %i.u = lshr exact i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %bb.e, %.lr.ph.i.i.i.i.prol
  %.013.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.prol ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.08.012.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.prol ], [ %i.r, %bb.e ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.prol, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.prol, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !938

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %bb.e
  %.013.i.i.i.i.unr = phi ptr [ %i.k, %bb.e ], [ %i.x, %.lr.ph.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.unr = phi ptr [ %i.r, %bb.e ], [ %i.w, %.lr.ph.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.t, 48
  br i1 %i.y, label %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 64
  %.not.i.i.i.i.3 = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.3, label %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !939

_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZNSt15__new_allocatorISt4pairIPKN4Luau9UnionTypeEmEE8allocateEmPKv.exit
  %.not20.not = icmp ugt i64 %i.p, %i.o
  br i1 %.not20.not, label %bb.f, label %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit27

bb.f:                                             ; preds = %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit
  %.idx29 = shl nuw nsw i64 %i.q, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.idx29
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.sroa.speculated
  br label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i22
  %.013.i.i.i.i23 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i22 ], [ %i.ai, %bb.f ] ; 2 uses
  %.sroa.08.012.i.i.i.i24 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i22 ], [ %.pre.pre, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i24, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i24, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i23, i64 16
  %.not.i.i.i.i25 = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i25, label %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit27, label %.lr.ph.i.i.i.i22, !llvm.loop !939

_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit27: ; preds = %.lr.ph.i.i.i.i22, %_ZSt18uninitialized_moveIPSt4pairIPKN4Luau9UnionTypeEmES6_ET0_T_S8_S7_.exit
  %i.al = shl i64 %i.b, 4
  tail call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.al) #28
  store ptr %i.k, ptr %0, align 8, !tbaa !299
  store i64 %i.f, ptr %i.a, align 8, !tbaa !308
  store i64 0, ptr %i.m, align 8, !tbaa !300
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIPKN4Luau4TypeES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !66   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !355
  br label %_ZNSt10_HashtableIPKN4Luau4TypeES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKN4Luau4TypeELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !37

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKN4Luau4TypeELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIPKN4Luau4TypeES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPKN4Luau4TypeES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKN4Luau4TypeELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPKN4Luau4TypeELb0EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69   ; 3 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %bb.h unwind label %bb.k       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !105  ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.p, align 8, !tbaa !69
  %i.q = load ptr, ptr %0, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !66
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = urem i64 %i.t, %i.s
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.u
end_hunk_0
