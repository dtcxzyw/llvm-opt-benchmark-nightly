Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.07?download=true
inline.NumInlined: 1537
inline.NumDeleted: 840
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE11insert_fullBO_:bb.a
  %i.bj = load ptr, ptr %i.i, align 8, !alias.scope !626, !nonnull !5, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !626, !noundef !5
  %i.bm = and i8 %i.bl, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bp = load i64, ptr %i.o, align 8, !alias.scope !626, !noundef !5
  %i.bq = and i64 %i.bp, %i.bo
  store i8 %i.q, ptr %i.bk, align 1, !noalias !626
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.q, ptr %i.bs, align 1, !noalias !626
  %i.bt = load <2 x i64>, ptr %i.j, align 8, !alias.scope !626
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0
  %i.bv = sub <2 x i64> %i.bt, %i.bu
  store <2 x i64> %i.bv, ptr %i.j, align 8, !alias.scope !626
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  store i64 %i.bh, ptr %i.by, align 8, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, i64 40, i1 false)
  %i.bz = load i64, ptr %i.e, align 8, !alias.scope !627, !noundef !5 ; 6 uses
  %i.ca = icmp ult i64 %i.bz, 115292150460684698
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %0, align 8, !range !29, !alias.scope !627, !noundef !5
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.o, label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !628, !noundef !5
  %i.cf = load i64, ptr %i.j, align 8, !alias.scope !628, !noundef !5
  %i.cg = add i64 %i.cf, %i.ce
  %..i.i.i = call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 %i.cg, i64 115292150460684697)
  %i.ch = sub nsw i64 %..i.i.i, %i.bz             ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, 1
  br i1 %i.ci, label %bb.p, label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc5.i, %bb.o
  %i.cj = phi i64 [ %i.bz, %bb.o ], [ %.pre20.i, %.noexc5.i ]
  invoke void @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.cj, i64 noundef 1, i64 noundef 8, i64 noundef 80)
          to label %._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit_crit_edge.i unwind label %bb.t, !noalias !629

._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit_crit_edge.i: ; preds = %._crit_edge.i.i17
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !630
  br label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ck = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bz, i64 noundef %i.ch, i64 noundef 8, i64 noundef 80)
          to label %.noexc5.i unwind label %bb.t, !noalias !629

.noexc5.i:                                        ; preds = %bb.p
  %i.cl = extractvalue { i64, i64 } %i.ck, 0
  %i.cm = icmp eq i64 %i.cl, -1
  %.pre20.i = load i64, ptr %i.e, align 8, !alias.scope !627 ; 2 uses
  br i1 %i.cm, label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit.i, label %._crit_edge.i.i17

_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit.i: ; preds = %.noexc5.i, %._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit_crit_edge.i, %bb.n
  %i.cn = phi i64 [ %.pre.i, %._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit_crit_edge.i ], [ %.pre20.i, %.noexc5.i ], [ %i.bz, %bb.n ] ; 3 uses
  %i.co = load i64, ptr %0, align 8, !range !29, !alias.scope !630, !noundef !5
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE8grow_oneB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.v unwind label %bb.r, !noalias !631

bb.r:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolEBF_(ptr nonnull %.sroa.4.0.copyload, ptr %.sroa.6.0.copyload)
          to label %.body unwind label %bb.s, !noalias !631

bb.s:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !631
  unreachable

bb.t:                                             ; preds = %bb.p, %._crit_edge.i.i17
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolEBF_(ptr nonnull %.sroa.4.0.copyload, ptr %.sroa.6.0.copyload) #31
          to label %.body unwind label %bb.u, !noalias !629

bb.u:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !629
  unreachable

bb.v:                                             ; preds = %bb.q, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluE15reserve_entriesBO_.exit.i
  %i.cu = load ptr, ptr %i.c, align 8, !alias.scope !630, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.cn ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !629
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !629
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  store i64 %1, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !629
  %i.cw = add i64 %i.cn, 1
  store i64 %i.cw, ptr %i.e, align 8, !alias.scope !630
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

.body:                                            ; preds = %bb.t, %bb.r, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cs, %bb.t ], [ %i.cq, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body21

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.k, %bb.b
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val13 = load ptr, ptr %i.cy, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolEBF_(ptr nonnull %.val, ptr %.val13) #31
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx10adt_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 4                ; 6 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.q = load ptr, ptr %2, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !20, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  switch i64 %i.r, label %default.unreachable54 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
  ]

default.unreachable54:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store ptr %i.s, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !672
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store ptr %i.s, ptr %i.j, align 8, !alias.scope !673, !noalias !672
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j), !noalias !674, !inline_history !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !672
  %i.v = load i32, ptr %i.k, align 4, !range !30, !noalias !672, !noundef !5
  %.not.i1.i = icmp eq i32 %i.v, -1
  br i1 %.not.i1.i, label %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def.exit.thread, label %bb.c

_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !671
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !672
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.t), !noalias !5, !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !675
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !676, !inline_history !31
  %i.x = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtB6_6EnumIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.l), !noalias !676, !inline_history !644 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def.exit.thread34, label %bb.h

_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def.exit.thread34: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !675
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store ptr %i.s, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !678
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store ptr %i.s, ptr %i.f, align 8, !alias.scope !679, !noalias !678
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !noalias !680, !inline_history !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !678
  %i.aa = load i32, ptr %i.g, align 4, !range !30, !noalias !678, !noundef !5
  %.not.i1.i13 = icmp eq i32 %i.aa, -1
  br i1 %.not.i1.i13, label %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def.exit.thread, label %bb.e

_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !677
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !678
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.y), !noalias !5, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !681
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !682, !inline_history !32
  %i.ac = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtB6_8StructIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.h), !noalias !682, !inline_history !657 ; 2 uses
  %.not6.i.i14 = icmp eq ptr %i.ac, null
  br i1 %.not6.i.i14, label %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def.exit.thread41, label %bb.k

_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def.exit.thread41: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !681
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store ptr %i.s, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !684
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store ptr %i.s, ptr %i.b, align 8, !alias.scope !685, !noalias !684
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !686, !inline_history !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !684
  %i.af = load i32, ptr %i.c, align 4, !range !30, !noalias !684, !noundef !5
  %.not.i1.i19 = icmp eq i32 %i.af, -1
  br i1 %.not.i1.i19, label %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def.exit.thread, label %bb.g

_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !683
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !684
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.ad), !noalias !5, !inline_history !687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !688
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !689, !inline_history !687
  %i.ah = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionNtB6_7UnionIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !689, !inline_history !670 ; 2 uses
  %.not6.i.i20 = icmp eq ptr %i.ah, null
  br i1 %.not6.i.i20, label %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def.exit.thread48, label %bb.m

_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def.exit.thread48: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !688
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load <2 x i32>, ptr %i.x, align 4, !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i32 2, ptr %0, align 4
  store <2 x i32> %i.ai, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def.exit.thread34, %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i32 -1, ptr %0, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.l, %bb.h, %bb.i
  ret void

bb.k:                                             ; preds = %bb.e
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load <2 x i32>, ptr %i.ac, align 4, !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i32 0, ptr %0, align 4
  store <2 x i32> %i.aj, ptr %.sroa.426.0..sroa_idx, align 4
  br label %bb.j

bb.l:                                             ; preds = %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def.exit.thread41, %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i32 -1, ptr %0, align 4
  br label %bb.j

bb.m:                                             ; preds = %bb.g
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load <2 x i32>, ptr %i.ah, align 4, !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 1, ptr %0, align 4
  store <2 x i32> %i.ak, ptr %.sroa.429.0..sroa_idx, align 4
  br label %bb.j

bb.n:                                             ; preds = %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def.exit.thread48, %_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 -1, ptr %0, align 4
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11enum_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !702
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !705, !noalias !706
  %i.g = load ptr, ptr %1, align 8, !alias.scope !707, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !703, !noalias !702
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !701, !inline_history !696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !702
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !702, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtCsileJQcQObtj_7hir_def6EnumIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !702
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !708
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !709
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtB6_6EnumIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !709, !inline_history !700 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !709, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !709, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !708
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtCsileJQcQObtj_7hir_def6EnumIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtCsileJQcQObtj_7hir_def6EnumIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11file_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 14 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx11file_to_def10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.m, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !33

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.n, align 8
  br label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx11file_to_def10___CALLSITE) #26 ; 2 uses
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.05.0 = phi i8 [ %i.o, %bb.c ], [ %i.m, %bb.b ], [ %i.m, %bb.b ]
  %i.p = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx11file_to_def10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5
  %i.q = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.p, i8 noundef %.sroa.05.0)
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx11file_to_def10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 1, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.s, ptr %i.t, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.pr = load i64, ptr %i.g, align 8, !alias.scope !726
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit unwind label %bb.g, !noalias !727

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #31
          to label %common.resume unwind label %bb.h, !noalias !727

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !727
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit: ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %1)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EE14or_insert_withNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB38_14SourceToDefCtx11file_to_def0E0B3c_.exit.i, %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #31
          to label %common.resume unwind label %bb.x

bb.j:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.ab = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not18 = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not18, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.425.0.copyload = load i64, ptr %i.ac, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.526.0.copyload = load ptr, ptr %.sroa.526.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ad = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !8, !noundef !5 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = ptrtoint ptr %.sroa.526.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !728
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.ai, align 8, !noalias !728
  %i.aj = invoke { ptr, i64 } @_RNvCsgIpRO4v45SJ_7base_db15relevant_crates(ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.af, i32 noundef %1)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.q, %bb.o, %bb.n, %bb.m, %bb.k
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.u, !noalias !728

bb.l:                                             ; preds = %bb.k
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 3 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %.idx.i.i.i = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EE14or_insert_withNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB38_14SourceToDefCtx11file_to_def0E0B3c_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.029.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.029.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.029.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.029.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.029.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.029.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.029.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.029.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.632.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %.sroa.0.066.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.ar, %bb.r ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i.i, i64 8 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.066.i.i.i, align 4, !range !7, !noalias !728, !noundef !5 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !noalias !728, !noundef !5 ; 2 uses
  %i.av = invoke noundef nonnull align 4 ptr @_RNvNtCsileJQcQObtj_7hir_def7nameres19crate_local_def_map(ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.af, i32 noundef %i.as, i32 noundef %i.au)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.av, align 4, !range !7, !noalias !728, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !728, !noundef !5
  %i.az = invoke noundef nonnull align 8 ptr @_RINvMs8_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB8_10DefMapPair7def_mapDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECs8Xq8PKFYOms_3hir(i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.af)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728 ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.ba = load i64, ptr %i.ai, align 8, !alias.scope !729, !noalias !728, !noundef !5 ; 2 uses
  %i.bb = load i64, ptr %i.ao, align 8, !alias.scope !729, !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !728
  store ptr %i.az, ptr %i.c, align 8, !noalias !728
  store ptr %i.ad, ptr %i.ap, align 8, !noalias !728
  store ptr %i.af, ptr %i.aq, align 8, !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !728
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !728, !nonnull !5, !noundef !5 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !728, !noundef !5
  %i.bg = getelementptr inbounds nuw [616 x i8], ptr %i.bd, i64 %i.bf
  store ptr %i.bd, ptr %i.b, align 8, !noalias !728
  store ptr %i.bg, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.ad, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.af, ptr %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !728
  store i32 %1, ptr %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !728
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1u_8adapters3map3MapINtNtB2w_6filter6FilterIB2s_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterBJ_NtNtBL_7nameres10ModuleDataENCNvMs9_B48_NtB48_10ModulesMap4iter0ENCNvMs5_B48_NtB48_6DefMap16modules_for_file0ENCB5b_s_0EECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp ugt i64 %i.ba, 1
  %.sink10.i56.i.i.i = select i1 %i.bh, i64 %i.bb, i64 %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !728
  %i.bi = load i64, ptr %i.ai, align 8, !alias.scope !730, !noalias !728, !noundef !5 ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 1
  %i.bk = load i64, ptr %i.ao, align 8, !alias.scope !730, !noalias !728
  %.sink10.i59.i.i.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi
  %i.bl = icmp eq i64 %.sink10.i59.i.i.i, %.sink10.i56.i.i.i
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !728
  %i.bm = invoke noundef nonnull align 8 ptr @_RNvCsileJQcQObtj_7hir_def19include_macro_invoc(ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.af, i32 noundef %i.as, i32 noundef %i.au)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728 ; 2 uses

bb.r:                                             ; preds = %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !728
  %i.bn = icmp eq ptr %i.ar, %i.am
  br i1 %i.bn, label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EE14or_insert_withNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB38_14SourceToDefCtx11file_to_def0E0B3c_.exit.i, label %bb.m

bb.s:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bm, align 8, !noalias !728, !nonnull !5, !noundef !5 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !728, !noundef !5
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.bo, ptr %i.a, align 8, !noalias !728
  store ptr %i.br, ptr %.sroa.029.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.ad, ptr %.sroa.029.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.af, ptr %.sroa.029.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.j, ptr %.sroa.029.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.ad, ptr %.sroa.029.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.af, ptr %.sroa.029.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.ag, ptr %.sroa.029.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr %i.c, ptr %.sroa.029.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr null, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !728
  store ptr null, ptr %.sroa.632.0..sroa_idx.i.i.i, align 8, !noalias !728
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1u_8adapters7flatten7FlatMapINtNtB2w_6filter6FilterINtNtNtB1w_5slice4iter4IterTNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5G_14SourceToDefCtx11file_to_def0s_0EINtNtB2w_3map3MapIB32_IB76_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterBJ_NtNtBL_7nameres10ModuleDataENCNvMs9_B8j_NtB8j_10ModulesMap4iter0ENCNvMs5_B8j_NtB8j_6DefMap16modules_for_file0ENCB9m_s_0ENCB5z_s0_0EEB5K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !728

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !728
  br label %bb.r

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !728
  unreachable

