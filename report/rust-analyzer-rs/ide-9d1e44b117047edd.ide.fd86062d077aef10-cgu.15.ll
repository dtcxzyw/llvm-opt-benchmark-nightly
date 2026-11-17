Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.15?download=true
inline.NumInlined: 2576
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMNtNtCshzWfHUSfYae_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECslLuZgPVt6hg_3ide:bb.a
  %exitcond.not = icmp eq i64 %i.d, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = icmp eq i64 %i.a, 0
  %i.f = icmp samesign ult i64 %3, 16
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh8split_atCslLuZgPVt6hg_3ide.exit24

_RNvMNtCshzWfHUSfYae_4core5sliceSh8split_atCslLuZgPVt6hg_3ide.exit24: ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %0, i64 %1
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %i.i = getelementptr i8, ptr %2, i64 %3
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.k = load <16 x i8>, ptr %i.h, align 1, !alias.scope !242 ; 2 uses
  %i.l = add <16 x i8> %i.k, splat (i8 -65)
  %i.m = icmp ult <16 x i8> %i.l, splat (i8 26)
  %i.n = select <16 x i1> %i.m, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.o = or <16 x i8> %i.n, %i.k
  %i.p = load <16 x i8>, ptr %i.j, align 1, !alias.scope !243 ; 2 uses
  %i.q = add <16 x i8> %i.p, splat (i8 -65)
  %i.r = icmp ult <16 x i8> %i.q, splat (i8 26)
  %i.s = select <16 x i1> %i.r, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.t = or <16 x i8> %i.s, %i.p
  %i.u = icmp ne <16 x i8> %i.o, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSh8split_atCslLuZgPVt6hg_3ide.exit24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %_RNvMNtCshzWfHUSfYae_4core5sliceSh8split_atCslLuZgPVt6hg_3ide.exit24, %.loopexit
  %.sroa.0.1 = phi i1 [ false, %.loopexit ], [ true, %._crit_edge ], [ true, %_RNvMNtCshzWfHUSfYae_4core5sliceSh8split_atCslLuZgPVt6hg_3ide.exit24 ]
  ret i1 %.sroa.0.1

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.02.039 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.02.039
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.02.039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.z = load <16 x i8>, ptr %i.x, align 1, !alias.scope !244 ; 2 uses
  %i.aa = add <16 x i8> %i.z, splat (i8 -65)
  %i.ab = icmp ult <16 x i8> %i.aa, splat (i8 26)
  %i.ac = select <16 x i1> %i.ab, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ad = or <16 x i8> %i.ac, %i.z
  %i.ae = load <16 x i8>, ptr %i.y, align 1, !alias.scope !245 ; 2 uses
  %i.af = add <16 x i8> %i.ae, splat (i8 -65)
  %i.ag = icmp ult <16 x i8> %i.af, splat (i8 26)
  %i.ah = select <16 x i1> %i.ag, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ai = or <16 x i8> %i.ah, %i.ae
  %i.aj = icmp ne <16 x i8> %i.ad, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.b, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCslLuZgPVt6hg_3ide6markupNtB6_6Markup12fenced_blockRNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !246 {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @14, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB6_8PeekableINtNtCscFGNKo4Sl5v_9itertools13with_position12WithPositionINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEE7next_ifNCNCNCINvCs8Xq8PKFYOms_3hir21resolve_absolute_pathB23_E0s_00ECslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !247 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.sroa.05.0.copyload = load i8, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 41 ; 2 uses
  store i8 -1, ptr %i.b, align 8
  %.not = icmp eq i8 %.sroa.05.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %.sroa.05.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx7, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx, i64 15, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs1_NtCscFGNKo4Sl5v_9itertools13with_positionINtB5_12WithPositionINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtB1d_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEENtNtNtB1b_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %.pr = load i8, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi i8 [ %.pr, %bb.c ], [ %.sroa.05.0.copyload, %bb.b ] ; 3 uses
  %.not10 = icmp eq i8 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.val = load i8, ptr %i.d, align 1, !range !18
  %i.e = trunc nuw i8 %.val to i1
  %or.cond.not = select i1 %.not10, i1 true, i1 %i.e
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.525.0.copyload = load ptr, ptr %.sroa.525.0..sroa_idx, align 8 ; 2 uses
  %i.f = load i8, ptr %i.b, align 8, !range !20, !noundef !11
  %.not11.not = icmp eq i8 %i.f, -1
  br i1 %.not11.not, label %bb.j, label %bb.h, !prof !21

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #33
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.d, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %i.c, ptr %i.b, align 8
  store ptr %.sroa.525.0.copyload, ptr %i.g, align 8
  store i8 2, ptr %0, align 8
  br label %bb.g

bb.k:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscFGNKo4Sl5v_9itertools13with_position8PositionNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEECslLuZgPVt6hg_3ide(i8 %i.c, ptr %.sroa.525.0.copyload) #30
          to label %.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread:                                          ; preds = %bb.k
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_12MirEvalError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0EB1h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !278 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [24 x i8], align 4                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 11 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [88 x i8], align 8                ; 12 uses
  %i.y = alloca [24 x i8], align 8                ; 14 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.9181 = alloca [23 x i8], align 1         ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 12 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 13 uses
  %i.ag = alloca [12 x i8], align 4               ; 4 uses
  %i.ah = alloca [24 x i8], align 4               ; 5 uses
  %i.ai = alloca [24 x i8], align 4               ; 5 uses
  %i.aj = alloca [24 x i8], align 4               ; 3 uses
  %i.ak = alloca [24 x i8], align 4               ; 3 uses
  %i.al = alloca [24 x i8], align 4               ; 10 uses
  %i.am = alloca [16 x i8], align 4               ; 4 uses
  %i.an = alloca [12 x i8], align 4               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 16)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !279, !noundef !11 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !279, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(16) @18, i64 16, i1 false)
  %.pre.i = load i64, ptr %i.au, align 8, !alias.scope !279
  %i.ba = add i64 %.pre.i, 16
  store i64 %i.ba, ptr %i.au, align 8, !alias.scope !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %0, ptr %i.at, align 8, !captures !14
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.413.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.9.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.b

