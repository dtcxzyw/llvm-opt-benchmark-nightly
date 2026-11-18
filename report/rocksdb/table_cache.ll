Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/table_cache?download=true
inline.NumInlined: 1441
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb6StatusaSEOS0_:bb.a
  store i8 0, ptr %i.e, align 1, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !153
  store ptr null, ptr %i.h, align 8, !tbaa !153
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !153  ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !153
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

declare noundef i64 @_ZN7rocksdb32FragmentedRangeTombstoneIterator26MaxCoveringTombstoneSeqnumERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN7rocksdb10GetContext15MarkKeyMayExistEv(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7IterKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.f, ptr %0, align 8, !tbaa !38
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit

_ZN7rocksdb7IterKey11ResetBufferEv.exit:          ; preds = %bb.c, %bb.f
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 39, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 4 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7rocksdb7IterKey11ResetBufferEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not.i1 = icmp eq ptr %i.k, %i.n
  %i.o = icmp eq ptr %i.k, null
  %or.cond = or i1 %.not.i1, %i.o
  br i1 %or.cond, label %_ZN7rocksdb7IterKey20ResetSecondaryBufferEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %_ZN7rocksdb7IterKey20ResetSecondaryBufferEv.exit

_ZN7rocksdb7IterKey20ResetSecondaryBufferEv.exit: ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 39, ptr %i.p, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10TableCache8MultiGetERKNS_11ReadOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPKNS_15MultiGetContext5RangeERKNS_16MutableCFOptionsEPNS_13HistogramImplEbbiPNS_24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE11TypedHandleE(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(417) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef nonnull align 8 dereferenceable(736) %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %13 = alloca %"class.rocksdb::MultiGetContext::Range", align 8 ; 17 uses
  %14 = alloca %"class.rocksdb::autovector", align 8 ; 14 uses
  %15 = alloca %"class.rocksdb::IterKey", align 8 ; 34 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %17 = alloca %"struct.rocksdb::TableCacheOpenOptions", align 1 ; 5 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  store ptr %11, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = load atomic ptr, ptr %4 acquire, align 8 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !257, !noalias !420 ; 9 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !258, !noalias !420 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !259, !noalias !420 ; 7 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %.lr.ph.i.i, label %..loopexit225_crit_edge

..loopexit225_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !158
  br label %.loopexit225

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 3848
  %i.l = load i64, ptr %i.k, align 8, !tbaa !269, !noalias !420
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !158, !noalias !420 ; 6 uses
  %i.o = extractelement <2 x i64> %i.n, i64 0
  %i.p = or i64 %i.o, %i.l
  %i.q = extractelement <2 x i64> %i.n, i64 1
  %i.r = or i64 %i.p, %i.q                        ; 2 uses
  %i.s = sub nuw i64 %i.h, %i.e                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.s, -32                      ; 3 uses
  %i.t = add i64 %i.e, %n.vec
  %broadcast.splatinsert = insertelement <32 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <32 x i64> %broadcast.splatinsert, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert372 = insertelement <32 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat373 = shufflevector <32 x i64> %broadcast.splatinsert372, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction = add nuw <32 x i64> %broadcast.splat373, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.u = shl nuw <32 x i64> splat (i64 1), %vec.ind
  %i.v = and <32 x i64> %i.u, %broadcast.splat
  %.fr = freeze <32 x i64> %i.v
  %i.w = icmp eq <32 x i64> %.fr, zeroinitializer ; 2 uses
  %i.x = bitcast <32 x i1> %i.w to i32
  %.not450.a = icmp eq i32 %i.x, 0
  br i1 %.not450.a, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw <32 x i64> %vec.ind, splat (i64 32)
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit225, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %storemerge3.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.t, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.z = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.w, i1 false)
  %i.aa = add i64 %index, %i.z
  %i.ab = add i64 %i.e, %i.aa
  br label %.loopexit225

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %storemerge3.i.i = phi i64 [ %i.ae, %bb.b ], [ %storemerge3.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ac = shl nuw i64 1, %storemerge3.i.i
  %i.ad = and i64 %i.ac, %i.r
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.loopexit225, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ae = add nuw i64 %storemerge3.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not.i.i, label %.loopexit225, label %scalar.ph, !llvm.loop !396

.loopexit225:                                     ; preds = %bb.b, %scalar.ph, %middle.block, %vector.early.exit, %..loopexit225_crit_edge
  %storemerge.lcssa.i.i = phi i64 [ %i.e, %..loopexit225_crit_edge ], [ %i.h, %middle.block ], [ %i.ab, %vector.early.exit ], [ %i.h, %bb.b ], [ %storemerge3.i.i, %scalar.ph ] ; 2 uses
  %i.af = phi <2 x i64> [ %i.j, %..loopexit225_crit_edge ], [ %i.n, %middle.block ], [ %i.n, %vector.early.exit ], [ %i.n, %scalar.ph ], [ %i.n, %bb.b ]
  store ptr %i.f, ptr %13, align 8, !tbaa !258
  %i.ag = icmp eq i64 %storemerge.lcssa.i.i, %i.h ; 2 uses
  %.sink.i = select i1 %i.ag, i64 %i.e, i64 %storemerge.lcssa.i.i ; 2 uses
  %.sroa.2.0.copyload.sink.i = select i1 %i.ag, i64 %i.e, i64 %i.h ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i64 %.sink.i, ptr %i.ah, align 8, !tbaa !257
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store i64 %.sroa.2.0.copyload.sink.i, ptr %i.ai, align 8, !tbaa !259
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 7 uses
  store <2 x i64> %i.af, ptr %i.aj, align 8, !tbaa !158
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  %i.am = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit, label %bb.c

_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit: ; preds = %.loopexit225
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull %i.al), !inline_history !6 ; 2 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !114
  %.pre266 = load i64, ptr %i.ah, align 8, !tbaa !257, !noalias !421
  %.pre267 = load ptr, ptr %13, align 8, !tbaa !258, !noalias !421
  %.pre268 = load i64, ptr %i.ai, align 8, !tbaa !259, !noalias !421
  br label %bb.c

bb.c:                                             ; preds = %.loopexit225, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit
  %i.au = phi ptr [ %i.c, %.loopexit225 ], [ %i.at, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit ]
  %i.av = phi i64 [ %.sroa.2.0.copyload.sink.i, %.loopexit225 ], [ %.pre268, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit ] ; 7 uses
  %i.aw = phi ptr [ %i.f, %.loopexit225 ], [ %.pre267, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit ] ; 4 uses
  %i.ax = phi i64 [ %.sink.i, %.loopexit225 ], [ %.pre266, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i64 0, ptr %14, align 8, !tbaa !278
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 1032 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !279
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 1040 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  store ptr %i.bb, ptr %15, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  store i64 39, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 71 ; 2 uses
  store i8 1, ptr %i.bf, align 1, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 112 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 120
  store i64 39, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 128
  store ptr @.str, ptr %i.bj, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 136
  store i64 0, ptr %i.bk, align 8, !tbaa !47
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %15, i64 144
  store ptr @.str, ptr %.ptr.1.i.i, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %i.bl, align 8, !tbaa !47
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %15, i64 160
  store ptr @.str, ptr %.ptr.2.i.i, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i64 0, ptr %i.bm, align 8, !tbaa !47
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %15, i64 176
  store ptr @.str, ptr %.ptr.3.i.i, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i64 0, ptr %i.bn, align 8, !tbaa !47
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %15, i64 192
  store ptr @.str, ptr %.ptr.4.i.i, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 200
  store i64 0, ptr %i.bo, align 8, !tbaa !47
  %i.bp = icmp ult i64 %i.ax, %i.av
  br i1 %i.bp, label %.lr.ph.i.i95, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99

.lr.ph.i.i95:                                     ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 3848
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !269, !noalias !421
  %i.bs = load i64, ptr %i.aj, align 8, !tbaa !280, !noalias !421
  %i.bt = or i64 %i.bs, %i.br
  %i.bu = load i64, ptr %i.ak, align 8, !tbaa !281, !noalias !421
  %i.bv = or i64 %i.bt, %i.bu                     ; 2 uses
  %i.bw = sub nuw i64 %i.av, %i.ax                ; 3 uses
  %min.iters.check375 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check375, label %scalar.ph374.preheader, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph.i.i95
  %n.vec377 = and i64 %i.bw, -32                  ; 3 uses
  %i.bx = add i64 %i.ax, %n.vec377
  %broadcast.splatinsert378.a = insertelement <32 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat379.a = shufflevector <32 x i64> %broadcast.splatinsert378.a, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <32 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat381 = shufflevector <32 x i64> %broadcast.splatinsert380, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction382 = add nuw <32 x i64> %broadcast.splat381, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body.interim388, %vector.ph376
  %index384 = phi i64 [ 0, %vector.ph376 ], [ %index.next386, %vector.body.interim388 ] ; 2 uses
  %vec.ind385 = phi <32 x i64> [ %induction382, %vector.ph376 ], [ %vec.ind.next387, %vector.body.interim388 ] ; 2 uses
  %i.by = shl nuw <32 x i64> splat (i64 1), %vec.ind385
  %i.bz = and <32 x i64> %i.by, %broadcast.splat379.a
  %.fr451.a = freeze <32 x i64> %i.bz
  %i.ca = icmp eq <32 x i64> %.fr451.a, zeroinitializer ; 2 uses
  %i.cb = bitcast <32 x i1> %i.ca to i32
  %.not452.a = icmp eq i32 %i.cb, 0
  br i1 %.not452.a, label %vector.body.interim388, label %vector.early.exit391

vector.body.interim388:                           ; preds = %vector.body383
  %vec.ind.next387 = add nuw <32 x i64> %vec.ind385, splat (i64 32)
  %index.next386 = add nuw i64 %index384, 32      ; 2 uses
  %i.cc = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.cc, label %middle.block389, label %vector.body383, !llvm.loop !399

middle.block389:                                  ; preds = %vector.body.interim388
  %cmp.n390 = icmp eq i64 %i.bw, %n.vec377
  br i1 %cmp.n390, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99, label %scalar.ph374.preheader

scalar.ph374.preheader:                           ; preds = %.lr.ph.i.i95, %middle.block389
  %storemerge3.i.i96.ph = phi i64 [ %i.ax, %.lr.ph.i.i95 ], [ %i.bx, %middle.block389 ]
  br label %scalar.ph374

vector.early.exit391:                             ; preds = %vector.body383
  %i.cd = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.ca, i1 false)
  %i.ce = add i64 %index384, %i.cd
  %i.cf = add i64 %i.ax, %i.ce
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99

scalar.ph374:                                     ; preds = %scalar.ph374.preheader, %bb.d
  %storemerge3.i.i96 = phi i64 [ %i.ci, %bb.d ], [ %storemerge3.i.i96.ph, %scalar.ph374.preheader ] ; 3 uses
  %i.cg = shl nuw i64 1, %storemerge3.i.i96
  %i.ch = and i64 %i.cg, %i.bv
  %.not.i.i97 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i97, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99, label %bb.d

bb.d:                                             ; preds = %scalar.ph374
  %i.ci = add nuw i64 %storemerge3.i.i96, 1       ; 2 uses
  %exitcond.not.i.i98 = icmp eq i64 %i.ci, %i.av
  br i1 %exitcond.not.i.i98, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99, label %scalar.ph374, !llvm.loop !400

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99: ; preds = %bb.d, %scalar.ph374, %middle.block389, %vector.early.exit391, %bb.c
  %storemerge.lcssa.i.i94 = phi i64 [ %i.ax, %bb.c ], [ %i.av, %middle.block389 ], [ %i.cf, %vector.early.exit391 ], [ %storemerge3.i.i96, %scalar.ph374 ], [ %i.av, %bb.d ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 3584
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %storemerge.lcssa.i.i94
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !283 ; 2 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 360
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !80
  %.not215 = icmp eq ptr %i.co, null
  br i1 %.not215, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 160
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !304 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 448
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !102
  %.not216 = icmp eq ptr %i.cs, null
  br i1 %.not216, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cu = invoke noundef i64 @_ZN7rocksdb10TableCache23CreateRowCacheKeyPrefixERKNS_11ReadOptionsERKNS_14FileDescriptorERKNS_5SliceEPNS_10GetContextERNS_7IterKeyE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull %i.cq, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.cv = load i64, ptr %i.bd, align 8, !tbaa !40 ; 5 uses
  %i.cw = load i64, ptr %i.ah, align 8, !tbaa !257, !noalias !422 ; 7 uses
  %i.cx = load ptr, ptr %13, align 8, !tbaa !258, !noalias !422 ; 5 uses
  %i.cy = load i64, ptr %i.ai, align 8, !tbaa !259, !noalias !422 ; 7 uses
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i101, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105

.lr.ph.i.i101:                                    ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 3848
  %i.db = load i64, ptr %i.da, align 8, !tbaa !269, !noalias !422
  %i.dc = load i64, ptr %i.aj, align 8, !tbaa !280, !noalias !422
  %i.dd = or i64 %i.dc, %i.db
  %i.de = load i64, ptr %i.ak, align 8, !tbaa !281, !noalias !422
  %i.df = or i64 %i.dd, %i.de                     ; 2 uses
  %i.dg = sub nuw i64 %i.cy, %i.cw                ; 3 uses
  %min.iters.check394 = icmp ult i64 %i.dg, 32
  br i1 %min.iters.check394, label %scalar.ph393.preheader, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.i.i101
  %n.vec396 = and i64 %i.dg, -32                  ; 3 uses
  %i.dh = add i64 %i.cw, %n.vec396
  %broadcast.splatinsert397.a = insertelement <32 x i64> poison, i64 %i.df, i64 0
  %broadcast.splat398.a = shufflevector <32 x i64> %broadcast.splatinsert397.a, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert399 = insertelement <32 x i64> poison, i64 %i.cw, i64 0
  %broadcast.splat400 = shufflevector <32 x i64> %broadcast.splatinsert399, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction401 = add nuw <32 x i64> %broadcast.splat400, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body.interim407, %vector.ph395
  %index403 = phi i64 [ 0, %vector.ph395 ], [ %index.next405, %vector.body.interim407 ] ; 2 uses
  %vec.ind404 = phi <32 x i64> [ %induction401, %vector.ph395 ], [ %vec.ind.next406, %vector.body.interim407 ] ; 2 uses
  %i.di = shl nuw <32 x i64> splat (i64 1), %vec.ind404
  %i.dj = and <32 x i64> %i.di, %broadcast.splat398.a
  %.fr453.a = freeze <32 x i64> %i.dj
  %i.dk = icmp eq <32 x i64> %.fr453.a, zeroinitializer ; 2 uses
  %i.dl = bitcast <32 x i1> %i.dk to i32
  %.not454.a = icmp eq i32 %i.dl, 0
  br i1 %.not454.a, label %vector.body.interim407, label %vector.early.exit410

vector.body.interim407:                           ; preds = %vector.body402
  %vec.ind.next406 = add nuw <32 x i64> %vec.ind404, splat (i64 32)
  %index.next405 = add nuw i64 %index403, 32      ; 2 uses
  %i.dm = icmp eq i64 %index.next405, %n.vec396
  br i1 %i.dm, label %middle.block408, label %vector.body402, !llvm.loop !403

middle.block408:                                  ; preds = %vector.body.interim407
  %cmp.n409 = icmp eq i64 %i.dg, %n.vec396
  br i1 %cmp.n409, label %.thread, label %scalar.ph393.preheader

scalar.ph393.preheader:                           ; preds = %.lr.ph.i.i101, %middle.block408
  %storemerge3.i.i102.ph = phi i64 [ %i.cw, %.lr.ph.i.i101 ], [ %i.dh, %middle.block408 ]
  br label %scalar.ph393

vector.early.exit410:                             ; preds = %vector.body402
  %i.dn = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.dk, i1 false)
  %i.do = add i64 %index403, %i.dn
  %i.dp = add i64 %i.cw, %i.do
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105

scalar.ph393:                                     ; preds = %scalar.ph393.preheader, %bb.h
  %storemerge3.i.i102 = phi i64 [ %i.ds, %bb.h ], [ %storemerge3.i.i102.ph, %scalar.ph393.preheader ] ; 3 uses
  %i.dq = shl nuw i64 1, %storemerge3.i.i102
  %i.dr = and i64 %i.dq, %i.df
  %.not.i.i103 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i103, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105, label %bb.h

bb.h:                                             ; preds = %scalar.ph393
  %i.ds = add nuw i64 %storemerge3.i.i102, 1      ; 2 uses
  %exitcond.not.i.i104 = icmp eq i64 %i.ds, %i.cy
  br i1 %exitcond.not.i.i104, label %.thread, label %scalar.ph393, !llvm.loop !404

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105: ; preds = %scalar.ph393, %vector.early.exit410, %bb.g
  %storemerge.lcssa.i.i100 = phi i64 [ %i.cw, %bb.g ], [ %i.dp, %vector.early.exit410 ], [ %storemerge3.i.i102, %scalar.ph393 ] ; 2 uses
  %.not217227 = icmp eq i64 %storemerge.lcssa.i.i100, %i.cy
  br i1 %.not217227, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 3584
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 1048 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 1056
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit
  %.sroa.9.0228 = phi i64 [ %storemerge.lcssa.i.i100, %.lr.ph ], [ %.lcssa.i, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit ] ; 5 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.9.0228
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !283 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !304 ; 2 uses
  store ptr null, ptr %i.du, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %i.ec = invoke noundef zeroext i1 @_ZN7rocksdb10TableCache15GetFromRowCacheERKNS_5SliceERNS_7IterKeyEmPNS_10GetContextEPNS_6StatusEm(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(208) %15, i64 noundef %i.cv, ptr noundef %i.eb, ptr noundef nonnull %0, i64 noundef 72057594037927935)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ed = load i8, ptr %0, align 8, !tbaa !112
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.l, label %.critedge92

bb.k:                                             ; preds = %bb.r, %bb.i
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %i.du, align 8, !tbaa !153 ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i106, label %bb.bl, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #24
  br label %bb.bl

bb.l:                                             ; preds = %bb.j
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = shl nuw i64 1, %.sroa.9.0228
  %20 = load i64, ptr %i.aj, align 8, !tbaa !280
  %i.ei = or i64 %20, %i.eh
  store i64 %i.ei, ptr %i.aj, align 8, !tbaa !280
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ej = load i64, ptr %14, align 8, !tbaa !278  ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 32
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = load ptr, ptr %i.ay, align 8, !tbaa !279
  %i.em = add nuw nsw i64 %i.ej, 1
  store i64 %i.em, ptr %14, align 8, !tbaa !278
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.ej ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 0, ptr %i.ep, align 8, !tbaa !49
  store i8 0, ptr %i.eo, align 8, !tbaa !34
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.eq = load ptr, ptr %i.dv, align 8, !tbaa !305 ; 5 uses
  %i.er = load ptr, ptr %i.dw, align 8, !tbaa !306
  %.not.i.i107 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !48
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !49
  store i8 0, ptr %i.es, align 8, !tbaa !34
  %i.eu = load ptr, ptr %i.dv, align 8, !tbaa !305
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr %i.ev, ptr %i.dv, align 8, !tbaa !305
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr %i.eq)
          to label %bb.s unwind label %bb.k

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.q
  %i.ew = load i64, ptr %14, align 8, !tbaa !278, !noalias !423
  %i.ex = load ptr, ptr %i.dv, align 8, !tbaa !305, !noalias !423
  %i.ey = load ptr, ptr %i.ba, align 8, !tbaa !307, !noalias !423 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 5
  %i.fd = add i64 %i.ew, -1
  %i.fe = add i64 %i.fd, %i.fc                    ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 32
  %i.fg = load ptr, ptr %i.ay, align 8
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %i.fe
  %i.fi = getelementptr [32 x i8], ptr %i.ey, i64 %i.fe
  %i.fj = getelementptr i8, ptr %i.fi, i64 -1024
  %.0.i.i.i = select i1 %i.ff, ptr %i.fh, ptr %i.fj
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eb, i64 456
  store ptr %.0.i.i.i, ptr %i.fk, align 8, !tbaa !178
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.m
  %i.fl = load ptr, ptr %i.du, align 8, !tbaa !153 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i108, label %_ZN7rocksdb6StatusD2Ev.exit110, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit110

