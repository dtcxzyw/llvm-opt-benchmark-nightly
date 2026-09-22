Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyTbllENCNvMs4_NtB11_6schemaNtB2R_6Schema22unenforced_primary_keys_0E0EB13_:bb.a
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i134 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i139 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.au, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.au ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ih, %bb.au ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.if, %bb.au ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.dx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7246)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread137, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.ab, label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !7246, !noalias !7247, !nonnull !24, !align !51, !noundef !24 ; 6 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !7246, !noalias !7247 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 112
  %i.s = load i32, ptr %i.r, align 8, !range !92, !noalias !7248, !noundef !24
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.l, label %.thread.i.i55

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 116
  %i.v = load i32, ptr %i.u, align 4, !noalias !7248 ; 2 uses
  %.not.i.i67 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i67, label %.thread.i.i55, label %bb.m

.thread.i.i55:                                    ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val10.i, i64 176
  %i.x = load i32, ptr %i.w, align 8, !noalias !7248, !noundef !24 ; 2 uses
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i56

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 176
  %i.z = load i32, ptr %i.y, align 8, !noalias !7248, !noundef !24
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i56

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i56: ; preds = %bb.m, %.thread.i.i55
  %.sink5.i.i57 = phi i8 [ 0, %bb.m ], [ 1, %.thread.i.i55 ] ; 2 uses
  %.sink4.i.i58 = phi i32 [ %i.v, %bb.m ], [ %i.x, %.thread.i.i55 ] ; 2 uses
  %.sink.i.i59 = phi i32 [ %i.z, %bb.m ], [ %i.x, %.thread.i.i55 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ], !noalias !7249
  %i.aa = getelementptr inbounds nuw i8, ptr %.val11.i, i64 112
  %i.ab = load i32, ptr %i.aa, align 8, !range !92, !noalias !7250, !noundef !24
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %bb.n, label %.thread.i3.i60

bb.n:                                             ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i56
  %i.ad = getelementptr inbounds nuw i8, ptr %.val11.i, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !7250 ; 2 uses
  %.not.i7.i66 = icmp eq i32 %i.ae, 0
  br i1 %.not.i7.i66, label %.thread.i3.i60, label %bb.o

.thread.i3.i60:                                   ; preds = %bb.n, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i56
  %i.af = getelementptr inbounds nuw i8, ptr %.val11.i, i64 176
  %i.ag = load i32, ptr %i.af, align 8, !noalias !7250, !noundef !24 ; 2 uses
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit68

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %.val11.i, i64 176
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !7250, !noundef !24
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit68

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit68: ; preds = %.thread.i3.i60, %bb.o
  %.sink5.i4.i61 = phi i8 [ 0, %bb.o ], [ 1, %.thread.i3.i60 ] ; 2 uses
  %.sink4.i5.i62 = phi i32 [ %i.ae, %bb.o ], [ %i.ag, %.thread.i3.i60 ] ; 2 uses
  %.sink.i6.i63 = phi i32 [ %i.ai, %bb.o ], [ %i.ag, %.thread.i3.i60 ]
  %i.aj = icmp eq i8 %.sink5.i.i57, %.sink5.i4.i61
  %i.ak = icmp samesign ult i8 %.sink5.i.i57, %.sink5.i4.i61
  %i.al = icmp eq i32 %.sink4.i.i58, %.sink4.i5.i62
  %i.am = icmp slt i32 %.sink4.i.i58, %.sink4.i5.i62
  %i.an = icmp slt i32 %.sink.i.i59, %.sink.i6.i63
  %spec.select.i64 = select i1 %i.al, i1 %i.an, i1 %i.am
  %.sroa.0.1.in.i.i65 = select i1 %i.aj, i1 %spec.select.i64, i1 %i.ak ; 2 uses
  %.not98 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %.sroa.0.1.in.i.i65, label %.preheader, label %.preheader78

.preheader78:                                     ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit68
  br i1 %.not98, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit68
  br i1 %.not98, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread137, label %.lr.ph86