_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EE14or_insert_withNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB38_14SourceToDefCtx11file_to_def0E0B3c_.exit.i: ; preds = %bb.r, %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !728
  store i32 %.sroa.8.16.extract.trunc, ptr %i.e, align 8, !noalias !731
  %i.bu = invoke noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EEE14insert_no_growCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %.sroa.425.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryNtCs4sl5YdnrCxp_3vfs6FileIdINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def10ModuleIdLtj1_EE14or_insert_withNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB38_14SourceToDefCtx11file_to_def0E0B3c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !731
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.w:                                             ; preds = %.noexc, %bb.v
  %.pn.i = phi ptr [ %i.bu, %.noexc ], [ %i.bv, %bb.v ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret ptr %.sroa.0.0.i

bb.x:                                             ; preds = %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11impl_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !747, !noalias !748
  %i.g = load ptr, ptr %1, align 8, !alias.scope !749, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !745, !noalias !744
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !743, !inline_history !738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !744
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !744, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtCsileJQcQObtj_7hir_def6ImplIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !744
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !750
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !751
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB6_6ImplIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !751, !inline_history !742 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !751, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !751, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !750
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtCsileJQcQObtj_7hir_def6ImplIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtCsileJQcQObtj_7hir_def6ImplIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12const_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !767, !noalias !768
  %i.g = load ptr, ptr %1, align 8, !alias.scope !769, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !765, !noalias !764
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !763, !inline_history !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !764
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !764, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstNtCsileJQcQObtj_7hir_def7ConstIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !764
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !770
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !771
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstNtB6_7ConstIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !771, !inline_history !762 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !771, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !771, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !770
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstNtCsileJQcQObtj_7hir_def7ConstIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstNtCsileJQcQObtj_7hir_def7ConstIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12label_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %2, align 8, !nonnull !5, !align !8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  store ptr %i.d, ptr %i.b, align 8
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i32, ptr %i.c, align 4, !range !30, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.520.0.copyload = load i32, ptr %.sroa.520.0..sroa_idx, align 4 ; 5 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.621.0.copyload = load i32, ptr %.sroa.621.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %bb.h
    i32 1, label %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit
    i32 6, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 4
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.b
  %.sroa.21.0.ph = phi i32 [ %.sroa.621.0.copyload, %bb.b ], [ %.sroa.520.0.copyload, %bb.e ], [ %.sroa.520.0.copyload, %bb.d ], [ %.sroa.520.0.copyload, %bb.c ], [ %.sroa.621.0.copyload, %bb.f ] ; 2 uses
  %.sroa.18.0.ph = phi i32 [ %.sroa.520.0.copyload, %bb.b ], [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.4.0.copyload, %bb.d ], [ %.sroa.4.0.copyload, %bb.c ], [ %.sroa.520.0.copyload, %bb.f ] ; 2 uses
  %.sroa.13.0.ph = phi i32 [ %.sroa.4.0.copyload, %bb.b ], [ 2, %bb.e ], [ 5, %bb.d ], [ 7, %bb.c ], [ %.sroa.4.0.copyload, %bb.f ] ; 2 uses
  %.sroa.0.0.ph = phi i32 [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.0.0.ph, ptr %i.a, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.13.0.ph, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.18.0.ph, ptr %.sroa.433.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.21.0.ph, ptr %.sroa.535.0..sroa_idx, align 4
  %i.k = call { ptr, ptr } @_RNvMs2_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStore15with_source_map(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 1
  %i.m = tail call { i32, i32 } @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10node_label(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2) ; 2 uses
  %i.n = extractvalue { i32, i32 } %i.m, 0
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.j

_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit: ; preds = %bb.b, %bb.b
  store i32 -1, ptr %0, align 4
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = extractvalue { i32, i32 } %i.m, 1
  store i32 %.sroa.0.0.ph, ptr %0, align 4
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.13.0.ph, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.18.0.ph, ptr %.sroa.03.sroa.5.0..sroa_idx, align 4
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.21.0.ph, ptr %.sroa.03.sroa.6.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %.sroa.44.0..sroa_idx, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 -1, ptr %0, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit, %bb.j, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12macro_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !783
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.f, i64 12, i1 false), !alias.scope !786, !noalias !787
  %i.h = load ptr, ptr %2, align 8, !alias.scope !788, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !784, !noalias !783
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !783
  %i.j = load i32, ptr %i.e, align 4, !range !30, !noalias !783, !noundef !5
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !783
  %i.k = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.f) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.l = load i64, ptr %i.h, align 8, !range !17, !alias.scope !790, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !791
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !792
  %i.n = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MacroDefNtB6_8Macro2IdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a), !noalias !789 ; 2 uses
  %.not12.i = icmp eq ptr %i.n, null
  br i1 %.not12.i, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !791
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !792
  %i.o = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MacroRulesNtB6_12MacroRulesIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b), !noalias !789 ; 2 uses
  %.not.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load <2 x i32>, ptr %i.o, align 4, !noalias !789
  store <2 x i32> %i.p, ptr %.sroa.48.0..sroa_idx.i, align 4, !alias.scope !789
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink13.i = phi i32 [ 1, %bb.e ], [ -1, %bb.d ]
  store i32 %.sink13.i, ptr %0, align 4, !alias.scope !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !791
  br label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx12macro_to_def0Ba_.exit

bb.g:                                             ; preds = %bb.c
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load <2 x i32>, ptr %i.n, align 4, !noalias !789
  store <2 x i32> %i.q, ptr %.sroa.410.0..sroa_idx.i, align 4, !alias.scope !789
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.sink.i = phi i32 [ 0, %bb.g ], [ -1, %bb.c ]
  store i32 %.sink.i, ptr %0, align 4, !alias.scope !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !791
  br label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx12macro_to_def0Ba_.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 4
  br label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx12macro_to_def0Ba_.exit

_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx12macro_to_def0Ba_.exit: ; preds = %bb.h, %bb.f, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12trait_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !808, !noalias !809
  %i.g = load ptr, ptr %1, align 8, !alias.scope !810, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !806, !noalias !805
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !804, !inline_history !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !805
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !805, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitNtCsileJQcQObtj_7hir_def7TraitIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !805
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !811
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !812
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitNtB6_7TraitIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !812, !inline_history !803 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !812, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !812, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !811
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitNtCsileJQcQObtj_7hir_def7TraitIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitNtCsileJQcQObtj_7hir_def7TraitIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx12union_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !828, !noalias !829
  %i.g = load ptr, ptr %1, align 8, !alias.scope !830, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !826, !noalias !825
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !824, !inline_history !819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !825
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !825, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionNtCsileJQcQObtj_7hir_def7UnionIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !825
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !831
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !832
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionNtB6_7UnionIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !832, !inline_history !823 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !832, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !832, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !831
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionNtCsileJQcQObtj_7hir_def7UnionIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionNtCsileJQcQObtj_7hir_def7UnionIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5UnionEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13module_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [12 x i8], align 8            ; 2 uses
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.u = icmp ult i64 %i.t, 3
  br i1 %i.u, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx13module_to_def10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.v, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !33

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.w, align 8
  br label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx13module_to_def10___CALLSITE) #26 ; 2 uses
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.x, %bb.c ], [ %i.v, %bb.b ], [ %i.v, %bb.b ]
  %i.y = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx13module_to_def10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5
  %i.z = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.y, i8 noundef %.sroa.06.0)
  br i1 %i.z, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx13module_to_def10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 1, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ab, ptr %i.ac, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.pr = load i64, ptr %i.q, align 8, !alias.scope !866
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit unwind label %bb.g, !noalias !867

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q) #31
          to label %common.resume unwind label %bb.h, !noalias !867

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !867
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit: ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !5
  %i.ag = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  %.sroa.4.8.copyload = load i32, ptr %i.k, align 4
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.6.8.copyload = load i32, ptr %.sroa.6.8..sroa_idx, align 4
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7.8.copyload = load i32, ptr %.sroa.7.8..sroa_idx, align 4
  %.val9.i = load ptr, ptr %i.ag, align 8, !noalias !868, !nonnull !5, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !868, !noundef !5 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.i, label %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i, !prof !11

bb.i:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.i
  unreachable

_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i: ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %i.ai, align 4, !noalias !868
  %.val.i = load ptr, ptr %i.ag, align 8, !noalias !868, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !868, !noundef !5 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.j, label %bb.m, !prof !11

bb.j:                                             ; preds = %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc.i unwind label %bb.l, !noalias !868

.noexc.i:                                         ; preds = %bb.j
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit27.i: ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit47.i, %bb.l
  %.sroa.0.0114.i = phi ptr [ %.sroa.0.1115.i, %bb.l ], [ %.sroa.0.3.i, %bb.v ], [ %.sroa.0.3.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit47.i ] ; 3 uses
  %.pn7.i = phi { ptr, i32 } [ %i.at, %bb.l ], [ %.pn5.i, %bb.v ], [ %.pn5.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit47.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0114.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0114.i, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !868, !noundef !5
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !noalias !868
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.k, label %.body

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit27.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0114.i) #26
          to label %.body unwind label %bb.an, !noalias !868

bb.l:                                             ; preds = %bb.ak, %bb.y, %bb.j
  %.sroa.0.1115.i = phi ptr [ %.val9.i, %bb.j ], [ %.sroa.0.2.i, %bb.y ], [ %.sroa.0.7.i, %bb.ak ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit27.i

bb.m:                                             ; preds = %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8Xq8PKFYOms_3hir.exit.i
  %i.au = add nuw i32 %i.an, 1
  store i32 %i.au, ptr %i.am, align 4, !noalias !868
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.41.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.41.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ay = load ptr, ptr %i.av, align 8, !nonnull !5, !align !8
  %i.az = load ptr, ptr %0, align 8, !nonnull !5
  %i.ba = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i.backedge, %bb.m
  %.sroa.11.0.i = phi i32 [ %.sroa.4.8.copyload, %bb.m ], [ %.sroa.7.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i.backedge ] ; 3 uses
  %.sroa.0109.0.i = phi ptr [ %.val.i, %bb.m ], [ %.sroa.0.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i.backedge ] ; 11 uses
  %.sroa.16.0.i = phi i32 [ %.sroa.6.8.copyload, %bb.m ], [ %.sroa.12.sroa.0.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i.backedge ] ; 3 uses
  %.sroa.22.0.i = phi i32 [ %.sroa.7.8.copyload, %bb.m ], [ %.sroa.12.sroa.7.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i.backedge ] ; 3 uses
  %.sroa.0.2.i = phi ptr [ %.val9.i, %bb.m ], [ %.sroa.0.7.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i.backedge ] ; 11 uses
  %i.bb = getelementptr i8, ptr %.sroa.0109.0.i, i64 16
  %.val.i.i = load ptr, ptr %i.bb, align 8, !noalias !869, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit42.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13module_to_def:bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val73) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEECs8Xq8PKFYOms_3hir.exit89 unwind label %bb.ao

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEECs8Xq8PKFYOms_3hir.exit89: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ax

bb.bl:                                            ; preds = %bb.ax
  %.not66 = icmp eq ptr %i.el, null
  br i1 %.not66, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store ptr %i.el, ptr %i.l, align 8
  %i.ga = invoke noundef nonnull ptr @_RNvXs8_NtCs33K2ylI4knu_10hir_expand4nameNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameNtB5_6AsName7as_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.bq unwind label %bb.bo     ; 6 uses

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101: ; preds = %.noexc100, %bb.bz, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cc

bb.bo:                                            ; preds = %bb.bm
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.el, i64 48 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !noundef !5
  %i.ge = add i32 %i.gd, -1                       ; 2 uses
  store i32 %i.ge, ptr %i.gc, align 4
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.bp, label %.body

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.el) #26
          to label %.body unwind label %bb.ay

bb.bq:                                            ; preds = %bb.bm
  store ptr %i.ga, ptr %i.m, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.el, i64 48 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !noundef !5
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECs8Xq8PKFYOms_3hir.exit92

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.el) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECs8Xq8PKFYOms_3hir.exit92 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bu, %bb.bt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECs8Xq8PKFYOms_3hir.exit92
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir(ptr nonnull %i.ga) #31
          to label %.body unwind label %bb.ay

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECs8Xq8PKFYOms_3hir.exit92: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gl = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.gm = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !8, !noundef !5
  %i.gn = invoke noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %.sroa.015.0, i32 noundef %.sroa.1017.0, ptr noundef nonnull %i.gl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.gm)
          to label %bb.bt unwind label %bb.bs

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECs8Xq8PKFYOms_3hir.exit92
  %i.go = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.gn, i32 noundef %.sroa.015.0, i32 noundef %.sroa.1017.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33)
          to label %bb.bu unwind label %bb.bs

bb.bu:                                            ; preds = %bb.bt
  %i.gp = invoke noundef align 4 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.bv unwind label %bb.bs     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  %.not67 = icmp eq ptr %i.gp, null
  br i1 %.not67, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gq = load i32, ptr %i.gp, align 4, !range !7, !noundef !5
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !noundef !5
  %i.gt = ptrtoint ptr %i.ga to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i.i.i.i93 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i93, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gv = getelementptr i8, ptr %i.ga, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ]
  %i.gw = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.gv)
          to label %.noexc94 unwind label %bb.ao

.noexc94:                                         ; preds = %bb.bx
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.gv, i64 %i.gx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.gy, ptr %i.i, align 8
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8
  %i.ha = icmp eq i64 %i.gz, 2
  br i1 %i.ha, label %bb.by, label %.noexc95, !prof !11

bb.by:                                            ; preds = %.noexc94
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc95 unwind label %bb.ao

.noexc95:                                         ; preds = %bb.by, %.noexc94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.gy, ptr %i.h, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc96 unwind label %bb.ao

.noexc96:                                         ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

bb.bz:                                            ; preds = %bb.bv
  %i.hb = ptrtoint ptr %i.ga to i64
  %i.hc = and i64 %i.hb, 1
  %.not.i.i.i.i97 = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i.i.i97, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hd = getelementptr i8, ptr %i.ga, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hd) ]
  %i.he = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.hd)
          to label %.noexc98 unwind label %bb.ao

.noexc98:                                         ; preds = %bb.ca
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.hg, ptr %i.g, align 8
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8
  %i.hi = icmp eq i64 %i.hh, 2
  br i1 %i.hi, label %bb.cb, label %.noexc99, !prof !11

bb.cb:                                            ; preds = %.noexc98
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc99 unwind label %bb.ao

.noexc99:                                         ; preds = %bb.cb, %.noexc98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.hg, ptr %i.f, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc100 unwind label %bb.ao

.noexc100:                                        ; preds = %.noexc99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101