_ZN7rocksdb6StatusD2Ev.exit110:                   ; preds = %.critedge, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109
  %21 = load i64, ptr %i.ai, align 8, !tbaa !259  ; 3 uses
  %i.fm = add i64 %.sroa.9.0228, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %21, i64 %i.fm) ; 3 uses
  %22 = load ptr, ptr %13, align 8                ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 3848
  %24 = load i64, ptr %i.aj, align 8
  %25 = load i64, ptr %i.ak, align 8
  %invariant.op = or i64 %24, %25
  %i.fn = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not358 = icmp eq i64 %.sroa.9.0228, %i.fn
  br i1 %exitcond.not358, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, label %.lr.ph359.preheader

.lr.ph359.preheader:                              ; preds = %_ZN7rocksdb6StatusD2Ev.exit110
  %i.fo = load i64, ptr %23, align 8, !tbaa !269
  %.reass = or i64 %i.fo, %invariant.op
  br label %.lr.ph359

bb.t:                                             ; preds = %.lr.ph359
  %exitcond.not = icmp eq i64 %i.fq, %i.fn
  br i1 %exitcond.not, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, label %.lr.ph359, !llvm.loop !8

.lr.ph359:                                        ; preds = %.lr.ph359.preheader, %bb.t
  %i.fp = phi i64 [ %i.fq, %bb.t ], [ %.sroa.9.0228, %.lr.ph359.preheader ]
  %i.fq = add i64 %i.fp, 1                        ; 4 uses
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %.reass, %i.fr
  %.not.i = icmp eq i64 %i.fs, 0
  br i1 %.not.i, label %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge360, label %bb.t, !llvm.loop !8