.lr.ph:                                           ; preds = %.preheader78, %bb.t
  %.val9.i = phi ptr [ %.val8.i, %bb.t ], [ %.val10.i, %.preheader78 ] ; 4 uses
  %.sroa.01.0.i.i83 = phi i64 [ %i.bo, %bb.t ], [ 2, %.preheader78 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i83
  %i.ap = add nsw i64 %.sroa.01.0.i.i83, -1
  %i.aq = icmp ult i64 %i.ap, %i.n
  tail call void @llvm.assume(i1 %i.aq)
  %.val8.i = load ptr, ptr %i.ao, align 8, !alias.scope !7246, !noalias !7247, !nonnull !24, !align !51, !noundef !24 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val8.i, i64 112
  %i.as = load i32, ptr %i.ar, align 8, !range !92, !noalias !7251, !noundef !24
  %i.at = trunc nuw i32 %i.as to i1
  br i1 %i.at, label %bb.p, label %.thread.i.i41

bb.p:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.val8.i, i64 116
  %i.av = load i32, ptr %i.au, align 4, !noalias !7251 ; 2 uses
  %.not.i.i53 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i53, label %.thread.i.i41, label %bb.q

.thread.i.i41:                                    ; preds = %bb.p, %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.val8.i, i64 176
  %i.ax = load i32, ptr %i.aw, align 8, !noalias !7251, !noundef !24 ; 2 uses
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i42

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.val8.i, i64 176
  %i.az = load i32, ptr %i.ay, align 8, !noalias !7251, !noundef !24
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i42

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i42: ; preds = %bb.q, %.thread.i.i41
  %.sink5.i.i43 = phi i8 [ 0, %bb.q ], [ 1, %.thread.i.i41 ] ; 2 uses
  %.sink4.i.i44 = phi i32 [ %i.av, %bb.q ], [ %i.ax, %.thread.i.i41 ] ; 2 uses
  %.sink.i.i45 = phi i32 [ %i.az, %bb.q ], [ %i.ax, %.thread.i.i41 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.val9.i, i64 112
  %i.bb = load i32, ptr %i.ba, align 8, !range !92, !noalias !7252, !noundef !24
  %i.bc = trunc nuw i32 %i.bb to i1
  br i1 %i.bc, label %bb.r, label %.thread.i3.i46

bb.r:                                             ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i42
  %i.bd = getelementptr inbounds nuw i8, ptr %.val9.i, i64 116
  %i.be = load i32, ptr %i.bd, align 4, !noalias !7252 ; 2 uses
  %.not.i7.i52 = icmp eq i32 %i.be, 0
  br i1 %.not.i7.i52, label %.thread.i3.i46, label %bb.s

.thread.i3.i46:                                   ; preds = %bb.r, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i42
  %i.bf = getelementptr inbounds nuw i8, ptr %.val9.i, i64 176
  %i.bg = load i32, ptr %i.bf, align 8, !noalias !7252, !noundef !24 ; 2 uses
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit54

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.val9.i, i64 176
  %i.bi = load i32, ptr %i.bh, align 8, !noalias !7252, !noundef !24
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit54

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit54: ; preds = %.thread.i3.i46, %bb.s
  %.sink5.i4.i47 = phi i8 [ 0, %bb.s ], [ 1, %.thread.i3.i46 ] ; 2 uses
  %.sink4.i5.i48 = phi i32 [ %i.be, %bb.s ], [ %i.bg, %.thread.i3.i46 ] ; 2 uses
  %.sink.i6.i49 = phi i32 [ %i.bi, %bb.s ], [ %i.bg, %.thread.i3.i46 ]
  %i.bj = icmp eq i8 %.sink5.i.i43, %.sink5.i4.i47
  %i.bk = icmp samesign ult i8 %.sink5.i.i43, %.sink5.i4.i47
  %i.bl = icmp eq i32 %.sink4.i.i44, %.sink4.i5.i48
  %i.bm = icmp slt i32 %.sink4.i.i44, %.sink4.i5.i48
  %i.bn = icmp slt i32 %.sink.i.i45, %.sink.i6.i49
  %spec.select.i50 = select i1 %i.bl, i1 %i.bn, i1 %i.bm
  %.sroa.0.1.in.i.i51 = select i1 %i.bj, i1 %spec.select.i50, i1 %i.bk
  br i1 %.sroa.0.1.in.i.i51, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i, label %bb.t

bb.t:                                             ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit54
  %i.bo = add nuw i64 %.sroa.01.0.i.i83, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i, label %.lr.ph

.lr.ph86:                                         ; preds = %.preheader, %bb.y
  %.val7.i = phi ptr [ %.val.i, %bb.y ], [ %.val10.i, %.preheader ] ; 4 uses
  %.sroa.01.1.i.i85 = phi i64 [ %i.cp, %bb.y ], [ 2, %.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i85
  %i.bq = add nsw i64 %.sroa.01.1.i.i85, -1
  %i.br = icmp ult i64 %i.bq, %i.n
  tail call void @llvm.assume(i1 %i.br)
  %.val.i = load ptr, ptr %i.bp, align 8, !alias.scope !7246, !noalias !7247, !nonnull !24, !align !51, !noundef !24 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 112
  %i.bt = load i32, ptr %i.bs, align 8, !range !92, !noalias !7253, !noundef !24
  %i.bu = trunc nuw i32 %i.bt to i1
  br i1 %i.bu, label %bb.u, label %.thread.i.i

bb.u:                                             ; preds = %.lr.ph86
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 116
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !7253 ; 2 uses
  %.not.i.i40 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i40, label %.thread.i.i, label %bb.v

.thread.i.i:                                      ; preds = %bb.u, %.lr.ph86
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 176
  %i.by = load i32, ptr %i.bx, align 8, !noalias !7253, !noundef !24 ; 2 uses
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i, i64 176
  %i.ca = load i32, ptr %i.bz, align 8, !noalias !7253, !noundef !24
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i: ; preds = %bb.v, %.thread.i.i
  %.sink5.i.i = phi i8 [ 0, %bb.v ], [ 1, %.thread.i.i ] ; 2 uses
  %.sink4.i.i = phi i32 [ %i.bw, %bb.v ], [ %i.by, %.thread.i.i ] ; 2 uses
  %.sink.i.i = phi i32 [ %i.ca, %bb.v ], [ %i.by, %.thread.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.val7.i, i64 112
  %i.cc = load i32, ptr %i.cb, align 8, !range !92, !noalias !7254, !noundef !24
  %i.cd = trunc nuw i32 %i.cc to i1
  br i1 %i.cd, label %bb.w, label %.thread.i3.i

bb.w:                                             ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.val7.i, i64 116
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !7254 ; 2 uses
  %.not.i7.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i7.i, label %.thread.i3.i, label %bb.x

.thread.i3.i:                                     ; preds = %bb.w, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val7.i, i64 176
  %i.ch = load i32, ptr %i.cg, align 8, !noalias !7254, !noundef !24 ; 2 uses
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7.i, i64 176
  %i.cj = load i32, ptr %i.ci, align 8, !noalias !7254, !noundef !24
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit: ; preds = %.thread.i3.i, %bb.x
  %.sink5.i4.i = phi i8 [ 0, %bb.x ], [ 1, %.thread.i3.i ] ; 2 uses
  %.sink4.i5.i = phi i32 [ %i.cf, %bb.x ], [ %i.ch, %.thread.i3.i ] ; 2 uses
  %.sink.i6.i = phi i32 [ %i.cj, %bb.x ], [ %i.ch, %.thread.i3.i ]
  %i.ck = icmp eq i8 %.sink5.i.i, %.sink5.i4.i
  %i.cl = icmp samesign ult i8 %.sink5.i.i, %.sink5.i4.i
  %i.cm = icmp eq i32 %.sink4.i.i, %.sink4.i5.i
  %i.cn = icmp slt i32 %.sink4.i.i, %.sink4.i5.i
  %i.co = icmp slt i32 %.sink.i.i, %.sink.i6.i
  %spec.select.i39 = select i1 %i.cm, i1 %i.co, i1 %i.cn
  %.sroa.0.1.in.i.i = select i1 %i.ck, i1 %spec.select.i39, i1 %i.cl
  br i1 %.sroa.0.1.in.i.i, label %bb.y, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i

bb.y:                                             ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit
  %i.cp = add nuw i64 %.sroa.01.1.i.i85, 1        ; 2 uses
  %exitcond106.not = icmp eq i64 %i.cp, %i.n
  br i1 %exitcond106.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i, label %.lr.ph86

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i: ; preds = %bb.t, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit54, %bb.y, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i85, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit ], [ %i.n, %bb.y ], [ %.sroa.01.0.i.i83, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit54 ], [ %i.n, %bb.t ] ; 6 uses
  %i.cq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.cq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.z

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread137: ; preds = %.preheader
  br i1 %.not5.i139, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread: ; preds = %.preheader78
  br i1 %.not5.i134, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit

bb.z:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i
  br i1 %.sroa.0.1.in.i.i65, label %bb.ac, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit

bb.aa:                                            ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.cr = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit

bb.ab:                                            ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7218
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ct = or disjoint i64 %i.cs, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread, %bb.j, %bb.ac, %bb.z
  %.sroa.0.0.i.i7376 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.z ], [ %.sroa.0.0.i.i, %bb.ac ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i135142146, %middle.block ], [ %.sroa.0.0.i.i135142146, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i ]
  %i.cu = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.cv = or disjoint i64 %i.cu, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit

bb.ac:                                            ; preds = %bb.z
  %i.cw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7255), !noalias !7247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7256), !noalias !7247
  %.not.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread137, %bb.ac
  %i.cx = phi i64 [ %i.cw, %bb.ac ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread137 ] ; 4 uses
  %.sroa.0.0.i.i135142146 = phi i64 [ %.sroa.0.0.i.i, %bb.ac ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyTbllENCNvMs4_NtB17_6schemaNtB2Y_6Schema22unenforced_primary_keys_0E0EB19_.exit.i.thread137 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i135142146 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cx, 4
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i
  %n.vec = and i64 %i.cx, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = xor i64 %index, -1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.db = getelementptr [8 x i8], ptr %i.cy, i64 %i.cz ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x ptr>, ptr %i.da, align 8, !alias.scope !7257, !noalias !7258
  %wide.load159 = load <2 x ptr>, ptr %i.dc, align 8, !alias.scope !7257, !noalias !7258
  %i.dd = getelementptr i8, ptr %i.db, i64 -8
  %i.de = getelementptr i8, ptr %i.db, i64 -24
  %wide.load160 = load <2 x i64>, ptr %i.dd, align 8, !alias.scope !7259, !noalias !7260
  %wide.load161 = load <2 x i64>, ptr %i.de, align 8, !alias.scope !7259, !noalias !7260
  %reverse = shufflevector <2 x i64> %wide.load160, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse162 = shufflevector <2 x i64> %wide.load161, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %reverse, ptr %i.da, align 8, !alias.scope !7257, !noalias !7258
  store <2 x i64> %reverse162, ptr %i.df, align 8, !alias.scope !7257, !noalias !7258
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %i.dh = getelementptr i8, ptr %i.db, i64 -24
  %reverse163 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse164 = shufflevector <2 x ptr> %wide.load159, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse163, ptr %i.dg, align 8, !alias.scope !7259, !noalias !7260
  store <2 x ptr> %reverse164, ptr %i.dh, align 8, !alias.scope !7259, !noalias !7260
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !7224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.do, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader ] ; 3 uses
  %i.dj = xor i64 %.sroa.0.016.i.i, -1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.cy, i64 %i.dj ; 2 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !alias.scope !7257, !noalias !7258, !nonnull !24, !align !51, !noundef !24
  %i.dn = load i64, ptr %i.dl, align 8, !alias.scope !7259, !noalias !7260
  store i64 %i.dn, ptr %i.dk, align 8, !alias.scope !7257, !noalias !7258
  store ptr %i.dm, ptr %i.dl, align 8, !alias.scope !7259, !noalias !7260
  %i.do = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.do, %i.cx
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i, !llvm.loop !7225

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyTbllENCNvMs4_NtB18_6schemaNtB2Z_6Schema22unenforced_primary_keys_0E0EB1a_.exit: ; preds = %bb.aa, %bb.ab, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.cv, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit ], [ %i.ct, %bb.ab ], [ %i.cr, %bb.aa ] ; 2 uses
  %i.dp = lshr i64 %.sroa.023.0, 1
  %i.dq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dr = sub nsw i64 %factor, %i.dp
  %i.ds = add nuw nsw i64 %i.dq, %factor
  %i.dt = mul i64 %i.dr, %.sroa.0.0
  %i.du = mul i64 %i.ds, %.sroa.0.0
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dv, i1 false)
  %i.dx = trunc nuw nsw i64 %i.dw to i8
  br label %bb.g

