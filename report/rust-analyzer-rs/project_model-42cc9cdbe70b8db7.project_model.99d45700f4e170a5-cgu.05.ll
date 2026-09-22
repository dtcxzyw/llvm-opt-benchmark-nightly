Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.05?download=true
inline.NumInlined: 460
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2T_14CargoWorkspace3new0E0EB2V_:bb.a
bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.05, i64 56, i1 false)
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.614.0..sroa_idx.i, i64 568, i1 false)
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -640 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(640) %.sroa.0.0.i8, i64 640, i1 false)
  %i.m = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.m, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -640 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(640) %.sroa.0.0.i, i64 640, i1 false)
  %i.n = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.n, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.5.0.i9, i64 -1224
  %.val9.i = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr i8, ptr %.sroa.5.0.i9, i64 -1216
  %.val10.i = load i64, ptr %i.p, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i15.i) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val12.i, %.val10.i
  %spec.select.i.i16.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = icmp slt i64 %spec.select.i.i16.i, 0
  br i1 %i.u, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false), !noalias !308
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -584
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !308
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -576
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !308
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.6.i, i64 568, i1 false), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2F_14CargoWorkspace3new0E0EB2H_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2F_14CargoWorkspace3new0E0EB2H_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 640 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !alias.scope !316, !noalias !317, !noundef !7 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !317, !noalias !316, !noundef !7 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.05, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i64 %.val8.i, ptr %.sroa.0.0.i8, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !317, !noalias !316, !noundef !7 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !318
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBW_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i89 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i94 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !343, !noalias !344, !noundef !7 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !343, !noalias !344, !noundef !7
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !343, !noalias !344, !noundef !7 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !343, !noalias !344, !noundef !7 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.x = add nuw i64 %.sroa.01.1.i.i54, 1         ; 2 uses
  %exitcond75.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph55

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i89, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 4 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !323
  %i.aa = shl nuw nsw i64 %..i35, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %middle.block ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345), !noalias !344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346), !noalias !344
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !347, !noalias !348
  %wide.load114 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !347, !noalias !348
  %i.al = getelementptr i8, ptr %i.aj, i64 -12    ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -28    ; 2 uses
  %wide.load115 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !349, !noalias !350
  %wide.load116 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !349, !noalias !350
  %reverse = shufflevector <4 x i32> %wide.load115, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse117 = shufflevector <4 x i32> %wide.load116, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ai, align 4, !alias.scope !347, !noalias !348
  store <4 x i32> %reverse117, ptr %i.ak, align 4, !alias.scope !347, !noalias !348
  %reverse118 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse119 = shufflevector <4 x i32> %wide.load114, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse118, ptr %i.al, align 4, !alias.scope !349, !noalias !350
  store <4 x i32> %reverse119, ptr %i.am, align 4, !alias.scope !349, !noalias !350
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !alias.scope !347, !noalias !348, !noundef !7
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !349, !noalias !350
  store i32 %i.as, ptr %i.ap, align 4, !alias.scope !347, !noalias !348
  store i32 %i.ar, ptr %i.aq, align 4, !alias.scope !349, !noalias !350
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i, !llvm.loop !330

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderE7reverseCsdcPuHeDsw6v_13project_model.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !7 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.159 to i1
  %i.br = or i64 %i.bj, %.sroa.023.159
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 4 %i.bo, i64 noundef range(i64 0, 2305843009213693952) %i.bk, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !331
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 4 %i.ca, i64 noundef range(i64 0, 2305843009213693952) %i.bl, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !331
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i, 2               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !353
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cm = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %.critedge.i ]
  %i.cn = phi ptr [ %i.cv, %.preheader.i ], [ %i.cj, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.cq, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -4 ; 2 uses
  %.val.i.i = load i32, ptr %i.cp, align 4, !alias.scope !352, !noalias !354, !noundef !7 ; 2 uses
  %.val12.i.i = load i32, ptr %i.co, align 4, !alias.scope !351, !noalias !355, !noundef !7 ; 2 uses
  %i.cr = icmp ult i32 %.val.i.i, %.val12.i.i     ; 2 uses
  %i.cs = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val12.i.i)
  store i32 %i.cs, ptr %i.cq, align 4, !alias.scope !351, !noalias !355
  %i.ct = xor i1 %i.cr, true
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cr to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cw ; 3 uses
  %i.cy = icmp eq ptr %i.cv, %i.bo
  %i.cz = icmp eq ptr %i.cx, %2
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.da = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.04.i.i, align 4, !alias.scope !351, !noalias !356, !noundef !7 ; 2 uses
  %.val.i18.i = load i32, ptr %i.db, align 4, !alias.scope !352, !noalias !357, !noundef !7 ; 2 uses
  %i.dc = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i18.i ; 2 uses
  %i.dd = xor i1 %i.dc, true
  %i.de = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i.i, i32 %.val.i18.i)
  store i32 %i.de, ptr %i.da, align 4, !alias.scope !351, !noalias !356
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cl
  %i.dl = icmp ne ptr %i.di, %i.m
  %or.cond.i19.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cv, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dg, %.lr.ph.i.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.1.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.do, i1 false), !alias.scope !353, !noalias !358
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i
  %i.dp = shl nuw nsw i64 %i.bm, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i = phi i64 [ %i.dq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dr = icmp ugt i64 %i.bd, 1
  br i1 %i.dr, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ds = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.018.0, 1
  %i.du = add nuw i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dv, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.ea, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !331
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread112, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o), !noalias !379
  %i.s = icmp sgt i8 %i.r, -1                     ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread112, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.sroa.01.0.i.i63 = phi i64 [ %i.y, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63
  %i.u = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = tail call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !379
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i.i63, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i66 = phi i64 [ %i.ae, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66
  %i.aa = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = tail call noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !noalias !379
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ae = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph67

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.af = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.af)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread112: ; preds = %.preheader
  br i1 %.not5.i114, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i109, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  %or.cond = or i1 %i.s, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ah = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !362
  %i.ai = shl nuw nsw i64 %..i37, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread ], [ %.sroa.0.0.i.i110117121, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit.i.i ]
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread112
  %i.am = phi i64 [ %i.ag, %bb.n ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread112 ]
  %.sroa.0.0.i.i110117121 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread112 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i110117121
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.as, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.017.i.i, -1
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %i.ao
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdcPuHeDsw6v_13project_model(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef 3)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit.i.i unwind label %bb.q, !noalias !379

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #18, !noalias !379
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCs9R0CJ7nmiec_5paths10AbsPathBufECsdcPuHeDsw6v_13project_model.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.as = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i32 = phi i64 [ %i.al, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCs9R0CJ7nmiec_5paths10AbsPathBuf7reverseCsdcPuHeDsw6v_13project_model.exit ], [ %i.aj, %bb.p ], [ %i.ah, %bb.o ] ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1
  %i.au = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.av = sub nsw i64 %factor, %i.at
  %i.aw = add nuw nsw i64 %i.au, %factor
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bc, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 4 uses
  %i.bc = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !7 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 8 uses
  %i.bk = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 4 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bm ; 6 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.171 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.171
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bt = shl nuw nsw i64 %i.bl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bp, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 384307168202282326) %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !363
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj
  %i.ca = or i64 %i.bk, 1
  %i.cb = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 384307168202282326) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !363
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cf = icmp eq i64 %i.bj, 0
  %i.cg = icmp eq i64 %i.bk, 0
  %or.cond.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 range(i64 0, -9223372036854775808) %i.bj) ; 2 uses
  %i.ch = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ch, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bj, %i.bk  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ci, ptr %i.bn
  %i.cj = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cj, i1 false), !alias.scope !380
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cr, %.noexc.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.ct, %.noexc.i ], [ %i.ck, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.co, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cl = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 3 uses
  %i.cn = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.cp = icmp sgt i8 %i.cn, -1                   ; 2 uses
  %..i17.i = select i1 %i.cp, ptr %i.cm, ptr %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !380, !noalias !381
  %i.cq = zext i1 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cq ; 3 uses
  %.lobit.i.i = lshr i8 %i.cn, 7
  %i.cs = zext nneg i8 %.lobit.i.i to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cs ; 3 uses
  %i.cu = icmp eq ptr %i.cr, %i.bn
  %i.cv = icmp eq ptr %i.ct, %2
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9R0CJ7nmiec_5paths10AbsPathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.noexc21.i ], [ %i.bn, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.cz, %.noexc21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.db, %.noexc21.i ], [ %i.ci, %.critedge.i ] ; 3 uses
  %i.cw = invoke noundef range(i8 -1, 2) i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.02.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i34)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.cx = icmp sgt i8 %i.cw, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.cx, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !380, !noalias !382
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.cy ; 3 uses
  %.lobit.i19.i = lshr i8 %i.cw, 7
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model:bb.a

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9R0CJ7nmiec_5paths10AbsPathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cr, %.noexc.i ], [ %i.dc, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.ct, %.noexc.i ], [ %i.ck, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.cz, %.noexc21.i ] ; 2 uses
  %i.df = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dh = sub nuw i64 %i.df, %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dh, i1 false), !alias.scope !380, !noalias !383
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ck, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.di = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dk, i1 false), !alias.scope !380, !noalias !384
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs9R0CJ7nmiec_5paths10AbsPathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i
  %i.dl = shl nuw nsw i64 %i.bl, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ %i.bt, %bb.u ] ; 2 uses
  %i.dn = icmp ugt i64 %i.bc, 1
  br i1 %i.dn, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dr, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCs9R0CJ7nmiec_5paths10AbsPathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !363
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBW_NtNtBa_3cmp10PartialOrd2ltEBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ae ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ex, %bb.ae ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ev, %bb.ae ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit
  %.sroa.021.0 = phi i8 [ %i.bu, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473), !noalias !468
  %i.r = load i64, ptr %i.q, align 8, !range !8, !alias.scope !474, !noalias !475, !noundef !7 ; 2 uses
  %i.s = load i64, ptr %i.o, align 8, !range !8, !alias.scope !476, !noalias !477, !noundef !7 ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %.split, label %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit42