._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge360: ; preds = %.lr.ph359
  br label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, !llvm.loop !8

_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit: ; preds = %bb.t, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge360, %_ZN7rocksdb6StatusD2Ev.exit110
  %.lcssa.i = phi i64 [ %umax.i, %_ZN7rocksdb6StatusD2Ev.exit110 ], [ %i.fq, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit_crit_edge360 ], [ %umax.i, %bb.t ] ; 2 uses
  %.not217 = icmp eq i64 %.lcssa.i, %21
  br i1 %.not217, label %.thread, label %bb.i, !llvm.loop !407

.thread:                                          ; preds = %bb.h, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit, %middle.block408, %bb.e, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105
  %i.ft = phi ptr [ %i.aw, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99 ], [ %i.aw, %bb.e ], [ %i.cx, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105 ], [ %i.cx, %middle.block408 ], [ %22, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit ], [ %i.cx, %bb.h ]
  %i.fu = phi i64 [ %i.av, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99 ], [ %i.av, %bb.e ], [ %i.cy, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105 ], [ %i.cy, %middle.block408 ], [ %21, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit ], [ %i.cy, %bb.h ]
  %i.fv = phi i1 [ false, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99 ], [ false, %bb.e ], [ true, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105 ], [ true, %middle.block408 ], [ true, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit ], [ true, %bb.h ]
  %.058 = phi i64 [ 0, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit99 ], [ 0, %bb.e ], [ %i.cv, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit105 ], [ %i.cv, %middle.block408 ], [ %i.cv, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit ], [ %i.cv, %bb.h ] ; 4 uses
  %notmask.i.i = shl nsw i64 -1, %i.fu
  %i.fw = load i64, ptr %i.ah, align 8, !tbaa !257
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 3848
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !269
  %i.fz = load i64, ptr %i.aj, align 8, !tbaa !280
  %i.ga = or i64 %i.fy, %notmask.i.i
  %i.gb = or i64 %i.ga, %i.fz
  %i.gc = xor i64 %i.gb, -1
  %i.gd = lshr i64 %i.gc, %i.fw
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.loopexit221, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.gf = icmp eq ptr %i.au, null
  br i1 %i.gf, label %bb.v, label %.thread313

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !117, !nonnull !77, !align !78
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !133
  %i.gk = icmp eq i32 %i.gj, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 191
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !146
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !147, !range !148, !noundef !77
  %i.gp = trunc nuw i8 %i.go to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %17, i8 0, i64 3, i1 false)
  invoke void @_ZN7rocksdb10TableCache9FindTableERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPPNS_24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE11TypedHandleERKNS_16MutableCFOptionsEPPSE_bPNS_13HistogramImplEbibmNS_11TemperatureEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrISE_St14default_deleteISE_EERKNS_21TableCacheOpenOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(417) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(736) %6, ptr noundef nonnull %i.b, i1 noundef zeroext %i.gk, ptr noundef %7, i1 noundef zeroext %8, i32 noundef %10, i1 noundef zeroext true, i64 noundef 0, i8 noundef zeroext %i.gm, i1 noundef zeroext %i.gp, ptr noundef null, ptr noundef null, ptr noundef nonnull align 1 dereferenceable(3) %17)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.bl