bb.ad:                                            ; preds = %.lr.ph91, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit
  %.sroa.02.190 = phi i64 [ %.sroa.02.0, %.lr.ph91 ], [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.189 = phi i64 [ %.sroa.023.0, %.lr.ph91 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit ] ; 4 uses
  %i.dy = add i64 %.sroa.02.190, -1               ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !noundef !24
  %.not29 = icmp ult i8 %i.ea, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.ae

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit, %bb.ad, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.189, %bb.ad ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.190, %bb.ad ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ec, align 1
  br i1 %i.k, label %bb.au, label %bb.av

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dy
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !24 ; 3 uses
  %i.ef = lshr i64 %i.ee, 1                       ; 8 uses
  %i.eg = lshr i64 %.sroa.023.189, 1              ; 6 uses
  %i.eh = add nuw i64 %i.ef, %i.eg                ; 4 uses
  %i.ei = sub i64 %.sroa.09.0, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ei ; 6 uses
  %i.ek = icmp samesign ugt i64 %i.eh, %3
  %i.el = trunc i64 %.sroa.023.189 to i1
  %i.em = or i64 %i.ee, %.sroa.023.189
  %i.en = trunc i64 %i.em to i1
  %or.cond3.i = or i1 %i.ek, %i.en
  br i1 %or.cond3.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eo = trunc i64 %i.ee to i1
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.ep = shl nuw nsw i64 %i.eh, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit

bb.ah:                                            ; preds = %bb.ai, %bb.af
  br i1 %i.el, label %bb.aj, label %bb.at

bb.ai:                                            ; preds = %bb.af
  %i.eq = or i64 %i.ef, 1
  %i.er = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.ej, i64 noundef range(i64 0, 1152921504606846976) %i.ef, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7226
  br label %bb.ah

bb.aj:                                            ; preds = %bb.at, %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  %i.ev = icmp eq i64 %i.ef, 0
  %i.ew = icmp eq i64 %i.eg, 0
  %or.cond.i = or i1 %i.ew, %i.ev
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 range(i64 0, -9223372036854775808) %i.ef) ; 2 uses
  %i.ex = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ex, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ef ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ef, %i.eg  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ey, ptr %i.ej
  %i.ez = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ez, i1 false), !alias.scope !7263
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i
  %i.fb = phi ptr [ %i.gi, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.fa, %.critedge.i ]
  %i.fc = phi ptr [ %i.gg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.ey, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ff, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 -8 ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.fe, align 8, !alias.scope !7262, !noalias !7264, !nonnull !24, !align !51, !noundef !24 ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyTbllENCNvMs4_NtB11_6schemaNtB2R_6Schema22unenforced_primary_keys_0E0EB13_:bb.a
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.hm ; 3 uses
  %i.ho = zext i1 %.sroa.0.1.in.i.i.i31.i to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.hr = icmp ne ptr %i.hn, %i.fa
  %i.hs = icmp ne ptr %i.hp, %i.m
  %or.cond.i32.i = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.gg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.hq, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ]
  %.sroa.7.0.i = phi ptr [ %i.gi, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.fa, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.hn, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ] ; 2 uses
  %i.ht = ptrtoint ptr %.sroa.7.0.i to i64
  %i.hu = ptrtoint ptr %.sroa.0.1.i to i64
  %i.hv = sub nuw i64 %i.ht, %i.hu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.hv, i1 false), !alias.scope !7263, !noalias !7274
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit: ; preds = %bb.aj, %bb.ak, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i
  %i.hw = shl nuw nsw i64 %i.eh, 1
  %i.hx = or disjoint i64 %i.hw, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit

bb.at:                                            ; preds = %bb.ah
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ef
  %i.hz = or i64 %i.eg, 1
  %i.ia = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.hz, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 1
  %i.id = xor i32 %i.ic, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.hy, i64 noundef range(i64 0, 1152921504606846976) %i.eg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7226
  br label %bb.aj

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit: ; preds = %bb.ag, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.hx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit ], [ %i.ep, %bb.ag ] ; 2 uses
  %i.ie = icmp ugt i64 %i.dy, 1
  br i1 %i.ie, label %bb.ad, label %._crit_edge

bb.au:                                            ; preds = %._crit_edge
  %i.if = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ig = lshr i64 %.sroa.018.0, 1
  %i.ih = add nuw i64 %i.ig, %.sroa.09.0
  br label %bb.f

bb.av:                                            ; preds = %._crit_edge
  %i.ii = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ii, 0
  br i1 %.not31, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ij = or i64 %1, 1
  %i.ik = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ij, i1 true)
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = shl nuw nsw i32 %i.il, 1
  %i.in = xor i32 %i.im, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.in, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7226
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.a, %bb.ax
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keymNCNvMs4_NtB11_6schemaNtB2N_6Schema25unenforced_clustering_keys_0E0EB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.af ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fx, %bb.af ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fv, %bb.af ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.cm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph74, label %._crit_edge

