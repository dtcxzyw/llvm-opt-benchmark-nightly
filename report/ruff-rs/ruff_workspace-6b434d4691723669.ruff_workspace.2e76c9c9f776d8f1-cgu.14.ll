Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.14?download=true
inline.NumInlined: 1131
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE12insert_routeCs3ZkgueCtkyH_14ruff_workspace:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 72 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 88 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !3498, !noundef !7 ; 3 uses
  %i.fh = load i64, ptr %i.fe, align 8, !range !14, !alias.scope !3498, !noundef !7
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.az, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.ay, %bb.az
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !3498, !nonnull !7, !noundef !7
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fg
  store i8 %i.fd, ptr %i.fl, align 1
  %i.fm = add i64 %i.fg, 1
  store i64 %i.fm, ptr %i.ff, align 8, !alias.scope !3498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.bg, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4141.0..sroa_idx144, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5146.0..sroa_idx149, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx153.sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx153.sroa_idx, align 8
  store i32 1, ptr %i.bh, align 8
  store i8 0, ptr %i.bi, align 4
  store i64 0, ptr %i.bj, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4116.0..sroa_idx119, align 8
  store i64 0, ptr %.sroa.5121.0..sroa_idx124, align 8
  store i8 5, ptr %i.bk, align 1
  store i64 0, ptr %i.bl, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2170.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3171.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4103.0..sroa_idx106, align 8
  store i64 0, ptr %.sroa.5108.0..sroa_idx111, align 8
  %i.fn = call fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE9add_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(152) %.sroa.0.1, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 112
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !7 ; 2 uses
  %i.fq = icmp ult i64 %i.fn, %i.fp
  br i1 %i.fq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !7, !noundef !7
  %i.ft = getelementptr inbounds nuw [152 x i8], ptr %i.fs, i64 %i.fn
  br label %bb.ax

bb.bb:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fn, i64 noundef %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #30
  unreachable

bb.bc:                                            ; preds = %bb.d
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %common.resume

bb.bd:                                            ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0297, ptr %i.fv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit200, %bb.s, %bb.au, %._crit_edge, %bb.bd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 60680079189834052) i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE16add_suffix_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread, label %.preheader.i.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  br label %bb.b

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3507, !noalias !3508 ; 2 uses
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.01.021.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.e, %.preheader.i.i ] ; 2 uses
  %.sroa.05.020.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.021.i.i, 1            ; 2 uses
  %i.h = add nuw nsw i64 %i.g, %.sroa.05.020.i.i  ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.e
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [152 x i8], ptr %i.c, i64 %i.h
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %.val16.i.i = load i64, ptr %i.k, align 8, !noalias !3509, !noundef !7
  %.not.i18.i.i = icmp ult i64 %.val16.i.i, %.pre.i.i
  %i.l = select i1 %.not.i18.i.i, i64 %.sroa.05.020.i.i, i64 %i.h, !unpredictable !7 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.021.i.i, %i.g  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [152 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 40
  %.val14.i.i = load i64, ptr %i.p, align 8, !noalias !3509, !noundef !7
  %.not.i.i.i = icmp uge i64 %.val14.i.i, %.pre.i.i
  %i.q = zext i1 %.not.i.i.i to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.e
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  %i.t = icmp ult i64 %i.e, 60680079189834052
  tail call void @llvm.assume(i1 %i.t)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread
  %.sroa.4.0.i.i3 = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread ], [ %i.r, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !14, !alias.scope !3510, !noundef !7
  %i.w = icmp eq i64 %i.e, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8grow_oneCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %._crit_edge unwind label %bb.e, !noalias !3511

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !3510
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.b ]
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.x, i64 %.sroa.4.0.i.i3 ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.i3, %i.e
  br i1 %i.z, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #28
          to label %.body unwind label %bb.g, !noalias !3510

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ac = sub nuw nsw i64 %i.e, %.sroa.4.0.i.i3
  %i.ad = mul nuw nsw i64 %i.ac, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.y, i64 %i.ad, i1 false), !noalias !3512
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !3510
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !3513
  %i.af = add nuw nsw i64 %i.e, 1
  store i64 %i.af, ptr %i.d, align 8, !alias.scope !3510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.4.0.i.i3