.loopexit278:                                     ; preds = %.backedge, %bb.d
  br label %bb.b

bb.b:                                             ; preds = %.loopexit278, %bb.a
  %i.bp = phi ptr [ %0, %bb.a ], [ %i.bs, %.loopexit278 ] ; 14 uses
  %i.bq = load i32, ptr %i.bp, align 8, !range !22, !noundef !11
  switch i32 %i.bq, label %.unreachabledefault [
    i32 10, label %bb.c
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %bb.ax
    i32 3, label %bb.ax
    i32 4, label %bb.ax
    i32 5, label %bb.ay
    i32 6, label %bb.ax
    i32 7, label %bb.ax
    i32 8, label %bb.ax
    i32 9, label %bb.ax
    i32 15, label %bb.ax
    i32 11, label %bb.ax
    i32 12, label %bb.ax
    i32 13, label %bb.ax
    i32 14, label %bb.ax
  ], !prof !23

bb.c:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !11, !noundef !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !11
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bw
  %i.by = ptrtoint ptr %i.bu to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.backedge
  %.sroa.6.0214 = phi ptr [ %i.bx, %bb.c ], [ %storemerge.i, %.backedge ] ; 2 uses
  %.sroa.10.0213 = phi i64 [ 30, %bb.c ], [ %i.bz, %.backedge ] ; 2 uses
  %i.bz = add nsw i64 %.sroa.10.0213, -1          ; 2 uses
  %i.ca = ptrtoint ptr %.sroa.6.0214 to i64
  %i.cb = sub nuw i64 %i.ca, %i.by
  %i.cc = lshr exact i64 %i.cb, 5                 ; 2 uses
  %i.cd = call i64 @llvm.usub.sat.i64(i64 %i.cc, i64 %.sroa.10.0213) ; 2 uses
  %.not.i.not = icmp samesign ult i64 %i.cd, %i.cc ; 2 uses
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds [32 x i8], ptr %.sroa.6.0214, i64 %i.ce ; 11 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -32 ; 2 uses
  %storemerge.i = select i1 %.not.i.not, ptr %i.cg, ptr %i.bu
  br i1 %.not.i.not, label %bb.e, label %.loopexit278

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.cg, align 4, !range !24, !noundef !11
  %i.ci = trunc nuw i32 %i.ch to i1
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -28 ; 3 uses
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.cj, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ck = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @21, ptr noundef nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br i1 %i.ck, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.cj, ptr %i.as, align 8
  %i.cl = load i32, ptr %i.cj, align 4, !range !25, !noundef !11
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 -24
  %i.cn = load i32, ptr %i.cm, align 4, !noundef !11
  %i.co = call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.cl, i32 noundef %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cq = load i8, ptr %i.bb, align 4, !range !26, !noundef !11
  store ptr %i.cp, ptr %i.ar, align 8
  store i8 %i.cq, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.ar, ptr %i.aq, align 8
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  store ptr %i.as, ptr %i.bd, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def10FunctionIdNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.444.0..sroa_idx, align 8
  %i.cr = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @20, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br i1 %i.cr, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cs = getelementptr inbounds i8, ptr %i.cf, i64 -12 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !range !27, !noundef !11
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.cw = load i32, ptr %i.cv, align 4, !range !25, !noundef !11
  %i.cx = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.cz = call noundef nonnull align 8 ptr @_RINvMs9_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB8_11AnonConstId3locDNtB8_11HirDatabaseEL_ECslLuZgPVt6hg_3ide(i32 noundef %i.cw, i32 noundef %i.cy, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false)
  %i.da = call { ptr, ptr } @_RNvMs2_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStore15with_source_map(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.am)
  %i.db = extractvalue { ptr, ptr } %i.da, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dc = getelementptr inbounds i8, ptr %i.cf, i64 -20
  %i.dd = load i32, ptr %i.dc, align 4, !range !28, !noundef !11
  switch i32 %i.dd, label %default.unreachable238 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %.backedge
    i32 4, label %.backedge
  ]

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false)
  %i.de = call noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store4bodyNtB5_4Body15with_source_map(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.an) ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %.sroa.011.0.copyload = load i32, ptr %i.dg, align 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dh = getelementptr inbounds i8, ptr %i.cf, i64 -20
  %i.di = load i32, ptr %i.dh, align 4, !range !28, !noundef !11
  switch i32 %i.di, label %default.unreachable238 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %.backedge
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable238:                           ; preds = %bb.j, %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.07.0 = phi ptr [ %i.db, %bb.i ], [ %i.df, %bb.j ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0) ]
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap11expr_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.0, i32 noundef %i.dk)
  %i.dl = load i32, ptr %i.ak, align 4, !range !29, !noundef !11
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %.backedge, label %bb.aj

bb.l:                                             ; preds = %bb.i, %bb.j
  %.sroa.07.1 = phi ptr [ %i.db, %bb.i ], [ %i.df, %bb.j ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.do = load i32, ptr %i.dn, align 4, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1) ]
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10pat_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.1, i32 noundef %i.do)
  %i.dp = load i32, ptr %i.aj, align 4, !range !29, !noundef !11
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %.backedge, label %bb.ak