.lr.ph74:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7299)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.r, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !7299, !noalias !7300, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !7299, !noalias !7300 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 120
  %i.s = load i32, ptr %i.r, align 8, !range !92, !noalias !7301, !noundef !24
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.l, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 124
  %i.v = load i32, ptr %i.u, align 4, !noalias !7301
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i45 = phi i32 [ %i.v, %bb.l ], [ 0, %bb.k ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ], !noalias !7301
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 120
  %i.x = load i32, ptr %i.w, align 8, !range !92, !noalias !7301, !noundef !24
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %.split, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader: ; preds = %.split, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44
  %.not80 = icmp eq i64 %i.n, 2
  br i1 %.not80, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph

.split:                                           ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44
  %i.z = getelementptr inbounds nuw i8, ptr %.val11.i, i64 124
  %i.aa = load i32, ptr %i.z, align 4, !noalias !7301
  %i.ab = icmp ult i32 %.sroa.0.0.i.i45, %i.aa
  br i1 %i.ab, label %.preheader, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader

.preheader:                                       ; preds = %.split
  %.not81 = icmp eq i64 %i.n, 2
  br i1 %.not81, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph68

.lr.ph:                                           ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread
  %.val9.i = phi ptr [ %.val8.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread ], [ %.val10.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader ] ; 2 uses
  %.sroa.01.0.i.i65 = phi i64 [ %i.aq, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread ], [ 2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i65
  %i.ad = add nsw i64 %.sroa.01.0.i.i65, -1
  %i.ae = icmp ult i64 %i.ad, %i.n
  tail call void @llvm.assume(i1 %i.ae)
  %.val8.i = load ptr, ptr %i.ac, align 8, !alias.scope !7299, !noalias !7300, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val8.i, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !range !92, !noalias !7301, !noundef !24
  %i.ah = trunc nuw i32 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40

bb.m:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 124
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !7301
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40: ; preds = %bb.m, %.lr.ph
  %.sroa.0.0.i.i41 = phi i32 [ %i.aj, %bb.m ], [ 0, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val9.i, i64 120
  %i.al = load i32, ptr %i.ak, align 8, !range !92, !noalias !7301, !noundef !24
  %i.am = trunc nuw i32 %i.al to i1
  br i1 %i.am, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40
  %i.an = getelementptr inbounds nuw i8, ptr %.val9.i, i64 124
  %i.ao = load i32, ptr %i.an, align 4, !noalias !7301
  %i.ap = icmp ult i32 %.sroa.0.0.i.i41, %i.ao
  br i1 %i.ap, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43
  %i.aq = add nuw i64 %.sroa.01.0.i.i65, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph

.lr.ph68:                                         ; preds = %.preheader, %bb.o
  %.val7.i = phi ptr [ %.val.i, %bb.o ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i67 = phi i64 [ %i.bf, %bb.o ], [ 2, %.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i67
  %i.as = add nsw i64 %.sroa.01.1.i.i67, -1
  %i.at = icmp ult i64 %i.as, %i.n
  tail call void @llvm.assume(i1 %i.at)
  %.val.i = load ptr, ptr %i.ar, align 8, !alias.scope !7299, !noalias !7300, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 120
  %i.av = load i32, ptr %i.au, align 8, !range !92, !noalias !7301, !noundef !24
  %i.aw = trunc nuw i32 %i.av to i1
  br i1 %i.aw, label %bb.n, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i

bb.n:                                             ; preds = %.lr.ph68
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 124
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !7301
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i: ; preds = %bb.n, %.lr.ph68
  %.sroa.0.0.i.i39 = phi i32 [ %i.ay, %bb.n ], [ 0, %.lr.ph68 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val7.i, i64 120
  %i.ba = load i32, ptr %i.az, align 8, !range !92, !noalias !7301, !noundef !24
  %i.bb = trunc nuw i32 %i.ba to i1
  br i1 %i.bb, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val7.i, i64 124
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !7301
  %i.be = icmp ult i32 %.sroa.0.0.i.i39, %i.bd
  br i1 %i.be, label %bb.o, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i

bb.o:                                             ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit
  %i.bf = add nuw i64 %.sroa.01.1.i.i67, 1        ; 2 uses
  %exitcond89.not = icmp eq i64 %i.bf, %i.n
  br i1 %exitcond89.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph68

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43, %bb.o, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ false, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader ], [ true, %bb.o ], [ true, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i ], [ true, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit ], [ false, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43 ], [ false, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader ], [ 2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader ], [ %i.n, %bb.o ], [ %.sroa.01.1.i.i67, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit ], [ %.sroa.01.1.i.i67, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i ], [ %.sroa.01.0.i.i65, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43 ], [ %i.n, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread ] ; 9 uses
  %i.bg = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bg)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.s, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit

bb.q:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.bh = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit

bb.r:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7279
  %i.bi = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i, %middle.block, %bb.j, %bb.s, %bb.p
  %.sroa.0.0.i.i5659 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.p ], [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i ]
  %i.bk = shl nuw nsw i64 %.sroa.0.0.i.i5659, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit

bb.s:                                             ; preds = %bb.p
  %i.bm = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7302), !noalias !7300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7303), !noalias !7300
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i: ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i
  %n.vec = and i64 %i.bm, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = xor i64 %index, -1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bo ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !7304, !noalias !7305
  %wide.load118 = load <2 x ptr>, ptr %i.br, align 8, !alias.scope !7304, !noalias !7305
  %i.bs = getelementptr i8, ptr %i.bq, i64 -8
  %i.bt = getelementptr i8, ptr %i.bq, i64 -24
  %wide.load119 = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !7306, !noalias !7307
  %wide.load120 = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !7306, !noalias !7307
  %reverse = shufflevector <2 x i64> %wide.load119, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse121 = shufflevector <2 x i64> %wide.load120, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x i64> %reverse, ptr %i.bp, align 8, !alias.scope !7304, !noalias !7305
  store <2 x i64> %reverse121, ptr %i.bu, align 8, !alias.scope !7304, !noalias !7305
  %i.bv = getelementptr i8, ptr %i.bq, i64 -8
  %i.bw = getelementptr i8, ptr %i.bq, i64 -24
  %reverse122 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse123 = shufflevector <2 x ptr> %wide.load118, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse122, ptr %i.bv, align 8, !alias.scope !7306, !noalias !7307
  store <2 x ptr> %reverse123, ptr %i.bw, align 8, !alias.scope !7306, !noalias !7307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !7285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cd, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i.preheader ] ; 3 uses
  %i.by = xor i64 %.sroa.0.016.i.i, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.bn, i64 %i.by ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !alias.scope !7304, !noalias !7305, !nonnull !24, !align !51, !noundef !24
  %i.cc = load i64, ptr %i.ca, align 8, !alias.scope !7306, !noalias !7307
  store i64 %i.cc, ptr %i.bz, align 8, !alias.scope !7304, !noalias !7305
  store ptr %i.cb, ptr %i.ca, align 8, !alias.scope !7306, !noalias !7307
  %i.cd = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.bm
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit11.i.i, !llvm.loop !7286

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit: ; preds = %bb.q, %bb.r, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.bl, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit ], [ %i.bj, %bb.r ], [ %i.bh, %bb.q ] ; 2 uses
  %i.ce = lshr i64 %.sroa.023.0, 1
  %i.cf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cg = sub nsw i64 %factor, %i.ce
  %i.ch = add nuw nsw i64 %i.cf, %factor
  %i.ci = mul i64 %i.cg, %.sroa.0.0
  %i.cj = mul i64 %i.ch, %.sroa.0.0
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = trunc nuw nsw i64 %i.cl to i8
  br label %bb.g