.body:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE21update_child_priorityCs3ZkgueCtkyH_14ruff_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #30
  unreachable

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !7
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.g
  %.sroa.0.017 = phi i64 [ %i.k, %bb.g ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1             ; 3 uses
  %i.l = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load i32, ptr %i.m, align 8, !noundef !7
  %i.o = icmp ult i32 %i.n, %i.j
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.g ] ; 7 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load i64, ptr %i.r, align 8, !noundef !7 ; 2 uses
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %1, 1                    ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0.0.lcssa
  br i1 %i.v, label %bb.e, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit, !prof !10

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.0.i = phi i64 [ %1, %bb.c ], [ %i.u, %bb.d ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #30, !noalias !3517
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.d
  %i.w = sub nuw nsw i64 %i.u, %.sroa.0.0.lcssa
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.lcssa
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12rotate_rightCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %.split, %._crit_edge, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  %.sroa.0.0.lcssa25 = phi i64 [ %.sroa.0.0.lcssa, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ 0, %.split ]
  ret i64 %.sroa.0.0.lcssa25

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.sroa.0.017 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.y, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE21wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  br i1 %i.e, label %.preheader.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.sroa.01.05.i = phi i64 [ %i.i, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.05.i
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !3522, !noundef !7
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %bb.a
  %i.j = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.b, %.preheader.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.n = load i8, ptr %i.m, align 1, !range !29, !noundef !7 ; 2 uses
  %i.o = icmp ne i8 %i.n, 3
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i8 %i.n, 2
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread ], [ false, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit ], [ false, %.lr.ph.i ], [ false, %bb.c ], [ %i.v, %.lr.ph ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.t, 152
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not.not9 = icmp eq i64 %i.t, 0
  br i1 %.not.not9, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.c
  %.sroa.0.0210 = phi ptr [ %i.w, %.lr.ph ], [ %i.r, %bb.c ] ; 2 uses
  %i.v = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE21wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.0210), !noalias !3523, !inline_history !2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0210, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.w, %i.u
  %or.cond = select i1 %i.v, i1 true, i1 %.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28prefix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !29, !noundef !7 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i8 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 152
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %.not.not18 = icmp eq i64 %i.n, 0               ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph20

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader12, %.preheader, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %.preheader12 ], [ false, %.preheader ], [ %i.q, %.lr.ph ], [ %i.s, %.lr.ph20 ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %.lr.ph, %.preheader12
  %i.p = phi ptr [ %i.r, %.lr.ph ], [ %i.l, %.preheader12 ] ; 2 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE21wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %i.p), !noalias !3529, !inline_history !2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.r, %i.o
  %or.cond27 = select i1 %i.q, i1 true, i1 %.not.not.not.i.not.not
  br i1 %or.cond27, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph20:                                         ; preds = %.lr.ph20, %.preheader
  %.sroa.0.019 = phi ptr [ %i.t, %.lr.ph20 ], [ %i.l, %.preheader ] ; 2 uses
  %i.s = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28prefix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.019), !noalias !3530, !inline_history !3528 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.t, %i.o
  %or.cond28 = select i1 %i.s, i1 true, i1 %.not.not
  br i1 %or.cond28, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph20
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !29, !noundef !7 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %or.cond = icmp eq i8 %i.b, 1
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 152
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.not3 = icmp eq i64 %i.g, 0
  br i1 %.not.not3, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %.sroa.0.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNCNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB7_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segment0Cs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.024) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.h
  %or.cond7 = select i1 %i.i, i1 true, i1 %.not.not
  br i1 %or.cond7, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE6insertCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(152) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [152 x i8], align 8               ; 19 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 12 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [152 x i8], align 8              ; 20 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [152 x i8], align 8              ; 21 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE12insert_routeCs3ZkgueCtkyH_14ruff_workspace:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 80 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !3695, !noundef !7 ; 3 uses
  %i.fq = load i64, ptr %i.fn, align 8, !range !14, !alias.scope !3695, !noundef !7
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.az, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fn)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.ay, %bb.az
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !3695, !nonnull !7, !noundef !7
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp
  store i8 %i.fm, ptr %i.fu, align 1
  %i.fv = add i64 %i.fp, 1
  store i64 %i.fv, ptr %i.fo, align 8, !alias.scope !3695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.bk, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4124.0..sroa_idx127, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx132, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4143.0..sroa.6.0..sroa_idx136.sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.5146.0..sroa.6.0..sroa_idx136.sroa_idx, align 8
  store i32 1, ptr %i.bl, align 8
  store i8 0, ptr %i.bm, align 4
  store i64 0, ptr %i.bn, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4105.0..sroa_idx108, align 8
  store i64 0, ptr %.sroa.5110.0..sroa_idx113, align 8
  store i8 5, ptr %i.bo, align 1
  store i64 0, ptr %i.bp, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2153.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3154.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.492.0..sroa_idx95, align 8
  store i64 0, ptr %.sroa.597.0..sroa_idx100, align 8
  %i.fw = call fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE9add_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(144) %.sroa.0.1, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 104
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !7 ; 2 uses
  %i.fz = icmp ult i64 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 96
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !7, !noundef !7
  %i.gc = getelementptr inbounds nuw [144 x i8], ptr %i.gb, i64 %i.fw
  br label %bb.ax