bb.m:                                             ; preds = %bb.i, %bb.j
  %.sroa.07.2 = phi ptr [ %i.db, %bb.i ], [ %i.df, %bb.j ] ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.ds = load i32, ptr %i.dr, align 4, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.2) ]
  %i.dt = call { ptr, i64 } @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap20patterns_for_binding(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.2, i32 noundef %i.ds) ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dt, 0      ; 3 uses
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.du) ]
  %.idx = shl nuw nsw i64 %i.dv, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %.backedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.backedge.i
  %i.dy = phi ptr [ %i.eb, %.backedge.i ], [ %i.du, %bb.m ] ; 2 uses
  %.val1.i = load i32, ptr %i.dy, align 4, !noalias !280, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !281
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10pat_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.2, i32 noundef %.val1.i), !noalias !282
  %i.dz = load i32, ptr %i.o, align 4, !range !29, !noalias !281, !noundef !11 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %.backedge.i, label %bb.al

.backedge.i:                                      ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !281
  %i.ec = icmp eq ptr %i.eb, %i.dw
  br i1 %i.ec, label %.backedge, label %.lr.ph.i

bb.n:                                             ; preds = %bb.j
  %.not157 = icmp eq i32 %.sroa.011.0.copyload, 2
  br i1 %.not157, label %.backedge, label %bb.o

.backedge:                                        ; preds = %.backedge.i, %bb.j, %bb.n, %bb.i, %bb.i, %bb.k, %bb.l, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ed = icmp eq i64 %i.bz, 0
  br i1 %i.ed, label %.loopexit278, label %bb.d

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %.sroa.011.0.copyload, ptr %i.ah, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx14, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, i64 20, i1 false)
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1j_3ast9generated5nodes9SelfParamEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2K_12MirEvalError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0Es2_0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB3W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.p

bb.p:                                             ; preds = %bb.al, %bb.ak, %bb.aj, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false)
  %i.ee = call { i32, i32 } @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId13original_file(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.ag, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.ef = extractvalue { i32, i32 } %i.ee, 0
  %i.eg = extractvalue { i32, i32 } %i.ee, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.eh = call noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECslLuZgPVt6hg_3ide(i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3)
  %i.ei = call noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.eh) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %i.ei, ptr %i.n, align 4, !noalias !283
  %i.ej = load <2 x i32>, ptr %i.be, align 4
  %i.ek = load i32, ptr %i.be, align 4, !noundef !11
  store <2 x i32> %i.ej, ptr %i.m, align 8, !noalias !283
  %i.el = call { i32, i32 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root(ptr noundef nonnull align 8 %4, i32 noundef %i.ei), !noalias !283 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_12MirEvalError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0EB1h_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !284
  %.pr.i165 = load i64, ptr %i.k, align 8, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !283
  %.not27.i = icmp eq i64 %.pr.i165, -1
  br i1 %.not27.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = load ptr, ptr %i.bh, align 8, !noalias !283, !nonnull !11, !noundef !11
  %i.ez = load i64, ptr %i.bi, align 8, !noalias !283, !noundef !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.thread.i
  %.sink5.i = phi ptr [ %i.ey, %bb.x ], [ @56, %.thread.i ], [ @56, %bb.w ]
  %.sink.i = phi i64 [ %i.ez, %bb.x ], [ 14, %.thread.i ], [ 14, %bb.w ]
  store ptr %.sink5.i, ptr %i.j, align 8, !noalias !283, !captures !14
  store i64 %.sink.i, ptr %i.bj, align 8, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !283
  %i.fa = invoke noundef nonnull align 8 ptr @_RNvCs6oosyzwIepl_6ide_db10line_index(ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @39, i32 noundef %i.ei)
          to label %bb.aa unwind label %bb.z, !noalias !283

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #30
          to label %.body.i unwind label %bb.ai, !noalias !283

bb.aa:                                            ; preds = %bb.y
  %i.fc = load ptr, ptr %i.fa, align 8, !noalias !283, !nonnull !11, !noundef !11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  invoke void @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex12try_line_col(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fd, i32 noundef %i.ek)
          to label %bb.ab unwind label %bb.z, !noalias !283

bb.ab:                                            ; preds = %bb.aa
  %i.fe = load i32, ptr %i.i, align 4, !range !24, !noalias !283, !noundef !11
  %i.ff = trunc nuw i32 %i.fe to i1
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !283
  %i.fg = load <2 x i32>, ptr %i.bl, align 4, !noalias !283
  %i.fh = load i32, ptr %i.bl, align 4, !noalias !283, !noundef !11
  store <2 x i32> %i.fg, ptr %i.h, align 8, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !283
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.g, align 4, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !283
  store ptr %i.j, ptr %i.f, align 8, !noalias !283
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !283
  store ptr %i.g, ptr %i.bn, align 8, !noalias !283
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !283
  store ptr %i.bm, ptr %i.bo, align 8, !noalias !283
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !283
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @58, ptr noundef nonnull %i.f)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i unwind label %bb.z

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !283
  store ptr %i.j, ptr %i.e, align 8, !noalias !283
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !283
  store ptr %i.m, ptr %i.bk, align 8, !noalias !283
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !283
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @57, ptr noundef nonnull %i.e)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit32.i unwind label %bb.z

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit32.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !283
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !283
  %i.fj = load i64, ptr %i.k, align 8, !range !12, !alias.scope !286, !noalias !283, !noundef !11
  %i.fk = icmp eq i64 %i.fj, -1
  br i1 %i.fk, label %_RNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0B5_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.ag, !noalias !283

bb.ag:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.ah, !noalias !283

bb.ah:                                            ; preds = %bb.ag
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !283
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0B5_.exit unwind label %bb.q, !noalias !283

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !283
  br label %bb.ae