bb.t:                                             ; preds = %.lr.ph74, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit
  %.sroa.02.173 = phi i64 [ %.sroa.02.0, %.lr.ph74 ], [ %i.cn, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.172 = phi i64 [ %.sroa.023.0, %.lr.ph74 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit ] ; 4 uses
  %i.cn = add i64 %.sroa.02.173, -1               ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !24
  %.not29 = icmp ult i8 %i.cp, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit, %bb.t, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.172, %bb.t ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.173, %bb.t ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cr, align 1
  br i1 %i.k, label %bb.af, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cn
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !24 ; 3 uses
  %i.cu = lshr i64 %i.ct, 1                       ; 8 uses
  %i.cv = lshr i64 %.sroa.023.172, 1              ; 6 uses
  %i.cw = add nuw i64 %i.cu, %i.cv                ; 4 uses
  %i.cx = sub i64 %.sroa.09.0, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx ; 6 uses
  %i.cz = icmp samesign ugt i64 %i.cw, %3
  %i.da = trunc i64 %.sroa.023.172 to i1
  %i.db = or i64 %i.ct, %.sroa.023.172
  %i.dc = trunc i64 %i.db to i1
  %or.cond3.i = or i1 %i.cz, %i.dc
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dd = trunc i64 %i.ct to i1
  br i1 %i.dd, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.de = shl nuw nsw i64 %i.cw, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit

bb.x:                                             ; preds = %bb.y, %bb.v
  br i1 %i.da, label %bb.z, label %bb.ae

bb.y:                                             ; preds = %bb.v
  %i.df = or i64 %i.cu, 1
  %i.dg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.cy, i64 noundef range(i64 0, 1152921504606846976) %i.cu, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7287
  br label %bb.x

bb.z:                                             ; preds = %bb.ae, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7309)
  %i.dk = icmp eq i64 %i.cu, 0
  %i.dl = icmp eq i64 %i.cv, 0
  %or.cond.i = or i1 %i.dl, %i.dk
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 0, -9223372036854775808) %i.cu) ; 2 uses
  %i.dm = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.dm, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cu ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cu, %i.cv  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.dn, ptr %i.cy
  %i.do = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.do, i1 false), !alias.scope !7310
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i
  %i.dq = phi ptr [ %i.em, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.dp, %.critedge.i ]
  %i.dr = phi ptr [ %i.ek, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.dn, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.du, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !7309, !noalias !7311, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %.val10.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !7308, !noalias !7312 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 120
  %i.dw = load i32, ptr %i.dv, align 8, !range !92, !noalias !7313, !noundef !24
  %i.dx = trunc nuw i32 %i.dw to i1
  %i.dy = ptrtoint ptr %.val.i.i to i64
  br i1 %i.dx, label %bb.ab, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i

bb.ab:                                            ; preds = %.preheader.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 124
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !7313
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i: ; preds = %bb.ab, %.preheader.i
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.ea, %bb.ab ], [ 0, %.preheader.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 120
  %i.ec = load i32, ptr %i.eb, align 8, !range !92, !noalias !7313, !noundef !24
  %i.ed = trunc nuw i32 %i.ec to i1
  br i1 %i.ed, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 124
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !7313
  %i.eg = icmp ult i32 %.sroa.0.0.i.i.i.i, %i.ef
  %cond.fr.i.i = freeze i1 %i.eg                  ; 2 uses
  %spec.select.i.i = select i1 %cond.fr.i.i, ptr %i.ds, ptr %i.dt
  %.pre.i.i = load i64, ptr %spec.select.i.i, align 8, !alias.scope !7310, !noalias !7314
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i
  %i.eh = phi i64 [ %i.dy, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i ], [ %.pre.i.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i ]
  %.sroa.0.0.i3.i3.i.i = phi i1 [ false, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i ], [ %cond.fr.i.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i ] ; 2 uses
  store i64 %i.eh, ptr %i.du, align 8, !alias.scope !7308, !noalias !7312
  %i.ei = xor i1 %.sroa.0.0.i3.i3.i.i, true
  %i.ej = zext i1 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ej ; 3 uses
  %i.el = zext i1 %.sroa.0.0.i3.i3.i.i to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.el ; 3 uses
  %i.en = icmp eq ptr %i.ek, %i.cy
  %i.eo = icmp eq ptr %i.em, %2
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i
  %i.ep = phi ptr [ %i.fg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ], [ %i.cy, %.critedge.i ] ; 2 uses
  %.sroa.0.05.i.i = phi ptr [ %i.ff, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ], [ %i.dn, %.critedge.i ] ; 3 uses
  %i.eq = phi ptr [ %i.fe, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.05.i.i, align 8, !alias.scope !7308, !noalias !7315, !nonnull !24, !align !51, !noundef !24 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.eq, align 8, !alias.scope !7309, !noalias !7316 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 120
  %i.es = load i32, ptr %i.er, align 8, !range !92, !noalias !7317, !noundef !24
  %i.et = trunc nuw i32 %i.es to i1
  br i1 %i.et, label %bb.ac, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 124
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !7317
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i: ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.0.0.i.i.i21.i = phi i32 [ %i.ev, %bb.ac ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 120
  %i.ex = load i32, ptr %i.ew, align 8, !range !92, !noalias !7317, !noundef !24
  %i.ey = trunc nuw i32 %i.ex to i1
  br i1 %i.ey, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 124
  %i.fa = load i32, ptr %i.ez, align 4, !noalias !7317
  %i.fb = icmp ult i32 %.sroa.0.0.i.i.i21.i, %i.fa
  br i1 %i.fb, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i, label %bb.ad

bb.ad:                                            ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i: ; preds = %bb.ad, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i
  %i.fc = phi i64 [ 0, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i ], [ 1, %bb.ad ], [ 1, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i ]
  %.sroa.0.0.i3.i3.i23.i = phi i64 [ 1, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i ], [ 0, %bb.ad ], [ 0, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i ]
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.05.i.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i ], [ %i.eq, %bb.ad ], [ %i.eq, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i ]
  %i.fd = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !7310, !noalias !7318
  store i64 %i.fd, ptr %i.ep, align 8, !alias.scope !7308, !noalias !7315
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fc ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.05.i.i, i64 %.sroa.0.0.i3.i3.i23.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.fh = icmp ne ptr %i.fe, %i.dp
  %i.fi = icmp ne ptr %i.ff, %i.m
  %or.cond.i24.i = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.i24.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i
  %.sroa.13.1.i = phi ptr [ %i.ek, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.fg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ]
  %.sroa.7.0.i = phi ptr [ %i.em, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.dp, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.fe, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ] ; 2 uses
  %i.fj = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fk = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fl = sub nuw i64 %i.fj, %i.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fl, i1 false), !alias.scope !7310, !noalias !7319
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit: ; preds = %bb.z, %bb.aa, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i
  %i.fm = shl nuw nsw i64 %i.cw, 1
  %i.fn = or disjoint i64 %i.fm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit

bb.ae:                                            ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cu
  %i.fp = or i64 %i.cv, 1
  %i.fq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fp, i1 true)
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = xor i32 %i.fs, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.fo, i64 noundef range(i64 0, 1152921504606846976) %i.cv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7287
  br label %bb.z

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit: ; preds = %bb.w, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.fn, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit ], [ %i.de, %bb.w ] ; 2 uses
  %i.fu = icmp ugt i64 %i.cn, 1
  br i1 %i.fu, label %bb.t, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.fv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fw = lshr i64 %.sroa.018.0, 1
  %i.fx = add nuw i64 %i.fw, %.sroa.09.0
  br label %bb.f