bb.x:                                             ; preds = %bb.v
  %i.gr = load i8, ptr %16, align 8, !tbaa !149   ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.gt = load <4 x i8>, ptr %i.gs, align 1, !tbaa !34 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !34  ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !153 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.gy = icmp eq i8 %i.gr, 0
  br i1 %i.gy, label %.thread313, label %bb.aa

.thread313:                                       ; preds = %bb.u, %bb.x
  %.sroa.29.0326 = phi i8 [ %i.gv, %bb.x ], [ 0, %bb.u ]
  %.sroa.33256.0325 = phi ptr [ %i.gx, %bb.x ], [ null, %bb.u ] ; 3 uses
  %i.gz = phi <4 x i8> [ %i.gt, %bb.x ], [ zeroinitializer, %bb.u ]
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !155, !range !148, !noundef !77
  %i.hc = trunc nuw i8 %i.hb to i1
  %or.cond5 = or i1 %9, %i.hc
  %.pre269 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 3 uses
  br i1 %or.cond5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread313
  invoke void @_ZN7rocksdb10TableCache27UpdateRangeTombstoneSeqnumsERKNS_11ReadOptionsEPNS_11TableReaderERNS_15MultiGetContext5RangeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %.pre269, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %.thread313, %bb.y
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !181
  %i.hf = load ptr, ptr %.pre269, align 8, !tbaa !157
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 112
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %.pre269, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull %13, ptr noundef %i.he, i1 noundef zeroext %8)
          to label %.loopexit221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !133
  %i.hk = icmp eq i32 %i.hj, 1
  %i.hl = icmp eq i8 %i.gr, 7
  %or.cond214 = and i1 %i.hl, %i.hk
  br i1 %or.cond214, label %bb.ab, label %.loopexit221