bb.ai:                                            ; preds = %bb.z, %.body.i
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !283
  unreachable

common.resume:                                    ; preds = %bb.bq, %bb.bh, %bb.am, %.body, %bb.bf, %bb.bv, %bb.as, %bb.ao, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.iq, %bb.bv ], [ %.pn.i, %.body.i ], [ %i.fq, %bb.ao ], [ %i.fs, %bb.as ], [ %i.fp, %bb.am ], [ %i.hc, %bb.bh ], [ %i.io, %bb.bq ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.bf ]
  resume { ptr, i32 } %common.resume.op

_RNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0B5_.exit: ; preds = %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !283
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.af, ptr %i.ae, align 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.472.0..sroa_idx, align 8
  %i.fo = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @22, ptr noundef nonnull %i.ae)
          to label %bb.aq unwind label %bb.am

bb.aj:                                            ; preds = %bb.k
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB3l_12MirEvalError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0E0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB4x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.ak)
  br label %bb.p

bb.ak:                                            ; preds = %bb.l
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB3l_12MirEvalError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0Es_0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB4x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.aj)
  br label %bb.p

bb.al:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx174, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !281
  store i32 %i.dz, ptr %i.ai, align 4
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB3l_12MirEvalError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0Es1_0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB4x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.p

bb.am:                                            ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0B5_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #30
          to label %common.resume unwind label %bb.au

bb.an:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit: ; preds = %bb.an
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.backedge

bb.aq:                                            ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0B5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br i1 %i.fo, label %bb.ar, label %bb.an

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit167 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit167: ; preds = %bb.ar
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.loopexit

bb.au:                                            ; preds = %bb.bq, %bb.bh, %bb.am
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.av:                                            ; preds = %bb.b
  store ptr %i.bp, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !11, !noundef !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !11 ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 0                    ; 2 uses
  br i1 %i.fz, label %bb.ba, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.av
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !287
  %i.ga = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !287 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.az, label %bb.ba

bb.aw:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.gc, ptr %i.ad, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.val160 = load ptr, ptr %i.gd, align 8, !nonnull !11, !noundef !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.val160, i64 8
  store ptr %i.ge, ptr %i.ab, align 8
  %.sroa.9181.68..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9181, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.9181.68..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !alias.scope !288
  store i64 0, ptr %i.ac, align 8, !alias.scope !289
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %.sroa.4178.0..sroa_idx, align 8, !alias.scope !289
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %2, ptr %.sroa.5179.0..sroa_idx, align 8, !alias.scope !289
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %3, ptr %.sroa.6180.0..sroa_idx, align 8, !alias.scope !289
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !289
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !289
  %.sroa.9181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9181.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9181, i64 23, i1 false), !alias.scope !289
  %.sroa.10182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store <4 x i8> <i8 0, i8 0, i8 1, i8 2>, ptr %.sroa.10182.0..sroa_idx, align 8, !alias.scope !289
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  store i8 3, ptr %.sroa.15.0..sroa_idx, align 4, !alias.scope !289
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtNtNtB7_11next_solver2ty2TyENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.492.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ad, ptr %i.gf, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty6layout11LayoutErrorNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.496.0..sroa_idx, align 8
  %i.gg = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @23, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %i.gg, label %.loopexit, label %bb.bk

bb.ax:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store ptr %i.bp, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.at, ptr %i.p, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.488.0..sroa_idx, align 8
  %i.gh = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @22, ptr noundef nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.gh, label %.loopexit, label %bb.bk

bb.ay:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 3 uses
  store ptr %i.gi, ptr %i.z, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.gk = load i32, ptr %i.gi, align 4, !range !25, !noundef !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.gm = load i32, ptr %i.gl, align 4, !noundef !11
  %i.gn = call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.gk, i32 noundef %i.gm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.go = call noundef nonnull align 4 ptr @_RNvXs1n_CsileJQcQObtj_7hir_defNtB6_10FunctionIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.gi, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load i32, ptr %i.gp, align 4, !range !30, !noundef !11
  switch i32 %i.gq, label %.thread [
    i32 2, label %bb.bl
    i32 3, label %bb.bm
  ]

bb.az:                                            ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.fy) #33
  unreachable

bb.ba:                                            ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i, %bb.av
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.av ], [ %i.ga, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i, ptr nonnull readonly align 1 %i.fw, i64 %i.fy, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val163 = load ptr, ptr %i.gr, align 8         ; 4 uses
  %i.gs = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorE13new_uninit_inCslLuZgPVt6hg_3ide()
          to label %.noexc unwind label %bb.be, !inline_history !0 ; 3 uses

.noexc:                                           ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val163) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.gt = load i32, ptr %.val163, align 8, !range !31, !alias.scope !292, !noundef !11
  %.not.i.i = icmp eq i32 %i.gt, -1
  br i1 %.not.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.noexc
  invoke fastcc void @_RNvXsF_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_12MirEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val163) #36
          to label %bb.bg unwind label %bb.bd, !inline_history !1

bb.bc:                                            ; preds = %.noexc
  %i.gu = getelementptr inbounds nuw i8, ptr %.val163, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_13MirLowerErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.gv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gu) #36
          to label %.noexc1.i unwind label %bb.bd, !inline_history !1

.noexc1.i:                                        ; preds = %bb.bc
  store i32 -1, ptr %i.b, align 8, !alias.scope !291
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef 48, i64 noundef 8) #32, !inline_history !0
  br label %.body

bb.be:                                            ; preds = %bb.ba
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.be
  %eh.lpad-body = phi { ptr, i32 } [ %i.gx, %bb.be ], [ %i.gw, %bb.bd ] ; 2 uses
  br i1 %i.fz, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %.body
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.fy, i64 noundef 1) #32
  br label %common.resume