.split:                                           ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = tail call noundef i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !468
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %.preheader, label %.preheader56

.preheader:                                       ; preds = %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit42, %.split
  %.not88 = icmp eq i64 %i.n, 2
  br i1 %.not88, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, label %.lr.ph75

_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit42: ; preds = %bb.k
  %i.y = icmp samesign ult i64 %i.r, %i.s
  br i1 %i.y, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit42, %.split
  %.not87 = icmp eq i64 %i.n, 2
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader56, %bb.l
  %.sroa.01.0.i.i71 = phi i64 [ %i.al, %bb.l ], [ 2, %.preheader56 ] ; 5 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i71 ; 2 uses
  %i.aa = add nsw i64 %.sroa.01.0.i.i71, -1       ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485), !noalias !468
  %i.ad = load i64, ptr %i.z, align 8, !range !8, !alias.scope !486, !noalias !487, !noundef !7 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !range !8, !alias.scope !488, !noalias !489, !noundef !7 ; 2 uses
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %.split45, label %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit40

.split45:                                         ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = tail call noundef i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah), !noalias !468
  %i.aj = icmp slt i8 %i.ai, 0
  br i1 %i.aj, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, label %bb.l

_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit40: ; preds = %.lr.ph
  %i.ak = icmp samesign ult i64 %i.ad, %i.ae
  br i1 %i.ak, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, label %bb.l

