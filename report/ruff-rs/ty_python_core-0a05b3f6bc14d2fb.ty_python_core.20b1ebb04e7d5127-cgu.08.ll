Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.08?download=true
inline.NumInlined: 923
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq:bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.w, %bb.d ], [ true, %bb.b ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.i, ptr %.sroa.01.0.i6, i64 %.sroa.0.0.i)
  %i.w = icmp eq i32 %bcmp, 0
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !range !6, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = and i64 %i.e, 72057594037927935          ; 2 uses
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.01.0 = select i1 %i.g, i64 %spec.store.select, i64 %i.f ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.j = add i64 %.sroa.01.0, %2                  ; 9 uses
  %i.k = icmp ult i64 %i.j, %.sroa.01.0
  br i1 %i.k, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.l = and i8 %i.c, -2
  %switch.i = icmp eq i8 %i.l, -48
  br i1 %switch.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.c, -46
  br i1 %i.m, label %.split9, label %bb.e, !prof !5

.split9:                                          ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_RNvNtCsj8vhLppEnlJ_8char_str4repr14reserve_static(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 1, 0) %2, i64 noundef %i.j)
  br i1 %i.n, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult i64 %i.j, 17
  br i1 %i.o, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread, label %.split7, !prof !19

.split7:                                          ; preds = %bb.e
  %i.p = tail call noundef zeroext i1 @_RNvNtCsj8vhLppEnlJ_8char_str4repr14reserve_inline(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 1, 0) %2)
  br i1 %i.p, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread

bb.f:                                             ; preds = %bb.c
  %.pn.i = load ptr, ptr %0, align 8, !alias.scope !651, !nonnull !4, !noundef !4
  %.sroa.07.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.q = load atomic i64, ptr %.sroa.07.0.i acquire, align 8, !noalias !651
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %.split, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.d, align 8, !alias.scope !651, !noundef !4 ; 2 uses
  %.sroa.314.0.extract.shift.i = and i64 %i.s, -72057594037927936
  %i.t = icmp eq i64 %.sroa.314.0.extract.shift.i, -3458764513820540928
  br i1 %i.t, label %bb.h, label %bb.i

.split:                                           ; preds = %bb.f
  %i.u = tail call noundef zeroext i1 @_RNvNtCsj8vhLppEnlJ_8char_str4repr19reserve_shared_heap(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 1, 0) %2)
  br i1 %i.u, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = and i64 %i.s, 72057594037927935
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %0, align 8, !alias.scope !651, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = load i64, ptr %i.x, align 8, !noalias !651, !noundef !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.h ], [ %i.y, %bb.i ]
  %.not.i = icmp ult i64 %.sroa.04.0.i, %i.j
  br i1 %.not.i, label %.split8, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread, !prof !5