bb.bg:                                            ; preds = %.noexc1.i, %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  %i.gy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.01.0.i, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.fy, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.gs, ptr %i.ha, align 8
  store i32 0, ptr %i.q, align 8
  %i.hb = invoke noundef zeroext i1 @_RINvMs0_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB6_13MirLowerError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0EB1j_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %5)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #30
          to label %common.resume unwind label %bb.au

bb.bi:                                            ; preds = %bb.bg
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.hb, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bx, %bb.bi
  br label %.loopexit

bb.bk:                                            ; preds = %bb.ax, %bb.aw
  br label %.loopexit

.thread:                                          ; preds = %bb.ay
  store i64 -1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br label %bb.bp

bb.bl:                                            ; preds = %bb.ay
  %i.hd = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.he = load i32, ptr %i.hd, align 4, !range !25, !noundef !11
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hg = load i32, ptr %i.hf, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.hi = load ptr, ptr %i.hh, align 8, !invariant.load !11, !nonnull !11
  %i.hj = call noundef nonnull ptr %i.hi(ptr noundef nonnull %2, i32 noundef %i.he, i32 noundef %i.hg) #36
  store ptr %i.hj, ptr %i.w, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hk, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %2, ptr %i.hl, align 8, !alias.scope !293
  %i.hm = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %3, ptr %i.hm, align 8, !alias.scope !293
  %i.hn = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.w, ptr %i.hn, align 8, !alias.scope !293
  store i64 0, ptr %i.x, align 8, !alias.scope !293
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ho, align 8, !alias.scope !293
  %i.hp = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.hq = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i8 0, ptr %i.hq, align 8, !alias.scope !293
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.hp, align 8, !alias.scope !293
  %i.hr = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  store i8 3, ptr %i.hr, align 4, !alias.scope !293
  call fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtNtNtBD_11next_solver2ty2TyENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.x) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !range !25, !noundef !11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hv = load i32, ptr %i.hu, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.hw = call noundef nonnull align 8 ptr @_RNvMs1m_NtCsileJQcQObtj_7hir_def10signaturesNtB6_14TraitSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.ht, i32 noundef %i.hv)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 120
  %i.hy = load i8, ptr %i.bb, align 4, !range !26, !noundef !11
  store ptr %i.hx, ptr %i.v, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 %i.hy, ptr %i.hz, align 8
  call fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtCs33K2ylI4knu_10hir_expand4name7DisplayNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pr = load i64, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ia = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !nonnull !11, !noundef !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !noundef !11
  br label %bb.bp

bb.bp:                                            ; preds = %.thread, %bb.bn, %bb.bo
  %.sink261 = phi ptr [ %i.ib, %bb.bo ], [ inttoptr (i64 1 to ptr), %bb.bn ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.sink259 = phi i64 [ %i.id, %bb.bo ], [ 0, %bb.bn ], [ 0, %.thread ]
  %.sink258 = phi ptr [ @24, %bb.bo ], [ inttoptr (i64 1 to ptr), %bb.bn ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.sink = phi i64 [ 2, %bb.bo ], [ 0, %bb.bn ], [ 0, %.thread ]
  %i.ie = phi i1 [ false, %bb.bo ], [ true, %bb.bn ], [ true, %.thread ]
  store ptr %.sink261, ptr %i.u, align 8, !captures !14
  %i.if = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink259, ptr %i.if, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sink258, ptr %i.t, align 8, !captures !14
  %i.ig = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sink, ptr %i.ig, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  %i.ii = load i8, ptr %i.bb, align 4, !range !26, !noundef !11
  store ptr %i.ih, ptr %i.s, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %i.ii, ptr %i.ij, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.u, ptr %i.r, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.4112.0..sroa_idx, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.t, ptr %i.ik, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.4116.0..sroa_idx, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.s, ptr %i.il, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4120.0..sroa_idx, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.z, ptr %i.im, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def10FunctionIdNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.4124.0..sroa_idx, align 8
  %i.in = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @25, ptr noundef nonnull %i.r)
          to label %bb.bs unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.br
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #30
          to label %common.resume unwind label %bb.au

bb.br:                                            ; preds = %bb.bs
  %i.ip = invoke noundef zeroext i1 @_RINvMs0_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB6_13MirLowerError12pretty_printNCNvNtCslLuZgPVt6hg_3ide9interpret23render_const_eval_error0EB1j_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %5)
          to label %bb.bx unwind label %bb.bq

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.in, label %bb.bt, label %bb.br

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.ie, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.bu
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.bt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.loopexit

bb.bx:                                            ; preds = %bb.br
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.ip, label %bb.bj, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.bi, %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit167, %bb.aw, %bb.ax, %bb.bk, %bb.bj
  %.sroa.0.3 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide.exit ], [ true, %bb.ax ], [ true, %bb.aw ], [ false, %bb.bx ], [ false, %bb.bi ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit167 ], [ true, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  ret i1 %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_12MirEvalError12pretty_printRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0EB1i_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !317 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.9177 = alloca [23 x i8], align 1         ; 4 uses
  %i.p = alloca [88 x i8], align 8                ; 12 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [24 x i8], align 4                ; 5 uses
  %i.v = alloca [24 x i8], align 4                ; 5 uses
  %i.w = alloca [24 x i8], align 4                ; 3 uses
  %i.x = alloca [24 x i8], align 4                ; 3 uses
  %i.y = alloca [24 x i8], align 4                ; 11 uses
  %i.z = alloca [16 x i8], align 4                ; 4 uses
  %i.aa = alloca [12 x i8], align 4               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 2 uses
  store ptr %4, ptr %i.ah, align 8
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 16)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !318, !noundef !11 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !318, !nonnull !11, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.an, ptr noundef nonnull align 1 dereferenceable(16) @18, i64 16, i1 false)
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !318
  %i.ao = add i64 %.pre.i, 16
  store i64 %i.ao, ptr %i.ai, align 8, !alias.scope !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.413.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.9.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.au = load i8, ptr %i.ap, align 4, !range !26
  br label %bb.b