bb.l:                                             ; preds = %.split45, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit40
  %i.al = add nuw i64 %.sroa.01.0.i.i71, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i74 = phi i64 [ %i.ay, %bb.m ], [ 2, %.preheader ] ; 5 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74 ; 2 uses
  %i.an = add nsw i64 %.sroa.01.1.i.i74, -1       ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496), !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497), !noalias !468
  %i.aq = load i64, ptr %i.am, align 8, !range !8, !alias.scope !498, !noalias !499, !noundef !7 ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !range !8, !alias.scope !500, !noalias !501, !noundef !7 ; 2 uses
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %.split46, label %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit

.split46:                                         ; preds = %.lr.ph75
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = tail call noundef i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au), !noalias !468
  %i.aw = icmp slt i8 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i

_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit: ; preds = %.lr.ph75
  %i.ax = icmp samesign ult i64 %i.aq, %i.ar
  br i1 %i.ax, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i

bb.m:                                             ; preds = %.split46, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit
  %i.ay = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ay, %i.n
  br i1 %exitcond102.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i, label %.lr.ph75

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i: ; preds = %bb.l, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit40, %.split45, %bb.m, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit, %.split46, %.preheader56, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ false, %.preheader56 ], [ true, %bb.m ], [ true, %.split46 ], [ true, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit ], [ false, %.split45 ], [ false, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit40 ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader56 ], [ %i.n, %bb.m ], [ %.sroa.01.1.i.i74, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit ], [ %.sroa.01.1.i.i74, %.split46 ], [ %i.n, %bb.l ], [ %.sroa.01.0.i.i71, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit40 ], [ %.sroa.01.0.i.i71, %.split45 ] ; 7 uses
  %i.az = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.az)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ba = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !424
  %i.bb = shl nuw nsw i64 %..i37, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsdcPuHeDsw6v_13project_model15ProjectManifestEB12_.exit.i.i, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i5154 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsdcPuHeDsw6v_13project_model15ProjectManifestEB12_.exit.i.i ]
  %i.bd = shl nuw nsw i64 %.sroa.0.0.i.i5154, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.q:                                             ; preds = %bb.n
  %i.bf = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsdcPuHeDsw6v_13project_model15ProjectManifestEB12_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bl, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsdcPuHeDsw6v_13project_model15ProjectManifestEB12_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bh = xor i64 %.sroa.0.017.i.i, -1
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.bj = getelementptr [32 x i8], ptr %i.bg, i64 %i.bh
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdcPuHeDsw6v_13project_model(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsdcPuHeDsw6v_13project_model15ProjectManifestEB12_.exit.i.i unwind label %bb.r, !noalias !468

bb.r:                                             ; preds = %.lr.ph.i.i36
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #18, !noalias !468
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsdcPuHeDsw6v_13project_model15ProjectManifestEB12_.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.bl = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.bf
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.be, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsdcPuHeDsw6v_13project_model15ProjectManifest7reverseBw_.exit ], [ %i.bc, %bb.p ], [ %i.ba, %bb.o ] ; 2 uses
  %i.bm = lshr i64 %.sroa.023.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bo = sub nsw i64 %factor, %i.bm
  %i.bp = add nuw nsw i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.g