bb.ab:                                            ; preds = %bb.aa
  %i.hm = load i64, ptr %i.ah, align 8, !tbaa !257, !noalias !424 ; 7 uses
  %i.hn = load ptr, ptr %13, align 8, !tbaa !258, !noalias !424 ; 2 uses
  %i.ho = load i64, ptr %i.ai, align 8, !tbaa !259, !noalias !424 ; 4 uses
  %i.hp = icmp ult i64 %i.hm, %i.ho
  br i1 %i.hp, label %.lr.ph.i.i116, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit120

.lr.ph.i.i116:                                    ; preds = %bb.ab
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 3848
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !269, !noalias !424
  %i.hs = load i64, ptr %i.aj, align 8, !tbaa !280, !noalias !424
  %i.ht = or i64 %i.hs, %i.hr
  %i.hu = load i64, ptr %i.ak, align 8, !tbaa !281, !noalias !424
  %i.hv = or i64 %i.ht, %i.hu                     ; 2 uses
  %i.hw = sub nuw i64 %i.ho, %i.hm                ; 3 uses
  %min.iters.check413 = icmp ult i64 %i.hw, 32
  br i1 %min.iters.check413, label %scalar.ph412.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %.lr.ph.i.i116
  %n.vec415 = and i64 %i.hw, -32                  ; 3 uses
  %i.hx = add i64 %i.hm, %n.vec415
  %broadcast.splatinsert416.a = insertelement <32 x i64> poison, i64 %i.hv, i64 0
  %broadcast.splat417.a = shufflevector <32 x i64> %broadcast.splatinsert416.a, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert418 = insertelement <32 x i64> poison, i64 %i.hm, i64 0
  %broadcast.splat419 = shufflevector <32 x i64> %broadcast.splatinsert418, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction420 = add nuw <32 x i64> %broadcast.splat419, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body.interim426, %vector.ph414
  %index422 = phi i64 [ 0, %vector.ph414 ], [ %index.next424, %vector.body.interim426 ] ; 2 uses
  %vec.ind423 = phi <32 x i64> [ %induction420, %vector.ph414 ], [ %vec.ind.next425, %vector.body.interim426 ] ; 2 uses
  %i.hy = shl nuw <32 x i64> splat (i64 1), %vec.ind423
  %i.hz = and <32 x i64> %i.hy, %broadcast.splat417.a
  %.fr455.a = freeze <32 x i64> %i.hz
  %i.ia = icmp eq <32 x i64> %.fr455.a, zeroinitializer ; 2 uses
  %i.ib = bitcast <32 x i1> %i.ia to i32
  %.not456.a = icmp eq i32 %i.ib, 0
  br i1 %.not456.a, label %vector.body.interim426, label %vector.early.exit429