.loopexit251:                                     ; preds = %.backedge, %bb.d
  br label %bb.b

bb.b:                                             ; preds = %.loopexit251, %bb.a
  %i.av = phi ptr [ %0, %bb.a ], [ %i.ay, %.loopexit251 ] ; 14 uses
  %i.aw = load i32, ptr %i.av, align 8, !range !22, !noundef !11
  switch i32 %i.aw, label %.unreachabledefault [
    i32 10, label %bb.c
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.ae
    i32 4, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ae
    i32 7, label %bb.ae
    i32 8, label %bb.ae
    i32 9, label %bb.ae
    i32 15, label %bb.ae
    i32 11, label %bb.ae
    i32 12, label %bb.ae
    i32 13, label %bb.ae
    i32 14, label %bb.ae
  ], !prof !23

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !11
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bc
  %i.be = ptrtoint ptr %i.ba to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.backedge
  %.sroa.6.0204 = phi ptr [ %i.bd, %bb.c ], [ %storemerge.i, %.backedge ] ; 2 uses
  %.sroa.10.0203 = phi i64 [ 30, %bb.c ], [ %i.bf, %.backedge ] ; 2 uses
  %i.bf = add nsw i64 %.sroa.10.0203, -1          ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.6.0204 to i64
  %i.bh = sub nuw i64 %i.bg, %i.be
  %i.bi = lshr exact i64 %i.bh, 5                 ; 2 uses
  %i.bj = call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 %.sroa.10.0203) ; 2 uses
  %.not.i.not = icmp samesign ult i64 %i.bj, %i.bi ; 2 uses
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [32 x i8], ptr %.sroa.6.0204, i64 %i.bk ; 11 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -32 ; 2 uses
  %storemerge.i = select i1 %.not.i.not, ptr %i.bm, ptr %i.ba
  br i1 %.not.i.not, label %bb.e, label %.loopexit251

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 4, !range !24, !noundef !11
  %i.bo = trunc nuw i32 %i.bn to i1
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -28 ; 3 uses
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.bp, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ac, ptr %i.ab, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.436.0..sroa_idx, align 8
  %i.bq = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @21, ptr noundef nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.bq, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.bp, ptr %i.af, align 8
  %i.br = load i32, ptr %i.bp, align 4, !range !25, !noundef !11
  %i.bs = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !11
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.br, i32 noundef %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  store ptr %i.bv, ptr %i.ae, align 8
  store i8 %i.au, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ae, ptr %i.ad, align 8
  store ptr @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  store ptr %i.af, ptr %i.ar, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def10FunctionIdNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.444.0..sroa_idx, align 8
  %i.bw = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @20, ptr noundef nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br i1 %i.bw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bx = getelementptr inbounds i8, ptr %i.bl, i64 -12 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !range !27, !noundef !11
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !range !25, !noundef !11
  %i.cc = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ce = call noundef nonnull align 8 ptr @_RINvMs9_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB8_11AnonConstId3locDNtB8_11HirDatabaseEL_ECslLuZgPVt6hg_3ide(i32 noundef %i.cb, i32 noundef %i.cd, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false)
  %i.cf = call { ptr, ptr } @_RNvMs2_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStore15with_source_map(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.z)
  %i.cg = extractvalue { ptr, ptr } %i.cf, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ch = getelementptr inbounds i8, ptr %i.bl, i64 -20
  %i.ci = load i32, ptr %i.ch, align 4, !range !28, !noundef !11
  switch i32 %i.ci, label %default.unreachable221 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %.backedge
    i32 4, label %.backedge
  ]

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false)
  %i.cj = call noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store4bodyNtB5_4Body15with_source_map(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.aa) ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %.sroa.011.0.copyload = load i32, ptr %i.cl, align 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cm = getelementptr inbounds i8, ptr %i.bl, i64 -20
  %i.cn = load i32, ptr %i.cm, align 4, !range !28, !noundef !11
  switch i32 %i.cn, label %default.unreachable221 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %.backedge
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable221:                           ; preds = %bb.j, %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.07.0 = phi ptr [ %i.cg, %bb.i ], [ %i.ck, %bb.j ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.cp = load i32, ptr %i.co, align 4, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0) ]
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap11expr_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.0, i32 noundef %i.cp)
  %i.cq = load i32, ptr %i.x, align 4, !range !29, !noundef !11
  %i.cr = icmp eq i32 %i.cq, 2
  br i1 %i.cr, label %.backedge, label %bb.q

bb.l:                                             ; preds = %bb.i, %bb.j
  %.sroa.07.1 = phi ptr [ %i.cg, %bb.i ], [ %i.ck, %bb.j ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1) ]
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10pat_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.1, i32 noundef %i.ct)
  %i.cu = load i32, ptr %i.w, align 4, !range !29, !noundef !11
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %.backedge, label %bb.r