bb.s:                                             ; preds = %.lr.ph81, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.bv, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 2 uses
  %.sroa.023.179 = phi i64 [ %.sroa.023.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 4 uses
  %i.bv = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bx, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit, %bb.s, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.179, %bb.s ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.180, %bb.s ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bz, align 1
  br i1 %i.k, label %bb.ae, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bv
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !7 ; 3 uses
  %i.cc = lshr i64 %i.cb, 1                       ; 8 uses
  %i.cd = lshr i64 %.sroa.023.179, 1              ; 6 uses
  %i.ce = add nuw i64 %i.cc, %i.cd                ; 4 uses
  %i.cf = sub i64 %.sroa.09.0, %i.ce
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cf ; 6 uses
  %i.ch = icmp samesign ugt i64 %i.ce, %3
  %i.ci = trunc i64 %.sroa.023.179 to i1
  %i.cj = or i64 %i.cb, %.sroa.023.179
  %i.ck = trunc i64 %i.cj to i1
  %or.cond3.i = or i1 %i.ch, %i.ck
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cl = trunc i64 %i.cb to i1
  br i1 %i.cl, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.cm = shl nuw nsw i64 %i.ce, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

bb.w:                                             ; preds = %bb.x, %bb.u
  br i1 %i.ci, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.cn = or i64 %i.cc, 1
  %i.co = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 288230376151711744) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !425
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cc
  %i.ct = or i64 %i.cd, 1
  %i.cu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %i.cs, i64 noundef range(i64 0, 288230376151711744) %i.cd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !425
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.cy = icmp eq i64 %i.cc, 0
  %i.cz = icmp eq i64 %i.cd, 0
  %or.cond.i = or i1 %i.cz, %i.cy
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 range(i64 0, -9223372036854775808) %i.cc) ; 2 uses
  %i.da = icmp samesign ult i64 %3, %..i.i
  br i1 %i.da, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cc ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cc, %i.cd  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.db, ptr %i.cg
  %i.dc = shl nuw nsw i64 %..i.i, 5               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dc, i1 false), !alias.scope !504
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.dr, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i ], [ %i.db, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.dt, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i ], [ %i.dd, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dg, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.de = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -32 ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -32 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.dh = load i64, ptr %i.df, align 8, !range !8, !alias.scope !513, !noalias !514, !noundef !7 ; 2 uses
  %i.di = load i64, ptr %i.de, align 8, !range !8, !alias.scope !515, !noalias !516, !noundef !7 ; 2 uses
  %i.dj = icmp eq i64 %i.dh, %i.di
  %i.dk = icmp samesign ult i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.ab, label %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i

bb.ab:                                            ; preds = %.preheader.i
  %i.dl = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24
  %i.dm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24
  %i.dn = invoke noundef i8 @_RNvXs1C_Cs9p4rgIae0RV_6caminoNtB6_11Utf8PathBufNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.ab
  %i.do = icmp slt i8 %i.dn, 0
  br label %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i

_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i: ; preds = %.noexc.i, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %i.do, %.noexc.i ], [ %i.dk, %.preheader.i ] ; 3 uses
  %..i17.i = select i1 %.sroa.0.0.i.i.i.i.i.i, ptr %i.de, ptr %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %..i17.i, i64 32, i1 false), !alias.scope !504, !noalias !517
  %i.dp = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %i.ds = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.ds ; 3 uses
  %i.du = icmp eq ptr %i.dr, %i.cg
  %i.dv = icmp eq ptr %i.dt, %2
  %or.cond.i.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdcPuHeDsw6v_13project_model15ProjectManifestE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i
  %.sroa.13.1.i = phi ptr [ %i.ej, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i ], [ %i.cg, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.eg, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i ], [ %2, %.critedge.i ] ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBW_NtNtBa_3cmp10PartialOrd2ltEBY_:bb.a

.noexc22.i:                                       ; preds = %bb.ac
  %i.ed = icmp slt i8 %i.ec, 0
  br label %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i

_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i: ; preds = %.noexc22.i, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i20.i = phi i1 [ %i.ed, %.noexc22.i ], [ %i.dz, %.lr.ph.i.i ] ; 3 uses
  %i.ee = xor i1 %.sroa.0.0.i.i.i.i.i20.i, true
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i.i.i.i.i20.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !504, !noalias !530
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i34, i64 %i.ef ; 3 uses
  %i.eh = zext i1 %.sroa.0.0.i.i.i.i.i20.i to i64
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 32 ; 2 uses
  %i.ek = icmp ne ptr %i.eg, %i.dd
  %i.el = icmp ne ptr %i.ei, %i.m
  %or.cond.i21.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdcPuHeDsw6v_13project_model15ProjectManifestE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdcPuHeDsw6v_13project_model15ProjectManifestE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit.i: ; preds = %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.dr, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i ], [ %i.ej, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i ]
  %.sroa.7.2.i = phi ptr [ %i.dt, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i ], [ %i.dd, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i.i ], [ %i.eg, %_RNvYNvYNtCsdcPuHeDsw6v_13project_model15ProjectManifestNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBV_3ops8function5FnMutTRB5_B21_EE8call_mutB7_.exit.i19.i ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.7.2.i to i64
  %i.en = ptrtoint ptr %.sroa.0.3.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.eo, i1 false), !alias.scope !504, !noalias !531
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_.exit