bb.cc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEECs8Xq8PKFYOms_3hir.exit87, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECs8Xq8PKFYOms_3hir.exit84, %bb.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit
  %.sroa.5.2 = phi i32 [ %i.gs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit ], [ undef, %bb.bc ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECs8Xq8PKFYOms_3hir.exit84 ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEECs8Xq8PKFYOms_3hir.exit87 ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101 ]
  %.sroa.0.2 = phi i32 [ %i.gq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit ], [ 0, %bb.bc ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleEECs8Xq8PKFYOms_3hir.exit84 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEECs8Xq8PKFYOms_3hir.exit87 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit101 ]
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.hj = insertvalue { i32, i32 } poison, i32 %.sroa.0.2, 0
  %i.hk = insertvalue { i32, i32 } %i.hj, i32 %.sroa.5.2, 1
  ret { i32, i32 } %i.hk

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit: ; preds = %.noexc96, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cc
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13static_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !896
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !899, !noalias !900
  %i.g = load ptr, ptr %1, align 8, !alias.scope !901, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !897, !noalias !896
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !895, !inline_history !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !896
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !896, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticNtCsileJQcQObtj_7hir_def8StaticIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !896
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !902
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !903
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticNtB6_8StaticIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !903, !inline_history !894 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !903, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !903, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !902
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticNtCsileJQcQObtj_7hir_def8StaticIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticNtCsileJQcQObtj_7hir_def8StaticIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx13struct_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !919, !noalias !920
  %i.g = load ptr, ptr %1, align 8, !alias.scope !921, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !917, !noalias !916
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !915, !inline_history !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !916
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !916, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtCsileJQcQObtj_7hir_def8StructIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !916
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !922
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !923
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtB6_8StructIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !923, !inline_history !914 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !923, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !923, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !922
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtCsileJQcQObtj_7hir_def8StructIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtCsileJQcQObtj_7hir_def8StructIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 4                ; 6 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [16 x i8], align 4                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 4                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 5 uses
  %i.q = alloca [16 x i8], align 4                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 4                ; 6 uses
  %i.t = alloca [12 x i8], align 4                ; 5 uses
  %i.u = alloca [16 x i8], align 4                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 4                ; 6 uses
  %i.x = alloca [12 x i8], align 4                ; 5 uses
  %i.y = alloca [16 x i8], align 4                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 4               ; 6 uses
  %i.ab = alloca [12 x i8], align 4               ; 5 uses
  %i.ac = alloca [16 x i8], align 4               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 4               ; 6 uses
  %i.af = alloca [12 x i8], align 4               ; 5 uses
  %i.ag = alloca [16 x i8], align 4               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 4               ; 6 uses
  %i.aj = alloca [12 x i8], align 4               ; 5 uses
  %i.ak = alloca [16 x i8], align 4               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 4               ; 6 uses
  %i.an = alloca [12 x i8], align 4               ; 5 uses
  %i.ao = alloca [16 x i8], align 4               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 4               ; 6 uses
  %i.ar = alloca [12 x i8], align 4               ; 5 uses
  %i.as = alloca [1 x i8], align 1                ; 2 uses
  %i.at = alloca [1 x i8], align 1                ; 2 uses
  %i.au = alloca [1 x i8], align 1                ; 3 uses
  %i.av = alloca [1 x i8], align 1                ; 3 uses
  %i.aw = alloca [8 x i8], align 8                ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 7 uses
  %i.ay = alloca [1 x i8], align 1                ; 3 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [8 x i8], align 8                ; 7 uses
  %i.bb = alloca [1 x i8], align 1                ; 3 uses
  %i.bc = alloca [1 x i8], align 1                ; 3 uses
  %i.bd = alloca [8 x i8], align 8                ; 5 uses
  %i.be = alloca [8 x i8], align 8                ; 7 uses
  %i.bf = alloca [8 x i8], align 8                ; 7 uses
  %i.bg = alloca [1 x i8], align 1                ; 2 uses
  %i.bh = alloca [1 x i8], align 1                ; 2 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 7 uses
  %i.bk = alloca [1 x i8], align 1                ; 2 uses
  %i.bl = alloca [1 x i8], align 1                ; 2 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [8 x i8], align 8                ; 7 uses
  %i.bo = alloca [1 x i8], align 1                ; 2 uses
  %i.bp = alloca [1 x i8], align 1                ; 2 uses
  %i.bq = alloca [8 x i8], align 8                ; 5 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [16 x i8], align 8               ; 7 uses
  %i.bt = alloca [1 x i8], align 1                ; 2 uses
  %i.bu = alloca [1 x i8], align 1                ; 2 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %i.bx = alloca [8 x i8], align 8                ; 5 uses
  %i.by = alloca [8 x i8], align 8                ; 5 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [8 x i8], align 8                ; 10 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [8 x i8], align 8                ; 11 uses
  %i.cf = alloca [24 x i8], align 8               ; 8 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %i.ch = alloca [24 x i8], align 8               ; 8 uses
  %i.ci = alloca [24 x i8], align 8               ; 8 uses
  %i.cj = alloca [24 x i8], align 8               ; 8 uses
  %i.ck = alloca [24 x i8], align 8               ; 8 uses
  %i.cl = alloca [24 x i8], align 8               ; 8 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 8 uses
  %i.co = alloca [24 x i8], align 8               ; 7 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [12 x i8], align 4               ; 4 uses
  %i.cr = alloca [40 x i8], align 8               ; 8 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [40 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.cu = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cv = icmp ult i64 %i.cu, 3
  br i1 %i.cv, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.cw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cw, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !33

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.cr, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr null, ptr %i.cx, align 8
  br label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit

bb.c:                                             ; preds = %bb.b
  %i.cy = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container10___CALLSITE) #26 ; 2 uses
  %.not = icmp eq i8 %i.cy, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.05.0 = phi i8 [ %i.cy, %bb.c ], [ %i.cw, %bb.b ], [ %i.cw, %bb.b ]
  %i.cz = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5
  %i.da = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cz, i8 noundef %.sroa.05.0)
  br i1 %i.da, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store i64 1, ptr %i.cs, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.dc, ptr %i.dd, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %.pr = load i64, ptr %i.cr, align 8, !alias.scope !1120
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.de)
          to label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit unwind label %bb.g, !noalias !1121

bb.g:                                             ; preds = %bb.f
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cr) #31
          to label %common.resume unwind label %bb.h, !noalias !1121

bb.h:                                             ; preds = %bb.g
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1121
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.df, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit: ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i64 40, i1 false), !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.dh = load ptr, ptr %2, align 8, !alias.scope !1123, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %.val9.i = load ptr, ptr %i.dh, align 8, !noalias !1124, !nonnull !5, !noundef !5 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container:bb.a
  %i.fe = icmp eq i32 %i.fd, -1
  br i1 %i.fe, label %.invoke4735, label %bb.o, !prof !11

.invoke4735:                                      ; preds = %bb.s, %bb.n
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke4735
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ff = add nuw i32 %i.fd, 1                    ; 2 uses
  store i32 %i.ff, ptr %i.fc, align 4, !noalias !1127
  br label %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit36
  %i.fg = trunc i32 %.sroa.11.0 to i1
  br i1 %i.fg, label %bb.q, label %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.fh = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB2_16SourceToDefCache23get_or_insert_expansion(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.en, ptr noundef nonnull %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.ep, i32 noundef %.sroa.16498.0, i32 noundef %.sroa.22.0)
          to label %.noexc58 unwind label %.loopexit

.noexc58:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !1127
  invoke void @_RNvMsd_Cs33K2ylI4knu_10hir_expandNtB5_13ExpansionInfo3arg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fh)
          to label %.noexc59 unwind label %.loopexit

.noexc59:                                         ; preds = %.noexc58
  call void @llvm.experimental.noalias.scope.decl(metadata !1128), !noalias !1125
  call void @llvm.experimental.noalias.scope.decl(metadata !1129), !noalias !1125
  %i.fi = load ptr, ptr %i.bz, align 8, !alias.scope !1129, !noalias !1127, !align !8, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1130), !noalias !1125
  %.not.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.noexc59
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !1130, !noalias !1131, !nonnull !5, !noundef !5
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  %.val.i.i.i = load ptr, ptr %i.fk, align 8, !noalias !1132, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !1132, !noundef !5 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, -1
  br i1 %i.fn, label %.invoke4735, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.fo = add nuw i32 %i.fm, 1                    ; 2 uses
  store i32 %i.fo, ptr %i.fl, align 4, !noalias !1132
  %.sroa.41.i.sroa.0.0.copyload = load i32, ptr %i.dy, align 8, !alias.scope !1133, !noalias !1127
  %.sroa.41.i.sroa.4.0.copyload = load i32, ptr %.sroa.41.i.sroa.4.0..sroa_idx, align 4, !alias.scope !1133, !noalias !1127
  %.sroa.41.i.sroa.5.0.copyload = load i32, ptr %.sroa.41.i.sroa.5.0..sroa_idx, align 8, !alias.scope !1133, !noalias !1127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1127
  br label %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit

bb.u:                                             ; preds = %bb.r, %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1127
  br label %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit30: ; preds = %.loopexit, %.loopexit.split-lp, %.thread537, %bb.ol, %bb.z
  %.sroa.0496.1 = phi ptr [ %.sroa.0496.0, %.thread537 ], [ %.sroa.0338.1, %bb.z ], [ %.sroa.0496.0, %bb.ol ], [ %.sroa.0496.0, %.loopexit ], [ %.sroa.0496.0, %.loopexit.split-lp ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.6.ph, %.thread537 ], [ %.sroa.0.7, %bb.z ], [ %.sroa.0.6.ph, %bb.ol ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.3.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn5.i = phi { ptr, i32 } [ %.pn.i.ph, %.thread537 ], [ %i.gb, %bb.z ], [ %.pn.i.ph, %bb.ol ], [ %lpad.loopexit600, %.loopexit ], [ %lpad.loopexit.split-lp601, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0496.1) ], !noalias !1125
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0496.1, i64 48 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !noalias !1125, !noundef !5
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !noalias !1125
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.v, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit53

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit30
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0496.1) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit53 unwind label %bb.om

.loopexit:                                        ; preds = %bb.q, %.noexc58
  %lpad.loopexit600 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit30

.loopexit.split-lp:                               ; preds = %.invoke4735, %bb.oh
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.2, %.invoke4735 ], [ %.sroa.0.7, %bb.oh ]
  %lpad.loopexit.split-lp601 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit30

_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit: ; preds = %bb.o, %bb.t
  %i.ft = phi i32 [ %i.fo, %bb.t ], [ %i.ff, %bb.o ] ; 2 uses
  %.sroa.12.sroa.7.1 = phi i32 [ %.sroa.41.i.sroa.5.0.copyload, %bb.t ], [ %.sroa.22.0, %bb.o ] ; 14 uses
  %.sroa.12.sroa.0.1 = phi i32 [ %.sroa.41.i.sroa.4.0.copyload, %bb.t ], [ %.sroa.16498.0, %bb.o ] ; 14 uses
  %.sroa.7.1 = phi i32 [ %.sroa.41.i.sroa.0.0.copyload, %bb.t ], [ %.sroa.11.0, %bb.o ] ; 15 uses
  %.sroa.0338.1 = phi ptr [ %.val.i.i.i, %bb.t ], [ %.val.i54, %bb.o ] ; 19 uses
  %.not.i25 = icmp eq i32 %.sroa.7.1, 2
  br i1 %.not.i25, label %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit
  %i.fu = icmp eq i32 %.sroa.7.1, %.sroa.11.0
  br i1 %i.fu, label %bb.x, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.fv = icmp eq i32 %.sroa.12.sroa.7.1, %.sroa.22.0
  %i.fw = icmp eq i32 %.sroa.12.sroa.0.1, %.sroa.16498.0
  %or.cond = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit44, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit.thread: ; preds = %bb.p, %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit, %bb.u
  store i32 -1, ptr %0, align 4, !alias.scope !1122
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0496.0, i64 48 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !noalias !1125, !noundef !5
  %i.fz = add i32 %i.fy, -1                       ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 4, !noalias !1125
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit51

bb.y:                                             ; preds = %_RNCINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB7_14SourceToDefCtx28parent_ancestors_with_macrosNtB7_14ChildContainerNCNvB4_14find_container0E0Bb_.exit.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0496.0) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit51 unwind label %bb.l

bb.z:                                             ; preds = %bb.oj
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit30

.loopexit.split-lp679:                            ; preds = %bb.ab, %bb.aa
  %.sroa.0.5.ph = phi ptr [ %.sroa.0.2, %bb.aa ], [ %.sroa.0.7, %bb.ab ]
  %lpad.loopexit.split-lp681 = landingpad { ptr, i32 }
          cleanup
  br label %.thread537

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.x, %bb.w
  %i.gc = icmp eq i32 %i.ft, -1
  br i1 %i.gc, label %bb.aa, label %bb.ac, !prof !11

bb.aa:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc48 unwind label %.loopexit.split-lp679

.noexc48:                                         ; preds = %bb.aa
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit44: ; preds = %bb.x, %bb.ad, %bb.ac
  %.sroa.0.7 = phi ptr [ %.sroa.0338.1, %bb.ad ], [ %.sroa.0.2, %bb.x ], [ %.sroa.0338.1, %bb.ac ] ; 57 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0338.1, i64 48 ; 17 uses
  %i.ge = load i32, ptr %i.gd, align 4, !noalias !1134, !noundef !5 ; 3 uses
  %i.gf = icmp eq i32 %i.ge, -1
  br i1 %i.gf, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit44
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc46 unwind label %.loopexit.split-lp679

.noexc46:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0338.1, i64 48
  %i.gh = add nuw i32 %i.ft, 1
  store i32 %i.gh, ptr %i.gg, align 4, !noalias !1135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ], !noalias !1125
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 48 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !noalias !1125, !noundef !5
  %i.gk = add i32 %i.gj, -1                       ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 4, !noalias !1125
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit44

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.2) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit44 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.thread537

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit44
  %i.gn = add nuw i32 %i.ge, 1                    ; 2 uses
  store i32 %i.gn, ptr %i.gd, align 4, !noalias !1134
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137), !noalias !1123
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %.invoke4736, label %bb.ag, !prof !11

.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nl, %bb.nf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i, %bb.kd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke, %bb.jt, %bb.jq, %bb.oe
  %lpad.loopexit.split-lp4831 = landingpad { ptr, i32 }
          cleanup
  br label %.thread537

.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %bb.kw, %bb.jz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i328, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i, %bb.ls, %.invoke4736
  %lpad.loopexit.split-lp4825 = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.ag:                                            ; preds = %bb.af
  %i.gp = add nuw i32 %i.ge, 2
  store i32 %i.gp, ptr %i.gd, align 4, !noalias !1138
  %i.gq = invoke fastcc { i64, ptr } @_RNvXsny_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ItemNtBa_7AstNode4cast(ptr noundef nonnull %.sroa.0338.1)
          to label %bb.ah unwind label %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp, !noalias !1138, !inline_history !956 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.gr = extractvalue { i64, ptr } %i.gq, 0      ; 3 uses
  %.not.i.i = icmp eq i64 %i.gr, -1
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gs = extractvalue { i64, ptr } %i.gq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1138
  store i64 %i.gr, ptr %i.cp, align 8, !noalias !1138
  store ptr %i.gs, ptr %i.dz, align 8, !noalias !1138
  switch i64 %i.gr, label %bb.be [
    i64 1, label %bb.ak
    i64 2, label %bb.am
    i64 5, label %bb.ao
    i64 6, label %bb.aq
    i64 10, label %bb.as
    i64 11, label %bb.at
    i64 12, label %bb.av
    i64 13, label %bb.ax
    i64 14, label %bb.az
    i64 15, label %bb.bb
  ]

bb.aj:                                            ; preds = %bb.ah
  %i.gt = load i32, ptr %i.gd, align 4, !noalias !1138, !noundef !5 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, -1
  br i1 %i.gu, label %.invoke4736, label %bb.ju, !prof !11

.invoke4736:                                      ; preds = %bb.af, %bb.aj
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.cont4737 unwind label %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp

.cont4737:                                        ; preds = %.invoke4736
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !1138
  store i32 %.sroa.7.1, ptr %i.ej, align 8, !noalias !1138
  store i32 %.sroa.12.sroa.0.1, ptr %.sroa.4461.0..sroa_idx, align 4, !noalias !1138
  store i32 %.sroa.12.sroa.7.1, ptr %.sroa.5462.0..sroa_idx, align 8, !noalias !1138
  store ptr %i.dz, ptr %i.cf, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1140
  call void @llvm.experimental.noalias.scope.decl(metadata !1141), !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ey, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ej, i64 12, i1 false), !alias.scope !1143, !noalias !1144
  store ptr %i.dz, ptr %i.ap, align 8, !alias.scope !1145, !noalias !1140
  invoke void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ap)
          to label %.noexc2854 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !966

.noexc2854:                                       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1140
  %i.gv = load i32, ptr %i.aq, align 4, !range !30, !noalias !1140, !noundef !5
  %.not.i1.i = icmp eq i32 %i.gv, -1
  br i1 %.not.i1.i, label %.thread2960, label %bb.al

.thread2960:                                      ; preds = %.noexc2854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !1138
  br label %bb.be

bb.al:                                            ; preds = %.noexc2854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1140
  %i.gw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.ao, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.ej)
          to label %.noexc2855 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !966

.noexc2855:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1146
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dz)
          to label %.noexc2856 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !966