vector.body.interim426:                           ; preds = %vector.body421
  %vec.ind.next425 = add nuw <32 x i64> %vec.ind423, splat (i64 32)
  %index.next424 = add nuw i64 %index422, 32      ; 2 uses
  %i.ic = icmp eq i64 %index.next424, %n.vec415
  br i1 %i.ic, label %middle.block427, label %vector.body421, !llvm.loop !410

middle.block427:                                  ; preds = %vector.body.interim426
  %cmp.n428 = icmp eq i64 %i.hw, %n.vec415
  br i1 %cmp.n428, label %.loopexit221, label %scalar.ph412.preheader

scalar.ph412.preheader:                           ; preds = %.lr.ph.i.i116, %middle.block427
  %storemerge3.i.i117.ph = phi i64 [ %i.hm, %.lr.ph.i.i116 ], [ %i.hx, %middle.block427 ]
  br label %scalar.ph412

vector.early.exit429:                             ; preds = %vector.body421
  %i.id = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.ia, i1 false)
  %i.ie = add i64 %index422, %i.id
  %i.if = add i64 %i.hm, %i.ie
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit120

scalar.ph412:                                     ; preds = %scalar.ph412.preheader, %bb.ac
  %storemerge3.i.i117 = phi i64 [ %i.ii, %bb.ac ], [ %storemerge3.i.i117.ph, %scalar.ph412.preheader ] ; 3 uses
  %i.ig = shl nuw i64 1, %storemerge3.i.i117
  %i.ih = and i64 %i.ig, %i.hv
  %.not.i.i118 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i118, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit120, label %bb.ac