.split8:                                          ; preds = %bb.j
  %i.z = tail call noundef zeroext i1 @_RNvNtCsj8vhLppEnlJ_8char_str4repr19reserve_unique_heap(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.f, i64 noundef range(i64 1, 0) %2)
  br i1 %i.z, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit: ; preds = %bb.b
  %i.aa = tail call noundef zeroext i1 @_RNvNtCsj8vhLppEnlJ_8char_str4repr16reserve_overflow(), !noalias !651
  br i1 %i.aa, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %.split9, %.split8, %.split7, %.split, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.split9 ], [ false, %bb.a ], [ true, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit ], [ true, %.split ], [ true, %.split7 ], [ true, %.split8 ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ]
  ret i1 %.sroa.0.0

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread: ; preds = %bb.j, %bb.e, %.split9, %.split8, %.split7, %.split, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit
  %i.ab = load i8, ptr %i.b, align 1, !range !6, !noundef !4
  %i.ac = and i8 %i.ab, -2
  %switch = icmp eq i8 %i.ac, -48
  br i1 %switch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread, %bb.k
  %.sroa.03.0 = phi ptr [ %i.ad, %bb.k ], [ %0, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7reserve.exit.thread ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %.sroa.01.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.af = load i8, ptr %i.b, align 1, !range !6, !alias.scope !652, !noundef !4
  switch i8 %i.af, label %bb.o [
    i8 -46, label %bb.m
    i8 -48, label %bb.n
    i8 -47, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = or i64 %i.j, -3314649325744685056
  store i64 %i.ag, ptr %i.d, align 8, !alias.scope !652
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.ah = icmp ult i64 %i.j, 72057594037927936
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = or disjoint i64 %i.j, -3386706919782612992
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !652
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit

bb.o:                                             ; preds = %bb.l
  %i.aj = icmp ult i64 %i.j, 16
  br i1 %i.aj, label %bb.p, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = trunc nuw nsw i64 %i.j to i8
  %i.al = or disjoint i8 %i.ak, -64
  store i8 %i.al, ptr %i.b, align 1, !alias.scope !652
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr7set_len.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_10MemberExpr16try_from_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 14 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !680, !noalias !681, !noundef !4 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !680, !noalias !681
  %.sink9.i = select i1 %i.g, i64 %i.i, i64 %i.f
  %i.j = icmp eq i64 %.sink9.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 -1, ptr %i.l, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.n = load i8, ptr %i.m, align 1, !range !6, !alias.scope !685, !noundef !4
  %i.o = and i8 %i.n, -2
  %switch.i.i.i = icmp eq i8 %i.o, -48
  br i1 %switch.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %.pn.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !687, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -8
  %i.p = atomicrmw sub ptr %.sroa.0.0.i.i.i.i, i64 1 release, align 8, !noalias !687
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !689, !noalias !690, !noundef !4 ; 2 uses
  %i.t = icmp ugt i64 %i.s, 8                     ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !689, !noalias !690
  %.sink9.i.i = select i1 %i.t, i64 %i.v, i64 %i.s ; 3 uses
  %i.w = add nsw i64 %.sink9.i.i, -8
  %or.cond.i.i = icmp ult i64 %i.w, -7
  br i1 %or.cond.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.c, align 8, !alias.scope !689, !noalias !690, !nonnull !4 ; 7 uses
  %.sink10.i.i = select i1 %i.t, ptr %i.x, ptr %i.c ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.sink9.i.i, 2
  %i.y = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx.i.i ; 6 uses
  %2 = add nsw i64 %.sink9.i.i, -1
  %i.z = load i32, ptr %.sink10.i.i, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 3 uses
  %i.aa = lshr i32 %i.z, 2
  %i.ab = icmp ugt i32 %i.z, 255
  br i1 %i.ab, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i: ; preds = %.lr.ph.preheader.i.i
  %.sink10.i.i.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.v, i64 4 ; 2 uses
  %i.ac = shl nuw nsw i32 %i.z, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = or i64 %2, %i.ad                        ; 2 uses
  %i.af = icmp eq ptr %.sink10.i.i.sroa.sel, %i.y
  br i1 %i.af, label %bb.f, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i
  %i.ag = load i32, ptr %.sink10.i.i.sroa.sel, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 2 uses
  %i.ah = lshr i32 %i.ag, 2                       ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.aa                ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 63
  br i1 %i.aj, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1: ; preds = %.lr.ph.i.i.1
  %.sink10.i.i.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.v, i64 8 ; 2 uses
  %i.ak = shl nuw nsw i32 %i.ai, 13
  %switch.idx.cast.i.i.i.1 = shl i32 %i.ag, 11
  %i.al = and i32 %switch.idx.cast.i.i.i.1, 6144
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = or i64 %i.ae, %i.an                     ; 2 uses
  %i.ap = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel, %i.y
  br i1 %i.ap, label %bb.f, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1
  %i.aq = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 2 uses
  %i.ar = lshr i32 %i.aq, 2                       ; 2 uses
  %i.as = sub nsw i32 %i.ar, %i.ah                ; 2 uses
  %i.at = icmp ugt i32 %i.as, 63
  br i1 %i.at, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2: ; preds = %.lr.ph.i.i.2
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.v, i64 12 ; 2 uses
  %i.au = shl nuw nsw i32 %i.as, 21
  %switch.idx.cast.i.i.i.2 = shl i32 %i.aq, 19
  %i.av = and i32 %switch.idx.cast.i.i.i.2, 1572864
  %i.aw = or disjoint i32 %i.au, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = or i64 %i.ao, %i.ax                     ; 2 uses
  %i.az = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel, %i.y
  br i1 %i.az, label %bb.f, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2
  %i.ba = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 2 uses
  %i.bb = lshr i32 %i.ba, 2                       ; 2 uses
  %i.bc = sub nsw i32 %i.bb, %i.ar                ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 63
  br i1 %i.bd, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3: ; preds = %.lr.ph.i.i.3
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v, i64 16 ; 2 uses
  %i.be = shl nuw nsw i32 %i.bc, 2
  %switch.idx.cast.i.i.i.3 = and i32 %i.ba, 3
  %i.bf = or disjoint i32 %i.be, %switch.idx.cast.i.i.i.3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 27
  %i.bi = or i64 %i.bh, %i.ay                     ; 2 uses
  %i.bj = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %i.y
  br i1 %i.bj, label %bb.f, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3
  %i.bk = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 2 uses
  %i.bl = lshr i32 %i.bk, 2                       ; 2 uses
  %i.bm = sub nsw i32 %i.bl, %i.bb                ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 63
  br i1 %i.bn, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4: ; preds = %.lr.ph.i.i.4
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v, i64 20 ; 2 uses
  %i.bo = shl nuw nsw i32 %i.bm, 2
  %switch.idx.cast.i.i.i.4 = and i32 %i.bk, 3
  %i.bp = or disjoint i32 %i.bo, %switch.idx.cast.i.i.i.4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 35
  %i.bs = or i64 %i.br, %i.bi                     ; 2 uses
  %i.bt = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %i.y
  br i1 %i.bt, label %bb.f, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4
  %i.bu = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 2 uses
  %i.bv = lshr i32 %i.bu, 2                       ; 2 uses
  %i.bw = sub nsw i32 %i.bv, %i.bl                ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 63
  br i1 %i.bx, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5: ; preds = %.lr.ph.i.i.5
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v, i64 24 ; 2 uses
  %i.by = shl nuw nsw i32 %i.bw, 2
  %switch.idx.cast.i.i.i.5 = and i32 %i.bu, 3
  %i.bz = or disjoint i32 %i.by, %switch.idx.cast.i.i.i.5
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 43
  %i.cc = or i64 %i.cb, %i.bs                     ; 2 uses
  %i.cd = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %i.y
  br i1 %i.cd, label %bb.f, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5
  %i.ce = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 4, !alias.scope !691, !noalias !692, !noundef !4 ; 2 uses
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = sub nsw i32 %i.cf, %i.bv                ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 63
  br i1 %i.ch, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6: ; preds = %.lr.ph.i.i.6
  %i.ci = shl nuw nsw i32 %i.cg, 2
  %switch.idx.cast.i.i.i.6 = and i32 %i.ce, 3
  %i.cj = or disjoint i32 %i.ci, %switch.idx.cast.i.i.i.6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 51
  %i.cm = or i64 %i.cl, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i
  %.lcssa = phi i64 [ %i.ae, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i ], [ %i.ao, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1 ], [ %i.ay, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2 ], [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3 ], [ %i.bs, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4 ], [ %i.cc, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5 ], [ %i.cm, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6 ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit unwind label %bb.j

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_E8into_vecBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !693
  %i.cn = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoE16into_boxed_sliceBH_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc9 unwind label %bb.j    ; 2 uses

.noexc9:                                          ; preds = %.noexc8
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = extractvalue { ptr, i64 } %i.cn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !693
  br label %_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit

bb.g:                                             ; preds = %bb.d
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.critedge unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c, %bb.b, %bb.d
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit
  ret void

.critedge:                                        ; preds = %bb.l, %bb.g, %bb.j, %bb.k
  %.pn5 = phi { ptr, i32 } [ %i.cs, %bb.j ], [ %i.cs, %bb.l ], [ %i.cs, %bb.k ], [ %i.cq, %bb.g ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.l, %bb.g
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.j:                                             ; preds = %.noexc8, %.loopexit.i, %bb.f
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.cu = load i8, ptr %i.ct, align 1, !range !6, !alias.scope !697, !noundef !4
  %i.cv = and i8 %i.cu, -2
  %switch.i.i.i11 = icmp eq i8 %i.cv, -48
  br i1 %switch.i.i.i11, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %.pn.i.i.i.i12 = load ptr, ptr %i.d, align 8, !alias.scope !699, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i13 = getelementptr inbounds i8, ptr %.pn.i.i.i.i12, i64 -8
  %i.cw = atomicrmw sub ptr %.sroa.0.0.i.i.i.i13, i64 1 release, align 8, !noalias !699
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.l, label %.critedge, !prof !5

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.critedge unwind label %bb.i

_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit: ; preds = %.noexc9, %bb.f
  %.sroa.5.0 = phi i64 [ %i.cp, %.noexc9 ], [ %.lcssa, %bb.f ]
  %.sroa.0.027 = phi ptr [ %i.co, %.noexc9 ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