.loopexit.i:                                      ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp.i:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dd, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ep = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.er = sub nuw i64 %i.ep, %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.er, i1 false), !alias.scope !504, !noalias !532
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_.exit: ; preds = %bb.z, %bb.aa, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdcPuHeDsw6v_13project_model15ProjectManifestE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit.i
  %i.es = shl nuw nsw i64 %i.ce, 1
  %i.et = or disjoint i64 %i.es, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit: ; preds = %bb.v, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_.exit
  %.sroa.0.0.i = phi i64 [ %i.et, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_.exit ], [ %i.cm, %bb.v ] ; 2 uses
  %i.eu = icmp ugt i64 %i.bv, 1
  br i1 %i.eu, label %bb.s, label %._crit_edge

bb.ae:                                            ; preds = %._crit_edge
  %i.ev = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ew = lshr i64 %.sroa.018.0, 1
  %i.ex = add nuw i64 %i.ew, %.sroa.09.0
  br label %bb.f

bb.af:                                            ; preds = %._crit_edge
  %i.ey = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ey, 0
  br i1 %.not30, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ez = or i64 %1, 1
  %i.fa = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %i.fd = xor i32 %i.fc, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsdcPuHeDsw6v_13project_model15ProjectManifestNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !425
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2s_14CargoWorkspace3news1_0E0EB2u_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i101 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i106 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread104, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 104
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !550, !noalias !551, !nonnull !7, !noundef !7 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 112
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !550, !noalias !551, !noundef !7 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 32
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !550, !noalias !551, !nonnull !7, !noundef !7
  %i.t = getelementptr i8, ptr %i.o, i64 40
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !550, !noalias !551, !noundef !7 ; 2 uses
  %spec.store.select.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i40), !noalias !552 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i41 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i41, -1      ; 2 uses
  %.not73 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader51, label %.preheader

.preheader51:                                     ; preds = %bb.k
  br i1 %.not73, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not73, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread104, label %.lr.ph60

.lr.ph:                                           ; preds = %.preheader51, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader51 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader51 ]
  %.sroa.01.0.i.i56 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader51 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.01.0.i.i56 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !550, !noalias !551, !nonnull !7, !noundef !7 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 40
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !550, !noalias !551, !noundef !7 ; 3 uses
  %spec.store.select.i.i38 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i38), !noalias !552 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i39 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i39, 0
  br i1 %i.ag, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i56, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i, label %.lr.ph

.lr.ph60:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i59 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.01.1.i.i59 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !550, !noalias !551, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 40
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !550, !noalias !551, !noundef !7 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i), !noalias !552 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i