bb.ac:                                            ; preds = %scalar.ph412
  %i.ii = add nuw i64 %storemerge3.i.i117, 1      ; 2 uses
  %exitcond.not.i.i119 = icmp eq i64 %i.ii, %i.ho
  br i1 %exitcond.not.i.i119, label %.loopexit221, label %scalar.ph412, !llvm.loop !411

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit120: ; preds = %scalar.ph412, %vector.early.exit429, %bb.ab
  %storemerge.lcssa.i.i115 = phi i64 [ %i.hm, %bb.ab ], [ %i.if, %vector.early.exit429 ], [ %storemerge3.i.i117, %scalar.ph412 ] ; 2 uses
  %.not218236 = icmp eq i64 %storemerge.lcssa.i.i115, %i.ho
  br i1 %.not218236, label %.loopexit221, label %.lr.ph238

.lr.ph238:                                        ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit120
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 3584
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph238, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit132
  %.sroa.29.1 = phi i8 [ %i.gv, %.lr.ph238 ], [ %.sroa.29.2, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit132 ]
  %.sroa.8181.0237 = phi i64 [ %storemerge.lcssa.i.i115, %.lr.ph238 ], [ %.lcssa.i130, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit132 ] ; 4 uses
  %i.ik = phi i8 [ 7, %.lr.ph238 ], [ %i.iw, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit132 ]
  %i.il = phi ptr [ %i.gx, %.lr.ph238 ], [ %i.iv, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit132 ] ; 4 uses
  %i.im = phi <4 x i8> [ %i.gt, %.lr.ph238 ], [ %i.ix, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit132 ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.8181.0237
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !283 ; 2 uses
end_hunk_0