bb.m:                                             ; preds = %bb.i, %bb.j
  %.sroa.07.2 = phi ptr [ %i.cg, %bb.i ], [ %i.ck, %bb.j ] ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.2) ]
  %i.cy = call { ptr, i64 } @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap20patterns_for_binding(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.2, i32 noundef %i.cx) ; 2 uses
  %i.cz = extractvalue { ptr, i64 } %i.cy, 0      ; 3 uses
  %i.da = extractvalue { ptr, i64 } %i.cy, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %.idx = shl nuw nsw i64 %i.da, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx
  %i.dc = icmp eq i64 %i.da, 0
  br i1 %i.dc, label %.backedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.backedge.i
  %i.dd = phi ptr [ %i.dg, %.backedge.i ], [ %i.cz, %bb.m ] ; 2 uses
  %.val1.i = load i32, ptr %i.dd, align 4, !noalias !319, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  call void @_RNvMsc_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMap10pat_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.07.2, i32 noundef %.val1.i), !noalias !321
  %i.de = load i32, ptr %i.b, align 4, !range !29, !noalias !320, !noundef !11 ; 2 uses
  %i.df = icmp eq i32 %i.de, 2
  br i1 %i.df, label %.backedge.i, label %bb.s

.backedge.i:                                      ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  %i.dh = icmp eq ptr %i.dg, %i.db
  br i1 %i.dh, label %.backedge, label %.lr.ph.i

bb.n:                                             ; preds = %bb.j
  %.not157 = icmp eq i32 %.sroa.011.0.copyload, 2
  br i1 %.not157, label %.backedge, label %bb.o

.backedge:                                        ; preds = %.backedge.i, %bb.j, %bb.n, %bb.i, %bb.i, %bb.k, %bb.l, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.di = icmp eq i64 %i.bf, 0
  br i1 %i.di, label %.loopexit251, label %bb.d

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %.sroa.011.0.copyload, ptr %i.u, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx14, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, i64 20, i1 false)
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1j_3ast9generated5nodes9SelfParamEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2K_12MirEvalError12pretty_printRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0Es2_0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB3X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  %i.dj = call { i32, i32 } @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId13original_file(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.t, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.dk = extractvalue { i32, i32 } %i.dj, 0
  %i.dl = extractvalue { i32, i32 } %i.dj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dm = load i32, ptr %i.as, align 4, !noundef !11
  %i.dn = load i32, ptr %i.at, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.do = call noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECslLuZgPVt6hg_3ide(i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3)
  %i.dp = call noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.do)
  call void @_RNvXNtNtNtCshzWfHUSfYae_4core3ops8function5implsRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0INtB4_2FnTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsuAhG64lL82_9text_size5range9TextRangeEE4callBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, i32 noundef %i.dp, i32 noundef %i.dm, i32 noundef %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.472.0..sroa_idx, align 8
  %i.dq = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @22, ptr noundef nonnull %i.r)
          to label %bb.x unwind label %bb.t

bb.q:                                             ; preds = %bb.k
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB3l_12MirEvalError12pretty_printRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0E0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB4y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.x)
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB3l_12MirEvalError12pretty_printRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0Es_0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB4y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.w)
  br label %bb.p

bb.s:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx170, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  store i32 %i.de, ptr %i.v, align 4
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCINvMs5_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB3l_12MirEvalError12pretty_printRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0Es1_0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB4y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.p

bb.t:                                             ; preds = %bb.p
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #30
          to label %common.resume unwind label %bb.ab

bb.u:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.ax, %bb.ao, %bb.t, %.body, %bb.am, %bb.bc, %bb.z, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.gs, %bb.bc ], [ %i.ds, %bb.v ], [ %i.du, %bb.z ], [ %i.dr, %bb.t ], [ %i.fe, %bb.ao ], [ %i.gq, %bb.ax ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit: ; preds = %bb.u
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.backedge

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.dq, label %bb.y, label %bb.u

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit164 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit164: ; preds = %bb.y
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.loopexit

bb.ab:                                            ; preds = %bb.ax, %bb.ao, %bb.t
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.b
  store ptr %i.av, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !11, !noundef !11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !11 ; 6 uses
  %i.eb = icmp eq i64 %i.ea, 0                    ; 2 uses
  br i1 %i.eb, label %bb.ah, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.ac
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !322
  %i.ec = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !322 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.ee, ptr %i.q, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.val = load ptr, ptr %i.ef, align 8, !nonnull !11, !noundef !11
  %i.eg = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.eg, ptr %i.o, align 8
  %.sroa.9177.68..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9177, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.9177.68..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !alias.scope !323
  store i64 0, ptr %i.p, align 8, !alias.scope !324
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.4174.0..sroa_idx, align 8, !alias.scope !324
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %2, ptr %.sroa.5175.0..sroa_idx, align 8, !alias.scope !324
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %3, ptr %.sroa.6176.0..sroa_idx, align 8, !alias.scope !324
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.o, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !324
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !324
  %.sroa.9177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9177.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9177, i64 23, i1 false), !alias.scope !324
  %.sroa.10178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store <4 x i8> <i8 0, i8 0, i8 1, i8 2>, ptr %.sroa.10178.0..sroa_idx, align 8, !alias.scope !324
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  store i8 3, ptr %.sroa.15.0..sroa_idx, align 4, !alias.scope !324
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtNtNtB7_11next_solver2ty2TyENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.492.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.eh, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty6layout11LayoutErrorNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.496.0..sroa_idx, align 8
  %i.ei = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @23, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ei, label %.loopexit, label %bb.ar

bb.ae:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store ptr %i.av, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ag, ptr %i.c, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.488.0..sroa_idx, align 8
  %i.ej = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @22, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ej, label %.loopexit, label %bb.ar