.noexc2856:                                       ; preds = %.noexc2855
  %i.gx = invoke noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstNtB6_7ConstIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ar)
          to label %.noexc2857 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !966 ; 2 uses

.noexc2857:                                       ; preds = %.noexc2856
  %.not6.i.i = icmp eq ptr %i.gx, null
  br i1 %.not6.i.i, label %.thread2964, label %bb.bd

.thread2964:                                      ; preds = %.noexc2857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !1138
  br label %bb.be

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1138
  store i32 %.sroa.7.1, ptr %i.ei, align 8, !noalias !1138
  store i32 %.sroa.12.sroa.0.1, ptr %.sroa.4479.0..sroa_idx, align 4, !noalias !1138
  store i32 %.sroa.12.sroa.7.1, ptr %.sroa.5480.0..sroa_idx, align 8, !noalias !1138
  store ptr %i.dz, ptr %i.cl, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1148
  call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ex, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ei, i64 12, i1 false), !alias.scope !1150, !noalias !1151
  store ptr %i.dz, ptr %i.al, align 8, !alias.scope !1152, !noalias !1148
  invoke void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al)
          to label %.noexc2864 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !979

.noexc2864:                                       ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1148
  %i.gy = load i32, ptr %i.am, align 4, !range !30, !noalias !1148, !noundef !5
  %.not.i1.i2858 = icmp eq i32 %i.gy, -1
  br i1 %.not.i1.i2858, label %.thread2968, label %bb.an

.thread2968:                                      ; preds = %.noexc2864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !1138
  br label %bb.be

bb.an:                                            ; preds = %.noexc2864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 16, i1 false), !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1148
  %i.gz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.ak, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.ei)
          to label %.noexc2865 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !979

.noexc2865:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1153
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dz)
          to label %.noexc2866 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !979

.noexc2866:                                       ; preds = %.noexc2865
  %i.ha = invoke noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtB6_6EnumIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gz, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.an)
          to label %.noexc2867 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !979 ; 3 uses

.noexc2867:                                       ; preds = %.noexc2866
  %.not6.i.i2859 = icmp eq ptr %i.ha, null
  br i1 %.not6.i.i2859, label %.thread2972, label %bb.by

.thread2972:                                      ; preds = %.noexc2867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !1138
  br label %bb.be

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !1138
  store i32 %.sroa.7.1, ptr %i.eh, align 8, !noalias !1138
  store i32 %.sroa.12.sroa.0.1, ptr %.sroa.4467.0..sroa_idx, align 4, !noalias !1138
  store i32 %.sroa.12.sroa.7.1, ptr %.sroa.5468.0..sroa_idx, align 8, !noalias !1138
  store ptr %i.dz, ptr %i.ch, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1155
  call void @llvm.experimental.noalias.scope.decl(metadata !1156), !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.eh, i64 12, i1 false), !alias.scope !1157, !noalias !1158
  store ptr %i.dz, ptr %i.ah, align 8, !alias.scope !1159, !noalias !1155
  invoke void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah)
          to label %.noexc2874 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !992

.noexc2874:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1155
  %i.hb = load i32, ptr %i.ai, align 4, !range !30, !noalias !1155, !noundef !5
  %.not.i1.i2868 = icmp eq i32 %i.hb, -1
  br i1 %.not.i1.i2868, label %.thread2976, label %bb.ap

.thread2976:                                      ; preds = %.noexc2874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !1138
  br label %bb.be

bb.ap:                                            ; preds = %.noexc2874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false), !noalias !1155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1155
  %i.hc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.ag, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.eh)
          to label %.noexc2875 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !992

.noexc2875:                                       ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1160
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dz)
          to label %.noexc2876 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !992

.noexc2876:                                       ; preds = %.noexc2875
  %i.hd = invoke noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtB6_10FunctionIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.aj)
          to label %.noexc2877 unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp, !inline_history !992 ; 2 uses

.noexc2877:                                       ; preds = %.noexc2876
  %.not6.i.i2869 = icmp eq ptr %i.hd, null
  br i1 %.not6.i.i2869, label %.thread2980, label %bb.bz

.thread2980:                                      ; preds = %.noexc2877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !1138
  br label %bb.be

bb.aq:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1138
  store i32 %.sroa.7.1, ptr %i.eg, align 8, !noalias !1138
  store i32 %.sroa.12.sroa.0.1, ptr %.sroa.4482.0..sroa_idx, align 4, !noalias !1138
  store i32 %.sroa.12.sroa.7.1, ptr %.sroa.5483.0..sroa_idx, align 8, !noalias !1138
  store ptr %i.dz, ptr %i.cm, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1162
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container:bb.a

bb.ix:                                            ; preds = %bb.iw
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aav, i64 56
  %i.abg = load i32, ptr %i.abf, align 8, !noalias !1142, !noundef !5
  br label %.noexc.i168

bb.iy:                                            ; preds = %bb.iw
  %i.abh = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.aav)
          to label %.noexc.i168 unwind label %.loopexit.split-lp614, !noalias !1142

.noexc.i168:                                      ; preds = %bb.iy, %bb.ix
  %.sroa.0.0.i.i169 = phi i32 [ %i.abg, %bb.ix ], [ %i.abh, %bb.iy ] ; 3 uses
  %i.abi = load i64, ptr %i.aav, align 8, !range !17, !noalias !1142, !noundef !5
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abk = trunc nuw i64 %i.abi to i1
  %i.abl = load ptr, ptr %i.abj, align 8, !noalias !1142, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.abk, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %.noexc.i168
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abn = load i64, ptr %i.abm, align 8, !noalias !1142, !noundef !5 ; 2 uses
  %i.abo = icmp ugt i64 %i.abn, 4294967295
  %i.abp = shl nuw i64 %i.abn, 32
  %.sroa.09.0.insert.insert.i.i.i179 = select i1 %i.abo, i64 513, i64 %i.abp ; 2 uses
  %i.abq = trunc i64 %.sroa.09.0.insert.insert.i.i.i179 to i1
  br i1 %i.abq, label %bb.ja, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i180, !prof !11

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1142
  br label %.invoke1.i176

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i180: ; preds = %bb.iz
  %.sroa.6.0.extract.shift.i.i.i.i181 = lshr i64 %.sroa.09.0.insert.insert.i.i.i179, 32
  %.sroa.6.0.extract.trunc.i.i.i.i182 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i181 to i32
  br label %bb.jc

bb.jb:                                            ; preds = %.noexc.i168
  %i.abr = load i32, ptr %i.abl, align 8, !noalias !1142, !noundef !5
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i180
  %.sroa.02.0.i.i170 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i182, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i180 ], [ %i.abr, %bb.jb ]
  %i.abs = add i32 %.sroa.02.0.i.i170, %.sroa.0.0.i.i169 ; 2 uses
  %.not.i.i171 = icmp ugt i32 %.sroa.0.0.i.i169, %i.abs
  br i1 %.not.i.i171, label %.invoke.i174, label %bb.je, !prof !11

.loopexit.split-lp614:                            ; preds = %bb.jg, %bb.iy, %.invoke1.i176, %.invoke.i174
  %lpad.loopexit.split-lp616 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aav, i64 48 ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !noalias !1142, !noundef !5
  %i.abv = add i32 %i.abu, -1                     ; 2 uses
  store i32 %i.abv, ptr %i.abt, align 4, !noalias !1142
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.jd, label %.body184

bb.jd:                                            ; preds = %.loopexit.split-lp614
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aav) #26
          to label %.body184 unwind label %bb.jn, !noalias !1142

bb.je:                                            ; preds = %bb.jc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.7) ], !noalias !1142
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 60
  %i.aby = load i8, ptr %i.abx, align 4, !range !21, !noalias !1142, !noundef !5
  %i.abz = trunc nuw i8 %i.aby to i1
  br i1 %i.abz, label %bb.jg, label %bb.jf, !prof !11

bb.jf:                                            ; preds = %bb.je
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 56
  %i.acb = load i32, ptr %i.aca, align 8, !noalias !1142, !noundef !5
  br label %.noexc13.i

bb.jg:                                            ; preds = %bb.je
  %i.acc = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.0.7)
          to label %.noexc13.i unwind label %.loopexit.split-lp614, !noalias !1142

.noexc13.i:                                       ; preds = %bb.jg, %bb.jf
  %.sroa.0.0.i6.i = phi i32 [ %i.acb, %bb.jf ], [ %i.acc, %bb.jg ] ; 3 uses
  %i.acd = load i64, ptr %.sroa.0.7, align 8, !range !17, !noalias !1142, !noundef !5
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 8
  %i.acf = trunc nuw i64 %i.acd to i1
  %i.acg = load ptr, ptr %i.ace, align 8, !noalias !1142, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.acf, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %.noexc13.i
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !noalias !1142, !noundef !5 ; 2 uses
  %i.acj = icmp ugt i64 %i.aci, 4294967295
  %i.ack = shl nuw i64 %i.aci, 32
  %.sroa.09.0.insert.insert.i.i9.i = select i1 %i.acj, i64 513, i64 %i.ack ; 2 uses
  %i.acl = trunc i64 %.sroa.09.0.insert.insert.i.i9.i to i1
  br i1 %i.acl, label %bb.ji, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i10.i, !prof !11

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1142
  br label %.invoke1.i176

.invoke1.i176:                                    ; preds = %bb.ji, %bb.ja
  %.sink.i177 = phi ptr [ %i.bp, %bb.ja ], [ %i.bo, %bb.ji ] ; 2 uses
  store i8 2, ptr %.sink.i177, align 1, !noalias !1142
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %.sink.i177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #28
          to label %.cont2.i178 unwind label %.loopexit.split-lp614, !noalias !1142

.cont2.i178:                                      ; preds = %.invoke1.i176
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i10.i: ; preds = %bb.jh
  %.sroa.6.0.extract.shift.i.i.i11.i = lshr i64 %.sroa.09.0.insert.insert.i.i9.i, 32
  %.sroa.6.0.extract.trunc.i.i.i12.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i11.i to i32
  br label %bb.jk

bb.jj:                                            ; preds = %.noexc13.i
  %i.acm = load i32, ptr %i.acg, align 8, !noalias !1142, !noundef !5
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i10.i
  %.sroa.02.0.i7.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i12.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i10.i ], [ %i.acm, %bb.jj ]
  %i.acn = xor i32 %.sroa.0.0.i6.i, -1
  %.not.i8.i = icmp ugt i32 %.sroa.02.0.i7.i, %i.acn
  br i1 %.not.i8.i, label %.invoke.i174, label %bb.jl, !prof !11

.invoke.i174:                                     ; preds = %bb.jk, %bb.jc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.cont.i175 unwind label %.loopexit.split-lp614, !noalias !1142

.cont.i175:                                       ; preds = %.invoke.i174
  unreachable

bb.jl:                                            ; preds = %bb.jk
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aav, i64 48 ; 2 uses
  %i.acp = load i32, ptr %i.aco, align 8, !noalias !1142, !noundef !5
  %i.acq = add i32 %i.acp, -1                     ; 2 uses
  store i32 %i.acq, ptr %i.aco, align 8, !noalias !1142
  %i.acr = icmp eq i32 %i.acq, 0
  br i1 %i.acr, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aav) #26
          to label %bb.jo unwind label %.loopexit.split-lp609.loopexit.split-lp.loopexit.split-lp

bb.jn:                                            ; preds = %bb.jd
  %i.acs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1142
  unreachable

bb.jo:                                            ; preds = %bb.jl, %bb.jm
  %.not.i172 = icmp ule i32 %.sroa.0.0.i.i169, %.sroa.0.0.i6.i
  %i.act = icmp ult i32 %.sroa.0.0.i6.i, %i.abs
  %.sroa.0.0.i173 = and i1 %.not.i172, %i.act     ; 2 uses
  %spec.select306.i.i = select i1 %.sroa.0.0.i173, i32 2, i32 1
  %spec.select307.i.i = select i1 %.sroa.0.0.i173, i32 5, i32 6
  br label %bb.bx

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1138
  br label %bb.jp

bb.jp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit
  %.sroa.20.2.i.i = phi i32 [ %.sroa.20.0.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.20.3.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.0.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.0.3.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit ]
  %i.acu = phi <2 x i32> [ %i.kb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit ], [ %i.adu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit ]
  store i32 %.sroa.0.2.i.i, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  store i32 %.sroa.20.2.i.i, ptr %.sroa.20.0..sroa_idx2.i.i, align 4, !alias.scope !1204, !noalias !1123
  store <2 x i32> %i.acu, ptr %.sroa.38.0..sroa_idx17.i.i, align 4, !alias.scope !1204, !noalias !1123
  %i.acv = load i32, ptr %i.gd, align 4, !noundef !5
  %i.acw = add i32 %i.acv, -1                     ; 2 uses
  store i32 %i.acw, ptr %i.gd, align 4
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.jq, label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container0Ba_.exit

bb.jq:                                            ; preds = %bb.jp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0338.1) #26
          to label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container0Ba_.exit unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i331, %bb.ke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i129, %bb.mo, %bb.mq, %bb.nd, %bb.nq, %bb.ob, %bb.og
  %i.acy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1142, !inline_history !956
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit330: ; preds = %bb.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1138
  br label %bb.js

bb.js:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit145, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemECs8Xq8PKFYOms_3hir.exit330
  %i.acz = load i32, ptr %i.gd, align 4, !noundef !5
  %i.ada = add i32 %i.acz, -1                     ; 2 uses
  store i32 %i.ada, ptr %i.gd, align 4
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.jt, label %bb.oi

bb.jt:                                            ; preds = %bb.js
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0338.1) #26
          to label %bb.oi unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ju:                                            ; preds = %bb.aj
  %i.adc = add nuw i32 %i.gt, 1
  store i32 %i.adc, ptr %i.gd, align 4, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr %.sroa.0338.1, ptr %i.bq, align 8, !noalias !1138
  %i.add = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bq)
          to label %bb.jx unwind label %bb.jv, !noalias !1138

bb.jv:                                            ; preds = %bb.ju
  %i.ade = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adf = load i32, ptr %i.gd, align 4, !noalias !1138, !noundef !5
  %i.adg = add i32 %i.adf, -1                     ; 2 uses
  store i32 %i.adg, ptr %i.gd, align 4, !noalias !1138
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.jw, label %.thread550

bb.jw:                                            ; preds = %bb.jv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0338.1) #26
          to label %.thread550 unwind label %bb.ka, !noalias !1138

bb.jx:                                            ; preds = %bb.ju
  %i.adi = icmp eq i16 %i.add, 318
  br i1 %i.adi, label %bb.kb, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.adj = load i32, ptr %i.gd, align 4, !noalias !1138, !noundef !5
  %i.adk = add i32 %i.adj, -1                     ; 2 uses
  store i32 %i.adk, ptr %i.gd, align 4, !noalias !1138
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.jz, label %bb.kd

bb.jz:                                            ; preds = %bb.jy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0338.1) #26
          to label %bb.kd unwind label %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp

bb.ka:                                            ; preds = %bb.jw
  %i.adm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1138
  unreachable

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !1138
  store ptr %.sroa.0338.1, ptr %i.ce, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !1138
  store i32 %.sroa.7.1, ptr %i.el, align 8, !noalias !1138
  store i32 %.sroa.12.sroa.0.1, ptr %.sroa.4447.0..sroa_idx, align 4, !noalias !1138
  store i32 %.sroa.12.sroa.7.1, ptr %.sroa.5448.0..sroa_idx, align 8, !noalias !1138
  store ptr %i.ce, ptr %i.cd, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1222
  call void @llvm.experimental.noalias.scope.decl(metadata !1223), !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.el, i64 12, i1 false), !alias.scope !1224, !noalias !1225
  store ptr %i.ce, ptr %i.f, align 8, !alias.scope !1226, !noalias !1222
  invoke void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %.noexc2944 unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1098

.noexc2944:                                       ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1222
  %i.adn = load i32, ptr %i.g, align 4, !range !30, !noalias !1222, !noundef !5
  %.not.i1.i2938 = icmp eq i32 %i.adn, -1
  br i1 %.not.i1.i2938, label %.thread3032, label %bb.kc

.thread3032:                                      ; preds = %.noexc2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1221
  br label %bb.kv

bb.kc:                                            ; preds = %.noexc2944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1222
  %i.ado = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.el)
          to label %.noexc2945 unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1098

.noexc2945:                                       ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1227
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ce)
          to label %.noexc2946 unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1098

.noexc2946:                                       ; preds = %.noexc2945
  %i.adp = invoke noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNtB6_13EnumVariantIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ado, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.h)
          to label %.noexc2947 unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1098 ; 2 uses

.noexc2947:                                       ; preds = %.noexc2946
  %.not6.i.i2939 = icmp eq ptr %i.adp, null
  br i1 %.not6.i.i2939, label %.thread3036, label %bb.kf

.thread3036:                                      ; preds = %.noexc2947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1227
  br label %bb.kv

bb.kd:                                            ; preds = %bb.jy, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !1138
  invoke void @_RNvXs0_NtCsjJXvCMGntp8_6syntax3astINtCs83ee1IJTiSq_6either6EitherNtNtNtB5_9generated5nodes3PatNtB13_4NameENtB5_7AstNode4castCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cb, ptr noundef nonnull %.sroa.0338.1)
          to label %bb.lt unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1138, !inline_history !956

.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kb, %bb.kc, %.noexc2945, %.noexc2946, %bb.kg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i11.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i, %bb.lo
  %lpad.loopexit.split-lp4843 = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.body141:                                         ; preds = %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp674, %bb.lf, %.body.i, %bb.ks, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i.i
  %eh.lpad-body142 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp676, %.loopexit.split-lp674 ], [ %eh.lpad-body.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i.i ], [ %eh.lpad-body.i, %bb.ks ], [ %lpad.loopexit.split-lp676, %bb.lf ], [ %lpad.loopexit.split-lp4843, %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val355.i.i = load ptr, ptr %i.ce, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.val355.i.i, i64 48 ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !noalias !1142, !noundef !5
  %i.ads = add i32 %i.adr, -1                     ; 2 uses
  store i32 %i.ads, ptr %i.adq, align 4, !noalias !1142
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.ke, label %.thread550

bb.ke:                                            ; preds = %.body141
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val355.i.i) #26
          to label %.thread550 unwind label %bb.jr

bb.kf:                                            ; preds = %.noexc2947
  %i.adu = load <2 x i32>, ptr %i.adp, align 4, !noalias !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !1138
  %.val356.i.i = load ptr, ptr %i.ce, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1142
  %i.adv = getelementptr inbounds nuw i8, ptr %.val356.i.i, i64 48 ; 2 uses
  %i.adw = load i32, ptr %i.adv, align 4, !noalias !1142, !noundef !5 ; 2 uses
  %i.adx = icmp eq i32 %i.adw, -1
  br i1 %i.adx, label %bb.kg, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i, !prof !11

bb.kg:                                            ; preds = %bb.kf
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc150 unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.kg
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i: ; preds = %bb.kf
  %i.ady = add nuw i32 %i.adw, 1
  store i32 %i.ady, ptr %i.adv, align 4, !noalias !1142
  %i.adz = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.val356.i.i)
          to label %.noexc151 unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc151:                                        ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i
  %i.aea = extractvalue { i64, ptr } %i.adz, 0
  %i.aeb = extractvalue { i64, ptr } %i.adz, 1
  store i64 %i.aea, ptr %i.bs, align 8, !noalias !1142
  store ptr %i.aeb, ptr %i.em, align 8, !noalias !1142
  br label %bb.kh

bb.kh:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs8Xq8PKFYOms_3hir.exit.i.i, %.noexc151
  %i.aec = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %.noexc.i146 unwind label %bb.kr, !noalias !1142 ; 2 uses

.noexc.i146:                                      ; preds = %bb.kh
  %i.aed = extractvalue { i64, ptr } %i.aec, 0    ; 2 uses
  %.not.i.i147 = icmp eq i64 %i.aed, 2
  br i1 %.not.i.i147, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs8Xq8PKFYOms_3hir.exit.i, label %bb.ki

bb.ki:                                            ; preds = %.noexc.i146
  %i.aee = extractvalue { i64, ptr } %i.aec, 1    ; 10 uses
  %i.aef = trunc nuw i64 %i.aed to i1
  br i1 %i.aef, label %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs8Xq8PKFYOms_3hir.exit.i.i.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aee) ], !noalias !1142
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 48 ; 2 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !noalias !1229, !noundef !5
  %i.aei = add i32 %i.aeh, -1                     ; 2 uses
  store i32 %i.aei, ptr %i.aeg, align 4, !noalias !1229
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs8Xq8PKFYOms_3hir.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i: ; preds = %bb.kj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aee) #26
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs8Xq8PKFYOms_3hir.exit.i.i unwind label %bb.kr, !noalias !1142

_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %bb.ki
  %.not.i.i.i149 = icmp eq ptr %i.aee, null
  br i1 %.not.i.i.i149, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs8Xq8PKFYOms_3hir.exit.i.i, label %bb.kk

bb.kk:                                            ; preds = %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs8Xq8PKFYOms_3hir.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1230
  store ptr %i.aee, ptr %i.br, align 8, !noalias !1230
  %i.aek = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.br)
          to label %bb.kn unwind label %bb.kl, !noalias !1229

bb.kl:                                            ; preds = %bb.kk
  %i.ael = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aee, i64 48 ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !noalias !1229, !noundef !5
  %i.aeo = add i32 %i.aen, -1                     ; 2 uses
  store i32 %i.aeo, ptr %i.aem, align 4, !noalias !1229
  %i.aep = icmp eq i32 %i.aeo, 0
  br i1 %i.aep, label %bb.km, label %.body.i

bb.km:                                            ; preds = %bb.kl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aee) #26
          to label %.body.i unwind label %bb.kq, !noalias !1229

bb.kn:                                            ; preds = %bb.kk
  %i.aeq = icmp eq i16 %i.aek, 31
  br i1 %i.aeq, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aee, i64 48 ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !noalias !1229, !noundef !5
  %i.aet = add i32 %i.aes, -1                     ; 2 uses
  store i32 %i.aet, ptr %i.aer, align 4, !noalias !1229
  %i.aeu = icmp eq i32 %i.aet, 0
  br i1 %i.aeu, label %bb.kp, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i

bb.kp:                                            ; preds = %bb.ko
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aee) #26
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i unwind label %bb.kr, !noalias !1142

bb.kq:                                            ; preds = %bb.km
  %i.aev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1229
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %bb.kp, %bb.ko, %bb.kn
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.aee, %bb.kn ], [ null, %bb.ko ], [ null, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1230
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs8Xq8PKFYOms_3hir.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs8Xq8PKFYOms_3hir.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs8Xq8PKFYOms_3hir.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i, %bb.kj
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs8Xq8PKFYOms_3hir.exit.i.i.i ], [ null, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs8Xq8PKFYOms_3hir.exit.i.i.i ], [ null, %bb.kj ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i ] ; 2 uses
  %.not7.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not7.i.i, label %bb.kh, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs8Xq8PKFYOms_3hir.exit.i

bb.kr:                                            ; preds = %bb.kp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i, %bb.kh
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container:bb.a
  %.not.i.i138 = icmp ugt i32 %.sroa.0.0.i.i137, %i.agc
  br i1 %.not.i.i138, label %.invoke.i, label %bb.lg, !prof !11

.loopexit.split-lp674:                            ; preds = %bb.li, %bb.la, %.invoke1.i, %.invoke.i
  %lpad.loopexit.split-lp676 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i148, i64 48 ; 2 uses
  %i.age = load i32, ptr %i.agd, align 4, !noalias !1142, !noundef !5
  %i.agf = add i32 %i.age, -1                     ; 2 uses
  store i32 %i.agf, ptr %i.agd, align 4, !noalias !1142
  %i.agg = icmp eq i32 %i.agf, 0
  br i1 %i.agg, label %bb.lf, label %.body141

bb.lf:                                            ; preds = %.loopexit.split-lp674
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i5.i148) #26
          to label %.body141 unwind label %bb.lp, !noalias !1142

bb.lg:                                            ; preds = %bb.le
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.7) ], !noalias !1142
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 60
  %i.agi = load i8, ptr %i.agh, align 4, !range !21, !noalias !1142, !noundef !5
  %i.agj = trunc nuw i8 %i.agi to i1
  br i1 %i.agj, label %bb.li, label %bb.lh, !prof !11

bb.lh:                                            ; preds = %bb.lg
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 56
  %i.agl = load i32, ptr %i.agk, align 8, !noalias !1142, !noundef !5
  br label %.noexc12.i

bb.li:                                            ; preds = %bb.lg
  %i.agm = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.0.7)
          to label %.noexc12.i unwind label %.loopexit.split-lp674, !noalias !1142

.noexc12.i:                                       ; preds = %bb.li, %bb.lh
  %.sroa.0.0.i5.i = phi i32 [ %i.agl, %bb.lh ], [ %i.agm, %bb.li ] ; 2 uses
  %i.agn = load i64, ptr %.sroa.0.7, align 8, !range !17, !noalias !1142, !noundef !5
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 8
  %i.agp = trunc nuw i64 %i.agn to i1
  %i.agq = load ptr, ptr %i.ago, align 8, !noalias !1142, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.agp, label %bb.lj, label %bb.ll

bb.lj:                                            ; preds = %.noexc12.i
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load i64, ptr %i.agr, align 8, !noalias !1142, !noundef !5 ; 2 uses
  %i.agt = icmp ugt i64 %i.ags, 4294967295
  %i.agu = shl nuw i64 %i.ags, 32
  %.sroa.09.0.insert.insert.i.i8.i = select i1 %i.agt, i64 513, i64 %i.agu ; 2 uses
  %i.agv = trunc i64 %.sroa.09.0.insert.insert.i.i8.i to i1
  br i1 %i.agv, label %bb.lk, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i, !prof !11

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1142
  br label %.invoke1.i

.invoke1.i:                                       ; preds = %bb.lk, %bb.lc
  %.sink.i139 = phi ptr [ %i.bu, %bb.lc ], [ %i.bt, %bb.lk ] ; 2 uses
  store i8 2, ptr %.sink.i139, align 1, !noalias !1142
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %.sink.i139, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #28
          to label %.cont2.i unwind label %.loopexit.split-lp674, !noalias !1142

.cont2.i:                                         ; preds = %.invoke1.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i: ; preds = %bb.lj
  %.sroa.6.0.extract.shift.i.i.i10.i = lshr i64 %.sroa.09.0.insert.insert.i.i8.i, 32
  %.sroa.6.0.extract.trunc.i.i.i11.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i10.i to i32
  br label %bb.lm

bb.ll:                                            ; preds = %.noexc12.i
  %i.agw = load i32, ptr %i.agq, align 8, !noalias !1142, !noundef !5
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i
  %.sroa.02.0.i6.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i11.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i ], [ %i.agw, %bb.ll ]
  %i.agx = xor i32 %.sroa.0.0.i5.i, -1
  %.not.i7.i = icmp ugt i32 %.sroa.02.0.i6.i, %i.agx
  br i1 %.not.i7.i, label %.invoke.i, label %bb.ln, !prof !11

.invoke.i:                                        ; preds = %bb.lm, %bb.le
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.cont.i unwind label %.loopexit.split-lp674, !noalias !1142

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ln:                                            ; preds = %bb.lm
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5.i148, i64 48 ; 2 uses
  %i.agz = load i32, ptr %i.agy, align 8, !noalias !1142, !noundef !5
  %i.aha = add i32 %i.agz, -1                     ; 2 uses
  store i32 %i.aha, ptr %i.agy, align 8, !noalias !1142
  %i.ahb = icmp eq i32 %i.aha, 0
  br i1 %i.ahb, label %bb.lo, label %bb.lq

bb.lo:                                            ; preds = %bb.ln
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i5.i148) #26
          to label %bb.lq unwind label %.loopexit668.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lp:                                            ; preds = %bb.lf
  %i.ahc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1142
  unreachable

bb.lq:                                            ; preds = %bb.ln, %bb.lo
  %i.ahd = icmp ult i32 %i.agc, %.sroa.0.0.i5.i   ; 2 uses
  %spec.select308.i.i = select i1 %i.ahd, i32 3, i32 0
  %spec.select309.i.i = select i1 %i.ahd, i32 0, i32 5
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.kx
  %.sroa.20.3.i.i = phi i32 [ %spec.select308.i.i, %bb.lq ], [ 0, %bb.kx ]
  %.sroa.0.3.i.i = phi i32 [ %spec.select309.i.i, %bb.lq ], [ 5, %bb.kx ]
  %.val353.i.i = load ptr, ptr %i.ce, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.val353.i.i, i64 48 ; 2 uses
  %i.ahf = load i32, ptr %i.ahe, align 4, !noalias !1142, !noundef !5
  %i.ahg = add i32 %i.ahf, -1                     ; 2 uses
  store i32 %i.ahg, ptr %i.ahe, align 4, !noalias !1142
  %i.ahh = icmp eq i32 %i.ahg, 0
  br i1 %i.ahh, label %bb.ls, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit

bb.ls:                                            ; preds = %bb.lr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val353.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit unwind label %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.lr, %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !1138
  br label %bb.jp

bb.lt:                                            ; preds = %bb.kd
  %i.ahi = load i64, ptr %i.cb, align 8, !range !1231, !noalias !1138, !noundef !5 ; 2 uses
  %.not266.i.i = icmp eq i64 %i.ahi, -2
  br i1 %.not266.i.i, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %.sroa.4250.0.copyload.i.i = load ptr, ptr %.sroa.4250.0..sroa_idx.i.i, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !1138
  %i.ahj = icmp eq i64 %i.ahi, -1
  %i.ahk = getelementptr i8, ptr %.sroa.4250.0.copyload.i.i, i64 16
  %.sroa.4250.0.copyload.val.i.i = load ptr, ptr %i.ahk, align 8, !noalias !1138, !noundef !5 ; 15 uses
  %.not.i132 = icmp eq ptr %.sroa.4250.0.copyload.val.i.i, null ; 2 uses
  br i1 %i.ahj, label %bb.lw, label %bb.lz

bb.lv:                                            ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !1138
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120.sink.split

bb.lw:                                            ; preds = %bb.lu
  br i1 %.not.i132, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit134.thread, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.val.i.i, i64 48 ; 10 uses
  %i.ahm = load i32, ptr %i.ahl, align 4, !noalias !1138, !noundef !5 ; 2 uses
  %i.ahn = icmp eq i32 %i.ahm, -1
  br i1 %i.ahn, label %bb.ly, label %bb.mr, !prof !11