bb.m:                                             ; preds = %.lr.ph60
  %i.aq = add nuw i64 %.sroa.01.1.i.i59, 1        ; 2 uses
  %exitcond80.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond80.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i, label %.lr.ph60

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i: ; preds = %bb.m, %.lr.ph60, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i56, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i59, %.lr.ph60 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread104: ; preds = %.preheader
  br i1 %.not5.i106, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i101, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.as, 0
  %or.cond = or i1 %i.y, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.n, i64 %.sroa.01.0)
  %i.at = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3news1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !537
  %i.au = shl nuw nsw i64 %..i36, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7NodeDepECsdcPuHeDsw6v_13project_model.exit.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4649 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread ], [ %.sroa.0.0.i.i102109113, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7NodeDepECsdcPuHeDsw6v_13project_model.exit.i.i ]
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i.i4649, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread104
  %i.ay = phi i64 [ %i.as, %bb.n ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread104 ]
  %.sroa.0.0.i.i102109113 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3news1_0E0EB2B_.exit.i.thread104 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i102109113
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7NodeDepECsdcPuHeDsw6v_13project_model.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.be, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7NodeDepECsdcPuHeDsw6v_13project_model.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.017.i.i, -1
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.bc = getelementptr [72 x i8], ptr %i.az, i64 %i.ba
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdcPuHeDsw6v_13project_model(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 9)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7NodeDepECsdcPuHeDsw6v_13project_model.exit.i.i unwind label %bb.q, !noalias !551

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #18, !noalias !551
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7NodeDepECsdcPuHeDsw6v_13project_model.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.be = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3news1_0E0EB2C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7NodeDep7reverseCsdcPuHeDsw6v_13project_model.exit ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph66, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit
  %.sroa.02.165 = phi i64 [ %.sroa.02.0, %.lr.ph66 ], [ %i.bo, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit ] ; 2 uses
  %.sroa.023.164 = phi i64 [ %.sroa.023.0, %.lr.ph66 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.165, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.164, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.165, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !7 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.164, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.164 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.164
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3news1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 128102389400760776) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !538
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3news1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 128102389400760776) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !538
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.cr = icmp eq i64 %i.bv, 0
  %i.cs = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3news1_0E0EB2v_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ct = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ct, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3news1_0E0EB2v_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cu, ptr %i.bz
  %i.cv = mul nuw nsw i64 %..i.i, 72              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cv, i1 false), !alias.scope !555
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cx = phi ptr [ %i.dn, %.preheader.i ], [ %i.cw, %.critedge.i ] ; 3 uses
  %i.cy = phi ptr [ %i.dm, %.preheader.i ], [ %i.cu, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.db, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -72 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -72 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -72 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cx, i64 -40
  %.val.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !554, !noalias !556, !nonnull !7, !noundef !7
  %i.dd = getelementptr i8, ptr %i.cx, i64 -32
  %.val12.i.i = load i64, ptr %i.dd, align 8, !alias.scope !554, !noalias !556, !noundef !7 ; 2 uses
  %i.de = getelementptr i8, ptr %i.cy, i64 -40
  %.val13.i.i = load ptr, ptr %i.de, align 8, !alias.scope !553, !noalias !557, !nonnull !7, !noundef !7
  %i.df = getelementptr i8, ptr %i.cy, i64 -32
  %.val14.i.i = load i64, ptr %i.df, align 8, !alias.scope !553, !noalias !557, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.dg = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i), !noalias !558 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp eq i32 %i.dg, 0
  %i.dj = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i = select i1 %i.di, i64 %i.dj, i64 %i.dh ; 2 uses
  %i.dk = icmp sgt i64 %spec.select.i.i.i.i, -1   ; 2 uses
  %..i17.i = select i1 %i.dk, ptr %i.da, ptr %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef nonnull align 8 dereferenceable(72) %..i17.i, i64 72, i1 false), !alias.scope !555, !noalias !559
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.cz, i64 %i.dl ; 3 uses
  %spec.select.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.dn = getelementptr inbounds nuw [72 x i8], ptr %i.da, i64 %spec.select.i.i.lobit.i.i ; 3 uses
  %i.do = icmp eq ptr %i.dm, %i.bz
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7NodeDepE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3news1_0E0EB2W_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dq = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %i.bz, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %i.cu, %.critedge.i ] ; 4 uses
  %i.dr = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.02.i.i, i64 32
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !553, !noalias !560, !nonnull !7, !noundef !7
  %i.dt = getelementptr i8, ptr %.sroa.0.02.i.i, i64 40
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dt, align 8, !alias.scope !553, !noalias !560, !noundef !7 ; 2 uses
  %i.du = getelementptr i8, ptr %i.dr, i64 32
  %.val.i19.i = load ptr, ptr %i.du, align 8, !alias.scope !554, !noalias !561, !nonnull !7, !noundef !7
  %i.dv = getelementptr i8, ptr %i.dr, i64 40
  %.val7.i.i = load i64, ptr %i.dv, align 8, !alias.scope !554, !noalias !561, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dw = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i20.i), !noalias !562 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %i.dz = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i21.i = select i1 %i.dy, i64 %i.dz, i64 %i.dx ; 2 uses
  %i.ea = icmp sgt i64 %spec.select.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ea, ptr %i.dr, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.05.0.i.i, i64 72, i1 false), !alias.scope !555, !noalias !563
  %i.eb = zext i1 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [72 x i8], ptr %i.dr, i64 %i.eb ; 3 uses
  %spec.select.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i21.i, 63
  %i.ed = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.lobit.i22.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 72 ; 2 uses
  %i.ef = icmp ne ptr %i.ec, %i.cw
  %i.eg = icmp ne ptr %i.ed, %i.m
  %or.cond.i23.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7NodeDepE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3news1_0E0EB2W_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7NodeDepE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3news1_0E0EB2W_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.ee, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.cw, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ec, %.lr.ph.i.i ] ; 2 uses
  %i.eh = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ei = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ej = sub nuw i64 %i.eh, %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ej, i1 false), !alias.scope !555, !noalias !564
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3news1_0E0EB2v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3news1_0E0EB2v_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7NodeDepE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3news1_0E0EB2W_.exit.i
  %i.ek = shl nuw nsw i64 %i.bx, 1
  %i.el = or disjoint i64 %i.ek, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3news1_0E0EB2F_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3news1_0E0EB2v_.exit
  %.sroa.0.0.i = phi i64 [ %i.el, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3news1_0E0EB2v_.exit ], [ %i.cf, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.bo, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add nuw i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eq, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7NodeDepNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3news1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.ev, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !538
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2s_14CargoWorkspace3new0E0EB2u_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 14411518807585588) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 14411518807585588) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i101 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i106 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [640 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [640 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread104, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 696
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !582, !noalias !583, !nonnull !7, !noundef !7 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 704
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !582, !noalias !583, !noundef !7 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 56
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !582, !noalias !583, !nonnull !7, !noundef !7
  %i.t = getelementptr i8, ptr %i.o, i64 64
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !582, !noalias !583, !noundef !7 ; 2 uses
  %spec.store.select.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i40), !noalias !584 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i41 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i41, -1      ; 2 uses
  %.not73 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader51, label %.preheader

.preheader51:                                     ; preds = %bb.k
  br i1 %.not73, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not73, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread104, label %.lr.ph60

.lr.ph:                                           ; preds = %.preheader51, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader51 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader51 ]
  %.sroa.01.0.i.i56 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader51 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [640 x i8], ptr %i.o, i64 %.sroa.01.0.i.i56 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 56
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !582, !noalias !583, !nonnull !7, !noundef !7 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 64
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !582, !noalias !583, !noundef !7 ; 3 uses
  %spec.store.select.i.i38 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i38), !noalias !584 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i39 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i39, 0
  br i1 %i.ag, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i56, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i, label %.lr.ph

