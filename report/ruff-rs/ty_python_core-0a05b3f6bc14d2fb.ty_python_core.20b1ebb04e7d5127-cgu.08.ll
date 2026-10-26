Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.08?download=true
inline.NumInlined: 923
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_10MemberExpr16try_from_builder:bb.a
  %i.bm = lshr i32 %i.bl, 2                       ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.bc                ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 63
  br i1 %i.bo, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4: ; preds = %.lr.ph.i.i.4
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v, i64 20 ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bn, 2
  %switch.idx.cast.i.i.i.4 = and i32 %i.bl, 3
  %i.bq = or disjoint i32 %i.bp, %switch.idx.cast.i.i.i.4
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 35
  %i.bt = or i64 %i.bs, %i.bj                     ; 2 uses
  %i.bu = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %i.z
  br i1 %i.bu, label %bb.f, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4
  %i.bv = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 4, !alias.scope !669, !noalias !670, !noundef !4 ; 2 uses
  %i.bw = lshr i32 %i.bv, 2                       ; 2 uses
  %i.bx = sub nsw i32 %i.bw, %i.bm                ; 2 uses
  %i.by = icmp ugt i32 %i.bx, 63
  br i1 %i.by, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5: ; preds = %.lr.ph.i.i.5
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v = select i1 %i.t, ptr %i.x, ptr %i.c
  %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v, i64 24 ; 2 uses
  %i.bz = shl nuw nsw i32 %i.bx, 2
  %switch.idx.cast.i.i.i.5 = and i32 %i.bv, 3
  %i.ca = or disjoint i32 %i.bz, %switch.idx.cast.i.i.i.5
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 43
  %i.cd = or i64 %i.cc, %i.bt                     ; 2 uses
  %i.ce = icmp eq ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, %i.z
  br i1 %i.ce, label %bb.f, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5
  %i.cf = load i32, ptr %.sink10.i.i.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 4, !alias.scope !669, !noalias !670, !noundef !4 ; 2 uses
  %i.cg = lshr i32 %i.cf, 2
  %i.ch = sub nsw i32 %i.cg, %i.bw                ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 63
  br i1 %i.ci, label %.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6: ; preds = %.lr.ph.i.i.6
  %i.cj = shl nuw nsw i32 %i.ch, 2
  %switch.idx.cast.i.i.i.6 = and i32 %i.cf, 3
  %i.ck = or disjoint i32 %i.cj, %switch.idx.cast.i.i.i.6
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 51
  %i.cn = or i64 %i.cm, %i.cd
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i
  %.lcssa = phi i64 [ %i.af, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i ], [ %i.ap, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.1 ], [ %i.az, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.2 ], [ %i.bj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.3 ], [ %i.bt, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.4 ], [ %i.cd, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.5 ], [ %i.cn, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2O29vuvTAEJ_14ty_python_core.exit.i.i.6 ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit unwind label %bb.j

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_E8into_vecBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  %i.co = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoE16into_boxed_sliceBH_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc9 unwind label %bb.j    ; 2 uses

.noexc9:                                          ; preds = %.noexc8
  %i.cp = extractvalue { ptr, i64 } %i.co, 0
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !671
  br label %_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit

bb.g:                                             ; preds = %bb.d
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.critedge unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.c, %bb.b, %bb.d
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs2O29vuvTAEJ_14ty_python_core.exit
  ret void

.critedge:                                        ; preds = %bb.l, %bb.g, %bb.j, %bb.k
  %.pn5 = phi { ptr, i32 } [ %i.ct, %bb.j ], [ %i.ct, %bb.l ], [ %i.ct, %bb.k ], [ %i.cr, %bb.g ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.l, %bb.g
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.j:                                             ; preds = %.noexc8, %.loopexit.i, %bb.f
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.cv = load i8, ptr %i.cu, align 1, !range !6, !alias.scope !675, !noundef !4
  %i.cw = and i8 %i.cv, -2
  %switch.i.i.i11 = icmp eq i8 %i.cw, -48
  br i1 %switch.i.i.i11, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %.pn.i.i.i.i12 = load ptr, ptr %i.d, align 8, !alias.scope !677, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i13 = getelementptr inbounds i8, ptr %.pn.i.i.i.i12, i64 -8
  %i.cx = atomicrmw add ptr %.sroa.0.0.i.i.i.i13, i64 -1 release, align 8, !noalias !677
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.l, label %.critedge, !prof !5

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.critedge unwind label %bb.i

_RNvMsk_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_8Segments8from_vec.exit: ; preds = %.noexc9, %bb.f
  %.sroa.5.0 = phi i64 [ %i.cq, %.noexc9 ], [ %.lcssa, %bb.f ]
  %.sroa.0.027 = phi ptr [ %i.cp, %.noexc9 ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.027, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_10MemberExpr6as_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.c = load i8, ptr %i.b, align 1, !range !6, !alias.scope !680, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !680, !noundef !4
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = icmp ult i8 %i.c, -48
  %i.h = zext i8 %i.c to i64
  %i.i = add nsw i64 %i.h, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %.sroa.0.0.i = select i1 %i.g, i64 %spec.store.select.i, i64 %i.f
  %i.j = icmp ugt i8 %i.c, -49
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !680
  %.sroa.01.0.i = select i1 %i.j, ptr %i.k, ptr %i.a
  %i.l = load ptr, ptr %1, align 8, !noundef !4
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4
  store ptr %.sroa.01.0.i, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_9IterNamesNtNtCs2O29vuvTAEJ_14ty_python_core6symbol11SymbolFlagsE3newBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i8, ptr %1, align 1, !noundef !4  ; 2 uses
  store ptr @25, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.val1, ptr %i.d, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_17MemberExprBuilder10visit_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 0, 33) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [200 x i8], align 8               ; 11 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.g, %bb.a
  %.tr34 = phi i64 [ %1, %bb.a ], [ %i.r, %bb.g ] ; 2 uses
  %.tr35 = phi ptr [ %2, %bb.a ], [ %i.s, %bb.g ] ; 8 uses
  switch i64 %.tr34, label %bb.b [
    i64 1, label %bb.c
    i64 28, label %bb.d
  ]

bb.b:                                             ; preds = %bb.c, %tailrecurse
  %.tr34.lcssa = phi i64 [ 1, %bb.c ], [ %.tr34, %tailrecurse ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.h = invoke fastcc noundef zeroext i1 @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6memberNtB5_17MemberExprBuilder12collect_expr(i64 noundef %.tr34.lcssa, ptr noundef %.tr35, ptr noalias noundef align 8 dereferenceable(200) %i.e, ptr noalias noundef align 8 dereferenceable(40) %i.d, ptr noalias noundef align 4 dereferenceable(4) %i.c)
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %tailrecurse
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.tr35) ]
  %i.i = load ptr, ptr %.tr35, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !range !20, !noundef !4
  %i.k = icmp eq i32 %i.j, 28
  br i1 %i.k, label %bb.g, label %bb.b

bb.d:                                             ; preds = %tailrecurse
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.tr35) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.l = getelementptr inbounds nuw i8, ptr %.tr35, i64 15
  %i.m = load i8, ptr %i.l, align 1, !range !6, !alias.scope !715, !noundef !4
  %i.n = and i8 %i.m, -2
  %switch.i = icmp eq i8 %i.n, -48
  br i1 %switch.i, label %bb.e, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit

bb.e:                                             ; preds = %bb.d
  %.pn.i = load ptr, ptr %.tr35, align 8, !alias.scope !715, !nonnull !4, !noundef !4
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.o = atomicrmw add ptr %.sroa.0.0.i, i64 1 monotonic, align 8, !noalias !716
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.tr35) #32, !noalias !717
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(16) %.tr35, i64 16, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.q = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.i) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  br label %tailrecurse

bb.h:                                             ; preds = %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_EEB1f_.exit10, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit
  ret void

bb.i:                                             ; preds = %_RINvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB3_10HeapBuffer23new_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1w_.exit.i, %_RINvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB3_10HeapBuffer23new_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1w_.exit.thread18.i, %bb.r, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1b_.exit.thread, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_EEB1f_.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 -1, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_EEB1f_.exit10 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_EEB1f_.exit: ; preds = %bb.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.v, %bb.l ], [ %i.t, %bb.i ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartj8_EEB1f_.exit unwind label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_EEB1f_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member11SegmentInfoj8_EEB1f_.exit10: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.m:                                             ; preds = %bb.j
  %i.w = load i64, ptr %i.f, align 8, !alias.scope !718, !noundef !4 ; 2 uses
  %i.x = icmp ugt i64 %i.w, 8                     ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !alias.scope !718, !nonnull !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !718
  %.sink10.i = select i1 %i.x, ptr %i.y, ptr %i.e ; 6 uses
  %.sink9.i = select i1 %i.x, i64 %i.aa, i64 %i.w ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %.idx = mul nuw nsw i64 %.sink9.i, 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink10.i, i64 %.idx
  %i.ac = icmp eq i64 %.sink9.i, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %_RNCINvMNtCsj8vhLppEnlJ_8char_str4reprNtB5_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartE0B1d_.exit.i.i
  %i.ad = icmp eq ptr %i.af, %i.ab
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.sroa.01.0.i.i62 = phi i64 [ %i.as, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ae = phi ptr [ %i.af, %bb.n ], [ %.sink10.i, %bb.m ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !range !14, !alias.scope !720, !noalias !721, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 23
  %i.aj = load i8, ptr %i.ai, align 1, !range !6, !alias.scope !722, !noalias !721, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !722, !noalias !721, !noundef !4
  %i.am = and i64 %i.al, 72057594037927935
  %i.an = icmp ult i8 %i.aj, -48
  %i.ao = zext i8 %i.aj to i64
  %i.ap = add nsw i64 %i.ao, -192
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.an, i64 %spec.store.select.i.i.i.i.i, i64 %i.am
  br label %_RNCINvMNtCsj8vhLppEnlJ_8char_str4reprNtB5_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartE0B1d_.exit.i.i

bb.p:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !720, !noalias !721, !noundef !4
  br label %_RNCINvMNtCsj8vhLppEnlJ_8char_str4reprNtB5_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartE0B1d_.exit.i.i

_RNCINvMNtCsj8vhLppEnlJ_8char_str4reprNtB5_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartE0B1d_.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.pn.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = add i64 %.sroa.0.0.i.pn.i.i.i.i, %.sroa.01.0.i.i62 ; 3 uses
  %i.at = icmp ult i64 %i.as, %.sroa.01.0.i.i62
  br i1 %i.at, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1b_.exit.thread, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.lcssa = phi i64 [ 0, %bb.m ], [ %i.as, %bb.n ] ; 10 uses
  %i.au = icmp ult i64 %.sroa.01.0.i.i.lcssa, 17
  br i1 %i.au, label %bb.w, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.av = icmp ugt i64 %.sroa.01.0.i.i.lcssa, 72057594037927935
  br i1 %i.av, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1b_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = invoke noundef ptr @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr(i64 noundef range(i64 17, 0) %.sroa.01.0.i.i.lcssa)
          to label %.noexc unwind label %bb.i     ; 4 uses

.noexc:                                           ; preds = %bb.r
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1b_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.ay = or disjoint i64 %.sroa.01.0.i.i.lcssa, -3458764513820540928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !724
  store ptr %i.aw, ptr %i.b, align 8, !noalias !724
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !noalias !724
  %.idx.i.i = mul nuw nsw i64 %.sink9.i, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink10.i, i64 %.idx.i.i
  %i.bb = icmp eq i64 %.sink9.i, 0
  br i1 %i.bb, label %_RINvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB3_10HeapBuffer23new_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1w_.exit.thread18.i, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit.i.i

_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit.i.i: ; preds = %bb.s, %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit22.i.i
  %.sroa.0.0414.i.i = phi i64 [ %i.bu, %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit22.i.i ], [ 0, %bb.s ] ; 3 uses
  %.sroa.03.013.i.i = phi ptr [ %i.bc, %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit22.i.i ], [ %.sink10.i, %bb.s ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i.i, i64 24 ; 2 uses
  %i.bd = load i64, ptr %.sroa.03.013.i.i, align 8, !range !14, !alias.scope !725, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i.i, i64 8 ; 3 uses
  br i1 %i.be, label %bb.t, label %bb.u

._crit_edge.i.i:                                  ; preds = %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit22.i.i
  %i.bg = icmp eq i64 %i.bu, %.sroa.01.0.i.i.lcssa
  br i1 %i.bg, label %_RINvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB3_10HeapBuffer23new_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1w_.exit.i, label %_RINvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB3_10HeapBuffer23new_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1w_.exit.thread18.i

bb.t:                                             ; preds = %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i.i, i64 23
  %i.bi = load i8, ptr %i.bh, align 1, !range !6, !alias.scope !726, !noundef !4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !726, !noundef !4
  %i.bl = and i64 %i.bk, 72057594037927935
  %i.bm = icmp ult i8 %i.bi, -48
  %i.bn = zext i8 %i.bi to i64
  %i.bo = add nsw i64 %i.bn, -192
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 16)
  %.sroa.0.0.i.i.i18.i = select i1 %i.bm, i64 %spec.store.select.i.i.i.i, i64 %i.bl
  %i.bp = icmp ugt i8 %i.bi, -49
  %i.bq = load ptr, ptr %i.bf, align 8, !alias.scope !726
  %.sroa.01.0.i.i.i.i = select i1 %i.bp, ptr %i.bq, ptr %i.bf
  br label %bb.v

bb.u:                                             ; preds = %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit.i.i
  %i.br = load ptr, ptr %i.bf, align 8, !alias.scope !725, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !725, !noundef !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.i21.i.i = phi ptr [ %.sroa.01.0.i.i.i.i, %bb.t ], [ %i.br, %bb.u ] ; 2 uses
  %.sroa.0.0.i.pn.i.i.i = phi i64 [ %.sroa.0.0.i.i.i18.i, %bb.t ], [ %i.bt, %bb.u ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i21.i.i) ]
  %i.bu = add i64 %.sroa.0.0.i.pn.i.i.i, %.sroa.0.0414.i.i ; 4 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.0.0414.i.i
  %i.bw = icmp ugt i64 %i.bu, %.sroa.01.0.i.i.lcssa
  %or.cond.i.i.i = or i1 %i.bv, %i.bw
  br i1 %or.cond.i.i.i, label %_RINvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB3_10HeapBuffer23new_exact_joined_slicesNtNtCs2O29vuvTAEJ_14ty_python_core6member14MemberPathPartEB1w_.exit.thread18.i, label %_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer15copy_exact_part.exit22.i.i, !prof !727
end_hunk_0