bb.ly:                                            ; preds = %bb.lx
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc133 unwind label %.loopexit.split-lp659.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.ly
  unreachable

.body124:                                         ; preds = %.loopexit.split-lp654.loopexit.split-lp.loopexit.split-lp, %bb.mn, %bb.mo, %bb.md, %bb.me
  %.pn.i.i = phi { ptr, i32 } [ %i.ahx, %bb.md ], [ %i.aiq, %bb.mn ], [ %i.ahx, %bb.me ], [ %i.aiq, %bb.mo ], [ %lpad.loopexit.split-lp4834, %.loopexit.split-lp654.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.i.i, i64 48 ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !noalias !1138, !noundef !5
  %i.ahq = add i32 %i.ahp, -1                     ; 2 uses
  store i32 %i.ahq, ptr %i.aho, align 4, !noalias !1138
  %i.ahr = icmp eq i32 %i.ahq, 0
  br i1 %i.ahr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i129, label %.thread537

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i129: ; preds = %.body124
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.i.i) #26
          to label %.thread537 unwind label %bb.jr

.loopexit.split-lp654.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mh, %bb.mp, %bb.mb
  %lpad.loopexit.split-lp4834 = landingpad { ptr, i32 }
          cleanup
  br label %.body124

bb.lz:                                            ; preds = %bb.lu
  br i1 %.not.i132, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit128.thread, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.ahs = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.val.i.i, i64 48 ; 10 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !noalias !1138, !noundef !5 ; 2 uses
  %i.ahu = icmp eq i32 %i.aht, -1
  br i1 %i.ahu, label %bb.mb, label %bb.mc, !prof !11

bb.mb:                                            ; preds = %bb.ma
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc127 unwind label %.loopexit.split-lp654.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.mb
  unreachable

bb.mc:                                            ; preds = %bb.ma
  %i.ahv = add nuw i32 %i.aht, 1
  store i32 %i.ahv, ptr %i.ahs, align 4, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %.sroa.4250.0.copyload.val.i.i, ptr %i.bv, align 8, !noalias !1138
  %i.ahw = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.mf unwind label %bb.md, !noalias !1138

bb.md:                                            ; preds = %bb.mc
  %i.ahx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahy = load i32, ptr %i.ahs, align 4, !noalias !1138, !noundef !5
  %i.ahz = add i32 %i.ahy, -1                     ; 2 uses
  store i32 %i.ahz, ptr %i.ahs, align 4, !noalias !1138
  %i.aia = icmp eq i32 %i.ahz, 0
  br i1 %i.aia, label %bb.me, label %.body124

bb.me:                                            ; preds = %bb.md
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %.body124 unwind label %bb.mi, !noalias !1138

bb.mf:                                            ; preds = %bb.mc
  %i.aib = icmp eq i16 %i.ahw, 254
  br i1 %i.aib, label %bb.mj, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.aic = load i32, ptr %i.ahs, align 4, !noalias !1138, !noundef !5
  %i.aid = add i32 %i.aic, -1                     ; 2 uses
  store i32 %i.aid, ptr %i.ahs, align 4, !noalias !1138
  %i.aie = icmp eq i32 %i.aid, 0
  br i1 %i.aie, label %bb.mh, label %.thread562

bb.mh:                                            ; preds = %bb.mg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %.thread562 unwind label %.loopexit.split-lp654.loopexit.split-lp.loopexit.split-lp

bb.mi:                                            ; preds = %bb.me
  %i.aif = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1138
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit128.thread: ; preds = %bb.lz, %.thread562
  store i32 -1, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.i.i, i64 48 ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 8, !noalias !1138, !noundef !5
  %i.aii = add i32 %i.aih, -1                     ; 2 uses
  store i32 %i.aii, ptr %i.aig, align 8, !noalias !1138
  %i.aij = icmp eq i32 %i.aii, 0
  br i1 %i.aij, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke: ; preds = %bb.of, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit134.thread, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit128.thread
  %i.aik = phi ptr [ %.sroa.0214.1.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread ], [ %.sroa.4250.0.copyload.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit128.thread ], [ %.sroa.4250.0.copyload.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit134.thread ], [ %.val325.i.i, %bb.of ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aik) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120 unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread562:                                       ; preds = %bb.mg, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit128.thread

bb.mj:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.ail = getelementptr i8, ptr %.sroa.4250.0.copyload.val.i.i, i64 16
  %.val317.i.i = load ptr, ptr %i.ail, align 8, !noalias !1138, !noundef !5 ; 4 uses
  %.not.i115 = icmp eq ptr %.val317.i.i, null
  br i1 %.not.i115, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit117, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.aim = getelementptr inbounds nuw i8, ptr %.val317.i.i, i64 48 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !noalias !1138, !noundef !5 ; 2 uses
  %i.aio = icmp eq i32 %i.ain, -1
  br i1 %i.aio, label %bb.mm, label %bb.ml, !prof !11

bb.ml:                                            ; preds = %bb.mk
  %i.aip = add nuw i32 %i.ain, 1
  store i32 %i.aip, ptr %i.aim, align 4, !noalias !1138
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit117

bb.mm:                                            ; preds = %bb.mk
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc116 unwind label %bb.mn

.noexc116:                                        ; preds = %bb.mm
  unreachable

bb.mn:                                            ; preds = %bb.mm
  %i.aiq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.air = load i32, ptr %i.ahs, align 4, !noalias !1138, !noundef !5
  %i.ais = add i32 %i.air, -1                     ; 2 uses
  store i32 %i.ais, ptr %i.ahs, align 4, !noalias !1138
  %i.ait = icmp eq i32 %i.ais, 0
  br i1 %i.ait, label %bb.mo, label %.body124

bb.mo:                                            ; preds = %bb.mn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %.body124 unwind label %bb.jr

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit117: ; preds = %bb.ml, %bb.mj
  %i.aiu = load i32, ptr %i.ahs, align 8, !noalias !1138, !noundef !5
  %i.aiv = add i32 %i.aiu, -1                     ; 2 uses
  store i32 %i.aiv, ptr %i.ahs, align 8, !noalias !1138
  %i.aiw = icmp eq i32 %i.aiv, 0
  br i1 %i.aiw, label %bb.mp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ParamECs8Xq8PKFYOms_3hir.exit

bb.mp:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit117
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ParamECs8Xq8PKFYOms_3hir.exit unwind label %.loopexit.split-lp654.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ParamECs8Xq8PKFYOms_3hir.exit: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit117, %bb.mp
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.i.i, i64 48 ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 8, !noalias !1138, !noundef !5
  %i.aiz = add i32 %i.aiy, -1                     ; 2 uses
  store i32 %i.aiz, ptr %i.aix, align 8, !noalias !1138
  %i.aja = icmp eq i32 %i.aiz, 0
  br i1 %i.aja, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ParamECs8Xq8PKFYOms_3hir.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.nf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECs8Xq8PKFYOms_3hir.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ParamECs8Xq8PKFYOms_3hir.exit
  %.sroa.0214.1.i.i = phi ptr [ %.val317.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i ], [ %.val317.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ParamECs8Xq8PKFYOms_3hir.exit ], [ %.val316.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECs8Xq8PKFYOms_3hir.exit ], [ %.val316.i.i, %bb.nf ] ; 13 uses
  %.not276.i.i = icmp eq ptr %.sroa.0214.1.i.i, null
  br i1 %.not276.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120.sink.split, label %bb.ng

.body104:                                         ; preds = %.loopexit.split-lp659.loopexit.split-lp.loopexit.split-lp, %bb.nc, %bb.nd, %bb.ms, %bb.mt
  %.pn274.i.i = phi { ptr, i32 } [ %i.ajh, %bb.ms ], [ %i.ajz, %bb.nc ], [ %i.ajh, %bb.mt ], [ %i.ajz, %bb.nd ], [ %lpad.loopexit.split-lp4837, %.loopexit.split-lp659.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.i.i, i64 48 ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 4, !noalias !1138, !noundef !5
  %i.ajd = add i32 %i.ajc, -1                     ; 2 uses
  store i32 %i.ajd, ptr %i.ajb, align 4, !noalias !1138
  %i.aje = icmp eq i32 %i.ajd, 0
  br i1 %i.aje, label %bb.mq, label %.thread537

bb.mq:                                            ; preds = %.body104
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.i.i) #26
          to label %.thread537 unwind label %bb.jr

.loopexit.split-lp659.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mw, %bb.ne, %bb.ly
  %lpad.loopexit.split-lp4837 = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.mr:                                            ; preds = %bb.lx
  %i.ajf = add nuw i32 %i.ahm, 1
  store i32 %i.ajf, ptr %i.ahl, align 4, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store ptr %.sroa.4250.0.copyload.val.i.i, ptr %i.bw, align 8, !noalias !1138
  %i.ajg = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bw)
          to label %bb.mu unwind label %bb.ms, !noalias !1138

bb.ms:                                            ; preds = %bb.mr
  %i.ajh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aji = load i32, ptr %i.ahl, align 4, !noalias !1138, !noundef !5
  %i.ajj = add i32 %i.aji, -1                     ; 2 uses
  store i32 %i.ajj, ptr %i.ahl, align 4, !noalias !1138
  %i.ajk = icmp eq i32 %i.ajj, 0
  br i1 %i.ajk, label %bb.mt, label %.body104

bb.mt:                                            ; preds = %bb.ms
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %.body104 unwind label %bb.mx, !noalias !1138

bb.mu:                                            ; preds = %bb.mr
  %i.ajl = icmp eq i16 %i.ajg, 287
  br i1 %i.ajl, label %bb.my, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.ajm = load i32, ptr %i.ahl, align 4, !noalias !1138, !noundef !5
  %i.ajn = add i32 %i.ajm, -1                     ; 2 uses
  store i32 %i.ajn, ptr %i.ahl, align 4, !noalias !1138
  %i.ajo = icmp eq i32 %i.ajn, 0
  br i1 %i.ajo, label %bb.mw, label %.thread566

bb.mw:                                            ; preds = %bb.mv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %.thread566 unwind label %.loopexit.split-lp659.loopexit.split-lp.loopexit.split-lp

bb.mx:                                            ; preds = %bb.mt
  %i.ajp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1138
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit134.thread: ; preds = %bb.lw, %.thread566
  store i32 -1, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.i.i, i64 48 ; 2 uses
  %i.ajr = load i32, ptr %i.ajq, align 8, !noalias !1138, !noundef !5
  %i.ajs = add i32 %i.ajr, -1                     ; 2 uses
  store i32 %i.ajs, ptr %i.ajq, align 8, !noalias !1138
  %i.ajt = icmp eq i32 %i.ajs, 0
  br i1 %i.ajt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120

.thread566:                                       ; preds = %bb.mv, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit134.thread

bb.my:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.aju = getelementptr i8, ptr %.sroa.4250.0.copyload.val.i.i, i64 16
  %.val316.i.i = load ptr, ptr %i.aju, align 8, !noalias !1138, !noundef !5 ; 4 uses
  %.not.i95 = icmp eq ptr %.val316.i.i, null
  br i1 %.not.i95, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit97, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val316.i.i, i64 48 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !noalias !1138, !noundef !5 ; 2 uses
  %i.ajx = icmp eq i32 %i.ajw, -1
  br i1 %i.ajx, label %bb.nb, label %bb.na, !prof !11

bb.na:                                            ; preds = %bb.mz
  %i.ajy = add nuw i32 %i.ajw, 1
  store i32 %i.ajy, ptr %i.ajv, align 4, !noalias !1138
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit97

bb.nb:                                            ; preds = %bb.mz
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc96 unwind label %bb.nc

.noexc96:                                         ; preds = %bb.nb
  unreachable

bb.nc:                                            ; preds = %bb.nb
  %i.ajz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aka = load i32, ptr %i.ahl, align 4, !noalias !1138, !noundef !5
  %i.akb = add i32 %i.aka, -1                     ; 2 uses
  store i32 %i.akb, ptr %i.ahl, align 4, !noalias !1138
  %i.akc = icmp eq i32 %i.akb, 0
  br i1 %i.akc, label %bb.nd, label %.body104

bb.nd:                                            ; preds = %bb.nc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %.body104 unwind label %bb.jr

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit97: ; preds = %bb.na, %bb.my
  %i.akd = load i32, ptr %i.ahl, align 8, !noalias !1138, !noundef !5
  %i.ake = add i32 %i.akd, -1                     ; 2 uses
  store i32 %i.ake, ptr %i.ahl, align 8, !noalias !1138
  %i.akf = icmp eq i32 %i.ake, 0
  br i1 %i.akf, label %bb.ne, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECs8Xq8PKFYOms_3hir.exit

bb.ne:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit97
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.val.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECs8Xq8PKFYOms_3hir.exit unwind label %.loopexit.split-lp659.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECs8Xq8PKFYOms_3hir.exit: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit97, %bb.ne
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload.i.i, i64 48 ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 8, !noalias !1138, !noundef !5
  %i.aki = add i32 %i.akh, -1                     ; 2 uses
  store i32 %i.aki, ptr %i.akg, align 8, !noalias !1138
  %i.akj = icmp eq i32 %i.aki, 0
  br i1 %i.akj, label %bb.nf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit

bb.nf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECs8Xq8PKFYOms_3hir.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4250.0.copyload.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ng:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %.sroa.0214.1.i.i, ptr %i.bx, align 8, !noalias !1138
  %i.akk = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bx)
          to label %bb.nj unwind label %bb.nh, !noalias !1138

bb.nh:                                            ; preds = %bb.ng
  %i.akl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.0214.1.i.i, i64 48 ; 2 uses
  %i.akn = load i32, ptr %i.akm, align 4, !noalias !1138, !noundef !5
  %i.ako = add i32 %i.akn, -1                     ; 2 uses
  store i32 %i.ako, ptr %i.akm, align 4, !noalias !1138
  %i.akp = icmp eq i32 %i.ako, 0
  br i1 %i.akp, label %bb.ni, label %.thread537

bb.ni:                                            ; preds = %bb.nh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0214.1.i.i) #26
          to label %.thread537 unwind label %bb.nm, !noalias !1138

bb.nj:                                            ; preds = %bb.ng
  %i.akq = icmp eq i16 %i.akk, 255
  br i1 %i.akq, label %bb.nn, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.akr = getelementptr inbounds nuw i8, ptr %.sroa.0214.1.i.i, i64 48 ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4, !noalias !1138, !noundef !5
  %i.akt = add i32 %i.aks, -1                     ; 2 uses
  store i32 %i.akt, ptr %i.akr, align 4, !noalias !1138
  %i.aku = icmp eq i32 %i.akt, 0
  br i1 %i.aku, label %bb.nl, label %.thread570

bb.nl:                                            ; preds = %bb.nk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0214.1.i.i) #26
          to label %.thread570 unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nm:                                            ; preds = %bb.ni
  %i.akv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1138
  unreachable

.thread570:                                       ; preds = %bb.nk, %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120.sink.split