bb.bb:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #30
  unreachable

bb.bc:                                            ; preds = %bb.d
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %common.resume

bb.bd:                                            ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0280, ptr %i.ge, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit183, %bb.s, %bb.au, %._crit_edge, %bb.bd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 64051194700380388) i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE16add_suffix_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread, label %.preheader.i.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  br label %bb.b

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3704, !noalias !3705 ; 2 uses
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.01.021.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.e, %.preheader.i.i ] ; 2 uses
  %.sroa.05.020.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.021.i.i, 1            ; 2 uses
  %i.h = add nuw nsw i64 %i.g, %.sroa.05.020.i.i  ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.e
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %i.h
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %.val16.i.i = load i64, ptr %i.k, align 8, !noalias !3706, !noundef !7
  %.not.i18.i.i = icmp ult i64 %.val16.i.i, %.pre.i.i
  %i.l = select i1 %.not.i18.i.i, i64 %.sroa.05.020.i.i, i64 %i.h, !unpredictable !7 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.021.i.i, %i.g  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %.val14.i.i = load i64, ptr %i.p, align 8, !noalias !3706, !noundef !7
  %.not.i.i.i = icmp uge i64 %.val14.i.i, %.pre.i.i
  %i.q = zext i1 %.not.i.i.i to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.e
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  %i.t = icmp ult i64 %i.e, 64051194700380388
  tail call void @llvm.assume(i1 %i.t)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread
  %.sroa.4.0.i.i3 = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit.thread ], [ %i.r, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSINtNtCskYQKiYedT9l_7matchit4tree4NodejE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0ECs3ZkgueCtkyH_14ruff_workspace.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !14, !alias.scope !3707, !noundef !7
  %i.w = icmp eq i64 %i.e, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCskYQKiYedT9l_7matchit4tree4NodejEE8grow_oneCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %._crit_edge unwind label %bb.e, !noalias !3708

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !3707
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.b ]
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %i.x, i64 %.sroa.4.0.i.i3 ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.i3, %i.e
  br i1 %i.z, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCskYQKiYedT9l_7matchit4tree4NodejEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #28
          to label %.body unwind label %bb.g, !noalias !3707

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ac = sub nuw nsw i64 %i.e, %.sroa.4.0.i.i3
  %i.ad = mul nuw nsw i64 %i.ac, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.y, i64 %i.ad, i1 false), !noalias !3709
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !3707
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.y, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !3710
  %i.af = add nuw nsw i64 %i.e, 1
  store i64 %i.af, ptr %i.d, align 8, !alias.scope !3707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.4.0.i.i3