bb.ag:                                            ; preds = %._crit_edge
  %i.fy = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fy, 0
  br i1 %.not31, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fz = or i64 %1, 1
  %i.ga = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fz, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 1
  %i.gd = xor i32 %i.gc, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7287
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !7353, !noalias !7354, !noundef !24 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !7355, !noalias !7356, !noundef !24
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !7353, !noalias !7354, !noundef !24 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !7353, !noalias !7354, !noundef !24 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !7327
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %middle.block ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7357), !noalias !7358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7359), !noalias !7358
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !7360, !noalias !7361
  %wide.load116 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !7360, !noalias !7361
  %i.al = getelementptr i8, ptr %i.aj, i64 -12    ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -28    ; 2 uses
  %wide.load117 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !7362, !noalias !7363
  %wide.load118 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !7362, !noalias !7363
  %reverse = shufflevector <4 x i32> %wide.load117, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse119 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ai, align 4, !alias.scope !7360, !noalias !7361
  store <4 x i32> %reverse119, ptr %i.ak, align 4, !alias.scope !7360, !noalias !7361
  %reverse120 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse121 = shufflevector <4 x i32> %wide.load116, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse120, ptr %i.al, align 4, !alias.scope !7362, !noalias !7363
  store <4 x i32> %reverse121, ptr %i.am, align 4, !alias.scope !7362, !noalias !7363
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !7333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !alias.scope !7360, !noalias !7361, !noundef !24
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !7362, !noalias !7363
  store i32 %i.as, ptr %i.ap, align 4, !alias.scope !7360, !noalias !7361
  store i32 %i.ar, ptr %i.aq, align 4, !alias.scope !7362, !noalias !7363
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i, !llvm.loop !7334

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !24
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !24 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %i.bo, i64 noundef range(i64 0, 2305843009213693952) %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !7335
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7365)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 2     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !7366
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cr, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %i.ch = phi ptr [ %i.cp, %.preheader.i ], [ %i.cd, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -4 ; 2 uses
  %.val.i.i = load i32, ptr %i.cj, align 4, !alias.scope !7367, !noalias !7368, !noundef !24 ; 2 uses
  %.val10.i.i = load i32, ptr %i.ci, align 4, !alias.scope !7369, !noalias !7370, !noundef !24 ; 2 uses
  %i.cl = icmp ult i32 %.val.i.i, %.val10.i.i     ; 2 uses
  %i.cm = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val10.i.i)
end_hunk_1