bb.nn:                                            ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.akw = getelementptr i8, ptr %.sroa.0214.1.i.i, i64 16
  %.val315.i.i = load ptr, ptr %i.akw, align 8, !noalias !1138, !noundef !5 ; 6 uses
  %.not.i81 = icmp eq ptr %.val315.i.i, null
  br i1 %.not.i81, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.akx = getelementptr inbounds nuw i8, ptr %.val315.i.i, i64 48 ; 6 uses
  %i.aky = load i32, ptr %i.akx, align 4, !noalias !1138, !noundef !5 ; 2 uses
  %i.akz = icmp eq i32 %i.aky, -1
  br i1 %i.akz, label %bb.np, label %bb.nr, !prof !11

bb.np:                                            ; preds = %bb.no
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc82 unwind label %.loopexit.split-lp664.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %bb.np
  unreachable

.loopexit.split-lp664.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nw, %bb.np
  %lpad.loopexit.split-lp4840 = landingpad { ptr, i32 }
          cleanup
  br label %.body76

.body76:                                          ; preds = %.loopexit.split-lp664.loopexit.split-lp.loopexit.split-lp, %bb.ns, %bb.nt
  %eh.lpad-body77 = phi { ptr, i32 } [ %i.alg, %bb.ns ], [ %i.alg, %bb.nt ], [ %lpad.loopexit.split-lp4840, %.loopexit.split-lp664.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.sroa.0214.1.i.i, i64 48 ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 4, !noalias !1138, !noundef !5
  %i.alc = add i32 %i.alb, -1                     ; 2 uses
  store i32 %i.alc, ptr %i.ala, align 4, !noalias !1138
  %i.ald = icmp eq i32 %i.alc, 0
  br i1 %i.ald, label %bb.nq, label %.thread537

bb.nq:                                            ; preds = %.body76
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0214.1.i.i) #26
          to label %.thread537 unwind label %bb.jr

bb.nr:                                            ; preds = %bb.no
  %i.ale = add nuw i32 %i.aky, 1
  store i32 %i.ale, ptr %i.akx, align 4, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store ptr %.val315.i.i, ptr %i.by, align 8, !noalias !1138
  %i.alf = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by)
          to label %bb.nu unwind label %bb.ns, !noalias !1138

bb.ns:                                            ; preds = %bb.nr
  %i.alg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alh = load i32, ptr %i.akx, align 4, !noalias !1138, !noundef !5
  %i.ali = add i32 %i.alh, -1                     ; 2 uses
  store i32 %i.ali, ptr %i.akx, align 4, !noalias !1138
  %i.alj = icmp eq i32 %i.ali, 0
  br i1 %i.alj, label %bb.nt, label %.body76

bb.nt:                                            ; preds = %bb.ns
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val315.i.i) #26
          to label %.body76 unwind label %bb.nx, !noalias !1138

bb.nu:                                            ; preds = %bb.nr
  %i.alk = icmp eq i16 %i.alf, 203
  br i1 %i.alk, label %bb.ny, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.all = load i32, ptr %i.akx, align 4, !noalias !1138, !noundef !5
  %i.alm = add i32 %i.all, -1                     ; 2 uses
  store i32 %i.alm, ptr %i.akx, align 4, !noalias !1138
  %i.aln = icmp eq i32 %i.alm, 0
  br i1 %i.aln, label %bb.nw, label %.thread575

bb.nw:                                            ; preds = %bb.nv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val315.i.i) #26
          to label %.thread575 unwind label %.loopexit.split-lp664.loopexit.split-lp.loopexit.split-lp

bb.nx:                                            ; preds = %bb.nt
  %i.alo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1138
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread: ; preds = %bb.nn, %.thread575
  store i32 -1, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  %i.alp = getelementptr inbounds nuw i8, ptr %.sroa.0214.1.i.i, i64 48 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 8, !noalias !1138, !noundef !5
  %i.alr = add i32 %i.alq, -1                     ; 2 uses
  store i32 %i.alr, ptr %i.alp, align 8, !noalias !1138
  %i.als = icmp eq i32 %i.alr, 0
  br i1 %i.als, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120

.thread575:                                       ; preds = %bb.nv, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread

bb.ny:                                            ; preds = %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  store ptr %.val315.i.i, ptr %i.cc, align 8, !noalias !1138
  %i.alt = getelementptr inbounds nuw i8, ptr %.sroa.0214.1.i.i, i64 48 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 8, !noalias !1138, !noundef !5
  %i.alv = add i32 %i.alu, -1                     ; 2 uses
  store i32 %i.alv, ptr %i.alt, align 8, !noalias !1138
  %i.alw = icmp eq i32 %i.alv, 0
  br i1 %i.alw, label %bb.nz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListECs8Xq8PKFYOms_3hir.exit

bb.nz:                                            ; preds = %bb.ny
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0214.1.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListECs8Xq8PKFYOms_3hir.exit unwind label %bb.oa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit, %.thread570, %bb.lv
  store i32 -1, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke, %bb.of, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit134.thread, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit128.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !1138
  br label %bb.oi

bb.oa:                                            ; preds = %.noexc2957, %.noexc2956, %bb.oc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListECs8Xq8PKFYOms_3hir.exit, %bb.nz
  %i.alx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val327.i.i = load ptr, ptr %i.cc, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.val327.i.i, i64 48 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !noalias !1142, !noundef !5
  %i.ama = add i32 %i.alz, -1                     ; 2 uses
  store i32 %i.ama, ptr %i.aly, align 4, !noalias !1142
  %i.amb = icmp eq i32 %i.ama, 0
  br i1 %i.amb, label %bb.ob, label %.thread537

bb.ob:                                            ; preds = %bb.oa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val327.i.i) #26
          to label %.thread537 unwind label %bb.jr

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.ny, %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !1138
  store i32 %.sroa.7.1, ptr %i.ek, align 8, !noalias !1138
  store i32 %.sroa.12.sroa.0.1, ptr %.sroa.4458.0..sroa_idx, align 4, !noalias !1138
  store i32 %.sroa.12.sroa.7.1, ptr %.sroa.5459.0..sroa_idx, align 8, !noalias !1138
  store ptr %i.cc, ptr %i.ca, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1233
  call void @llvm.experimental.noalias.scope.decl(metadata !1234), !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ez, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ek, i64 12, i1 false), !alias.scope !1235, !noalias !1236
  store ptr %i.cc, ptr %i.b, align 8, !alias.scope !1237, !noalias !1233
  invoke void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %.noexc2955 unwind label %bb.oa, !inline_history !992

.noexc2955:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9ParamListECs8Xq8PKFYOms_3hir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1233
  %i.amc = load i32, ptr %i.c, align 4, !range !30, !noalias !1233, !noundef !5
  %.not.i1.i2948 = icmp eq i32 %i.amc, -1
  br i1 %.not.i1.i2948, label %.thread3040, label %bb.oc

.thread3040:                                      ; preds = %.noexc2955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1232
  br label %bb.of

bb.oc:                                            ; preds = %.noexc2955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1233
  %i.amd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.ek)
          to label %.noexc2956 unwind label %bb.oa, !inline_history !992

.noexc2956:                                       ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1238
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cc)
          to label %.noexc2957 unwind label %bb.oa, !inline_history !992

.noexc2957:                                       ; preds = %.noexc2956
  %i.ame = invoke noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtB6_10FunctionIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.amd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d)
          to label %.noexc2958 unwind label %bb.oa, !inline_history !992 ; 2 uses

.noexc2958:                                       ; preds = %.noexc2957
  %.not6.i.i2949 = icmp eq ptr %i.ame, null
  br i1 %.not6.i.i2949, label %.thread3044, label %bb.od

.thread3044:                                      ; preds = %.noexc2958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1238
  br label %bb.of

bb.od:                                            ; preds = %.noexc2958
  %i.amf = load <2 x i32>, ptr %i.ame, align 4, !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !1138
  %.val326.i.i = load ptr, ptr %i.cc, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.val326.i.i, i64 48 ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !noalias !1142, !noundef !5
  %i.ami = add i32 %i.amh, -1                     ; 2 uses
  store i32 %i.ami, ptr %i.amg, align 4, !noalias !1142
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.oe, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECs8Xq8PKFYOms_3hir.exit69

bb.oe:                                            ; preds = %bb.od
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val326.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECs8Xq8PKFYOms_3hir.exit69 unwind label %.thread554.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.of:                                            ; preds = %.thread3044, %.thread3040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !1138
  store i32 -1, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  %.val325.i.i = load ptr, ptr %i.cc, align 8, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.val325.i.i, i64 48 ; 2 uses
  %i.aml = load i32, ptr %i.amk, align 4, !noalias !1142, !noundef !5
  %i.amm = add i32 %i.aml, -1                     ; 2 uses
  store i32 %i.amm, ptr %i.amk, align 4, !noalias !1142
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECs8Xq8PKFYOms_3hir.exit.sink.split.i118.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECs8Xq8PKFYOms_3hir.exit69: ; preds = %bb.od, %bb.oe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !1138
  store i32 0, ptr %0, align 4, !alias.scope !1204, !noalias !1123
  store i32 0, ptr %.sroa.20.0..sroa_idx2.i.i, align 4, !alias.scope !1204, !noalias !1123
  store <2 x i32> %i.amf, ptr %.sroa.38.0..sroa_idx17.i.i, align 4, !alias.scope !1204, !noalias !1123
  br label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container0Ba_.exit

.thread550:                                       ; preds = %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp, %.body141, %bb.ke, %.body184, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i331, %bb.jw, %bb.jv
  %.pn299.i.i546 = phi { ptr, i32 } [ %i.ade, %bb.jw ], [ %eh.lpad-body142, %.body141 ], [ %i.ade, %bb.jv ], [ %eh.lpad-body185, %.body184 ], [ %eh.lpad-body185, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECs8Xq8PKFYOms_3hir.exit.sink.split.i331 ], [ %eh.lpad-body142, %bb.ke ], [ %lpad.loopexit.split-lp4825, %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.amo = load i32, ptr %i.gd, align 4, !noalias !1142, !noundef !5
  %i.amp = add i32 %i.amo, -1                     ; 2 uses
  store i32 %i.amp, ptr %i.gd, align 4, !noalias !1142
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %bb.og, label %.thread537

bb.og:                                            ; preds = %.thread550
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0338.1) #26
          to label %.thread537 unwind label %bb.jr

_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container0Ba_.exit: ; preds = %bb.jq, %bb.jp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECs8Xq8PKFYOms_3hir.exit69
  %i.amr = load i32, ptr %i.gd, align 4, !noalias !1125, !noundef !5
  %i.ams = add i32 %i.amr, -1                     ; 2 uses
  store i32 %i.ams, ptr %i.gd, align 4, !noalias !1125
  %i.amt = icmp eq i32 %i.ams, 0
  br i1 %i.amt, label %bb.oh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit38

bb.oh:                                            ; preds = %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container0Ba_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0338.1) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit38 unwind label %.loopexit.split-lp

bb.oi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECs8Xq8PKFYOms_3hir.exit120, %bb.js, %bb.jt
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.0496.0, i64 48 ; 2 uses
  %i.amv = load i32, ptr %i.amu, align 8, !noalias !1125, !noundef !5
  %i.amw = add i32 %i.amv, -1                     ; 2 uses
  store i32 %i.amw, ptr %i.amu, align 8, !noalias !1125
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %bb.oj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit36.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit36.backedge: ; preds = %bb.oi, %bb.oj
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit36

bb.oj:                                            ; preds = %bb.oi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0496.0) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit36.backedge unwind label %bb.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit38: ; preds = %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx14find_container0Ba_.exit, %bb.oh
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.0496.0, i64 48 ; 2 uses
  %i.amz = load i32, ptr %i.amy, align 4, !noalias !1125, !noundef !5
  %i.ana = add i32 %i.amz, -1                     ; 2 uses
  store i32 %i.ana, ptr %i.amy, align 4, !noalias !1125
  %i.anb = icmp eq i32 %i.ana, 0
  br i1 %i.anb, label %bb.ok, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit34

bb.ok:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit38
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0496.0) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit34 unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit34: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit38, %bb.ok
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.7) ]
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 48 ; 2 uses
  %i.and = load i32, ptr %i.anc, align 4, !noundef !5
  %i.ane = add i32 %i.and, -1                     ; 2 uses
  store i32 %i.ane, ptr %i.anc, align 4
  %i.anf = icmp eq i32 %i.ane, 0
  br i1 %i.anf, label %.invoke, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx28parent_ancestors_with_macrosNtB5_14ChildContainerNCNvB2_14find_container0EB9_.exit

.invoke:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit51, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit34
  %i.ang = phi ptr [ %.sroa.0.7, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit34 ], [ %.sroa.0.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8Xq8PKFYOms_3hir.exit51 ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ang) #26
          to label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx28parent_ancestors_with_macrosNtB5_14ChildContainerNCNvB2_14find_container0EB9_.exit unwind label %bb.on

end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx16label_ref_to_def:bb.a
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val32) #26
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs8Xq8PKFYOms_3hir.exit39

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs8Xq8PKFYOms_3hir.exit39: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8Xq8PKFYOms_3hir.exit.sink.split.i43, %bb.x, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8Xq8PKFYOms_3hir.exit.sink.split.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8Xq8PKFYOms_3hir.exit.sink.split.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8Xq8PKFYOms_3hir.exit.sink.split.i
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx17proc_macro_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1262, !noalias !1263
  %i.g = load ptr, ptr %2, align 8, !alias.scope !1264, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !1260, !noalias !1259
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !1258, !inline_history !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1259
  %i.h = load i32, ptr %i.d, align 4, !range !30, !noalias !1259, !noundef !5
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1259
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !inline_history !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1266
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1267
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtB6_11ProcMacroIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a), !noalias !1265 ; 2 uses
  %.not.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i2, label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx17proc_macro_to_def0Ba_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load <2 x i32>, ptr %i.j, align 4, !noalias !1265
  store <2 x i32> %i.k, ptr %.sroa.44.0..sroa_idx.i, align 4, !alias.scope !1265
  br label %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx17proc_macro_to_def0Ba_.exit

_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx17proc_macro_to_def0Ba_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.c ], [ -1, %bb.b ]
  store i32 %.sink.i, ptr %0, align 4, !alias.scope !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1266
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 -1, ptr %0, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx17proc_macro_to_def0Ba_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx17self_param_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %2, align 8, !nonnull !5, !align !8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  store ptr %i.d, ptr %i.b, align 8
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i32, ptr %i.c, align 4, !range !30, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.531.0.copyload = load i32, ptr %.sroa.531.0..sroa_idx, align 4 ; 2 uses
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.632.0.copyload = load i32, ptr %.sroa.632.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit
    i32 6, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 4
  br label %bb.h