.body:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE21update_child_priorityCs3ZkgueCtkyH_14ruff_workspace(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #30
  unreachable

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !7
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.g
  %.sroa.0.017 = phi i64 [ %i.k, %bb.g ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1             ; 3 uses
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.n = load i32, ptr %i.m, align 8, !noundef !7
  %i.o = icmp ult i32 %i.n, %i.j
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.g ] ; 7 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i64, ptr %i.r, align 8, !noundef !7 ; 2 uses
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %1, 1                    ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0.0.lcssa
  br i1 %i.v, label %bb.e, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit, !prof !10

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.0.i = phi i64 [ %1, %bb.c ], [ %i.u, %bb.d ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #30, !noalias !3714
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.d
  %i.w = sub nuw nsw i64 %i.u, %.sroa.0.0.lcssa
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.lcssa
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12rotate_rightCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %.split, %._crit_edge, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  %.sroa.0.0.lcssa25 = phi i64 [ %.sroa.0.0.lcssa, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs3ZkgueCtkyH_14ruff_workspace.exit ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ 0, %.split ]
  ret i64 %.sroa.0.0.lcssa25

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.0.017 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 144, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull align 8 dereferenceable(144) %i.y, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.y, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE21wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  br i1 %i.e, label %.preheader.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.sroa.01.05.i = phi i64 [ %i.i, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.05.i
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !3719, !noundef !7
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %bb.a
  %i.j = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.b, %.preheader.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.n = load i8, ptr %i.m, align 1, !range !29, !noundef !7 ; 2 uses
  %i.o = icmp ne i8 %i.n, 3
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i8 %i.n, 2
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread ], [ false, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit ], [ false, %.lr.ph.i ], [ false, %bb.c ], [ %i.v, %.lr.ph ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.t, 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not.not9 = icmp eq i64 %i.t, 0
  br i1 %.not.not9, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.c
  %.sroa.0.0210 = phi ptr [ %i.w, %.lr.ph ], [ %i.r, %bb.c ] ; 2 uses
  %i.v = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE21wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.0210), !noalias !3720, !inline_history !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0210, i64 144 ; 2 uses
  %.not.not = icmp eq ptr %i.w, %i.u
  %or.cond = select i1 %i.v, i1 true, i1 %.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28prefix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.b = load i8, ptr %i.a, align 1, !range !29, !noundef !7 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i8 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 144
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %.not.not18 = icmp eq i64 %i.n, 0               ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph20

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader12, %.preheader, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %.preheader12 ], [ false, %.preheader ], [ %i.q, %.lr.ph ], [ %i.s, %.lr.ph20 ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %.lr.ph, %.preheader12
  %i.p = phi ptr [ %i.r, %.lr.ph ], [ %i.l, %.preheader12 ] ; 2 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE21wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %i.p), !noalias !3726, !inline_history !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.r, %i.o
  %or.cond27 = select i1 %i.q, i1 true, i1 %.not.not.not.i.not.not
  br i1 %or.cond27, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph20:                                         ; preds = %.lr.ph20, %.preheader
  %.sroa.0.019 = phi ptr [ %i.t, %.lr.ph20 ], [ %i.l, %.preheader ] ; 2 uses
  %i.s = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28prefix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.019), !noalias !3727, !inline_history !3725 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 144 ; 2 uses
  %.not.not = icmp eq ptr %i.t, %i.o
  %or.cond28 = select i1 %i.s, i1 true, i1 %.not.not
  br i1 %or.cond28, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph20
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.b = load i8, ptr %i.a, align 1, !range !29, !noundef !7 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %or.cond = icmp eq i8 %i.b, 1
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.not3 = icmp eq i64 %i.g, 0
  br i1 %.not.not3, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %.sroa.0.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNCNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB7_4NodejE28suffix_wild_child_in_segment0Cs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.024) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 144 ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.h
  %or.cond7 = select i1 %i.i, i1 true, i1 %.not.not
  br i1 %or.cond7, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCskYQKiYedT9l_7matchit4tree4NodejEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE6insertCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [144 x i8], align 8               ; 19 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 12 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [144 x i8], align 8              ; 20 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [144 x i8], align 8              ; 21 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
end_hunk_1