.lr.ph60:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i59 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [640 x i8], ptr %i.o, i64 %.sroa.01.1.i.i59 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !582, !noalias !583, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 64
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !582, !noalias !583, !noundef !7 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i), !noalias !584 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i

bb.m:                                             ; preds = %.lr.ph60
  %i.aq = add nuw i64 %.sroa.01.1.i.i59, 1        ; 2 uses
  %exitcond80.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond80.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i, label %.lr.ph60

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i: ; preds = %bb.m, %.lr.ph60, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i56, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i59, %.lr.ph60 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread104: ; preds = %.preheader
  br i1 %.not5.i106, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i101, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.as, 0
  %or.cond = or i1 %i.y, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 14411518807585588) %i.n, i64 %.sroa.01.0)
  %i.at = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 14411518807585588) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3new0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 14411518807585588) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !569
  %i.au = shl nuw nsw i64 %..i36, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7PackageECsdcPuHeDsw6v_13project_model.exit.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4649 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread ], [ %.sroa.0.0.i.i102109113, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7PackageECsdcPuHeDsw6v_13project_model.exit.i.i ]
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i.i4649, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread104
  %i.ay = phi i64 [ %i.as, %bb.n ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread104 ]
  %.sroa.0.0.i.i102109113 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2z_14CargoWorkspace3new0E0EB2B_.exit.i.thread104 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [640 x i8], ptr %i.o, i64 %.sroa.0.0.i.i102109113
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7PackageECsdcPuHeDsw6v_13project_model.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.be, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7PackageECsdcPuHeDsw6v_13project_model.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.017.i.i, -1
  %i.bb = getelementptr inbounds nuw [640 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.bc = getelementptr [640 x i8], ptr %i.az, i64 %i.ba
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdcPuHeDsw6v_13project_model(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 80)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7PackageECsdcPuHeDsw6v_13project_model.exit.i.i unwind label %bb.q, !noalias !583

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #18, !noalias !583
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtCsixqsALXRULh_14cargo_metadata7PackageECsdcPuHeDsw6v_13project_model.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.be = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2A_14CargoWorkspace3new0E0EB2C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsixqsALXRULh_14cargo_metadata7Package7reverseCsdcPuHeDsw6v_13project_model.exit ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph66, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit
  %.sroa.02.165 = phi i64 [ %.sroa.02.0, %.lr.ph66 ], [ %i.bo, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit ] ; 2 uses
  %.sroa.023.164 = phi i64 [ %.sroa.023.0, %.lr.ph66 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.165, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.164, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.165, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !7 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.164, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [640 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.164 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.164
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 10, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3new0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 14411518807585588) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 14411518807585588) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !570
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [640 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 10, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3new0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 14411518807585588) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 14411518807585588) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !570
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.cr = icmp eq i64 %i.bv, 0
  %i.cs = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3new0E0EB2v_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ct = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ct, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3new0E0EB2v_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [640 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cu, ptr %i.bz
  %i.cv = mul nuw nsw i64 %..i.i, 640             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cv, i1 false), !alias.scope !587
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cx = phi ptr [ %i.dn, %.preheader.i ], [ %i.cw, %.critedge.i ] ; 3 uses
  %i.cy = phi ptr [ %i.dm, %.preheader.i ], [ %i.cu, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.db, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -640 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -640 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -640 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cx, i64 -584
  %.val.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !586, !noalias !588, !nonnull !7, !noundef !7
  %i.dd = getelementptr i8, ptr %i.cx, i64 -576
  %.val12.i.i = load i64, ptr %i.dd, align 8, !alias.scope !586, !noalias !588, !noundef !7 ; 2 uses
  %i.de = getelementptr i8, ptr %i.cy, i64 -584
  %.val13.i.i = load ptr, ptr %i.de, align 8, !alias.scope !585, !noalias !589, !nonnull !7, !noundef !7
  %i.df = getelementptr i8, ptr %i.cy, i64 -576
  %.val14.i.i = load i64, ptr %i.df, align 8, !alias.scope !585, !noalias !589, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.dg = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i), !noalias !590 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp eq i32 %i.dg, 0
  %i.dj = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i = select i1 %i.di, i64 %i.dj, i64 %i.dh ; 2 uses
  %i.dk = icmp sgt i64 %spec.select.i.i.i.i, -1   ; 2 uses
  %..i17.i = select i1 %i.dk, ptr %i.da, ptr %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.db, ptr noundef nonnull align 8 dereferenceable(640) %..i17.i, i64 640, i1 false), !alias.scope !587, !noalias !591
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [640 x i8], ptr %i.cz, i64 %i.dl ; 3 uses
  %spec.select.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.dn = getelementptr inbounds nuw [640 x i8], ptr %i.da, i64 %spec.select.i.i.lobit.i.i ; 3 uses
  %i.do = icmp eq ptr %i.dm, %i.bz
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7PackageE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3new0E0EB2W_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dq = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %i.bz, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %i.cu, %.critedge.i ] ; 4 uses
  %i.dr = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.02.i.i, i64 56
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !585, !noalias !592, !nonnull !7, !noundef !7
  %i.dt = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dt, align 8, !alias.scope !585, !noalias !592, !noundef !7 ; 2 uses
  %i.du = getelementptr i8, ptr %i.dr, i64 56
  %.val.i19.i = load ptr, ptr %i.du, align 8, !alias.scope !586, !noalias !593, !nonnull !7, !noundef !7
  %i.dv = getelementptr i8, ptr %i.dr, i64 64
  %.val7.i.i = load i64, ptr %i.dv, align 8, !alias.scope !586, !noalias !593, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dw = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i20.i), !noalias !594 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %i.dz = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i21.i = select i1 %i.dy, i64 %i.dz, i64 %i.dx ; 2 uses
  %i.ea = icmp sgt i64 %spec.select.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ea, ptr %i.dr, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.dq, ptr noundef nonnull align 8 dereferenceable(640) %.sroa.05.0.i.i, i64 640, i1 false), !alias.scope !587, !noalias !595
  %i.eb = zext i1 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [640 x i8], ptr %i.dr, i64 %i.eb ; 3 uses
  %spec.select.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i21.i, 63
  %i.ed = getelementptr inbounds nuw [640 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.lobit.i22.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 640 ; 2 uses
  %i.ef = icmp ne ptr %i.ec, %i.cw
  %i.eg = icmp ne ptr %i.ed, %i.m
  %or.cond.i23.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7PackageE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3new0E0EB2W_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7PackageE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3new0E0EB2W_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.ee, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.cw, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ec, %.lr.ph.i.i ] ; 2 uses
  %i.eh = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ei = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ej = sub nuw i64 %i.eh, %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ej, i1 false), !alias.scope !587, !noalias !596
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3new0E0EB2v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3new0E0EB2v_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsixqsALXRULh_14cargo_metadata7PackageE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2U_14CargoWorkspace3new0E0EB2W_.exit.i
  %i.ek = shl nuw nsw i64 %i.bx, 1
  %i.el = or disjoint i64 %i.ek, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2D_14CargoWorkspace3new0E0EB2F_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3new0E0EB2v_.exit
  %.sroa.0.0.i = phi i64 [ %i.el, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2t_14CargoWorkspace3new0E0EB2v_.exit ], [ %i.cf, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.bo, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add nuw i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eq, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 10, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtCsixqsALXRULh_14cargo_metadata7PackageNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB2C_14CargoWorkspace3new0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 14411518807585588) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 14411518807585588) %3, i32 noundef %i.ev, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !inline_history !570
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i89 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i94 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !630, !noalias !631, !noundef !7 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !632, !noalias !633, !noundef !7
  %i.r = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !630, !noalias !631, !noundef !7 ; 2 uses
  %i.t = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !630, !noalias !631, !noundef !7 ; 2 uses
  %i.w = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.x = add nuw i64 %.sroa.01.1.i.i54, 1         ; 2 uses
  %exitcond75.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i, label %.lr.ph55

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i89, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !604
  %i.aa = shl nuw nsw i64 %..i35, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %middle.block ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636), !noalias !635
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit.i.thread92 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !637, !noalias !638
  %wide.load114 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !637, !noalias !638
  %i.al = getelementptr i8, ptr %i.aj, i64 -8     ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -24    ; 2 uses
  %wide.load115 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !639, !noalias !640
  %wide.load116 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !639, !noalias !640
  %reverse = shufflevector <2 x i64> %wide.load115, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse117 = shufflevector <2 x i64> %wide.load116, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !637, !noalias !638
  store <2 x i64> %reverse117, ptr %i.ak, align 8, !alias.scope !637, !noalias !638
  %reverse118 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse119 = shufflevector <2 x i64> %wide.load114, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse118, ptr %i.al, align 8, !alias.scope !639, !noalias !640
  store <2 x i64> %reverse119, ptr %i.am, align 8, !alias.scope !639, !noalias !640
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !637, !noalias !638, !noundef !7
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !639, !noalias !640
  store i64 %i.as, ptr %i.ap, align 8, !alias.scope !637, !noalias !638
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !639, !noalias !640
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSj12split_at_mutCsdcPuHeDsw6v_13project_model.exit11.i.i, !llvm.loop !611

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCshzWfHUSfYae_4core5sliceSj7reverseCsdcPuHeDsw6v_13project_model.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !7 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.159 to i1
  %i.br = or i64 %i.bj, %.sroa.023.159
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !612
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !inline_history !612
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsdcPuHeDsw6v_13project_model.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !643
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
end_hunk_2