_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit: ; preds = %bb.b, %bb.b
  store i32 -1, ptr %0, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.4.0.copyload, ptr %i.a, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.531.0.copyload, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.632.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  %i.k = call noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store4bodyNtB5_4Body2of(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.j, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.05.0.copyload = load i32, ptr %i.l, align 8
  %i.m = trunc i32 %.sroa.05.0.copyload to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  store i32 -1, ptr %0, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.67.0.copyload = load i32, ptr %.sroa.67.0..sroa_idx, align 8
  store i32 %.sroa.4.0.copyload, ptr %0, align 4
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.531.0.copyload, ptr %.sroa.02.sroa.5.0..sroa_idx, align 4
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.632.0.copyload, ptr %.sroa.02.sroa.6.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.67.0.copyload, ptr %.sroa.53.0..sroa_idx, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store i32 -1, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_RNvMs0_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14ChildContainer25as_expression_store_owner.exit, %bb.c, %bb.g, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx17type_alias_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1283, !noalias !1284
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1285, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1281, !noalias !1280
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1279, !inline_history !1274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1280
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1280, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasNtCsileJQcQObtj_7hir_def11TypeAliasIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1280
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1286
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1287
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasNtB6_11TypeAliasIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1287, !inline_history !1278 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !1287, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !1287, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1286
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasNtCsileJQcQObtj_7hir_def11TypeAliasIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasNtCsileJQcQObtj_7hir_def11TypeAliasIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeAliasEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx17type_param_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load ptr, ptr %2, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  store ptr %i.e, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx28find_generic_param_container(ptr noalias nofree noundef align 4 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load i32, ptr %i.c, align 4, !range !34, !noundef !5
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 6, ptr %i.d, align 4
  %i.j = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  %i.k = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamNtB6_18TypeOrConstParamIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a) ; 2 uses
  %.not2 = icmp eq ptr %i.k, null
  br i1 %.not2, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx18asm_operand_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val = load ptr, ptr %i.k, align 8, !noundef !5 ; 9 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 12 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !5 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val, ptr %i.b, align 8
  %i.p = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load i32, ptr %i.l, align 4, !noundef !5
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.l, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #26
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.u = icmp eq i16 %i.p, 165
  br i1 %i.u, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.l, align 4, !noundef !5
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.l, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %_RNvXs6h_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7AsmExprNtBa_7AstNode4cast.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #26
  br label %_RNvXs6h_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7AsmExprNtBa_7AstNode4cast.exit.thread

bb.j:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8Xq8PKFYOms_3hir.exit.sink.split.i, %bb.as, %.thread, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.ce, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8Xq8PKFYOms_3hir.exit.sink.split.i ], [ %.pn113, %.thread ], [ %i.ce, %bb.an ], [ %.pn113, %bb.as ]
  resume { ptr, i32 } %common.resume.op

_RNvXs6h_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7AsmExprNtBa_7AstNode4cast.exit.thread: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread: ; preds = %bb.a, %_RNvXs6h_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7AsmExprNtBa_7AstNode4cast.exit.thread
  store i32 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7AsmExprECs8Xq8PKFYOms_3hir.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.z = load i32, ptr %i.l, align 4, !noundef !5 ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.l, align 4
  %i.ac = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %.thread118

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc47 unwind label %.thread118

.noexc47:                                         ; preds = %bb.m
  unreachable

.thread118:                                       ; preds = %bb.al, %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1q_9generated5nodes8AsmPieceENCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB2L_14SourceToDefCtx18asm_operand_to_def0EEB2P_.exit55, %bb.z, %bb.ab, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.l
  store ptr %i.ac, ptr %i.h, align 8
  %i.ad = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes8AsmPieceENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.ae = extractvalue { i64, ptr } %i.ad, 0      ; 2 uses
  %.not4.i = icmp eq i64 %i.ae, -1
  br i1 %.not4.i, label %.loopexit134, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc52
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %.noexc52 ], [ 0, %.noexc ] ; 5 uses
  %i.af = phi i64 [ %i.ba, %.noexc52 ], [ %i.ae, %.noexc ]
  %i.ag = phi { i64, ptr } [ %i.az, %.noexc52 ], [ %i.ad, %.noexc ]
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx18source_file_to_def:bb.a
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @_RNvNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6_14SourceToDefCtx18source_file_to_def10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %i.n, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !1328
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit unwind label %bb.g, !noalias !1329

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #31
          to label %common.resume unwind label %bb.h, !noalias !1329

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1329
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit: ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false)
  %i.s = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.v = invoke { i32, i32 } @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId13original_file(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.u)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.l, %bb.k, %bb.j, %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #31
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit
  %i.x = extractvalue { i32, i32 } %i.v, 0
  %i.y = extractvalue { i32, i32 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECs8Xq8PKFYOms_3hir(i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.u)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.z)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx11file_to_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aa)
          to label %bb.m unwind label %bb.i       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1330, !noundef !5 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !1330
  %.sink10.i = select i1 %i.ae, i64 %i.ag, i64 %i.ad
  %.not16 = icmp eq i64 %.sink10.i, 0
  br i1 %.not16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %i.ab, align 8, !alias.scope !1330, !nonnull !5
  %.sink11.i = select i1 %i.ae, ptr %i.ah, ptr %i.ab ; 2 uses
  %i.ai = load i32, ptr %.sink11.i, align 4, !range !7, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.3.0 = phi i32 [ %i.ak, %bb.n ], [ undef, %bb.m ]
  %.sroa.0.0 = phi i32 [ %i.ai, %bb.n ], [ 0, %bb.m ]
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.am = insertvalue { i32, i32 } %i.al, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.am

bb.p:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx18tuple_field_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1348, !noalias !1349
  %i.g = load ptr, ptr %2, align 8, !alias.scope !1350, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1346, !noalias !1345
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1345
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1345, !noundef !5
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1345
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !1341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1344
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1344
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNtB6_7FieldIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1344 ; 2 uses
  %.not5.i = icmp eq ptr %i.j, null
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1344
  store i32 -1, ptr %0, align 4, !alias.scope !1341
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNtCsileJQcQObtj_7hir_def7FieldIdEB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !1352
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 4, !alias.scope !1341
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1344
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNtCsileJQcQObtj_7hir_def7FieldIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldNtCsileJQcQObtj_7hir_def7FieldIdEB9_.exit: ; preds = %bb.c, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx19enum_variant_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1368, !noalias !1369
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1370, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1366, !noalias !1365
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1364, !inline_history !1359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1365
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1365, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNtCsileJQcQObtj_7hir_def13EnumVariantIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1365
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1371
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1372
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNtB6_13EnumVariantIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1372, !inline_history !1363 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !1372, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !1372, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1371
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNtCsileJQcQObtj_7hir_def13EnumVariantIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNtCsileJQcQObtj_7hir_def13EnumVariantIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx19extern_block_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1388, !noalias !1389
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1390, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1386, !noalias !1385
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1385
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1385, !noundef !5
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockEB9_.exit.thread.i, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockEB9_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockNtCsileJQcQObtj_7hir_def13ExternBlockIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1385
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1384
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1384
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockNtB6_13ExternBlockIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1384 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !1384, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !1384, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1384
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockNtCsileJQcQObtj_7hir_def13ExternBlockIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockNtCsileJQcQObtj_7hir_def13ExternBlockIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockEB9_.exit.thread.i, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockEB9_.exit.thread.i ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternBlockEB9_.exit.thread.i ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx19extern_crate_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1407, !noalias !1408
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1409, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1405, !noalias !1404
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1404
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1404, !noundef !5
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEB9_.exit.thread.i, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEB9_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateNtCsileJQcQObtj_7hir_def13ExternCrateIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1404
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1403
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1403
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateNtB6_13ExternCrateIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1403 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !1403, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !1403, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1403
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateNtCsileJQcQObtj_7hir_def13ExternCrateIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateNtCsileJQcQObtj_7hir_def13ExternCrateIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEB9_.exit.thread.i, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEB9_.exit.thread.i ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEB9_.exit.thread.i ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx19record_field_to_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1428, !noalias !1429
  %i.g = load ptr, ptr %2, align 8, !alias.scope !1430, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1426, !noalias !1425
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1425
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1425, !noundef !5
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1425
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1424
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1424
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNtB6_7FieldIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1424 ; 2 uses
  %.not5.i = icmp eq ptr %i.j, null
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1424
  store i32 -1, ptr %0, align 4, !alias.scope !1421
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNtCsileJQcQObtj_7hir_def7FieldIdEB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !1432
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 4, !alias.scope !1421
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1424
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNtCsileJQcQObtj_7hir_def7FieldIdEB9_.exit
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1695
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = load <2 x i32>, ptr %i.bg, align 4, !alias.scope !1694, !noalias !1693
  store <2 x i32> %i.bh, ptr %i.j, align 8, !noalias !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @104, i64 32, i1 false), !noalias !1707
  invoke void @_RNvXs_NtNtCs8Xq8PKFYOms_3hir9semantics15child_by_sourceNtCsileJQcQObtj_7hir_def6ImplIdNtB4_13ChildBySource18child_by_source_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.o)
          to label %bb.ah unwind label %bb.t, !noalias !1708

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyEL_EEENtNtNtBT_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.i.i.i.i unwind label %bb.u, !noalias !1709

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1709
  unreachable

bb.v:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1695
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = load <2 x i32>, ptr %i.bk, align 4, !alias.scope !1694, !noalias !1693
  store <2 x i32> %i.bl, ptr %i.i, align 8, !noalias !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @104, i64 32, i1 false), !noalias !1710
  invoke void @_RNvXs3_NtNtCs8Xq8PKFYOms_3hir9semantics15child_by_sourceNtCsileJQcQObtj_7hir_def6EnumIdNtB5_13ChildBySource18child_by_source_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.o)
          to label %bb.ai unwind label %bb.w, !noalias !1711

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyEL_EEENtNtNtBT_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !1712

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1712
  unreachable

bb.y:                                             ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1695
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bo, i64 12, i1 false), !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @104, i64 32, i1 false), !noalias !1714
  invoke void @_RNvXs2_NtNtCs8Xq8PKFYOms_3hir9semantics15child_by_sourceNtCsileJQcQObtj_7hir_def9VariantIdNtB5_13ChildBySource18child_by_source_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.h, ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree nonnull readonly align 4 captures(none) poison)
          to label %bb.aj unwind label %bb.z, !noalias !1693

bb.z:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyEL_EEENtNtNtBT_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i.i.i.i unwind label %bb.aa, !noalias !1715

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1715
  unreachable

bb.ab:                                            ; preds = %_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span7entered.exit.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @104, i64 32, i1 false), !noalias !1716
  invoke void @_RNvXs5_NtNtCs8Xq8PKFYOms_3hir9semantics15child_by_sourceNtCsileJQcQObtj_7hir_def12GenericDefIdNtB5_13ChildBySource18child_by_source_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.br, ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.o)
          to label %bb.ak unwind label %bb.ac, !noalias !1699

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCshzWfHUSfYae_4core3any6TypeIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtBR_3AnyEL_EEENtNtNtBT_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i.i.i.i unwind label %bb.ad, !noalias !1717

bb.ad:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1717
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.ba, %bb.n ], [ %i.be, %bb.q ], [ %i.bi, %bb.t ], [ %i.bm, %bb.w ], [ %i.bp, %bb.z ], [ %i.bs, %bb.ac ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #31
          to label %common.resume.i.i.i.i unwind label %bb.al, !noalias !1718

bb.ae:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1698
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.af:                                            ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1701
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.ag:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1695
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.ah:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1695
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.ai:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1695
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.aj:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1695
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1716
  br label %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i

bb.al:                                            ; preds = %.body.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !1718
  unreachable

_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n), !noalias !1718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.sroa.0, i64 16, i1 false), !noalias !1719
  %.sroa.5.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %i.aa, ptr %.sroa.5.i.sroa.4.0..sroa_idx, align 8, !noalias !1719
  %.sroa.5.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i64 %.sroa.710.sroa.0.0.copyload, ptr %.sroa.5.i.sroa.5.0..sroa_idx, align 4, !noalias !1719
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !1719
  %i.bw = call noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapEE14insert_no_growBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %.sroa.47.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.q), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.sroa.0)
  br label %_RINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE18or_try_insert_withNCINvB2_14or_insert_withNCNvMs_B16_NtB16_14SourceToDefCtx9cache_for0E0zEB1a_.exit

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %_RINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE18or_try_insert_withNCINvB2_14or_insert_withNCNvMs_B16_NtB16_14SourceToDefCtx9cache_for0E0zEB1a_.exit

_RINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE18or_try_insert_withNCINvB2_14or_insert_withNCNvMs_B16_NtB16_14SourceToDefCtx9cache_for0E0zEB1a_.exit: ; preds = %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i, %bb.am
  %.pn.i = phi ptr [ %i.bw, %_RNCINvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB9_5EntryTNtNtNtCs8Xq8PKFYOms_3hir9semantics13source_to_def14ChildContainerNtCs33K2ylI4knu_10hir_expand9HirFileIdENtNtCsileJQcQObtj_7hir_def7dyn_map6DynMapE14or_insert_withNCNvMs_B18_NtB18_14SourceToDefCtx9cache_for0E0B1c_.exit.i ], [ %i.ab, %bb.am ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9fn_to_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1735, !noalias !1736
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1737, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !1733, !noalias !1732
  call void @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx14find_container(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !noalias !1731, !inline_history !1726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1732
  %i.h = load i32, ptr %i.c, align 4, !range !30, !noalias !1732, !noundef !5
  %.not.i1 = icmp eq i32 %i.h, -1
  br i1 %.not.i1, label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEB9_.exit.thread, label %bb.b

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEB9_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtCsileJQcQObtj_7hir_def10FunctionIdEB9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1732
  %i.i = call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB4_14SourceToDefCtx9cache_for(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1738
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !1739
  %i.j = call noundef align 4 ptr @_RNvXNtNtCsileJQcQObtj_7hir_def7dyn_map4keysINtB2_12AstPtrPolicyNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtB6_10FunctionIdENtB4_6Policy3getCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !noalias !1739, !inline_history !1730 ; 3 uses
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !range !7, !noalias !1739, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !1739, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.1.i = phi i32 [ %i.m, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.1.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1738
  br label %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtCsileJQcQObtj_7hir_def10FunctionIdEB9_.exit

_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtCsileJQcQObtj_7hir_def10FunctionIdEB9_.exit: ; preds = %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEB9_.exit.thread, %bb.d
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.i, %bb.d ], [ undef, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEB9_.exit.thread ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.d ], [ 0, %_RINvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB5_14SourceToDefCtx7dyn_mapNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEB9_.exit.thread ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !1742
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !11

bb.b:                                             ; preds = %._crit_edge
  %.val62.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val62.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !1742
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsb_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCshzWfHUSfYae_4core6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEE9transposeCs8Xq8PKFYOms_3hir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((8, 12)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  store ptr %i.a, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_13RevisionQueueNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE11record_coldCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = invoke noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k, %.preheader.preheader, %.preheader, %bb.g, %bb.h, %bb.i, %.preheader.1, %bb.c
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  %i.f = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.h = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %.preheader.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13.sink.split, !prof !15

.preheader:                                       ; preds = %bb.l
  %i.l = invoke noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.preheader
  %i.m = invoke noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.l, i64 noundef %i.n)
          to label %.preheader.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.1:                                     ; preds = %bb.h
  %i.p = invoke noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.preheader.1
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.p, i64 noundef %1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.r = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.s = extractvalue { i8, i1 } %i.r, 1
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13.sink.split, !prof !15

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13.sink.split: ; preds = %bb.j, %bb.f
  tail call void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit13.sink.split, %bb.j, %bb.f
  ret void

bb.k:                                             ; preds = %.preheader.preheader
  %i.t = invoke noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCs8Xq8PKFYOms_3hir(ptr noundef nonnull align 8 %0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  invoke void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.q, i64 noundef %i.u)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexuEECs8Xq8PKFYOms_3hir.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  resume { ptr, i32 } %lpad.loopexit.split-lp18
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsh_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1i_3ast9generated5nodes14MethodCallExprEE7to_nodeCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_7