bb.af:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  store ptr %i.ek, ptr %i.m, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.em = load i32, ptr %i.ek, align 4, !range !25, !noundef !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !noundef !11
  %i.ep = call noundef nonnull align 8 ptr @_RNvMs1z_NtCsileJQcQObtj_7hir_def10signaturesNtB6_17FunctionSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.em, i32 noundef %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eq = call noundef nonnull align 4 ptr @_RNvXs1n_CsileJQcQObtj_7hir_defNtB6_10FunctionIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i32, ptr %i.er, align 4, !range !30, !noundef !11
  switch i32 %i.es, label %.thread [
    i32 2, label %bb.as
    i32 3, label %bb.at
  ]

bb.ag:                                            ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.ea) #33
  unreachable

bb.ah:                                            ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i, %bb.ac
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ac ], [ %i.ec, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i, ptr nonnull readonly align 1 %i.dy, i64 %i.ea, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val162 = load ptr, ptr %i.et, align 8         ; 4 uses
  %i.eu = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorE13new_uninit_inCslLuZgPVt6hg_3ide()
          to label %.noexc unwind label %bb.al, !inline_history !0 ; 3 uses

.noexc:                                           ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val162) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !325
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.ev = load i32, ptr %.val162, align 8, !range !31, !alias.scope !327, !noundef !11
  %.not.i.i = icmp eq i32 %i.ev, -1
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc
  invoke fastcc void @_RNvXsF_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_12MirEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val162) #36
          to label %bb.an unwind label %bb.ak, !inline_history !1

bb.aj:                                            ; preds = %.noexc
  %i.ew = getelementptr inbounds nuw i8, ptr %.val162, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_13MirLowerErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew) #36
          to label %.noexc1.i unwind label %bb.ak, !inline_history !1

.noexc1.i:                                        ; preds = %bb.aj
  store i32 -1, ptr %i.a, align 8, !alias.scope !326
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef 48, i64 noundef 8) #32, !inline_history !0
  br label %.body

bb.al:                                            ; preds = %bb.ah
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.al ], [ %i.ey, %bb.ak ] ; 2 uses
  br i1 %i.eb, label %common.resume, label %bb.am

bb.am:                                            ; preds = %.body
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.ea, i64 noundef 1) #32
  br label %common.resume

bb.an:                                            ; preds = %.noexc1.i, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !325
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.01.0.i, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ea, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.eu, ptr %i.fc, align 8
  store i32 0, ptr %i.d, align 8
  %i.fd = invoke noundef zeroext i1 @_RINvMs0_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB6_13MirLowerError12pretty_printRNCNvNtCslLuZgPVt6hg_3ide9interpret18find_and_interprets_0EB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %5)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #30
          to label %common.resume unwind label %bb.ab

bb.ap:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.fd, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.be, %bb.ap
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ae, %bb.ad
  br label %.loopexit

.thread:                                          ; preds = %bb.af
  store i64 -1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.aw

bb.as:                                            ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.fg = load i32, ptr %i.ff, align 4, !range !25, !noundef !11
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.fi = load i32, ptr %i.fh, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !11, !nonnull !11
  %i.fl = call noundef nonnull ptr %i.fk(ptr noundef nonnull %2, i32 noundef %i.fg, i32 noundef %i.fi) #36
  store ptr %i.fl, ptr %i.j, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fm, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %2, ptr %i.fn, align 8, !alias.scope !328
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %3, ptr %i.fo, align 8, !alias.scope !328
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.j, ptr %i.fp, align 8, !alias.scope !328
  store i64 0, ptr %i.k, align 8, !alias.scope !328
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.fq, align 8, !alias.scope !328
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 0, ptr %i.fs, align 8, !alias.scope !328
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.fr, align 8, !alias.scope !328
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  store i8 3, ptr %i.ft, align 4, !alias.scope !328
  call fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs8K4cjrcxBsw_6hir_ty7display17HirDisplayWrapperNtNtNtBD_11next_solver2ty2TyENtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.au

bb.at:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.fv = load i32, ptr %i.fu, align 4, !range !25, !noundef !11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.fx = load i32, ptr %i.fw, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fy = call noundef nonnull align 8 ptr @_RNvMs1m_NtCsileJQcQObtj_7hir_def10signaturesNtB6_14TraitSignature2of(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, i32 noundef %i.fv, i32 noundef %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120
  %i.ga = load i8, ptr %i.ap, align 4, !range !26, !noundef !11
  store ptr %i.fz, ptr %i.i, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.ga, ptr %i.gb, align 8
  call fastcc void @_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtCs33K2ylI4knu_10hir_expand4name7DisplayNtB5_12SpecToString14spec_to_stringCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pr = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !nonnull !11, !noundef !11
  %i.ge = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noundef !11
  br label %bb.aw

bb.aw:                                            ; preds = %.thread, %bb.au, %bb.av
  %.sink239 = phi ptr [ %i.gd, %bb.av ], [ inttoptr (i64 1 to ptr), %bb.au ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.sink237 = phi i64 [ %i.gf, %bb.av ], [ 0, %bb.au ], [ 0, %.thread ]
  %.sink236 = phi ptr [ @24, %bb.av ], [ inttoptr (i64 1 to ptr), %bb.au ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.sink = phi i64 [ 2, %bb.av ], [ 0, %bb.au ], [ 0, %.thread ]
  %i.gg = phi i1 [ false, %bb.av ], [ true, %bb.au ], [ true, %.thread ]
  store ptr %.sink239, ptr %i.h, align 8, !captures !14
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink237, ptr %i.gh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sink236, ptr %i.g, align 8, !captures !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sink, ptr %i.gi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ep, i64 128
  %i.gk = load i8, ptr %i.ap, align 4, !range !26, !noundef !11
  store ptr %i.gj, ptr %i.f, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.gk, ptr %i.gl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.4112.0..sroa_idx, align 8
end_hunk_1
