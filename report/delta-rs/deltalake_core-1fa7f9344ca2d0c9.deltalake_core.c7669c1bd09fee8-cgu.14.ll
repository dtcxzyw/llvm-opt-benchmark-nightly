inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1a_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt0E0zE0E0B3d_:bb.a
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !7320
  unreachable

_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime5io_rt0E0zE0B2r_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7317
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ao:                                            ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0E0zE0E0B2q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.s = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !align !209, !noundef !12 ; 2 uses
  store ptr null, ptr %i.s, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.al, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvNtCs2pqxYH9ZEk8_3std3env3varReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 24)
  %i.u = load i64, ptr %i.r, align 8, !range !49, !noundef !12
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.thread14.i.i.i, label %bb.c

.thread14.i.i.i:                                  ; preds = %bb.b
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2pqxYH9ZEk8_3std3env8VarErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.w, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false)
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7347)
  %i.x = load ptr, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !alias.scope !7347, !nonnull !12, !noundef !12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !7347, !noundef !12 ; 2 uses
  switch i64 %i.z, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !7350, !noalias !7353, !noundef !12 ; 2 uses
  switch i8 %i.aa, label %bb.f [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.d
  %.pr.i.i.i.i.i = load i8, ptr %i.x, align 1, !alias.scope !7350, !noalias !7353
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.e
  %i.ab = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.aa, %bb.e ]
  %cond.i.i.i.i.i = icmp eq i8 %i.ab, 43          ; 2 uses
  %i.ac = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.z, %i.ac ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.ad, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.f
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i22, i64 1
  %i.af = add nsw i64 %.sroa.15.1.i.i.i.i.i21, -1 ; 2 uses
  %.not52.i.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.af, 0
  br i1 %.not52.i.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.f, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i22 = phi ptr [ %i.ae, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i21 = phi i64 [ %i.af, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.f ]
  %.sroa.042.0.i.i.i.i.i20 = phi i64 [ %i.ao, %.preheader56.i.i.i.i.i ], [ 0, %bb.f ]
  %i.ag = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i20, i64 10) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %bb.g, !prof !51

bb.g:                                             ; preds = %.preheader56.i.i.i.i.i.preheader
  %i.ai = extractvalue { i64, i1 } %i.ag, 0       ; 2 uses
  %i.aj = load i8, ptr %.sroa.0.1.i.i.i.i.i22, align 1, !alias.scope !7350, !noalias !7353, !noundef !12
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ugt i32 %i.al, 9
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = add i64 %i.ai, %i.an                    ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ai
  %or.cond.i.i.i.i = select i1 %i.am, i1 true, i1 %i.ap, !prof !7355
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !7355

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.h
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.aw, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.av, %bb.h ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.ay, %bb.h ], [ 0, %.preheader.i.i.i.i.i ]
  %i.aq = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !7350, !noalias !7353, !noundef !12
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ugt i32 %i.as, 9                   ; 3 uses
  br i1 %i.at, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.av = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.ax = zext nneg i32 %i.as to i64
  %i.ay = add i64 %i.au, %i.ax                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i: ; preds = %bb.g, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i.i.i ], [ %i.ay, %bb.h ], [ undef, %bb.g ], [ %i.ao, %.preheader56.i.i.i.i.i ], [ undef, %.preheader56.i.i.i.i.i.preheader ] ; 3 uses
  %.sink.i.i.i.i.i = phi i1 [ true, %bb.e ], [ false, %.preheader.i.i.i.i.i ], [ true, %bb.d ], [ true, %bb.e ], [ %i.at, %bb.h ], [ %i.at, %.lr.ph.i.i.i.i.i ], [ true, %bb.g ], [ false, %.preheader56.i.i.i.i.i ], [ true, %.preheader56.i.i.i.i.i.preheader ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size00Bb_.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.i
  resume { ptr, i32 } %i.az

_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size00Bb_.exit.i.i.i: ; preds = %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.sink.i.i.i.i.i, label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0E0zE0B1E_.exit, label %bb.l

bb.k:                                             ; preds = %bb.c, %.thread14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0E0zE0B1E_.exit

bb.l:                                             ; preds = %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size00Bb_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bb = icmp ult i64 %.sroa.102.0.i.i.i.i, 5242880
  br i1 %i.bb, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp ugt i64 %.sroa.102.0.i.i.i.i, 5368709120
  br i1 %i.bc, label %bb.n, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.be = icmp ult i64 %i.bd, 2
  br i1 %i.be, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bf = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bf, label %bb.p [
    i8 0, label %bb.v
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !2880

bb.p:                                             ; preds = %bb.o
  %i.bg = call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE) #54 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.o
  %.sroa.016.0.i.i.i.i = phi i8 [ %i.bg, %bb.p ], [ %i.bf, %bb.o ], [ %i.bf, %bb.o ]
  %i.bi = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.bj = call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bi, i8 noundef %.sroa.016.0.i.i.i.i)
  br i1 %i.bj, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bk = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @161, ptr %i.g, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 165 to ptr), ptr %i.bm, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @156, ptr %i.bn, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.018.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.018.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.018.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %.sroa.419.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.bl, ptr %.sroa.419.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.bo = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !7356
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.s, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !7356 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 6
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp samesign ugt i64 %i.bq, 3
  br i1 %i.bs, label %bb.t, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE, align 8, !noalias !7356, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !12, !noundef !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !12
  store i64 4, ptr %i.b, align 8, !noalias !7356
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bv, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !7356
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bx, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !7356
  %i.by = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %i.by, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !12, !nonnull !12
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #55, !inline_history !7359
  br i1 %i.cd, label %bb.u, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, ptr noundef nonnull %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  br label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i

_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ce = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 6
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp samesign ugt i64 %i.cg, 3
  br i1 %i.ci, label %bb.x, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !12, !noundef !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !12
  store i64 4, ptr %i.f, align 8
  %.sroa.333.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cl, ptr %.sroa.333.0..sroa_idx.i.i.i.i, align 8
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.cn, ptr %.sroa.534.0..sroa_idx.i.i.i.i, align 8
  %i.co = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, ptr } %i.co, 1      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !invariant.load !12, !nonnull !12
  %i.ct = call noundef zeroext i1 %i.cs(ptr noundef %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #55, !inline_history !7360
  br i1 %i.ct, label %bb.y, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cu = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @161, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 165 to ptr), ptr %i.cw, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @156, ptr %i.cx, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.436.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.436.0..sroa_idx.i.i.i.i, align 8
  %.sroa.537.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.537.0..sroa_idx.i.i.i.i, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.cv, ptr %i.cy, align 8
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cj, ptr noundef nonnull %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.z:                                             ; preds = %bb.l
  %i.cz = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.da = icmp ult i64 %i.cz, 2
  br i1 %i.da, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.db = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.db, label %bb.ab [
    i8 0, label %bb.ah
    i8 1, label %bb.ac
    i8 2, label %bb.ac
  ], !prof !2880

bb.ab:                                            ; preds = %bb.aa
  %i.dc = call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE) #54 ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.aa
  %.sroa.07.0.i.i.i.i = phi i8 [ %i.dc, %bb.ab ], [ %i.db, %bb.aa ], [ %i.db, %bb.aa ]
  %i.de = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.df = call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.de, i8 noundef %.sroa.07.0.i.i.i.i)
  br i1 %i.df, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dg = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @162, ptr %i.n, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.di, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @156, ptr %i.dj, align 8
  store i64 1, ptr %i.p, align 8
  %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  %i.dk = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !7361
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.ae, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dm = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !7361 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 6
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp samesign ugt i64 %i.dm, 3
  br i1 %i.do, label %bb.af, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.dp = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE, align 8, !noalias !7361, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !12, !noundef !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !12
  store i64 4, ptr %i.a, align 8, !noalias !7361
  %.sroa.3.0..sroa_idx.i41.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.dr, ptr %.sroa.3.0..sroa_idx.i41.i.i.i.i, align 8, !noalias !7361
  %.sroa.5.0..sroa_idx.i42.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.dt, ptr %.sroa.5.0..sroa_idx.i42.i.i.i.i, align 8, !noalias !7361
  %i.du = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.dv = extractvalue { ptr, ptr } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { ptr, ptr } %i.du, 1      ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !12, !nonnull !12
  %i.dz = call noundef zeroext i1 %i.dy(ptr noundef %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #55, !inline_history !7364
  br i1 %i.dz, label %bb.ag, label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dp, ptr noundef nonnull %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  br label %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i

_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.ea = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.ai, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 6
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp samesign ugt i64 %i.ec, 3
  br i1 %i.ee, label %bb.aj, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !12, !noundef !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !12
  store i64 4, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.eh, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8
  %.sroa.524.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ej, ptr %.sroa.524.0..sroa_idx.i.i.i.i, align 8
  %i.ek = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.el = extractvalue { ptr, ptr } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, ptr } %i.ek, 1      ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !invariant.load !12, !nonnull !12
  %i.ep = call noundef zeroext i1 %i.eo(ptr noundef %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) #55, !inline_history !7360
  br i1 %i.ep, label %bb.ak, label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eq = load ptr, ptr @_RNvNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @162, ptr %i.j, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.es, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @156, ptr %i.et, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.426.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.426.0..sroa_idx.i.i.i.i, align 8
  %.sroa.527.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.527.0..sroa_idx.i.i.i.i, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.er, ptr %i.eu, align 8
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ef, ptr noundef nonnull %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.em, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i

_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i, %bb.m
  %.sroa.0.0.i10.i.i.i = phi i64 [ 5368709120, %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0s_0Bd_.exit.i.i.i.i ], [ %.sroa.102.0.i.i.i.i, %bb.m ], [ 5368709120, %bb.x ], [ 5368709120, %bb.y ], [ 5368709120, %bb.w ], [ 5368709120, %bb.v ], [ 5242880, %bb.aj ], [ 5242880, %bb.ak ], [ 5242880, %bb.ai ], [ 5242880, %bb.ah ], [ 5242880, %_RNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_00Bd_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0E0zE0B1E_.exit

_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0E0zE0B1E_.exit: ; preds = %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size00Bb_.exit.i.i.i, %bb.k, %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.i10.i.i.i, %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size0s_0Bb_.exit.i.i.i ], [ 5242880, %bb.k ], [ 5242880, %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size00Bb_.exit.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.t, align 8
  ret void

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer25get_max_concurrency_tasks0E0zE0E0B2q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !align !209, !noundef !12 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvNtCs2pqxYH9ZEk8_3std3env3varReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @252, i64 noundef 29)
  %i.e = load i64, ptr %i.b, align 8, !range !49, !noundef !12
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %.thread12.i.i.i, label %bb.c

.thread12.i.i.i:                                  ; preds = %bb.b
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2pqxYH9ZEk8_3std3env8VarErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer25get_max_concurrency_tasks0E0zE0B1E_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.sroa.06.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer25get_max_concurrency_tasks0E0zE0B1E_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false)
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.a, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7365)
  %i.h = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7365, !nonnull !12, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7365, !noundef !12 ; 2 uses
  switch i64 %i.j, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB2_16DataFusionEngine3new:bb.a
  br i1 %i.t, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p, !noalias !10767

bb.k:                                             ; preds = %bb.h
  %i.u = extractvalue { i64, i64 } %i.q, 0
  %i.v = extractvalue { i64, i64 } %i.q, 1
  invoke void @_RNvMs1_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, i64 noundef 0, i64 noundef %i.u, i64 noundef %i.v)
          to label %bb.l unwind label %bb.i, !noalias !10767

bb.l:                                             ; preds = %bb.k
  %.sroa.5.16.copyload.i = load ptr, ptr %i.a, align 8, !noalias !10767 ; 3 uses
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.16.copyload.i = load i64, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !10767 ; 2 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10775
  %i.w = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, 17) 8) #51, !noalias !10775 ; 7 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.q, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #50
          to label %.noexc4.i unwind label %bb.n, !noalias !10767

.noexc4.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.16.copyload.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtBJ_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.5.16.copyload.i, i64 %.sroa.7.16.copyload.i) #52
          to label %.body.i unwind label %bb.o, !noalias !10767

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10767
  unreachable

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10767
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j, %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.c) #52
          to label %.body13 unwind label %bb.p, !noalias !10767

bb.q:                                             ; preds = %bb.l
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.w, align 8, !noalias !10767
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10767
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sroa.5.16.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10767
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.7.16.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !10767
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.16..sroa_idx.i, i64 24, i1 false), !noalias !10767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0.0.i, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10778
  %i.ad = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 17) 8) #51, !noalias !10778 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.r, label %bb.u, !prof !59

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #50
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #52
          to label %.body13 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ad, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formatsNtB2_27DataFusionFileFormatHandler3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.v ], [ %i.ao, %bb.z ] ; 2 uses
  %i.ai = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !10781
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #54
          to label %.critedge unwind label %bb.ac

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10786
  %i.am = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, 17) 8) #51, !noalias !10786 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.y, label %bb.ab, !prof !59

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #50
          to label %.noexc16 unwind label %bb.z

.noexc16:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #52
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aq = insertvalue { ptr, ptr } poison, ptr %i.ad, 0
  %i.ar = insertvalue { ptr, ptr } %i.aq, ptr %i.am, 1
  ret { ptr, ptr } %i.ar

bb.ac:                                            ; preds = %bb.ae, %bb.w, %.body13
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body13:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.af, %bb.s ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.h) #52
          to label %bb.ad unwind label %bb.ac

.critedge:                                        ; preds = %bb.ad, %bb.ae, %bb.w, %.body
  %.pn23 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ], [ %.pn.ph, %bb.ae ], [ %.pn.ph, %bb.ad ]
  resume { ptr, i32 } %.pn23

bb.ad:                                            ; preds = %.body13
  call void @llvm.experimental.noalias.scope.decl(metadata !10789)
  call void @llvm.experimental.noalias.scope.decl(metadata !10792)
  %i.at = load ptr, ptr %i.i, align 8, !alias.scope !10795, !nonnull !12, !noundef !12
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !10795
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #54
          to label %.critedge unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtB2_12DeltaPlanner3new() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE5force0EB2h_.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE5force0EB2h_.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE5force0EB2h_.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER, align 8, !nonnull !12, !noundef !12
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE5force0EB2h_.exit
  %i.h = load ptr, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner13DELTA_PLANNER, align 8, !nonnull !12, !noundef !12
  ret ptr %i.h

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEE5force0EB2h_.exit
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2_8Snapshot10file_views(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2_8Snapshot5files(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noundef %3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.f, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10796
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 17) 8) #51, !noalias !10796 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtBJ_5MapOkINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2e_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB2e_6marker4SendEL_EENCNvMNtNtB4X_6kernel8snapshotNtB6k_8Snapshot10file_views0EEE3newB4X_.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtBL_5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNvMNtNtB5d_6kernel8snapshotNtB6z_8Snapshot10file_views0EEEB5d_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtBJ_5MapOkINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2e_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB2e_6marker4SendEL_EENCNvMNtNtB4X_6kernel8snapshotNtB6k_8Snapshot10file_views0EEE3newB4X_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @430, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2_8Snapshot10tombstones(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [528 x i8], align 16              ; 5 uses
  %i.f = alloca [96 x i8], align 16               ; 4 uses
  %i.g = alloca [512 x i8], align 16              ; 8 uses
  %i.h = alloca [17 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newB8_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, i64 noundef 100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8 ; 0 uses
  %i.o = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 0, ptr %i.h, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !12, !nonnull !12
  %i.s = invoke { ptr, ptr } %i.r(ptr noundef nonnull %1, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.h)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.h, %bb.d
  %.sroa.04.0 = phi i8 [ %.sroa.03.1, %bb.d ], [ %.sroa.04.2.lpad-body, %bb.h ], [ %.sroa.04.2.lpad-body, %.body ]
  %.sroa.03.0 = phi i8 [ %.sroa.03.1, %bb.d ], [ %.sroa.03.2.lpad-body, %bb.h ], [ %.sroa.03.2.lpad-body, %.body ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %eh.lpad-body, %bb.h ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.t = trunc nuw i8 %.sroa.03.0 to i1
  br i1 %i.t, label %bb.ai, label %bb.af

bb.d:                                             ; preds = %bb.z, %bb.w, %bb.b
  %.sroa.03.1 = phi i8 [ 1, %bb.z ], [ 0, %bb.w ], [ 1, %bb.b ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.b
  %i.v = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.s, 1        ; 3 uses
  store ptr %i.v, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !490, !invariant.load !12
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, i64 8) acquire, align 8
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f, !prof !105

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f, %bb.q, %bb.p, %bb.i
  %.sroa.04.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.i ], [ 0, %bb.q ], [ 1, %bb.p ]
  %.sroa.03.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.i ], [ 0, %bb.q ], [ 0, %bb.p ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.n, %bb.g
  %.sroa.04.2.lpad-body = phi i8 [ 1, %bb.n ], [ %.sroa.04.2, %bb.g ], [ 0, %bb.t ] ; 2 uses
  %.sroa.03.2.lpad-body = phi i8 [ 1, %bb.n ], [ %.sroa.03.2, %bb.g ], [ 0, %bb.t ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.aj, %bb.g ], [ %i.bg, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10799)
  call void @llvm.experimental.noalias.scope.decl(metadata !10802)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !10805, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !10805
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ah

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc, %bb.e
  %i.an = load ptr, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, align 8, !nonnull !12, !noundef !12
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.aq = load ptr, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, align 8, !nonnull !12, !noundef !12
  invoke void @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB2_10LogSegment12read_actions(ptr noalias noundef nonnull sret([512 x i8]) align 16 captures(address) dereferenceable(512) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %i.aa, ptr noundef nonnull %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.w, ptr noundef nonnull %i.aq, ptr noundef null)
          to label %bb.k unwind label %bb.g

bb.j:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.as = load i64, ptr %i.ar, align 16, !range !5303, !noundef !12
  %i.at = icmp eq i64 %i.as, 5
  br i1 %i.at, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10806
  %i.au = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 16) #51, !noalias !10806 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.y, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #50
          to label %.noexc18 unwind label %bb.n

.noexc18:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBN_6future5ready5ReadyINtNtB4_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB2v_6errors15DeltaTableErrorEEEEB2v_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.f) #52
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.e, ptr noundef nonnull align 16 dereferenceable(512) %i.g, i64 512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ay = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  store ptr %i.ay, ptr %.sroa.2.0..sroa_idx, align 16
  invoke void @_RINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB3_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB5_NtB5_8Snapshot10tombstones0EB9_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(528) %i.e)
          to label %bb.q unwind label %bb.g

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.az = invoke { ptr, ptr } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5buildB8_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.r unwind label %bb.g       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = extractvalue { ptr, ptr } %i.az, 0
  %i.bb = extractvalue { ptr, ptr } %i.az, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.bb, ptr %i.bd, align 8
  store i64 -9223372036854775808, ptr %i.d, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !10809
  %i.be = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 17) 8) #51, !noalias !10809 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.s, label %bb.v, !prof !59

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #50
          to label %.noexc19 unwind label %bb.t

.noexc19:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtBL_5MapOkINtNtNtBN_6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNvMNtNtB5C_6kernel8snapshotNtB6Y_8Snapshot10tombstoness_0ENCB6V_s0_0EEEB5C_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #52
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.v:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !10812)
  call void @llvm.experimental.noalias.scope.decl(metadata !10815)
  %i.bi = load ptr, ptr %i.i, align 8, !alias.scope !10818, !nonnull !12, !noundef !12
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !10818
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit22

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit22 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit22: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit22
  %.sroa.3.0 = phi ptr [ @432, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit ], [ @431, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit22 ]
  %.sroa.0.0 = phi ptr [ %i.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit ], [ %i.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bl = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bm = insertvalue { ptr, ptr } %i.bl, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.bm

bb.y:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.au, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !10819)
  call void @llvm.experimental.noalias.scope.decl(metadata !10822)
  %i.bn = load ptr, ptr %i.i, align 8, !alias.scope !10825, !nonnull !12, !noundef !12
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !10825
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit24

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit24 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit24: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit24
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10826)
  call void @llvm.experimental.noalias.scope.decl(metadata !10829)
  %i.br = load ptr, ptr %i.j, align 8, !alias.scope !10832, !nonnull !12, !noundef !12
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !10837
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #54
          to label %.thread unwind label %bb.ae

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit24
  call void @llvm.experimental.noalias.scope.decl(metadata !10838)
  call void @llvm.experimental.noalias.scope.decl(metadata !10841)
  %i.bu = load ptr, ptr %i.j, align 8, !alias.scope !10844, !nonnull !12, !noundef !12
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !10845
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer5statsNtB2_11StatsScalar14try_from_stats:bb.a
  %.sroa.21.sroa.11518.0.extract.shift = lshr i64 %.sroa.21.0.copyload, 8
  %.sroa.21.sroa.11518.0.extract.trunc = trunc i64 %.sroa.21.sroa.11518.0.extract.shift to i8
  %.sroa.21.sroa.12.0.extract.shift531 = and i64 %.sroa.21.0.copyload, -65536
  %.sroa.26484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.26484.0.copyload = load i64, ptr %.sroa.26484.0..sroa_idx, align 8, !alias.scope !10933
  %.sroa.27494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lg = load <2 x i32>, ptr %.sroa.27494.0..sroa_idx, align 8, !alias.scope !10933
  br label %bb.fk

bb.fe:                                            ; preds = %bb.fb
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.le)
          to label %.noexc276 unwind label %bb.fj

.noexc276:                                        ; preds = %bb.fe
  %.sroa.0.0.copyload.i273 = load i64, ptr %i.a, align 8, !noalias !10933
  %.sroa.26484.16.copyload.pre = load i64, ptr %i.kq, align 8, !noalias !10931
  %.sroa.27494.16..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lh = load <2 x i32>, ptr %.sroa.27494.16..sroa_idx.phi.trans.insert, align 8, !noalias !10931
  br label %bb.ff

bb.ff:                                            ; preds = %.noexc276, %bb.fb
  %.sroa.26484.16.copyload = phi i64 [ %.sroa.26484.16.copyload.pre, %.noexc276 ], [ undef, %bb.fb ]
  %.sroa.0.0.i274 = phi i64 [ %.sroa.0.0.copyload.i273, %.noexc276 ], [ -9223372036854775808, %bb.fb ] ; 3 uses
  %i.li = phi <2 x i32> [ %i.lh, %.noexc276 ], [ undef, %bb.fb ]
  %.sroa.21.sroa.0511.0.extract.trunc516 = trunc i64 %.sroa.0.0.i274 to i8
  %.sroa.21.sroa.11518.0.extract.shift527 = lshr i64 %.sroa.0.0.i274, 8
  %.sroa.21.sroa.11518.0.extract.trunc528 = trunc i64 %.sroa.21.sroa.11518.0.extract.shift527 to i8
  %.sroa.21.sroa.12.0.extract.shift541 = and i64 %.sroa.0.0.i274, -65536
  br label %bb.fk

bb.fg:                                            ; preds = %bb.fc
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %.noexc277 unwind label %bb.fj

.noexc277:                                        ; preds = %bb.fg
  %.sroa.03.0.copyload.i269 = load i64, ptr %i.b, align 8, !noalias !10933
  %.sroa.21.8.copyload483.pre = load i64, ptr %i.kp, align 8, !noalias !10931
  %.sroa.26484.8..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.26484.8.copyload493.pre = load i64, ptr %.sroa.26484.8..sroa_idx.phi.trans.insert, align 8, !noalias !10931
  br label %bb.fh

bb.fh:                                            ; preds = %.noexc277, %bb.fc
  %.sroa.26484.8.copyload493 = phi i64 [ %.sroa.26484.8.copyload493.pre, %.noexc277 ], [ undef, %bb.fc ]
  %.sroa.21.8.copyload483 = phi i64 [ %.sroa.21.8.copyload483.pre, %.noexc277 ], [ undef, %bb.fc ] ; 3 uses
  %.sroa.03.0.i270 = phi i64 [ %.sroa.03.0.copyload.i269, %.noexc277 ], [ -9223372036854775808, %bb.fc ]
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lk = load <2 x i32>, ptr %i.lj, align 8, !alias.scope !10931, !noalias !10928
  %.sroa.21.sroa.0511.0.extract.trunc517 = trunc i64 %.sroa.21.8.copyload483 to i8
  %.sroa.21.sroa.11518.0.extract.shift529 = lshr i64 %.sroa.21.8.copyload483, 8
  %.sroa.21.sroa.11518.0.extract.trunc530 = trunc i64 %.sroa.21.sroa.11518.0.extract.shift529 to i8
  %.sroa.21.sroa.12.0.extract.shift547 = and i64 %.sroa.21.8.copyload483, -65536
  br label %bb.fk

bb.fi:                                            ; preds = %.split219, %bb.fk
  %.sroa.5154.sroa.0.0 = phi i64 [ undef, %.split219 ], [ %.sroa.21.sroa.0511.0.insert.insert, %bb.fk ]
  %.sroa.5154.sroa.4.0 = phi i64 [ undef, %.split219 ], [ %.sroa.26484.0, %bb.fk ]
  %.sroa.0152.0 = phi i64 [ -9223372036854775789, %.split219 ], [ %.sroa.0469.0, %bb.fk ]
  %i.ll = phi <2 x i32> [ undef, %.split219 ], [ %i.ln, %bb.fk ]
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 -9223372036854775706, ptr %0, align 16
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0152.0, ptr %.sroa.5150.0..sroa_idx, align 16
  %.sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5154.sroa.0.0, ptr %.sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx, align 8
  %.sroa.5150.sroa.4.sroa.4.0..sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5154.sroa.4.0, ptr %.sroa.5150.sroa.4.sroa.4.0..sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx.sroa_idx, align 16
  %.sroa.5150.sroa.4.sroa.5.0..sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i32> %i.ll, ptr %.sroa.5150.sroa.4.sroa.5.0..sroa.5150.sroa.4.0..sroa.5150.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.n

bb.fj:                                            ; preds = %bb.fg, %bb.fe
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #52
          to label %common.resume unwind label %bb.bo

bb.fk:                                            ; preds = %bb.fh, %bb.ff, %bb.fd, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.el
  %.sroa.0469.0 = phi i64 [ %i.kr, %bb.fd ], [ -9223372036854775806, %bb.en ], [ -9223372036854775805, %bb.eo ], [ -9223372036854775804, %bb.ep ], [ %i.kr, %bb.eq ], [ -9223372036854775802, %bb.er ], [ %i.kr, %bb.es ], [ %i.kr, %bb.et ], [ %i.kr, %bb.eu ], [ -9223372036854775798, %bb.ev ], [ -9223372036854775797, %bb.ew ], [ -9223372036854775796, %bb.ex ], [ -9223372036854775795, %bb.ey ], [ -9223372036854775794, %bb.ez ], [ -9223372036854775793, %bb.fa ], [ -9223372036854775792, %bb.ff ], [ %.sroa.03.0.i270, %bb.fh ], [ -9223372036854775807, %bb.el ]
  %.sroa.26484.0 = phi i64 [ %.sroa.26484.0.copyload, %bb.fd ], [ undef, %bb.en ], [ undef, %bb.eo ], [ undef, %bb.ep ], [ %.sroa.26484.0.copyload492, %bb.eq ], [ undef, %bb.er ], [ %.sroa.26484.0.copyload490, %bb.es ], [ %.sroa.26484.0.copyload488, %bb.et ], [ %.sroa.26484.0.copyload486, %bb.eu ], [ undef, %bb.ev ], [ undef, %bb.ew ], [ undef, %bb.ex ], [ undef, %bb.ey ], [ undef, %bb.ez ], [ undef, %bb.fa ], [ %.sroa.26484.16.copyload, %bb.ff ], [ %.sroa.26484.8.copyload493, %bb.fh ], [ undef, %bb.el ]
  %.sroa.21.sroa.0511.0 = phi i8 [ %.sroa.21.sroa.0511.0.extract.trunc, %bb.fd ], [ undef, %bb.en ], [ undef, %bb.eo ], [ undef, %bb.ep ], [ %.sroa.21.sroa.0511.0.extract.trunc515, %bb.eq ], [ undef, %bb.er ], [ %.sroa.21.sroa.0511.0.extract.trunc514, %bb.es ], [ %.sroa.21.sroa.0511.0.extract.trunc513, %bb.et ], [ %.sroa.21.sroa.0511.0.extract.trunc512, %bb.eu ], [ undef, %bb.ev ], [ undef, %bb.ew ], [ undef, %bb.ex ], [ undef, %bb.ey ], [ undef, %bb.ez ], [ %i.lb, %bb.fa ], [ %.sroa.21.sroa.0511.0.extract.trunc516, %bb.ff ], [ %.sroa.21.sroa.0511.0.extract.trunc517, %bb.fh ], [ undef, %bb.el ]
  %.sroa.21.sroa.11518.0 = phi i8 [ %.sroa.21.sroa.11518.0.extract.trunc, %bb.fd ], [ undef, %bb.en ], [ undef, %bb.eo ], [ undef, %bb.ep ], [ %.sroa.21.sroa.11518.0.extract.trunc526, %bb.eq ], [ undef, %bb.er ], [ %.sroa.21.sroa.11518.0.extract.trunc524, %bb.es ], [ %.sroa.21.sroa.11518.0.extract.trunc522, %bb.et ], [ %.sroa.21.sroa.11518.0.extract.trunc520, %bb.eu ], [ undef, %bb.ev ], [ undef, %bb.ew ], [ undef, %bb.ex ], [ undef, %bb.ey ], [ undef, %bb.ez ], [ %i.ld, %bb.fa ], [ %.sroa.21.sroa.11518.0.extract.trunc528, %bb.ff ], [ %.sroa.21.sroa.11518.0.extract.trunc530, %bb.fh ], [ undef, %bb.el ]
  %.sroa.21.sroa.12.sroa.0549.0 = phi i64 [ %.sroa.21.sroa.12.0.extract.shift531, %bb.fd ], [ 0, %bb.en ], [ 0, %bb.eo ], [ 0, %bb.ep ], [ %.sroa.21.sroa.12.0.extract.shift539, %bb.eq ], [ 0, %bb.er ], [ %.sroa.21.sroa.12.0.extract.shift537, %bb.es ], [ %.sroa.21.sroa.12.0.extract.shift535, %bb.et ], [ %.sroa.21.sroa.12.0.extract.shift533, %bb.eu ], [ 0, %bb.ev ], [ 0, %bb.ew ], [ 0, %bb.ex ], [ 0, %bb.ey ], [ 0, %bb.ez ], [ 0, %bb.fa ], [ %.sroa.21.sroa.12.0.extract.shift541, %bb.ff ], [ %.sroa.21.sroa.12.0.extract.shift547, %bb.fh ], [ %i.kv, %bb.el ]
  %i.ln = phi <2 x i32> [ %i.lg, %bb.fd ], [ undef, %bb.en ], [ undef, %bb.eo ], [ undef, %bb.ep ], [ %i.kw, %bb.eq ], [ undef, %bb.er ], [ %i.kx, %bb.es ], [ %i.ky, %bb.et ], [ %i.kz, %bb.eu ], [ undef, %bb.ev ], [ undef, %bb.ew ], [ undef, %bb.ex ], [ undef, %bb.ey ], [ undef, %bb.ez ], [ undef, %bb.fa ], [ %i.li, %bb.ff ], [ %i.lk, %bb.fh ], [ undef, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.21.sroa.11518.0.insert.ext = zext i8 %.sroa.21.sroa.11518.0 to i64
  %.sroa.21.sroa.11518.0.insert.shift = shl nuw nsw i64 %.sroa.21.sroa.11518.0.insert.ext, 8
  %.sroa.21.sroa.11518.0.insert.insert = or disjoint i64 %.sroa.21.sroa.11518.0.insert.shift, %.sroa.21.sroa.12.sroa.0549.0
  %.sroa.21.sroa.0511.0.insert.ext = zext i8 %.sroa.21.sroa.0511.0 to i64
  %.sroa.21.sroa.0511.0.insert.insert = or disjoint i64 %.sroa.21.sroa.11518.0.insert.insert, %.sroa.21.sroa.0511.0.insert.ext
  br label %bb.fi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB2_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE8simplifyCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [128 x i8], align 16              ; 8 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %i.e = alloca [128 x i8], align 16              ; 8 uses
  %i.f = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.650.i = alloca [40 x i8], align 8        ; 8 uses
  %.sroa.362.i = alloca [64 x i8], align 16       ; 3 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %i.h = alloca [128 x i8], align 16              ; 7 uses
  %.sroa.656.i = alloca [40 x i8], align 8        ; 6 uses
  %i.i = alloca [112 x i8], align 16              ; 4 uses
  %i.j = alloca [128 x i8], align 16              ; 8 uses
  %.sroa.639.i = alloca [40 x i8], align 8        ; 6 uses
  %.sroa.67.i = alloca [40 x i8], align 8         ; 7 uses
  %.sroa.3.i = alloca [64 x i8], align 16         ; 5 uses
  %i.k = alloca [112 x i8], align 16              ; 4 uses
  %i.l = alloca [128 x i8], align 16              ; 7 uses
  %.sroa.613.i = alloca [40 x i8], align 8        ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 11 uses
  %i.n = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.o = alloca [128 x i8], align 8               ; 11 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.9 = alloca [40 x i8], align 8            ; 9 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.650.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10939
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10939
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10941, !noalias !10944, !nonnull !12, !align !209, !noundef !12
  invoke void @_RNvMs2_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierNtB5_14ConstEvaluator7try_new(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r)
          to label %bb.d unwind label %bb.c, !noalias !10944

bb.b:                                             ; preds = %.body.i
  br i1 %.sroa.070.2.i, label %bb.af, label %bb.ae

bb.c:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.n, align 8, !range !50, !noalias !10939, !noundef !12 ; 2 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !10939
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !10945
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10939
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %2), !noalias !10946
  br label %bb.ag

.body.i:                                          ; preds = %bb.s, %bb.i, %bb.f
  %.sroa.070.2.i = phi i1 [ true, %bb.i ], [ %.sroa.070.3.i, %bb.f ], [ false, %bb.s ]
  %.pn128.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.v, %bb.f ], [ %.pn.i, %bb.s ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(128) %i.o) #52
          to label %bb.b unwind label %bb.ad, !noalias !10944

bb.f:                                             ; preds = %bb.ac, %bb.ab, %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i, %bb.h, %bb.g
  %.sroa.070.3.i = phi i1 [ false, %bb.ac ], [ false, %bb.ab ], [ true, %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i ], [ true, %bb.g ], [ true, %bb.h ]
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.g:                                             ; preds = %bb.d
  %.sroa.674.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.674.0..sroa_idx.i, i64 80, i1 false), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10939
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !10939
  store i64 %i.s, ptr %i.o, align 8, !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10939
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !10934, !noalias !10944, !nonnull !12, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !10934, !noalias !10944, !noundef !12 ; 2 uses
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.x, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10947
  %i.ab = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i unwind label %bb.f, !noalias !10944

.noexc.i:                                         ; preds = %bb.g
  %i.ac = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !10947
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i, label %bb.h, !prof !105

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #54
          to label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i unwind label %bb.f, !noalias !10944

_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i: ; preds = %bb.h, %.noexc.i
  invoke void @_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic16NullableIntervalEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.b, i64 noundef %i.z)
          to label %.noexc134.i unwind label %bb.f, !noalias !10944

.noexc134.i:                                      ; preds = %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ab, ptr %i.ae, align 8, !alias.scope !10950, !noalias !10947
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic16NullableIntervalEENCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3x_14ExprSimplifierNtNtB1s_8simplify15SimplifyContextE37simplify_with_cycle_count_transformed0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6p_8for_each4callTRB1o_RB27_ENCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB7O_7HashMapB7t_B7y_EINtNtB6t_7collect12FromIteratorB7s_E9from_iterBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.k unwind label %bb.i, !noalias !10953

bb.i:                                             ; preds = %.noexc134.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic16NullableIntervalENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 16, i64 noundef 16)
          to label %.body.i unwind label %bb.j, !noalias !10953

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10953
  unreachable

bb.k:                                             ; preds = %.noexc134.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10947
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ai = load i8, ptr %i.ah, align 4, !range !208, !alias.scope !10934, !noalias !10944, !noundef !12
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.683.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.sroa.2117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %.sroa.693.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.794.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.2120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.7106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.2123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !10934, !noalias !10944
  br label %bb.r

bb.m:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.k, ptr noundef nonnull align 16 dereferenceable(112) %2, i64 112, i1 false), !noalias !10954
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier13CanonicalizerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.k, ptr noalias noundef nonnull %i.a)
          to label %bb.o unwind label %bb.m, !noalias !10944

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10939
  %i.an = load i64, ptr %i.l, align 16, !range !7143, !noalias !10939, !noundef !12 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.613.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !10939
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.613.i, i64 40, i1 false), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.i, i64 40, i1 false), !noalias !10945
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.677.0..sroa_idx.i, i64 64, i1 false), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.613.i, i64 40, i1 false), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i)
  store i64 %i.an, ptr %2, align 16, !alias.scope !10937, !noalias !10954
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.i, i64 40, i1 false), !noalias !10954
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.i, i64 64, i1 false), !noalias !10954
  br label %bb.l

bb.r:                                             ; preds = %bb.x, %bb.l
  %.sroa.018.0.i = phi i32 [ 0, %bb.l ], [ %i.bc, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.i), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.i, ptr noundef nonnull align 16 dereferenceable(112) %2, i64 112, i1 false), !noalias !10954
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.j, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.o)
          to label %bb.t unwind label %.loopexit.i, !noalias !10944

bb.s:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic16NullableIntervalENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 16, i64 noundef 16)
          to label %.body.i unwind label %bb.ad, !noalias !10944

.loopexit.i:                                      ; preds = %bb.w, %bb.v, %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i:                             ; preds = %bb.y
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10939
  %i.ar = load i64, ptr %i.j, align 16, !range !7143, !noalias !10939, !noundef !12 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.639.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.582.0..sroa_idx.i, i64 40, i1 false), !noalias !10939
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10939
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3118.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.683.0..sroa_idx.i, i64 64, i1 false), !noalias !10939
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2117.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.639.i, i64 40, i1 false), !noalias !10939
  store i64 %i.ar, ptr %i.f, align 16, !noalias !10939
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode7rewriteINtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier10SimplifierNtNtB7_8simplify15SimplifyContextEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RNCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB4_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE37simplify_with_cycle_count_transformeds_0Cs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.loopexit.i, !noalias !10944

_RNCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB4_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE37simplify_with_cycle_count_transformeds_0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10939
  %i.at = load i64, ptr %i.e, align 16, !range !7143, !noalias !10939, !noundef !12 ; 2 uses
  %i.au = icmp eq i64 %i.at, 37
  br i1 %i.au, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_RNCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB4_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE37simplify_with_cycle_count_transformeds_0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.587.0.copyload.i = load i8, ptr %.sroa.587.0..sroa_idx.i, align 16, !noalias !10939
  %i.av = or i8 %.sroa.587.0.copyload.i, %.sroa.7.0.copyload.i ; 2 uses
  %i.aw = and i8 %i.av, 1
  store i8 %i.aw, ptr %.sroa.587.0..sroa_idx.i, align 16, !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3121.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.794.0..sroa_idx.i, i64 64, i1 false), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2120.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.693.0..sroa_idx.i, i64 40, i1 false), !noalias !10939
  store i64 %i.at, ptr %i.d, align 16, !noalias !10939
  invoke void @_RNvNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter10guarantees27rewrite_with_guarantees_map(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %_RNCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB4_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE37simplify_with_cycle_count_transformeds0_0Cs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.loopexit.i, !noalias !10944

_RNCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB4_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE37simplify_with_cycle_count_transformeds0_0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10939
  %i.ax = load i64, ptr %i.c, align 16, !range !7143, !noalias !10939, !noundef !12 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 37
  br i1 %i.ay, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %_RNCNvMNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB4_14ExprSimplifierNtNtCs8VI8w5SIoU4_15datafusion_expr8simplify15SimplifyContextE37simplify_with_cycle_count_transformeds0_0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.599.0.copyload.i = load i8, ptr %.sroa.599.0..sroa_idx.i, align 16, !noalias !10939
  %i.az = or i8 %.sroa.599.0.copyload.i, %i.av    ; 2 uses
  %i.ba = and i8 %i.az, 1
  store i8 %i.ba, ptr %.sroa.599.0..sroa_idx.i, align 16, !noalias !10939
  %i.bb = trunc i8 %i.az to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i), !noalias !10939
  store i64 %i.ax, ptr %2, align 16, !alias.scope !10937, !noalias !10954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2123.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6105.0..sroa_idx.i, i64 40, i1 false), !noalias !10954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3124.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7106.0..sroa_idx.i, i64 64, i1 false), !noalias !10954
  %i.bc = add nuw i32 %.sroa.018.0.i, 1           ; 2 uses
  %.not.i = icmp ult i32 %i.bc, %i.al
  %or.cond.i = select i1 %i.bb, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.656.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %2, i64 112, i1 false), !noalias !10954
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull %i.a)
          to label %bb.z unwind label %.loopexit.split-lp.i, !noalias !10944

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10939
  %i.bd = load i64, ptr %i.h, align 16, !range !7143, !noalias !10939, !noundef !12 ; 3 uses
  %i.be = icmp eq i64 %i.bd, 37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.656.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !noalias !10939
  br i1 %i.be, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView13remove_action:bb.a
  %.neg.i = mul nsw i32 %i.ac, -146097
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.05.0.i = phi i32 [ %.neg.i, %bb.k ], [ 0, %bb.j ]
  %.sroa.0.0.i = phi i32 [ %i.ae, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %i.af = sdiv i32 %.sroa.0.0.i, 100              ; 2 uses
  %i.ag = mul nsw i32 %.sroa.0.0.i, 1461
  %i.ah = ashr i32 %i.ag, 2
  %i.ai = ashr i32 %i.af, 2
  %i.aj = lshr i32 %i.w, 4
  %i.ak = and i32 %i.aj, 511
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.am = load i32, ptr %i.al, align 4, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !noundef !12
  %i.ap = invoke noundef i64 @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView4size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView20partition_values_map(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.aq = invoke fastcc { ptr, i64 } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView15deletion_vector(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !alias.scope !11042, !noundef !12
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.au = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %.not14 = icmp eq ptr %i.au, null
  br i1 %.not14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = extractvalue { ptr, i64 } %i.aq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.au, ptr %i.a, align 8, !noalias !11045
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !noalias !11045
  invoke fastcc void @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView10descriptor(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.w unwind label %bb.o

bb.s:                                             ; preds = %bb.q, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.w ], [ -9223372036854775808, %bb.q ]
  %i.ax = add nuw nsw i32 %i.ak, -719163
  %i.ay = add nsw i32 %i.ax, %.sroa.05.0.i
  %i.az = sub nsw i32 %i.ay, %i.af
  %i.ba = add nsw i32 %i.az, %i.ah
  %narrow = add nsw i32 %i.ba, %i.ai
  %i.bb = sext i32 %narrow to i64
  %i.bc = mul nsw i64 %i.bb, 86400
  %i.bd = zext i32 %i.am to i64
  %i.be = add nsw i64 %i.bc, %i.bd
  %i.bf = mul nsw i64 %i.be, 1000
  %i.bg = udiv i32 %i.ao, 1000000
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = add nsw i64 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bl = zext i1 %2 to i8
  store i8 %i.bl, ptr %i.bk, align 8
  store i64 1, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ap, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.0.0, ptr %i.bs, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bv = load i64, ptr %i.g, align 8, !range !50, !alias.scope !11049, !noundef !12
  %i.bw = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.u ], [ %.pn16, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload1 = load i64, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.x:                                             ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.y:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView15deletion_vector(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef align 8 ptr @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 14) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef align 8 ptr @_RNvXs1_NtCs1N9T06jgEdt_11arrow_array4castINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 8 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView15deletion_vectors_0Ba_.exit, %bb.g, %bb.f, %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.f ], [ undef, %bb.a ], [ %i.o, %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView15deletion_vectors_0Ba_.exit ], [ undef, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.a ], [ %..i, %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView15deletion_vectors_0Ba_.exit ], [ null, %bb.g ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.h

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.j = load i64, ptr %i.i, align 8, !noundef !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.09.0 = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  %i.m = icmp eq i64 %.sroa.09.0, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !12 ; 3 uses
  %i.p = tail call noundef zeroext i1 @_RNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayNtB6_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.d, i64 noundef %i.o)
  br i1 %i.p, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11052)
  %i.q = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48) acquire, align 8, !noalias !11055
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.i, !prof !105

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11055
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, ptr %i.b, align 8, !noalias !11055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11055
  store ptr %i.b, ptr %i.a, align 8, !noalias !11055
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !11055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11055
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.h
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 24), align 8, !alias.scope !11057, !noalias !11060, !noundef !12
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 11), !noalias !11055 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11062)
  call void @llvm.experimental.noalias.scope.decl(metadata !11065)
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 8), align 8, !alias.scope !11068, !noalias !11069, !noundef !12 ; 2 uses
  %i.y = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, align 8, !alias.scope !11068, !noalias !11069, !nonnull !12, !noundef !12 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ar, %bb.m ]
  %.pn.i.i.i.i = phi i64 [ %i.u, %bb.j ], [ %i.as, %bb.m ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.x ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i21.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !11072 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not27.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not27.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.sroa.06.0.i28.i.i.i = phi i16 [ %i.aq, %bb.l ], [ %i.ad, %bb.k ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.x
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.y, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.al = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef range(i64 4, 17) 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak), !noalias !11075
  br i1 %i.al, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.l, !prof !105

._crit_edge.i.i.i:                                ; preds = %bb.l, %bb.k
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.m, label %select.unfold.i, !prof !51

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add i16 %.sroa.06.0.i28.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i28.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i.i, %i.ar
  br label %bb.k

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.au = load i64, ptr %i.at, align 8, !noalias !11055, !noundef !12 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !11052, !noalias !11078, !noundef !12 ; 2 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView15deletion_vectors_0Ba_.exit, label %bb.n

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #56, !noalias !11055
  unreachable

bb.n:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #56, !noalias !11055
  unreachable

_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView15deletion_vectors_0Ba_.exit: ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !11052, !noalias !11078, !nonnull !12, !noundef !12
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.au
  %i.bb = call noundef zeroext i1 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_valid(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba, i64 noundef %i.o), !noalias !11055
  %..i = select i1 %i.bb, ptr %i.d, ptr null
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView16partition_values(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 4 uses
  %i.b = tail call noundef align 8 ptr @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @459, i64 noundef 22) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 ptr @_RNvXs1_NtCs1N9T06jgEdt_11arrow_array4castINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 3 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11079)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.e = tail call noundef zeroext i1 @_RNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayNtB6_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, i64 noundef %.val), !noalias !11079
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !11079, !noalias !11082
  br label %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView16partition_valuess_0Ba_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11084
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt10from_array(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @160, i64 noundef %.val), !noalias !11088
  %i.f = load i64, ptr %i.a, align 16, !range !11035, !noalias !11084, !noundef !12
  switch i64 %i.f, label %bb.g [
    i64 -9223372036854775794, label %.thread.i.i
    i64 -9223372036854775792, label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView16partition_valuess_00Bc_.exit.i
  ]

.thread.i.i:                                      ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload1.i = load i64, ptr %i.g, align 8, !noalias !11089
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false), !noalias !11090
  br label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView16partition_valuess_00Bc_.exit.i

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.a), !noalias !11088
  br label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView16partition_valuess_00Bc_.exit.i

_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView16partition_valuess_00Bc_.exit.i: ; preds = %bb.g, %.thread.i.i, %bb.f
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %.thread.i.i ], [ -9223372036854775808, %bb.f ], [ -9223372036854775808, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11084
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !11079, !noalias !11082
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !11082
  br label %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView16partition_valuess_0Ba_.exit

_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView16partition_valuess_0Ba_.exit: ; preds = %bb.e, %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView16partition_valuess_00Bc_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.h

bb.h:                                             ; preds = %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView16partition_valuess_0Ba_.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView17modification_time(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 24), align 8, !alias.scope !11091, !noalias !11094, !noundef !12
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.j = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 16) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11096)
  call void @llvm.experimental.noalias.scope.decl(metadata !11099)
  %i.k = lshr i64 %i.j, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 8), align 8, !alias.scope !11102, !noalias !11103, !noundef !12 ; 2 uses
  %i.n = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, align 8, !alias.scope !11102, !noalias !11103, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ag, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.j, %bb.c ], [ %i.ah, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.m    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !11106 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.p
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i28.i.i = phi i16 [ %i.af, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.01.0.i.i.i, %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  %i.aa = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef range(i64 4, 17) 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !11109
  br i1 %i.aa, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e, !prof !105

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %select.unfold, !prof !51

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i28.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i28.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.d

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !12 ; 2 uses
  %i.am = icmp ult i64 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %bb.i

select.unfold:                                    ; preds = %._crit_edge.i.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #56
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.aj
  %i.aq = call noundef nonnull align 8 ptr @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int64TypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noundef !12 ; 3 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 32
  %.val = load ptr, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.aq, i64 40
  %.val3 = load i64, ptr %i.au, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.as, ptr %i.c, align 8
  %i.av = lshr i64 %.val3, 3                      ; 2 uses
  %i.aw = icmp ult i64 %i.as, %i.av
  br i1 %i.aw, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.h, !prof !105

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.av, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ax, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @496, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #56
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.as
  %i.az = load i64, ptr %i.ay, align 8, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.az

bb.i:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView17object_store_path(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView4path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.b, %bb.i
  %.pn = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.g, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !559, !noundef !12
  %.not4 = icmp eq i64 %i.h, -9223372036854775802
  br i1 %.not4, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f)
          to label %bb.e unwind label %bb.i

.thread:                                          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = load i64, ptr %i.b, align 8, !range !50, !alias.scope !11112, !noundef !12
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView20partition_values_map(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView16partition_values(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.f = load i64, ptr %i.e, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11118
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !11115, !noalias !11120, !nonnull !12, !noundef !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11115, !noalias !11120, !noundef !12
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11115, !noalias !11120, !nonnull !12, !noundef !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !11115, !noalias !11120, !noundef !12
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %i.o
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !11118

bb.c:                                             ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #52
          to label %bb.e unwind label %bb.d, !noalias !11120

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !11118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11118
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB15_EEINtNtNtNtB1M_4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB2w_8adapters3map3MapINtNtB3A_3zip3ZipINtNtNtB1M_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB4f_NtNtNtB4J_11expressions7scalars6ScalarEENCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6m_15LogicalFileView20partition_values_map00EEB6s_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
          to label %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView20partition_values_map0Ba_.exit unwind label %bb.c, !noalias !11115

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !11120
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.q

_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView20partition_values_map0Ba_.exit: ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11118
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c), !noalias !11120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.s = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_15LogicalFileView20partition_values_map0Ba_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView21modification_datetime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 20)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %i.d = tail call noundef i64 @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView17modification_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) ; 2 uses
  %i.e = sdiv i64 %i.d, 1000
  %i.f = srem i64 %i.d, 1000                      ; 3 uses
  %.lobit.i = ashr i64 %i.f, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.e      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %i.h = select i1 %i.g, i64 1000, i64 0
  %spec.select.i = add nsw i64 %i.h, %i.f
  %i.i = trunc nuw nsw i64 %spec.select.i to i32
  %i.j = mul nuw nsw i32 %i.i, 1000000
  %i.k = sdiv i64 %.sroa.0.0.i, 86400
  %i.l = srem i64 %.sroa.0.0.i, 86400             ; 3 uses
  %.lobit.i.i = ashr i64 %i.l, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.k  ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  %i.n = select i1 %i.m, i64 86400, i64 0
  %spec.select.i.i = add nsw i64 %i.n, %i.l
  %i.o = add nsw i64 %.sroa.0.0.i.i, -2146764485
  %or.cond.i = icmp ult i64 %i.o, -4294967296
  br i1 %or.cond.i, label %_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit, label %bb.a

bb.a:                                             ; preds = %.split
  %i.p = trunc i64 %.sroa.0.0.i.i to i32
  %i.q = add i32 %i.p, 719163
  %i.r = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.q), !noalias !11121 ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i64 %spec.select.i.i to i32
  br label %_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit

_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit: ; preds = %bb.a, %.split, %bb.b
  %.sroa.9.0 = phi i32 [ %i.j, %bb.b ], [ undef, %.split ], [ undef, %bb.a ]
  %.sroa.8.0 = phi i32 [ %i.s, %bb.b ], [ undef, %.split ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.r, %bb.b ], [ 0, %.split ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = tail call noundef i64 @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView17modification_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  store i64 %i.t, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @461, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775719, ptr %i.c, align 16
  %.not = icmp eq i32 %.sroa.0.0, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.9.0, ptr %.sroa.5.0..sroa_idx, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCshmPyUV8PP35_6chrono8datetimeINtB4_8DateTimeNtNtNtB6_6offset3utc3UtcE14from_timestamp.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView26deletion_vector_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call fastcc { ptr, i64 } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView15deletion_vector(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8
  call fastcc void @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView10descriptor(ptr noalias noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView4path(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 24), align 8, !alias.scope !11124, !noalias !11127, !noundef !12
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.g = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 4) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11129)
  call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 8), align 8, !alias.scope !11135, !noalias !11136, !noundef !12 ; 2 uses
  %i.k = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, align 8, !alias.scope !11135, !noalias !11136, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ad, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.ae, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !11139 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i28.i.i = phi i16 [ %i.ac, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.x = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef range(i64 4, 17) 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !11142
  br i1 %i.x, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e, !prof !105

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.f, label %select.unfold, !prof !51

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i28.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i28.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.d

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !12 ; 2 uses
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

select.unfold:                                    ; preds = %._crit_edge.i.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @462) #56
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %i.ap = call fastcc { ptr, i64 } @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16get_string_value(ptr noundef nonnull %i.am, i64 noundef %i.ao) ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0      ; 3 uses
  %.not6 = icmp eq ptr %i.aq, null
  br i1 %.not6, label %bb.j, label %bb.i, !prof !51

bb.h:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  call void @_RNvMs3_Cs8ojr27oueVZ_16percent_encodingNtB5_13PercentDecode17decode_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.as)
  ret void

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView4size(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 24), align 8, !alias.scope !11145, !noalias !11148, !noundef !12
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.j = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 4) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11150)
  call void @llvm.experimental.noalias.scope.decl(metadata !11153)
  %i.k = lshr i64 %i.j, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 8), align 8, !alias.scope !11156, !noalias !11157, !noundef !12 ; 2 uses
  %i.n = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, align 8, !alias.scope !11156, !noalias !11157, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ag, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.j, %bb.c ], [ %i.ah, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.m    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !11160 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.p
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i28.i.i = phi i16 [ %i.af, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.01.0.i.i.i, %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  %i.aa = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef range(i64 4, 17) 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !11163
  br i1 %i.aa, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e, !prof !105

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %select.unfold, !prof !51

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i28.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i28.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.d

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !12 ; 2 uses
  %i.am = icmp ult i64 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %bb.i

select.unfold:                                    ; preds = %._crit_edge.i.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #56
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.aj
  %i.aq = call noundef nonnull align 8 ptr @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int64TypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noundef !12 ; 3 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 32
  %.val = load ptr, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.aq, i64 40
  %.val3 = load i64, ptr %i.au, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.as, ptr %i.c, align 8
  %i.av = lshr i64 %.val3, 3                      ; 2 uses
  %i.aw = icmp ult i64 %i.as, %i.av
  br i1 %i.aw, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.h, !prof !105

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.av, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ax, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @496, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #56
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.as
  %i.az = load i64, ptr %i.ay, align 8, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.az

bb.i:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView5stats(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [104 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call noundef align 8 ptr @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @458, i64 noundef 12) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit.thread, label %_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit

_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit: ; preds = %bb.a
  %i.g = tail call noundef align 8 ptr @_RNvXs1_NtCs1N9T06jgEdt_11arrow_array4castINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !12
  call void @_RNvMNtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB2_11StructArray5slice(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.g, i64 noundef %i.i, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression19evaluate_expression7to_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465)
          to label %bb.e unwind label %bb.d

_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit.thread: ; preds = %bb.a, %_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.u, %_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView12stats_parsed.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p, %bb.f, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.h, %bb.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.j, %bb.d ], [ %i.o, %bb.i ], [ %i.aj, %bb.x ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e) #52
          to label %bb.ab unwind label %bb.aa

bb.e:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.d, align 8, !range !6722, !noundef !12
  %.not12.not = icmp eq i64 %i.k, -9223372036854775788
  br i1 %.not12.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.t unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load <2 x ptr>, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.m, ptr %i.b, align 16, !noalias !11166
  %i.n = invoke noundef nonnull align 8 ptr @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray9as_stringlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !11170

bb.h:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11171)
  call void @llvm.experimental.noalias.scope.decl(metadata !11174)
  %i.p = load ptr, ptr %i.b, align 16, !alias.scope !11177, !noalias !11166, !nonnull !12, !noundef !12
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !11178
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #54
          to label %.body unwind label %bb.s, !noalias !11170

bb.j:                                             ; preds = %bb.g
  %i.s = invoke { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n, i64 noundef 0)
          to label %bb.k unwind label %bb.h, !noalias !11170 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11166
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.u, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.h, !noalias !11170

bb.l:                                             ; preds = %bb.k
  %i.v = load i64, ptr %i.a, align 8, !range !49, !noalias !11166, !noundef !12
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !50, !noalias !11166, !noundef !12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.w, label %bb.m, label %bb.n, !prof !51

bb.m:                                             ; preds = %bb.l
  %i.aa = load i64, ptr %i.z, align 8, !noalias !11166
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #50
          to label %bb.r unwind label %bb.h, !noalias !11170

bb.n:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !11166, !nonnull !12, !noundef !12 ; 2 uses
  %i.ac = icmp ule i64 %i.u, %i.y
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11166
  %.not.i17 = icmp eq i64 %i.u, 0                 ; 2 uses
  br i1 %.not.i17, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.ad = ptrtoint ptr %i.ab to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !11179)
  call void @llvm.experimental.noalias.scope.decl(metadata !11182)
  %i.ae = load ptr, ptr %i.b, align 16, !alias.scope !11185, !noalias !11166, !nonnull !12, !noundef !12
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !11186
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #54
          to label %bb.v unwind label %bb.d

bb.q:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.t, i64 %i.u, i1 false), !noalias !11170
  br label %bb.o

bb.r:                                             ; preds = %bb.m
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !11170
  unreachable

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.t
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e)
  br label %bb.c

bb.v:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.y, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ad, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.u, ptr %.sroa.310.0..sroa_idx, align 8
  br i1 %.not.i17, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.aa:                                            ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ab:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView8path_raw(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 24), align 8, !alias.scope !11187, !noalias !11190, !noundef !12
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.g = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 4) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11192)
  call void @llvm.experimental.noalias.scope.decl(metadata !11195)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, i64 8), align 8, !alias.scope !11198, !noalias !11199, !noundef !12 ; 2 uses
  %i.k = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators13FIELD_INDICES, align 8, !alias.scope !11198, !noalias !11199, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ad, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.ae, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !11202 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i28.i.i = phi i16 [ %i.ac, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.x = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef range(i64 4, 17) 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !11205
  br i1 %i.x, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e, !prof !105

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.f, label %select.unfold, !prof !51

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i28.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i28.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.d

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !12 ; 2 uses
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

select.unfold:                                    ; preds = %._crit_edge.i.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @466) #56
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %i.ap = call fastcc { ptr, i64 } @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16get_string_value(ptr noundef nonnull %i.am, i64 noundef %i.ao) ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %.not6 = icmp eq ptr %i.aq, null
  br i1 %.not6, label %bb.j, label %bb.i, !prof !51

bb.h:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable

bb.i:                                             ; preds = %bb.g
  ret { ptr, i64 } %i.ap

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @467) #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB11_E13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %i.b, i64 noundef %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB2_13TombstoneView11data_change(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView11data_change11FIELD_INDEX, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView11data_change11FIELD_INDEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView11data_change11FIELD_INDEX, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView11data_change11FIELD_INDEX, align 8, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.e
  %i.l = call noundef nonnull align 8 ptr @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !12
  %i.o = call noundef zeroext i1 @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB4_12BooleanArray5value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.l, i64 noundef %i.n)
  ret i1 %i.o

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB2_13TombstoneView18deletion_timestamp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView18deletion_timestamp11FIELD_INDEX, i64 8) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView18deletion_timestamp11FIELD_INDEX, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView18deletion_timestamp11FIELD_INDEX, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.h = load i64, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView18deletion_timestamp11FIELD_INDEX, align 8, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !12 ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.h ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !490, !invariant.load !12
  %i.t = add nsw i64 %i.s, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = call noundef align 8 ptr @_RINvXs_NtCs1N9T06jgEdt_11arrow_array4castDNtNtB7_5array5ArrayEL_NtB5_7AsArray16as_primitive_optNtNtB7_5types9Int64TypeECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.q) ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.g, label %bb.e

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !12 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 32
  %.val = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.x, i64 40
  %.val4 = load i64, ptr %i.ab, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.z, ptr %i.c, align 8
  %i.ac = lshr i64 %.val4, 3                      ; 2 uses
  %i.ad = icmp ult i64 %i.z, %i.ac
  br i1 %i.ad, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.f, !prof !105

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ae, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @496, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #56
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.z
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.3.0 = phi i64 [ %i.ag, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.c ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB2_13TombstoneView4path(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4path11FIELD_INDEX, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4path11FIELD_INDEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4path11FIELD_INDEX, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4path11FIELD_INDEX, align 8, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !12
  %i.n = call fastcc { ptr, i64 } @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16get_string_value(ptr noundef nonnull %i.k, i64 noundef %i.m) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.e, !prof !51

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  call void @_RNvMs3_Cs8ojr27oueVZ_16percent_encodingNtB5_13PercentDecode17decode_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q)
  ret void

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @468, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB2_13TombstoneView4size(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4size11FIELD_INDEX, i64 8) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4size11FIELD_INDEX, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4size11FIELD_INDEX, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.h = load i64, ptr @_RNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB4_13TombstoneView4size11FIELD_INDEX, align 8, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !12 ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.h ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !490, !invariant.load !12
  %i.t = add nsw i64 %i.s, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = call noundef align 8 ptr @_RINvXs_NtCs1N9T06jgEdt_11arrow_array4castDNtNtB7_5array5ArrayEL_NtB5_7AsArray16as_primitive_optNtNtB7_5types9Int64TypeECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.q) ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.g, label %bb.e

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #56
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !12 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 32
  %.val = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.x, i64 40
  %.val4 = load i64, ptr %i.ab, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.z, ptr %i.c, align 8
  %i.ac = lshr i64 %.val4, 3                      ; 2 uses
  %i.ad = icmp ult i64 %i.z, %i.ac
  br i1 %i.ad, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.f, !prof !105

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ae, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @496, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #56
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.z
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.3.0 = phi i64 [ %i.ag, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit ], [ 0, %bb.c ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ai
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull returned align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECs14kWLkQVSKO_14deltalake_core)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull returned align 8 %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECs14kWLkQVSKO_14deltalake_core)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable12object_store(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !490, !invariant.load !12
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !12, !nonnull !12
  %i.n = call { ptr, ptr } %i.m(ptr noundef nonnull %i.k, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.a) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable13get_file_uris(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.d, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775718, ptr %i.a, align 16
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i64, ptr %i.g, align 8, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 552
  store ptr %i.f, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %i.o, align 8
  %i.p = call { ptr, ptr } @_RNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB5_14LogDataHandlerNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink26 = phi i64 [ -9223372036854775718, %bb.c ], [ -9223372036854775711, %bb.b ]
  %.sink = phi ptr [ undef, %bb.c ], [ %i.q, %bb.b ]
  store i64 %.sink26, ptr %0, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.s, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable13new_in_memory(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [336 x i8], align 16              ; 6 uses
  %i.f = alloca [336 x i8], align 8               ; 4 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.j, align 8
  store ptr null, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.k, align 8
  call void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @470, i64 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !11208)
  call void @llvm.experimental.noalias.scope.decl(metadata !11211)
  %i.l = load i64, ptr %i.h, align 8, !range !50, !alias.scope !11211, !noalias !11213, !noundef !12
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11215
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !1833, !alias.scope !11211, !noalias !11213, !noundef !12
  store i8 %i.o, ptr %i.c, align 1, !noalias !11215
end_hunk_3
begin_hunk_4_@_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable36get_active_add_actions_by_partitions:bb.a
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #54
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.l
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ae:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.aq, ptr noundef nonnull align 16 dereferenceable(96) %i.ap, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bt = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !11289
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28

bb.af:                                            ; preds = %bb.ae
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable8snapshot(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !50, !noundef !12
  %.not = icmp eq i64 %i.c, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775718, ptr %i.a, align 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable9table_url(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !490, !invariant.load !12
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !12, !nonnull !12
  %i.m = tail call noundef nonnull align 8 ptr %i.l(ptr noundef nonnull %i.j) #55
  ret ptr %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_14LogStoreConfig20object_store_factory(ptr noalias noundef readonly align 8 captures(none) dereferenceable(312) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories8REGISTRY, i64 8) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE10initializeNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_()
  br label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i: ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories8REGISTRY, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit

bb.c:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit: ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core8logstoreNtB5_14LogStoreConfig3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([312 x i8]) align 8 captures(none) dereferenceable(312) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_(ptr noalias noundef align 8 dereferenceable(224) %2) #52
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %2, i64 224, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder10with_clock(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11294)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !11294, !noundef !12 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum5ClockEL_EEEB1H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !11297
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum5ClockEL_EEEB1H_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum5ClockEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum5ClockEL_EEEB1H_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum13VacuumBuilderEBM_(ptr noalias noundef align 8 dereferenceable(224) %1) #52
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum5ClockEL_EEEB1H_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_13VacuumBuilder18with_keep_versions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.d, label %bb.o

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum13VacuumBuilderEBM_(ptr noalias noundef align 8 dereferenceable(224) %1) #52
          to label %bb.ag unwind label %bb.af

bb.c:                                             ; preds = %bb.l, %.noexc31, %bb.k, %bb.i, %bb.w, %bb.t, %bb.r, %bb.q, %bb.n, %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.m, label %bb.e [
    i8 0, label %bb.o
    i8 1, label %bb.f
    i8 2, label %bb.f
  ], !prof !2880

bb.e:                                             ; preds = %bb.d
  %i.n = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE)
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.g
  %.sroa.06.0 = phi i8 [ %i.n, %bb.g ], [ %i.m, %bb.d ], [ %i.m, %bb.d ]
  %i.o = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.p = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, i8 noundef %.sroa.06.0)
          to label %bb.h unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %bb.o, label %bb.f

bb.h:                                             ; preds = %bb.f
  br i1 %i.p, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.r = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @476, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 113 to ptr), ptr %i.t, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @156, ptr %i.u, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.i
  %i.v = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !11302
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.noexc
  %i.x = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !11302 ; 2 uses
  %i.y = icmp ult i64 %i.x, 6
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ugt i64 %i.x, 1
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE, align 8, !noalias !11302, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !12
  store i64 2, ptr %i.a, align 8, !noalias !11302
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11302
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11302
  %i.af = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc31 unwind label %bb.c   ; 2 uses

.noexc31:                                         ; preds = %bb.k
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !12, !nonnull !12
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #55
          to label %.noexc32 unwind label %bb.c, !inline_history !11305

.noexc32:                                         ; preds = %.noexc31
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc32
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noundef nonnull %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.m unwind label %bb.c

bb.m:                                             ; preds = %.noexc32, %bb.j, %.noexc, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.u, %bb.p, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.v unwind label %bb.c

bb.o:                                             ; preds = %bb.g, %bb.d, %bb.a, %bb.h
  %i.al = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 6
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ugt i64 %i.an, 1
  br i1 %i.ap, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noundef !12
  store i64 2, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.au, ptr %.sroa.523.0..sroa_idx, align 8
  %i.av = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.r unwind label %bb.c       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !12, !nonnull !12
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.s unwind label %bb.c

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.t, label %bb.n

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bb = load ptr, ptr @_RNvNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18with_keep_versions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @476, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 113 to ptr), ptr %i.bd, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @156, ptr %i.be, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.526.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.bc, ptr %i.bf, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.u unwind label %bb.c

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.v:                                             ; preds = %bb.n
  %i.bg = load i64, ptr %i.b, align 8, !range !49, !noundef !12
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !50, !noundef !12 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bh, label %bb.w, label %bb.x, !prof !51

bb.w:                                             ; preds = %bb.v
  %i.bl = load i64, ptr %i.bk, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bj, i64 %i.bl) #50
          to label %bb.ae unwind label %bb.c

bb.x:                                             ; preds = %bb.v
  %i.bm = load ptr, ptr %i.bk, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.bn = icmp samesign ule i64 %3, %i.bj
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.ac, %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %i.bp = load i64, ptr %i.bo, align 8, !range !50, !alias.scope !11306, !noundef !12
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body unwind label %bb.ab
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11886
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.u = load i64, ptr %i.c, align 8, !range !49, !noalias !11886, !noundef !12
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !50, !noalias !11886, !noundef !12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.e, !prof !51

bb.c:                                             ; preds = %.noexc
  %i.z = load i64, ptr %i.y, align 8, !noalias !11886
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #50
          to label %.noexc105 unwind label %bb.d

.noexc105:                                        ; preds = %bb.c
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body103, %bb.l, %bb.d
  %.sroa.043.0 = phi i8 [ %.sroa.044.1, %bb.d ], [ %.sroa.043.2, %bb.l ], [ %.sroa.043.2, %.body103 ]
  %.sroa.044.0 = phi i8 [ %.sroa.044.1, %bb.d ], [ %.sroa.044.2, %bb.l ], [ %.sroa.044.2, %.body103 ]
  %.pn99 = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %.pn.pn, %bb.l ], [ %.pn.pn, %.body103 ] ; 2 uses
  %i.aa = trunc nuw i8 %.sroa.043.0 to i1
  br i1 %i.aa, label %bb.as, label %bb.ar

bb.d:                                             ; preds = %bb.aj, %bb.ad, %bb.p, %bb.c, %bb.b, %bb.h
  %.sroa.044.1 = phi i8 [ 1, %bb.p ], [ 0, %bb.ad ], [ 0, %bb.aj ], [ 1, %bb.h ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.noexc
  %i.ac = load ptr, ptr %i.y, align 8, !noalias !11886, !nonnull !12, !noundef !12 ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.x, 4
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11886
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ac, ptr noundef nonnull align 1 dereferenceable(5) @495, i64 5, i1 false), !noalias !11886
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = inttoptr i64 %i.x to ptr
  store i64 -9223372036854775717, ptr %0, align 16
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.256.0..sroa_idx, align 8
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %.sroa.357.0..sroa_idx, align 16
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 5, ptr %.sroa.458.0..sroa_idx, align 8
  br label %.invoke

bb.f:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !11881, !noalias !11884, !nonnull !12, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !11881, !noalias !11884, !noundef !12 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.al, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %.invoke

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !12, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  invoke void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext11SnapshotExt28scan_row_parsed_schema_arrowBY_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1224) %i.ao)
          to label %bb.i unwind label %bb.d

.invoke:                                          ; preds = %bb.e, %bb.g, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit108
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %4)
          to label %.thread143 unwind label %.thread144

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.l, align 16, !range !55, !noundef !12 ; 2 uses
  %.not95 = icmp eq i64 %i.ap, -9223372036854775711
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  br i1 %.not95, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.367.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.664.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ap, ptr %0, align 16
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.266.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.invoke

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %i.ar, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  invoke void @_RNvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtB9_6schema10StructTypeINtB5_12TryFromArrowRNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE14try_from_arrow(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.as)
          to label %bb.n unwind label %bb.m

.body103:                                         ; preds = %bb.an, %bb.ao, %bb.af, %bb.ag, %.body, %bb.ap, %bb.aq, %bb.w, %bb.s, %bb.m
  %.sroa.043.2 = phi i8 [ 1, %bb.ap ], [ 0, %bb.w ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.aq ], [ 0, %.body ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 1, %bb.ao ], [ 1, %bb.an ] ; 2 uses
  %.sroa.044.2 = phi i8 [ 1, %bb.ap ], [ 0, %bb.w ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.aq ], [ 0, %.body ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.ap ], [ %i.bl, %bb.w ], [ %i.aw, %bb.m ], [ %i.bh, %bb.s ], [ %i.cw, %bb.aq ], [ %i.bu, %.body ], [ %i.cj, %bb.af ], [ %i.cj, %bb.ag ], [ %i.bs, %bb.ao ], [ %i.bs, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11887)
  call void @llvm.experimental.noalias.scope.decl(metadata !11890)
  %i.at = load ptr, ptr %i.m, align 8, !alias.scope !11893, !nonnull !12, !noundef !12
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !11893
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %.body103
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.al

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.n:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %i.j, align 8, !range !50, !noundef !12 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -9223372036854775808
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.622, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  br i1 %i.ay, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.476.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.622, i64 32, i1 false)
  store i64 -9223372036854775741, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11897)
  %i.ba = load ptr, ptr %i.m, align 8, !alias.scope !11900, !nonnull !12, !noundef !12
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !11900
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit108

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit108 unwind label %bb.d

bb.q:                                             ; preds = %bb.n
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.328.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.670.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.622, i64 32, i1 false)
  store i64 1, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.ax, ptr %i.be, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11901
  %i.bf = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, 17) 8) #51, !noalias !11901 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.r, label %bb.u, !prof !59

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #50
          to label %.noexc109 unwind label %bb.s

.noexc109:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.be)
          to label %.body103 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bf, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.bf, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bj = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.v, !prof !105

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc111 unwind label %bb.ap

.noexc111:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %bb.ai
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body103

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc111, %bb.u
  %i.bm = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12 ; 3 uses
  store ptr %i.bn, ptr %i.g, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bo, ptr noundef nonnull align 16 dereferenceable(112) %3, i64 112, i1 false)
  store i64 1, ptr %i.d, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bp, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11904
  %i.bq = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 17) 16) #51, !noalias !11904 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %bb.aa, !prof !59

bb.x:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #50
          to label %.noexc112 unwind label %bb.y

.noexc112:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.bo)
          to label %bb.an unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.aa:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bq, ptr noundef nonnull align 16 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bv, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4)
          to label %bb.ab unwind label %.body

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bw = load i64, ptr %i.h, align 16, !range !359, !noundef !12 ; 2 uses
  %.not96 = icmp eq i64 %i.bw, -9223372036854775743
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ca = load ptr, ptr %i.bz, align 16           ; 2 uses
  br i1 %.not96, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.693.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.785.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.bw, ptr %0, align 16
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ca, ptr %.sroa.592.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !11907)
  call void @llvm.experimental.noalias.scope.decl(metadata !11910)
  %i.cb = load ptr, ptr %i.m, align 8, !alias.scope !11913, !nonnull !12, !noundef !12
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !11913
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #54
          to label %bb.am unwind label %bb.d

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.by, ptr %i.i, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ca, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.aj
  store ptr %i.ah, ptr %i.f, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.n, ptr %i.ci, align 8
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1d_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B2_NtNtNtB6_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EEB6_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11914)
  call void @llvm.experimental.noalias.scope.decl(metadata !11917)
  %i.ck = load ptr, ptr %i.i, align 8, !alias.scope !11920, !nonnull !12, !noundef !12
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !11920
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.ag, label %.body103

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #54
          to label %.body103 unwind label %bb.al

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !11921)
  call void @llvm.experimental.noalias.scope.decl(metadata !11924)
  %i.cn = load ptr, ptr %i.i, align 8, !alias.scope !11927, !nonnull !12, !noundef !12
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !11927
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit119

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit119 unwind label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit119: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !11928)
  call void @llvm.experimental.noalias.scope.decl(metadata !11931)
  %i.cq = load ptr, ptr %i.m, align 8, !alias.scope !11934, !nonnull !12, !noundef !12
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !11934
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit121

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit119
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit121 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit121: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EECs14kWLkQVSKO_14deltalake_core.exit119, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.thread143, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit121
  ret void

bb.al:                                            ; preds = %bb.aq, %bb.ao, %bb.ag, %bb.l, %bb.au, %bb.as
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.am:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ak

bb.an:                                            ; preds = %bb.y
  %i.cu = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !11935
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ao, label %.body103

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #54
          to label %.body103 unwind label %bb.al

bb.ap:                                            ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11940)
  call void @llvm.experimental.noalias.scope.decl(metadata !11943)
  %i.cx = load ptr, ptr %i.k, align 8, !alias.scope !11946, !nonnull !12, !noundef !12
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !11946
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.aq, label %.body103

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #54
          to label %.body103 unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit108: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.invoke

bb.ar:                                            ; preds = %bb.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  %i.da = trunc nuw i8 %.sroa.044.0 to i1
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_13EagerSnapshot24file_views_by_partitions:bb.a

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #50
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.aq)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.as, ptr noundef nonnull align 16 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.as, ptr %i.g, align 8
  %i.aw = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !11979
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13 unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ay = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11984
  %i.az = call { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2_8Snapshot5files(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.w, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noundef nonnull %i.ay) ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.az, 0
  %i.bb = extractvalue { ptr, ptr } %i.az, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ba, ptr %i.bc, align 8, !noalias !11984
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.bb, ptr %i.bd, align 8, !noalias !11984
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !11984
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !11991
  %i.be = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 17) 8) #51, !noalias !11991 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.v, label %bb.y, !prof !59

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #50
          to label %.noexc.i.i14 unwind label %bb.w, !noalias !11984

.noexc.i.i14:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flatten10TryFlattenINtBL_5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNvMNtNtB5d_6kernel8snapshotNtB6z_8Snapshot10file_views0EEEB5d_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %common.resume unwind label %bb.x, !noalias !11984

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !11984
  unreachable

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !11984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.z:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11994)
  call void @llvm.experimental.noalias.scope.decl(metadata !11997)
  %i.bj = load ptr, ptr %i.g, align 8, !alias.scope !12000, !nonnull !12, !noundef !12
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !12000
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #54
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.j
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ac:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.am, ptr noundef nonnull align 16 dereferenceable(96) %i.al, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !12001
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit20

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_13EagerSnapshot5files(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i8, ptr %i.d, align 8, !range !208, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !49, !noundef !12
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !50, !noundef !12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e, !prof !51

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.r) #50
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = icmp samesign ugt i64 %i.j, 4
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, ptr noundef nonnull align 1 dereferenceable(5) @495, i64 5, i1 false)
  store i64 -9223372036854775717, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 5, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView10descriptor(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12006)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !12006, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.w = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48) acquire, align 8, !noalias !12006
  %i.x = icmp eq i32 %i.w, 0
  %.sink122.sroa.gep = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink122.sroa.gep139 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink122.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink122.sroa.gep142 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink122.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink122.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink122.sroa.gep146 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink122.sroa.gep147 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink122.sroa.gep148 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.x, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12006
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, ptr %i.q, align 8, !noalias !12006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12006
  store ptr %i.q, ptr %i.p, align 8, !noalias !12006
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !12006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12006
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 24), align 8, !alias.scope !12009, !noalias !12012, !noundef !12
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aa = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 11), !noalias !12006 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12014)
  call void @llvm.experimental.noalias.scope.decl(metadata !12017)
  %i.ab = lshr i64 %i.aa, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 8), align 8, !alias.scope !12020, !noalias !12021, !noundef !12 ; 2 uses
  %i.ae = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, align 8, !alias.scope !12020, !noalias !12021, !nonnull !12, !noundef !12 ; 2 uses
  %i.af = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ax, %bb.f ]
  %.pn.i.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.ay, %bb.f ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ad ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i21.i.i.i = load <16 x i8>, ptr %i.ah, align 1, !noalias !12024 ; 2 uses
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i, %i.ag
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not.i.not27.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not27.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.06.0.i28.i.i.i = phi i16 [ %i.aw, %bb.e ], [ %i.aj, %bb.d ] ; 3 uses
  %i.ak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.01.0.i.i.i.i, %i.al
  %i.an = and i64 %i.am, %i.ad
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %i.ar = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef range(i64 4, 17) 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq), !noalias !12027
  br i1 %i.ar, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e, !prof !105

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.f, label %select.unfold.i, !prof !51

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.av = add i16 %.sroa.06.0.i28.i.i.i, -1
  %i.aw = and i16 %i.av, %.sroa.06.0.i28.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i.i, %i.ax
  br label %bb.d

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !12006, !noundef !12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !12006, !noundef !12 ; 2 uses
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.h

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #56, !noalias !12006
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !12006, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !12006, !noundef !12 ; 12 uses
  %i.bj = call fastcc { ptr, i64 } @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16get_string_value(ptr noundef nonnull %i.bg, i64 noundef %i.bi), !noalias !12006 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0      ; 2 uses
  %.not6.i = icmp eq ptr %i.bk, null
  br i1 %.not6.i, label %bb.i, label %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView12storage_type.exit, !prof !51

bb.h:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #56, !noalias !12006
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @502) #56, !noalias !12006
  unreachable

_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView12storage_type.exit: ; preds = %bb.g
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  call void @_RNvXs7_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_11StorageTypeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bl)
  call void @llvm.experimental.noalias.scope.decl(metadata !12030)
  %i.bm = load i64, ptr %i.u, align 8, !range !8653, !alias.scope !12030, !noundef !12
  %.not.i = icmp eq i64 %i.bm, -9223372036854775771
  br i1 %.not.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11StorageTypeNtNtBN_5error5ErrorE6unwrapBP_.exit, label %bb.j, !prof !105

bb.j:                                             ; preds = %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView12storage_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @422, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #50
          to label %bb.l unwind label %bb.k, !noalias !12030

bb.k:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r) #52
          to label %common.resume unwind label %bb.m, !noalias !12030

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12030
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.k ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11StorageTypeNtNtBN_5error5ErrorE6unwrapBP_.exit: ; preds = %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView12storage_type.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !range !470, !alias.scope !12030, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.br = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48) acquire, align 8, !noalias !12033
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i5, label %bb.n, !prof !105

bb.n:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11StorageTypeNtNtBN_5error5ErrorE6unwrapBP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12033
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, ptr %i.o, align 8, !noalias !12033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12033
  store ptr %i.o, ptr %i.n, align 8, !noalias !12033
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !12033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12033
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i5

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i5: ; preds = %bb.n, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11StorageTypeNtNtBN_5error5ErrorE6unwrapBP_.exit
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 24), align 8, !alias.scope !12036, !noalias !12039, !noundef !12
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %select.unfold.i15, label %bb.o

bb.o:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i5
  %i.bv = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 14), !noalias !12033 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12041)
  call void @llvm.experimental.noalias.scope.decl(metadata !12044)
  %i.bw = lshr i64 %i.bv, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 8), align 8, !alias.scope !12047, !noalias !12048, !noundef !12 ; 2 uses
  %i.bz = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, align 8, !alias.scope !12047, !noalias !12048, !nonnull !12, !noundef !12 ; 2 uses
  %i.ca = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.sroa.9.0.i.i.i.i6 = phi i64 [ 0, %bb.o ], [ %i.cs, %bb.r ]
  %.pn.i.i.i.i7 = phi i64 [ %i.bv, %bb.o ], [ %i.ct, %bb.r ]
  %.sroa.01.0.i.i.i.i8 = and i64 %.pn.i.i.i.i7, %i.by ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.01.0.i.i.i.i8
  %.sroa.0.0.copyload.i21.i.i.i9 = load <16 x i8>, ptr %i.cc, align 1, !noalias !12051 ; 2 uses
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i9, %i.cb
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.not27.i.i.i10 = icmp eq i16 %i.ce, 0
  br i1 %.not.i.not27.i.i.i10, label %._crit_edge.i.i.i14, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %bb.p, %bb.q
  %.sroa.06.0.i28.i.i.i12 = phi i16 [ %i.cr, %bb.q ], [ %i.ce, %bb.p ] ; 3 uses
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i12, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add i64 %.sroa.01.0.i.i.i.i8, %i.cg
  %i.ci = and i64 %i.ch, %i.by
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.bz, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -24
  %i.cm = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef range(i64 4, 17) 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl), !noalias !12054
  br i1 %i.cm, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i16, label %bb.q, !prof !105

._crit_edge.i.i.i14:                              ; preds = %bb.q, %bb.p
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i9, splat (i8 -1)
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.r, label %select.unfold.i15, !prof !51

bb.q:                                             ; preds = %.lr.ph.i.i.i11
  %i.cq = add i16 %.sroa.06.0.i28.i.i.i12, -1
  %i.cr = and i16 %i.cq, %.sroa.06.0.i28.i.i.i12  ; 2 uses
  %.not.i.not.i.i.i13 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not.i.i.i13, label %._crit_edge.i.i.i14, label %.lr.ph.i.i.i11

bb.r:                                             ; preds = %._crit_edge.i.i.i14
  %i.cs = add i64 %.sroa.9.0.i.i.i.i6, 16         ; 2 uses
  %i.ct = add i64 %.sroa.01.0.i.i.i.i8, %i.cs
  br label %bb.p

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i16: ; preds = %.lr.ph.i.i.i11
  %i.cu = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !12033, !noundef !12 ; 3 uses
  %i.cw = load i64, ptr %i.bb, align 8, !noalias !12033, !noundef !12 ; 2 uses
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.s, label %bb.t

select.unfold.i15:                                ; preds = %._crit_edge.i.i.i14, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i5
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @504) #56, !noalias !12033
  unreachable

bb.s:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i16
  %i.cy = load ptr, ptr %i.be, align 8, !noalias !12033, !nonnull !12, !noundef !12
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cv
  %i.da = call fastcc { ptr, i64 } @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16get_string_value(ptr noundef nonnull %i.cz, i64 noundef %i.bi), !noalias !12033 ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 0      ; 2 uses
  %.not6.i17 = icmp eq ptr %i.db, null
  br i1 %.not6.i17, label %bb.u, label %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView17path_or_inline_dv.exit, !prof !51

bb.t:                                             ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i16
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #56, !noalias !12033
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @505) #56, !noalias !12033
  unreachable

_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView17path_or_inline_dv.exit: ; preds = %bb.s
  %i.dc = extractvalue { ptr, i64 } %i.da, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.dd = load i64, ptr %i.s, align 8, !range !49, !noundef !12
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !range !50, !noundef !12 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.de, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView17path_or_inline_dv.exit
  %i.di = load i64, ptr %i.dh, align 8
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dg, i64 %i.di) #50
  unreachable

bb.w:                                             ; preds = %_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB4_18DeletionVectorView17path_or_inline_dv.exit
  %i.dj = load ptr, ptr %i.dh, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.dk = icmp ule i64 %i.dc, %i.dg
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not = icmp eq i64 %i.dc, 0
  br i1 %.not, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.af, %bb.w
  store i64 %i.dg, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.dj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.dc, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dl = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48) acquire, align 8, !noalias !12057
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i18, label %bb.y, !prof !105

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12057
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, ptr %i.m, align 8, !noalias !12057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12057
  store ptr %i.m, ptr %i.l, align 8, !noalias !12057
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12057
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i18

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i18: ; preds = %.noexc, %bb.x
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 24), align 8, !alias.scope !12060, !noalias !12063, !noundef !12
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %select.unfold.i46.invoke, label %bb.z

bb.z:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i18
  %i.dp = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 11)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc30:                                         ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !12065)
  call void @llvm.experimental.noalias.scope.decl(metadata !12068)
  %i.dq = lshr i64 %i.dp, 57
  %i.dr = trunc nuw nsw i64 %i.dq to i8
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 8), align 8, !alias.scope !12071, !noalias !12072, !noundef !12 ; 2 uses
  %i.dt = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, align 8, !alias.scope !12071, !noalias !12072, !nonnull !12, !noundef !12 ; 2 uses
  %i.du = insertelement <16 x i8> poison, i8 %i.dr, i64 0
  %i.dv = shufflevector <16 x i8> %i.du, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.noexc30
  %.sroa.9.0.i.i.i.i19 = phi i64 [ 0, %.noexc30 ], [ %i.em, %bb.ac ]
  %.pn.i.i.i.i20 = phi i64 [ %i.dp, %.noexc30 ], [ %i.en, %bb.ac ]
  %.sroa.01.0.i.i.i.i21 = and i64 %.pn.i.i.i.i20, %i.ds ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sroa.01.0.i.i.i.i21
  %.sroa.0.0.copyload.i21.i.i.i22 = load <16 x i8>, ptr %i.dw, align 1, !noalias !12075 ; 2 uses
  %i.dx = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i22, %i.dv
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i.not27.i.i.i23 = icmp eq i16 %i.dy, 0
  br i1 %.not.i.not27.i.i.i23, label %._crit_edge.i.i.i27, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.aa, %bb.ab
  %.sroa.06.0.i28.i.i.i25 = phi i16 [ %i.el, %bb.ab ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i25, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.01.0.i.i.i.i21, %i.ea
  %i.ec = and i64 %i.eb, %i.ds
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds [24 x i8], ptr %i.dt, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -24
  %i.eg = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef range(i64 4, 17) 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %.lr.ph.i.i.i24
  br i1 %i.eg, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i29, label %bb.ab, !prof !105

._crit_edge.i.i.i27:                              ; preds = %bb.ab, %bb.aa
  %i.eh = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i22, splat (i8 -1)
  %i.ei = bitcast <16 x i1> %i.eh to i16
  %i.ej = icmp eq i16 %i.ei, 0
  br i1 %i.ej, label %bb.ac, label %select.unfold.i46.invoke, !prof !51

bb.ab:                                            ; preds = %.noexc31
  %i.ek = add i16 %.sroa.06.0.i28.i.i.i25, -1
  %i.el = and i16 %i.ek, %.sroa.06.0.i28.i.i.i25  ; 2 uses
  %.not.i.not.i.i.i26 = icmp eq i16 %i.el, 0
  br i1 %.not.i.not.i.i.i26, label %._crit_edge.i.i.i27, label %.lr.ph.i.i.i24

bb.ac:                                            ; preds = %._crit_edge.i.i.i27
  %i.em = add i64 %.sroa.9.0.i.i.i.i19, 16        ; 2 uses
  %i.en = add i64 %.sroa.01.0.i.i.i.i21, %i.em
  br label %bb.aa

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i29: ; preds = %.noexc31
  %i.eo = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !12057, !noundef !12 ; 3 uses
  %i.eq = load i64, ptr %i.bb, align 8, !noalias !12057, !noundef !12 ; 2 uses
  %i.er = icmp ult i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.ad, label %.invoke117

bb.ad:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i29
  %i.es = load ptr, ptr %i.be, align 8, !noalias !12057, !nonnull !12, !noundef !12
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.ep
  %i.eu = invoke noundef nonnull align 8 ptr @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int32TypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.et)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc33:                                         ; preds = %bb.ad
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %.val.i = load ptr, ptr %i.ev, align 8, !noalias !12057
  %i.ew = getelementptr i8, ptr %i.eu, i64 40
  %.val3.i = load i64, ptr %i.ew, align 8, !noalias !12057, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12057
  store i64 %i.bi, ptr %i.k, align 8, !noalias !12057
  %i.ex = lshr i64 %.val3.i, 2                    ; 2 uses
  %i.ey = icmp ult i64 %i.bi, %i.ex
  br i1 %i.ey, label %bb.ag, label %bb.ae, !prof !105

bb.ae:                                            ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12057
  store i64 %i.ex, ptr %i.j, align 8, !noalias !12057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12057
  store ptr %i.k, ptr %i.i, align 8, !noalias !12057
  br label %.invoke

bb.af:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr nonnull align 1 %i.db, i64 %i.dc, i1 false)
  br label %bb.x

.loopexit:                                        ; preds = %.lr.ph.i.i.i42
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i24
  %lpad.loopexit67 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %select.unfold.i46.invoke, %.invoke117, %.invoke, %.noexc64, %bb.ap, %bb.ao, %bb.am, %bb.ai, %bb.ah, %bb.ad, %bb.z, %bb.y
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit67, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #52
          to label %common.resume unwind label %bb.at

bb.ag:                                            ; preds = %.noexc33
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bi
  %i.fa = load i32, ptr %i.ez, align 4, !noalias !12057, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12057
  %i.fb = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48) acquire, align 8, !noalias !12078
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i36, label %bb.ah, !prof !105

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12078
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, ptr %i.h, align 8, !noalias !12078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12078
  store ptr %i.h, ptr %i.g, align 8, !noalias !12078
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12078
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i36

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i36: ; preds = %.noexc52, %bb.ag
  %i.fd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 24), align 8, !alias.scope !12081, !noalias !12084, !noundef !12
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %select.unfold.i46.invoke, label %bb.ai

bb.ai:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i36
  %i.ff = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 32), ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 11)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc53:                                         ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !12086)
  call void @llvm.experimental.noalias.scope.decl(metadata !12089)
  %i.fg = lshr i64 %i.ff, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i8
  %i.fi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, i64 8), align 8, !alias.scope !12092, !noalias !12093, !noundef !12 ; 2 uses
  %i.fj = load ptr, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16DV_FIELD_INDICES, align 8, !alias.scope !12092, !noalias !12093, !nonnull !12, !noundef !12 ; 2 uses
  %i.fk = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.noexc53
  %.sroa.9.0.i.i.i.i37 = phi i64 [ 0, %.noexc53 ], [ %i.gc, %bb.al ]
  %.pn.i.i.i.i38 = phi i64 [ %i.ff, %.noexc53 ], [ %i.gd, %bb.al ]
  %.sroa.01.0.i.i.i.i39 = and i64 %.pn.i.i.i.i38, %i.fi ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.01.0.i.i.i.i39
  %.sroa.0.0.copyload.i21.i.i.i40 = load <16 x i8>, ptr %i.fm, align 1, !noalias !12096 ; 2 uses
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i40, %i.fl
  %i.fo = bitcast <16 x i1> %i.fn to i16          ; 2 uses
  %.not.i.not27.i.i.i41 = icmp eq i16 %i.fo, 0
  br i1 %.not.i.not27.i.i.i41, label %._crit_edge.i.i.i45, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %bb.aj, %bb.ak
  %.sroa.06.0.i28.i.i.i43 = phi i16 [ %i.gb, %bb.ak ], [ %i.fo, %bb.aj ] ; 3 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i.i43, i1 true)
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = add i64 %.sroa.01.0.i.i.i.i39, %i.fq
  %i.fs = and i64 %i.fr, %i.fi
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -24
  %i.fw = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef range(i64 4, 17) 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fv)
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %.lr.ph.i.i.i42
  br i1 %i.fw, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i47, label %bb.ak, !prof !105

._crit_edge.i.i.i45:                              ; preds = %bb.ak, %bb.aj
  %i.fx = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i.i40, splat (i8 -1)
  %i.fy = bitcast <16 x i1> %i.fx to i16
  %i.fz = icmp eq i16 %i.fy, 0
  br i1 %i.fz, label %bb.al, label %select.unfold.i46.invoke, !prof !51

bb.ak:                                            ; preds = %.noexc54
  %i.ga = add i16 %.sroa.06.0.i28.i.i.i43, -1
  %i.gb = and i16 %i.ga, %.sroa.06.0.i28.i.i.i43  ; 2 uses
  %.not.i.not.i.i.i44 = icmp eq i16 %i.gb, 0
  br i1 %.not.i.not.i.i.i44, label %._crit_edge.i.i.i45, label %.lr.ph.i.i.i42

bb.al:                                            ; preds = %._crit_edge.i.i.i45
  %i.gc = add i64 %.sroa.9.0.i.i.i.i37, 16        ; 2 uses
  %i.gd = add i64 %.sroa.01.0.i.i.i.i39, %i.gc
  br label %bb.aj

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i47: ; preds = %.noexc54
  %i.ge = getelementptr inbounds i8, ptr %i.fu, i64 -8
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !12078, !noundef !12 ; 3 uses
  %i.gg = load i64, ptr %i.bb, align 8, !noalias !12078, !noundef !12 ; 2 uses
  %i.gh = icmp ult i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.am, label %.invoke117

select.unfold.i46.invoke:                         ; preds = %._crit_edge.i.i.i27, %._crit_edge.i.i.i45, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i18, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i36
  %i.gi = phi ptr [ @500, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i36 ], [ @503, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapRejEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i18 ], [ @500, %._crit_edge.i.i.i45 ], [ @503, %._crit_edge.i.i.i27 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gi) #56
          to label %select.unfold.i46.cont unwind label %.loopexit.split-lp.loopexit.split-lp

select.unfold.i46.cont:                           ; preds = %select.unfold.i46.invoke
  unreachable

bb.am:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i47
  %i.gj = load ptr, ptr %i.be, align 8, !noalias !12078, !nonnull !12, !noundef !12
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gf
  %i.gl = invoke noundef nonnull align 8 ptr @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int64TypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gk)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %bb.am
  %i.gm = getelementptr i8, ptr %i.gl, i64 32
  %.val.i48 = load ptr, ptr %i.gm, align 8, !noalias !12078
  %i.gn = getelementptr i8, ptr %i.gl, i64 40
  %.val3.i49 = load i64, ptr %i.gn, align 8, !noalias !12078, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12078
  store i64 %i.bi, ptr %i.f, align 8, !noalias !12078
  %i.go = lshr i64 %.val3.i49, 3                  ; 2 uses
  %i.gp = icmp ult i64 %i.bi, %i.go
  br i1 %i.gp, label %bb.ao, label %bb.an, !prof !105

bb.an:                                            ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12078
  store i64 %i.go, ptr %i.e, align 8, !noalias !12078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12078
  store ptr %i.f, ptr %i.d, align 8, !noalias !12078
  br label %.invoke

.invoke117:                                       ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i29, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i47
  %i.gq = phi i64 [ %i.gf, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i47 ], [ %i.ep, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i29 ]
  %i.gr = phi i64 [ %i.gg, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i47 ], [ %i.eq, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRejNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i29 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef %i.gr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #56
          to label %.cont118 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont118:                                         ; preds = %.invoke117
  unreachable

bb.ao:                                            ; preds = %.noexc56
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val.i48, i64 %i.bi
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !12078, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12078
  %i.gu = invoke noundef align 8 ptr @_RNvMNtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @506, i64 noundef 6)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63:                                         ; preds = %bb.ao
  %.not.i59 = icmp eq ptr %i.gu, null
  br i1 %.not.i59, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.noexc63
  %i.gv = invoke noundef nonnull align 8 ptr @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int32TypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gu)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc64:                                         ; preds = %bb.ap
  %i.gw = invoke noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.gv, i64 noundef %i.bi)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.noexc64
  br i1 %i.gw, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.noexc65
  %i.gx = getelementptr i8, ptr %i.gv, i64 32
  %.val.i60 = load ptr, ptr %i.gx, align 8
  %i.gy = getelementptr i8, ptr %i.gv, i64 40
  %.val5.i = load i64, ptr %i.gy, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bi, ptr %i.c, align 8
  %i.gz = lshr i64 %.val5.i, 2                    ; 2 uses
  %i.ha = icmp samesign ult i64 %i.bi, %i.gz
  br i1 %i.ha, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ar, !prof !105

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.gz, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ae, %bb.an, %bb.ar
  %.sink122.sroa.phi = phi ptr [ %.sink122.sroa.gep, %bb.ae ], [ %.sink122.sroa.gep139, %bb.an ], [ %.sink122.sroa.gep140, %bb.ar ]
  %.sink122.sroa.phi141 = phi ptr [ %.sink122.sroa.gep142, %bb.ae ], [ %.sink122.sroa.gep143, %bb.an ], [ %.sink122.sroa.gep144, %bb.ar ]
  %.sink122.sroa.phi145 = phi ptr [ %.sink122.sroa.gep146, %bb.ae ], [ %.sink122.sroa.gep147, %bb.an ], [ %.sink122.sroa.gep148, %bb.ar ]
  %.sink122 = phi ptr [ %i.i, %bb.ae ], [ %i.d, %bb.an ], [ %i.a, %bb.ar ]
  %.sink119 = phi ptr [ %i.j, %bb.ae ], [ %i.e, %bb.an ], [ %i.b, %bb.ar ]
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink122.sroa.phi, align 8
  store ptr %.sink119, ptr %.sink122.sroa.phi141, align 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink122.sroa.phi145, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @496, ptr noundef nonnull %.sink122, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #56
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aq
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val.i60, i64 %i.bi
  %i.hc = load i32, ptr %i.hb, align 4, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.as

bb.as:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc65, %.noexc63
  %.sroa.4.0.i = phi i32 [ %i.hc, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i ], [ undef, %.noexc63 ], [ undef, %.noexc65 ]
  %.sroa.0.0.i = phi i32 [ 1, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %.noexc63 ], [ 0, %.noexc65 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.bq, ptr %i.hd, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.i, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.4.0.i, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fa, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gt, ptr %i.hh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.at:                                            ; preds = %.loopexit.split-lp
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
end_hunk_6
begin_hunk_7_@_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore10get_engine:bb.a
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default13DefaultEngineNtNtNtBJ_8executor5tokio23TokioBackgroundExecutorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %.thread59 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12132)
  %i.ai = load i64, ptr %i.i, align 8, !range !49, !alias.scope !12135, !noundef !12
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12139)
  %i.ak = load ptr, ptr %i.o, align 8, !alias.scope !12142, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !12142
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12146)
  %i.an = load ptr, ptr %i.o, align 8, !alias.scope !12149, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !12149
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.r, %bb.q, %bb.o, %bb.ac
  %.sroa.3.0 = phi ptr [ @516, %bb.ac ], [ @515, %bb.r ], [ @515, %bb.p ], [ @515, %bb.o ], [ @515, %bb.q ]
  %.sroa.0.0 = phi ptr [ %i.bg, %bb.ac ], [ %i.ae, %bb.r ], [ %i.ae, %bb.p ], [ %i.ae, %bb.o ], [ %i.ae, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aq = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ar = insertvalue { ptr, ptr } %i.aq, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ar

.body18.thread:                                   ; preds = %bb.g, %.body18.thread47
  %eh.lpad-body1946 = phi { ptr, i32 } [ %i.u, %.body18.thread47 ], [ %i.aa, %bb.g ] ; 2 uses
  %i.as = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !12150
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.s, label %.thread59

bb.s:                                             ; preds = %.body18.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #54
          to label %.thread59 unwind label %bb.t

bb.t:                                             ; preds = %bb.af, %bb.ad, %bb.s, %.thread59
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.u:                                             ; preds = %bb.c
  %i.av = extractvalue { i64, ptr } %i.r, 0
  %i.aw = extractvalue { i64, ptr } %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.av, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.aw, ptr %i.az, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !12155
  %i.ba = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #51, !noalias !12155 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %bb.y, !prof !59

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #50
          to label %.noexc28 unwind label %bb.w

.noexc28:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokio24TokioMultiThreadExecutorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #52
          to label %.body20.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7defaultINtB5_13DefaultEngineNtNtNtB5_8executor5tokio24TokioMultiThreadExecutorE17new_with_executorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.be, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noundef nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bf, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !12158
  %i.bg = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, 17) 8) #51, !noalias !12158 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.z, label %bb.ac, !prof !59

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #50
          to label %.noexc30 unwind label %bb.aa

.noexc30:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default13DefaultEngineNtNtNtBJ_8executor5tokio24TokioMultiThreadExecutorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core.exit

.body20.thread:                                   ; preds = %bb.w, %.body20.thread69
  %eh.lpad-body2168 = phi { ptr, i32 } [ %i.s, %.body20.thread69 ], [ %i.bc, %bb.w ] ; 2 uses
  %i.bk = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !12161
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36

bb.ad:                                            ; preds = %.body20.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36 unwind label %bb.t

.thread59:                                        ; preds = %.body18.thread, %bb.s, %.body18, %bb.l
  %.pn54 = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %eh.lpad-body1946, %.body18.thread ], [ %i.v, %.body18 ], [ %eh.lpad-body1946, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.i) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36 unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36: ; preds = %.body20.thread, %bb.ad, %bb.aa, %.thread59, %bb.ae, %bb.af
  %.pn.pn39 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ae ], [ %eh.lpad-body2168, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.af ], [ %eh.lpad-body2168, %.body20.thread ], [ %.pn54, %.thread59 ], [ %i.bi, %bb.aa ]
  resume { ptr, i32 } %.pn.pn39

bb.ae:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !12166
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit36 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [88 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  store i64 %1, ptr %i.m, align 8
  %i.n = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.p, label %bb.c [
    i8 0, label %bb.j
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !2880

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE) #54 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.q, %bb.c ], [ %i.p, %bb.b ], [ %i.p, %bb.b ]
  %i.s = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.t = tail call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, i8 noundef %.sroa.06.0)
  br i1 %i.t, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.u = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @517, ptr %i.j, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.w, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @156, ptr %i.x, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  %i.y = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12171
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actionss_0B5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12171 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 6
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ac, label %bb.g, label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actionss_0B5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE, align 8, !noalias !12171, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !12
  store i64 4, ptr %i.a, align 8, !noalias !12171
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.af, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !12171
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12171
  %i.ai = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !12, !nonnull !12
  %i.an = call noundef zeroext i1 %i.am(ptr noundef %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #55, !inline_history !12174
  br i1 %i.an, label %bb.h, label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actionss_0B5_.exit

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  br label %_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actionss_0B5_.exit

_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actionss_0B5_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %_RNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actionss_0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ap, ptr %i.as, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.ar, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.b, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.530.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.at, align 8
  call void @_RINvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE9into_iterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEB1y_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.m, ptr %i.au, align 8
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1b_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2r_8logstore11get_actions0EB2l_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2r_6errors15DeltaTableErrorENCINvXso_B3W_IB3U_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB2l_EB4G_EINtNtNtB4_6traits7collect12FromIteratorIB3U_B2l_B4G_EE9from_iterBQ_E0B5v_EB2r_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.c)
  ret void

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %i.av = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ax = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 6
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ugt i64 %i.ax, 3
  br i1 %i.az, label %bb.l, label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !12, !noundef !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !noundef !12
  store i64 4, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bc, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.be, ptr %.sroa.517.0..sroa_idx, align 8
  %i.bf = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !12, !nonnull !12
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #55
  br i1 %i.bk, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bl = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore11get_actions10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr @517, ptr %i.e, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.bn, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @156, ptr %i.bo, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.524.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bm, ptr %i.bp, align 8
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, ptr noundef nonnull %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [224 x i8], align 8               ; 4 uses
  %i.i = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
end_hunk_7
begin_hunk_8_@_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for:bb.a
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !12175, !noundef !12
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val102, i64 noundef %.val103, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1165) #56
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

.body128:                                         ; preds = %bb.bb, %bb.f, %.body
  %.sroa.032.0 = phi i8 [ %.sroa.032.2, %.body ], [ %.sroa.032.1, %bb.f ], [ %.sroa.032.8, %bb.bb ]
  %.pn99 = phi { ptr, i32 } [ %.pn97, %.body ], [ %i.an, %bb.f ], [ %i.ep, %bb.bb ] ; 2 uses
  %i.am = trunc nuw i8 %.sroa.032.0 to i1
  br i1 %i.am, label %.thread, label %common.resume

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i148, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i136, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i127, %bb.g, %bb.e
  %.sroa.032.1 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i148 ], [ %.sroa.032.8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i127 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i136 ], [ 1, %bb.g ], [ 1, %bb.e ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body128

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.a
  store ptr %.val102, ptr %i.w, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ag, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.437.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @518, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.at, align 8
  store ptr null, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.au, align 8
  invoke void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.as)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.j, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #52
          to label %.thread unwind label %bb.az

bb.i:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aw = load i64, ptr %i.z, align 8, !range !50, !noundef !12
  %i.ax = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ay = load ptr, ptr %i.ab, align 8, !nonnull !12, !align !209, !noundef !12
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.bt unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.65, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

.body:                                            ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit, %bb.q, %bb.l, %bb.n
  %.sroa.032.2 = phi i8 [ %.sroa.032.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit ], [ 1, %bb.l ], [ %.sroa.032.3, %bb.n ], [ %.sroa.032.4, %bb.q ], [ 1, %bb.bj ]
  %.pn97 = phi { ptr, i32 } [ %.pn95, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit ], [ %i.az, %bb.l ], [ %i.bb, %bb.n ], [ %.pn95, %bb.q ], [ %i.fi, %bb.bj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.aa) #52
          to label %.body128 unwind label %bb.az

bb.n:                                             ; preds = %bb.ba, %bb.u, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.032.3 = phi i8 [ %.sroa.032.8, %bb.ba ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 1, %bb.u ], [ 1, %bb.o ]
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bc = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories8REGISTRY, i64 8) acquire, align 8
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i, label %bb.o, !prof !105

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE10initializeNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_()
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i unwind label %bb.n

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i: ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories8REGISTRY, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit

bb.p:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i
  call void @llvm.trap()
  unreachable

_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit: ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_22object_store_factories0E0zEB2x_.exit.i
  store ptr %i.be, ptr %i.t, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  invoke void @_RINvXs2_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB6_1t3MapBG_B14_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__getBG_EB1J_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aa)
          to label %bb.s unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit: ; preds = %.body119, %bb.v, %bb.r
  %.sroa.032.4 = phi i8 [ %.sroa.032.5, %bb.r ], [ %.sroa.032.6, %bb.v ], [ %.sroa.032.6, %.body119 ] ; 2 uses
  %.pn95 = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %.pn, %bb.v ], [ %.pn, %.body119 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12182)
  call void @llvm.experimental.noalias.scope.decl(metadata !12185)
  %i.bi = load ptr, ptr %i.t, align 8, !alias.scope !12188, !nonnull !12, !noundef !12
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !12188
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.q, label %.body

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #54
          to label %.body unwind label %bb.az

bb.r:                                             ; preds = %bb.ay, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit
  %.sroa.032.5 = phi i8 [ %.sroa.032.8, %bb.ay ], [ 1, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit

bb.s:                                             ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories.exit
  %i.bm = load ptr, ptr %i.u, align 8, !noundef !12 ; 5 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !12189)
  call void @llvm.experimental.noalias.scope.decl(metadata !12192)
  %i.bn = load ptr, ptr %i.t, align 8, !alias.scope !12195, !nonnull !12, !noundef !12
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !12195
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB2k_.exit113

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB2k_.exit113 unwind label %bb.n

.body119:                                         ; preds = %bb.av, %bb.w, %bb.at
  %.sroa.032.6 = phi i8 [ 0, %bb.at ], [ %.sroa.032.7, %bb.w ], [ 0, %bb.av ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.at ], [ %i.bs, %bb.w ], [ %i.eh, %bb.av ] ; 2 uses
  %i.bq = atomicrmw sub ptr %i.bm, i64 4 release, align 8
  %i.br = icmp eq i64 %i.bq, 6
  br i1 %i.br, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit, !prof !51

bb.v:                                             ; preds = %.body119
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEB2r_.exit unwind label %bb.az

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ag, %.noexc116, %bb.af, %bb.ad, %bb.ao, %bb.am, %bb.al, %bb.ai, %bb.aa, %bb.z
  %.sroa.032.7 = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 1, %bb.ai ], [ 1, %bb.ao ], [ 1, %bb.am ], [ 1, %bb.al ], [ 1, %bb.af ], [ 1, %.noexc116 ], [ 1, %bb.ag ], [ 1, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.ad ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.x:                                             ; preds = %bb.s
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5156.0.copyload = load ptr, ptr %.sroa.5156.0..sroa_idx, align 8 ; 2 uses
  %i.bt = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bu = icmp ult i64 %i.bt, 2
  br i1 %i.bu, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.bv = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bv, label %bb.z [
    i8 0, label %bb.aj
    i8 1, label %bb.aa
    i8 2, label %bb.aa
  ], !prof !2880

bb.z:                                             ; preds = %bb.y
  %i.bw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE)
          to label %bb.ab unwind label %bb.w      ; 2 uses

bb.aa:                                            ; preds = %bb.y, %bb.y, %bb.ab
  %.sroa.014.0 = phi i8 [ %i.bw, %bb.ab ], [ %i.bv, %bb.y ], [ %i.bv, %bb.y ]
  %i.bx = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.by = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bx, i8 noundef %.sroa.014.0)
          to label %bb.ac unwind label %bb.w

bb.ab:                                            ; preds = %bb.z
  %i.bz = icmp eq i8 %i.bw, 0
  br i1 %i.bz, label %bb.aj, label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.by, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ca = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.aa, ptr %i.p, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ab, ptr %i.cc, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.456.0..sroa_idx, align 8
  store ptr @519, ptr %i.q, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.cd, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @156, ptr %i.ce, align 8
  store i64 1, ptr %i.s, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc115 unwind label %bb.w

.noexc115:                                        ; preds = %bb.ad
  %i.cf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12196
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %.noexc115
  %i.ch = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12196 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 6
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp samesign ugt i64 %i.ch, 3
  br i1 %i.cj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ck = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE, align 8, !noalias !12196, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !12, !noundef !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12
  store i64 4, ptr %i.d, align 8, !noalias !12196
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cm, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !12196
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.co, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12196
  %i.cp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc116 unwind label %bb.w  ; 2 uses

.noexc116:                                        ; preds = %bb.af
  %i.cq = extractvalue { ptr, ptr } %i.cp, 0      ; 2 uses
  %i.cr = extractvalue { ptr, ptr } %i.cp, 1      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !invariant.load !12, !nonnull !12
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #55
          to label %.noexc117 unwind label %bb.w, !inline_history !12199

.noexc117:                                        ; preds = %.noexc116
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc117
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noundef nonnull %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.ah unwind label %bb.w

bb.ah:                                            ; preds = %.noexc117, %bb.ae, %.noexc115, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %bb.ap, %bb.ak, %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cv = load ptr, ptr %.sroa.5156.0.copyload, align 8, !nonnull !12, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.5156.0.copyload, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !490, !invariant.load !12
  %i.da = add nsw i64 %i.cz, -1
  %i.db = and i64 %i.da, -16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !12, !nonnull !12
  %i.dg = load ptr, ptr %i.ab, align 8, !nonnull !12, !align !209, !noundef !12
  invoke void %i.df(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.i, ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %2)
          to label %bb.aq unwind label %bb.w

bb.aj:                                            ; preds = %bb.ab, %bb.y, %bb.x, %bb.ac
  %i.dh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.ak, label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.dj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 6
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp samesign ugt i64 %i.dj, 3
  br i1 %i.dl, label %bb.al, label %bb.ai

bb.al:                                            ; preds = %bb.ak
  %i.dm = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !12, !noundef !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !12
  store i64 4, ptr %i.o, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.do, ptr %.sroa.361.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.dq, ptr %.sroa.562.0..sroa_idx, align 8
  %i.dr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.am unwind label %bb.w      ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %i.dt = extractvalue { ptr, ptr } %i.dr, 1      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !12, !nonnull !12
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.an unwind label %bb.w

bb.an:                                            ; preds = %bb.am
  br i1 %i.dw, label %bb.ao, label %bb.ai

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dx = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.aa, ptr %i.k, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.ab, ptr %i.dz, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.470.0..sroa_idx, align 8
  store ptr @519, ptr %i.l, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.ea, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @156, ptr %i.eb, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.573.0..sroa_idx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.dy, ptr %i.ec, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dm, ptr noundef nonnull %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.ap unwind label %bb.w

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ai

bb.aq:                                            ; preds = %bb.ai
  %i.ed = load i64, ptr %i.i, align 16, !range !55, !noundef !12 ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !12225, !noundef !12
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val92, i64 noundef %.val93, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1165) #56
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

.body119:                                         ; preds = %bb.cu, %bb.cm, %bb.bh, %bb.f, %.body, %bb.h
  %.sroa.029.0 = phi i1 [ %.sroa.029.2, %.body ], [ true, %bb.h ], [ true, %bb.cm ], [ false, %bb.bh ], [ %.sroa.029.1, %bb.f ], [ true, %bb.cu ]
  %.pn86 = phi { ptr, i32 } [ %.pn84, %.body ], [ %i.bg, %bb.h ], [ %i.ic, %bb.cm ], [ %i.fq, %bb.bh ], [ %i.ay, %bb.f ], [ %i.ir, %bb.cu ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_(ptr noalias noundef align 8 dereferenceable(224) %4) #52
          to label %bb.bn unwind label %bb.bo

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i138, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.g, %bb.e
  %.sroa.029.1 = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155 ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i138 ], [ true, %bb.g ], [ true, %bb.e ]
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.a
  store ptr %.val92, ptr %i.ah, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.as, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @518, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.be, align 8
  store ptr null, ptr %i.l, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.bf, align 8
  invoke void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bd)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.j, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj) #52
          to label %.body119 unwind label %bb.bo

bb.i:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bh = load i64, ptr %i.ak, align 8, !range !50, !noundef !12
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.ct unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(88) %i.ak, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.65, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.al, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

.body:                                            ; preds = %bb.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit, %bb.q, %bb.l, %bb.n
  %.sroa.029.2 = phi i1 [ %.sroa.029.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit ], [ true, %bb.l ], [ %.sroa.029.3, %bb.n ], [ %.sroa.029.4, %bb.q ], [ true, %bb.cb ]
  %.pn84 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit ], [ %i.bj, %bb.l ], [ %i.bl, %bb.n ], [ %.pn, %bb.q ], [ %i.hg, %bb.cb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.al) #52
          to label %.body119 unwind label %bb.bo

bb.n:                                             ; preds = %bb.by, %.noexc129, %bb.bx, %bb.bv, %bb.bg, %bb.u, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cj, %bb.ch, %bb.cg, %bb.bs, %bb.br
  %.sroa.029.3 = phi i1 [ false, %bb.bg ], [ true, %.noexc129 ], [ true, %bb.cj ], [ true, %bb.ch ], [ true, %bb.cg ], [ true, %bb.bv ], [ true, %bb.bx ], [ true, %bb.by ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.o ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %bb.u ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories8REGISTRY, i64 8) acquire, align 8
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_18logstore_factories0E0zEB2x_.exit.i, label %bb.o, !prof !105

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE10initializeNCINvB2_11get_or_initNCNvB2t_18logstore_factories0E0zEB2x_()
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_18logstore_factories0E0zEB2x_.exit.i unwind label %bb.n

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_18logstore_factories0E0zEB2x_.exit.i: ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories8REGISTRY, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories.exit

bb.p:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_18logstore_factories0E0zEB2x_.exit.i
  call void @llvm.trap()
  unreachable

_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories.exit: ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBU_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2t_18logstore_factories0E0zEB2x_.exit.i
  store ptr %i.bo, ptr %i.ae, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  invoke void @_RINvXs2_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB6_1t3MapBG_B14_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__getBG_EB1J_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.al)
          to label %bb.s unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit: ; preds = %.body113, %bb.w, %bb.r
  %.sroa.029.4 = phi i1 [ %.sroa.029.5, %bb.r ], [ %.sroa.029.6.lpad-body, %bb.w ], [ %.sroa.029.6.lpad-body, %.body113 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %eh.lpad-body114, %bb.w ], [ %eh.lpad-body114, %.body113 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12232)
  call void @llvm.experimental.noalias.scope.decl(metadata !12235)
  %i.bs = load ptr, ptr %i.ae, align 8, !alias.scope !12238, !nonnull !12, !noundef !12
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !12238
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.q, label %.body

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #54
          to label %.body unwind label %bb.bo

bb.r:                                             ; preds = %bb.bf, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories.exit
  %.sroa.029.5 = phi i1 [ false, %bb.bf ], [ true, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories.exit ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit

bb.s:                                             ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18logstore_factories.exit
  %i.bw = load ptr, ptr %i.af, align 8, !noundef !12 ; 5 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !12239)
  call void @llvm.experimental.noalias.scope.decl(metadata !12242)
  %i.bx = load ptr, ptr %i.ae, align 8, !alias.scope !12245, !nonnull !12, !noundef !12
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !12245
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.u, label %bb.bp

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #54
          to label %bb.bp unwind label %bb.n

bb.v:                                             ; preds = %bb.as, %bb.an, %bb.ag, %.noexc107, %bb.af, %bb.ad, %bb.bc, %bb.ba, %bb.az, %bb.aa, %bb.z
  %.sroa.029.6 = phi i1 [ false, %bb.as ], [ true, %bb.bc ], [ true, %bb.ba ], [ true, %bb.az ], [ true, %.noexc107 ], [ false, %bb.an ], [ true, %bb.ag ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.ad ], [ true, %bb.af ]
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %.body.thread.i, %bb.av, %bb.v
  %.sroa.029.6.lpad-body = phi i1 [ %.sroa.029.6, %bb.v ], [ false, %bb.av ], [ false, %.body.thread.i ] ; 2 uses
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %eh.lpad-body6.i, %bb.av ], [ %eh.lpad-body6.i, %.body.thread.i ] ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bw, i64 4 release, align 8
  %i.cc = icmp eq i64 %i.cb, 6
  br i1 %i.cc, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit, !prof !51

bb.w:                                             ; preds = %.body113
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit unwind label %bb.bo

bb.x:                                             ; preds = %bb.s
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5175.0.copyload = load ptr, ptr %.sroa.5175.0..sroa_idx, align 8 ; 2 uses
  %i.cd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ce = icmp ult i64 %i.cd, 2
  br i1 %i.ce, label %bb.y, label %bb.ax

bb.y:                                             ; preds = %bb.x
  %i.cf = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cf, label %bb.z [
    i8 0, label %bb.ax
    i8 1, label %bb.aa
    i8 2, label %bb.aa
  ], !prof !2880

bb.z:                                             ; preds = %bb.y
  %i.cg = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE)
          to label %bb.ab unwind label %bb.v      ; 2 uses

bb.aa:                                            ; preds = %bb.y, %bb.y, %bb.ab
  %.sroa.014.0 = phi i8 [ %i.cg, %bb.ab ], [ %i.cf, %bb.y ], [ %i.cf, %bb.y ]
  %i.ch = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ci = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ch, i8 noundef %.sroa.014.0)
          to label %bb.ac unwind label %bb.v

bb.ab:                                            ; preds = %bb.z
  %i.cj = icmp eq i8 %i.cg, 0
  br i1 %i.cj, label %bb.ax, label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.ci, label %bb.ad, label %bb.ax

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ck = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.al, ptr %i.aa, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  store ptr @520, ptr %i.ab, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.cm, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @156, ptr %i.cn, align 8
  store i64 1, ptr %i.ad, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.cl, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc106 unwind label %bb.v

.noexc106:                                        ; preds = %bb.ad
  %i.co = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12246
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %.noexc106
  %i.cq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12246 ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 6
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp samesign ugt i64 %i.cq, 3
  br i1 %i.cs, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ct = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE, align 8, !noalias !12246, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !12, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !12
  store i64 4, ptr %i.h, align 8, !noalias !12246
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cv, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !12246
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.cx, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12246
  %i.cy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc107 unwind label %bb.v  ; 2 uses

.noexc107:                                        ; preds = %bb.af
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cy, 1      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !invariant.load !12, !nonnull !12
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #55
          to label %.noexc108 unwind label %bb.v, !inline_history !12249

.noexc108:                                        ; preds = %.noexc107
  br i1 %i.dd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc108
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ct, ptr noundef nonnull %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.da, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %bb.ah unwind label %bb.v

bb.ah:                                            ; preds = %.noexc108, %bb.ae, %.noexc106, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bb, %bb.bd, %bb.ay, %bb.ax, %bb.ah
  %i.de = load ptr, ptr %.sroa.5175.0.copyload, align 8, !nonnull !12, !noundef !12
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.5175.0.copyload, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !490, !invariant.load !12
  %i.dj = add nsw i64 %i.di, -1
  %i.dk = and i64 %i.dj, -16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.am, align 8, !nonnull !12, !noundef !12 ; 6 uses
  %i.do = load ptr, ptr %i.an, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.dg, i64 24
  %.val96 = load ptr, ptr %i.dp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.dn, ptr %i.g, align 8, !noalias !12253
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !noalias !12253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12253
  %i.dr = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !12253
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB6_13StorageConfig14decorate_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEBa_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %4, ptr noundef nonnull %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3)
          to label %bb.al unwind label %.body.thread7.i, !noalias !12250

.body.thread7.i:                                  ; preds = %bb.aj
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.du = load i64, ptr %i.f, align 16, !range !55, !noalias !12253, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.du, -9223372036854775711
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !12253 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16, !noalias !12253 ; 3 uses
  br i1 %.not.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.434.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i, i64 72, i1 false), !noalias !12257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12253
  store i64 %i.du, ptr %0, align 16, !alias.scope !12250, !noalias !12257
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %.sroa.232.0..sroa_idx.i, align 8, !alias.scope !12250, !noalias !12257
  %.sroa.333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dy, ptr %.sroa.333.0..sroa_idx.i, align 16, !alias.scope !12250, !noalias !12257
  %i.dz = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !12258
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.an, label %bb.be

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #54
          to label %bb.be unwind label %bb.v

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12253
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !12263
  %i.eb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #51, !noalias !12263 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ap, label %bb.as, !prof !59

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #50
          to label %.noexc.i unwind label %bb.aq, !noalias !12250

.noexc.i:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtBL_5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.dw, ptr nonnull %i.dy) #52
          to label %..body.thread_crit_edge.i unwind label %bb.ar, !noalias !12250

..body.thread_crit_edge.i:                        ; preds = %bb.aq
  %.pre.i = load ptr, ptr %i.g, align 8, !alias.scope !12266, !noalias !12253
  br label %.body.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12250
  unreachable

bb.as:                                            ; preds = %bb.ao
  store i64 1, ptr %i.eb, align 8, !noalias !12250
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 1, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !12250
  %.sroa.5.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
end_hunk_9
begin_hunk_10_@_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with:bb.a

bb.av:                                            ; preds = %.body.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #54
          to label %.body113 unwind label %bb.aw, !noalias !12250

bb.aw:                                            ; preds = %bb.av
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12250
  unreachable

bb.ax:                                            ; preds = %bb.ab, %bb.y, %bb.x, %bb.ac
  %i.eq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.ay, label %bb.ai

bb.ay:                                            ; preds = %bb.ax
  %i.es = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.et = icmp ult i64 %i.es, 6
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp samesign ugt i64 %i.es, 3
  br i1 %i.eu, label %bb.az, label %bb.ai

bb.az:                                            ; preds = %bb.ay
  %i.ev = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !12, !noundef !12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !12
  store i64 4, ptr %i.z, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ex, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ez, ptr %.sroa.553.0..sroa_idx, align 8
  %i.fa = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ba unwind label %bb.v      ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !invariant.load !12, !nonnull !12
  %i.ff = invoke noundef zeroext i1 %i.fe(ptr noundef %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.bb unwind label %bb.v

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ff, label %bb.bc, label %bb.ai

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.fg = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_with10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.al, ptr %i.v, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8
  store ptr @520, ptr %i.w, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.fi, align 8
  store ptr %i.w, ptr %i.x, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @156, ptr %i.fj, align 8
  store i64 1, ptr %i.y, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %.sroa.560.0..sroa_idx, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.fh, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ev, ptr noundef nonnull %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.bd unwind label %bb.v

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ai

bb.be:                                            ; preds = %bb.au, %bb.at, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fl = atomicrmw sub ptr %i.bw, i64 4 release, align 8
  %i.fm = icmp eq i64 %i.fl, 6
  br i1 %i.fm, label %bb.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit116, !prof !51

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit116 unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit116: ; preds = %bb.be, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !12275)
  call void @llvm.experimental.noalias.scope.decl(metadata !12278)
  %i.fn = load ptr, ptr %i.ae, align 8, !alias.scope !12281, !nonnull !12, !noundef !12
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !12281
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2k_.exit118

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit116
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2k_.exit118 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2k_.exit118: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEB2r_.exit116, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2k_.exit118
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.al)
          to label %.body119 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2k_.exit118
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !range !186, !alias.scope !12282, !noundef !12
  %i.fu = icmp eq i64 %i.ft, 3
  br i1 %i.fu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEBO_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_.exit.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_.exit.i: ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit4.i unwind label %bb.bl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bl, %bb.bk
  %.pn.i = phi { ptr, i32 } [ %i.fz, %bb.bl ], [ %i.fv, %bb.bk ]
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 176
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit173 unwind label %bb.bm

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_.exit.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit4.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 176
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ga)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_.exit

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bk
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.bn:                                            ; preds = %.body119
  br i1 %.sroa.029.0, label %.body123.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit173

.body123.thread184:                               ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit4.i165, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit4.i148
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body123.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit4.i, %bb.da, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_.exit170, %bb.cs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_.exit153
  ret void

bb.bo:                                            ; preds = %bb.db, %bb.w, %bb.q, %.body, %bb.h, %.body119
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.bp:                                            ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ge = icmp ult i64 %i.gd, 5
  br i1 %i.ge, label %bb.bq, label %bb.ce

bb.bq:                                            ; preds = %bb.bp
  %i.gf = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.gf, label %bb.br [
    i8 0, label %bb.ce
    i8 1, label %bb.bs
    i8 2, label %bb.bs
  ], !prof !2880

bb.br:                                            ; preds = %bb.bq
  %i.gg = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE)
          to label %bb.bt unwind label %bb.n      ; 2 uses

bb.bs:                                            ; preds = %bb.bq, %bb.bq, %bb.bt
  %.sroa.023.0 = phi i8 [ %i.gg, %bb.bt ], [ %i.gf, %bb.bq ], [ %i.gf, %bb.bq ]
  %i.gh = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.gi = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gh, i8 noundef %.sroa.023.0)
          to label %bb.bu unwind label %bb.n

bb.bt:                                            ; preds = %bb.br
  %i.gj = icmp eq i8 %i.gg, 0
  br i1 %i.gj, label %bb.ce, label %bb.bs

bb.bu:                                            ; preds = %bb.bs
  br i1 %i.gi, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.gk = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.al, ptr %i.r, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.465.0..sroa_idx, align 8
  store ptr @521, ptr %i.s, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.gm, align 8
  store ptr %i.s, ptr %i.t, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @156, ptr %i.gn, align 8
  store i64 1, ptr %i.u, align 8
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 1, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.gl, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc128 unwind label %bb.n

.noexc128:                                        ; preds = %bb.bv
  %i.go = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12287
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %.noexc128
  %i.gq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12287 ; 2 uses
  %i.gr = icmp ult i64 %i.gq, 6
  call void @llvm.assume(i1 %i.gr)
  %.not.i125 = icmp eq i64 %i.gq, 0
  br i1 %.not.i125, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gs = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE, align 8, !noalias !12287, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !12, !noundef !12
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !12
  store i64 1, ptr %i.d, align 8, !noalias !12287
  %.sroa.3.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.gu, ptr %.sroa.3.0..sroa_idx.i126, align 8, !noalias !12287
  %.sroa.5.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.gw, ptr %.sroa.5.0..sroa_idx.i127, align 8, !noalias !12287
  %i.gx = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc129 unwind label %bb.n  ; 2 uses

.noexc129:                                        ; preds = %bb.bx
  %i.gy = extractvalue { ptr, ptr } %i.gx, 0      ; 2 uses
  %i.gz = extractvalue { ptr, ptr } %i.gx, 1      ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !invariant.load !12, !nonnull !12
  %i.hc = invoke noundef zeroext i1 %i.hb(ptr noundef %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #55
          to label %.noexc130 unwind label %bb.n, !inline_history !12290

.noexc130:                                        ; preds = %.noexc129
  br i1 %i.hc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.noexc130
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gs, ptr noundef nonnull %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.bz unwind label %bb.n

bb.bz:                                            ; preds = %.noexc130, %bb.bw, %.noexc128, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ci, %bb.ck, %bb.cf, %bb.ce, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12291
  store i64 0, ptr %i.c, align 8, !noalias !12291
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12291
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !12291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12291
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.hd, align 8, !noalias !12291
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !12291
  %.sroa.5.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i132, align 2, !noalias !12291
  store ptr %i.c, ptr %i.b, align 8, !noalias !12291
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1026, ptr %i.he, align 8, !noalias !12291
  %i.hf = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val92, i64 noundef %.val93, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i unwind label %bb.cb, !noalias !12291

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %.body unwind label %bb.cd, !noalias !12291

_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i: ; preds = %bb.ca
  br i1 %i.hf, label %bb.cc, label %bb.cl, !prof !51

bb.cc:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1027, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @423, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1029) #50
          to label %.noexc.i133 unwind label %bb.cb, !noalias !12291

.noexc.i133:                                      ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12291
  unreachable

bb.ce:                                            ; preds = %bb.bt, %bb.bq, %bb.bp, %bb.bu
  %i.hi = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce
  %i.hk = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hl = icmp ult i64 %i.hk, 6
  call void @llvm.assume(i1 %i.hl)
  %.not82 = icmp eq i64 %i.hk, 0
  br i1 %.not82, label %bb.ca, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hm = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !12, !noundef !12
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !12
  store i64 1, ptr %i.q, align 8
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ho, ptr %.sroa.370.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.hq, ptr %.sroa.571.0..sroa_idx, align 8
  %i.hr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ch unwind label %bb.n      ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.hs = extractvalue { ptr, ptr } %i.hr, 0      ; 2 uses
  %i.ht = extractvalue { ptr, ptr } %i.hr, 1      ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !invariant.load !12, !nonnull !12
  %i.hw = invoke noundef zeroext i1 %i.hv(ptr noundef %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.ci unwind label %bb.n

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.hw, label %bb.cj, label %bb.ca

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.hx = load ptr, ptr @_RNvNvNtCs14kWLkQVSKO_14deltalake_core8logstore13logstore_withs_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.al, ptr %i.m, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  store ptr @521, ptr %i.n, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.hz, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @156, ptr %i.ia, align 8
  store i64 1, ptr %i.p, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.578.0..sroa_idx, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.p, i64 24
end_hunk_10
begin_hunk_11_@_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16object_store_url:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12380
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bu, i64 40, i1 false), !noalias !12375
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 25, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @418, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @527) #50
          to label %bb.y unwind label %bb.x, !noalias !12380

bb.x:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #52
          to label %.body46 unwind label %bb.z, !noalias !12380

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12380
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.o, i64 88, i1 false), !alias.scope !12380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit54 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body46, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.ab ], [ %.pn33, %.body46 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit54: ; preds = %bb.aa
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.ad:                                            ; preds = %bb.q, %.body, %.body46
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore17object_store_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs_NtCsjyY8HP3IvQ6_12object_store5parseNtB4_17ObjectStoreScheme5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
  %i.e = load i64, ptr %i.d, align 8, !range !157, !noundef !12
  %.not = icmp eq i64 %i.e, -9223372036854775807
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = invoke { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.e unwind label %bb.d       ; 2 uses

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.l

bb.c:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.pr = load i64, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  %.not13 = icmp eq i64 %.pr, -9223372036854775807
  br i1 %.not13, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.s, %bb.i ]
  %i.k = load i64, ptr %i.d, align 8, !range !157, !noundef !12
  %i.l = icmp eq i64 %i.k, -9223372036854775807
  br i1 %i.l, label %bb.o, label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, i64 } %i.f, 0
  %i.n = extractvalue { ptr, i64 } %i.f, 1
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.n)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.c, align 8, !range !559, !noundef !12 ; 2 uses
  %.not12 = icmp eq i64 %i.o, -9223372036854775802
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br i1 %.not12, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.68.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.o, ptr %i.a, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !12381
  %i.q = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 17) 8) #51, !noalias !12381 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.m, !prof !59

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #50
          to label %.noexc.i unwind label %bb.i, !noalias !12387

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.j, !noalias !12388

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12388
  unreachable

bb.k:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtNtCsjyY8HP3IvQ6_12object_store5parse17ObjectStoreSchemeNtNtB17_4path4PathENtB15_5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.d)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %.thread, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !12388
  store i64 -9223372036854775721, ptr %0, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @617, ptr %.sroa.516.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.u = load i64, ptr %i.d, align 8, !range !157, !noundef !12
  %.not14 = icmp eq i64 %i.u, -9223372036854775807
  br i1 %.not14, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtNtCsjyY8HP3IvQ6_12object_store5parse17ObjectStoreSchemeNtNtB17_4path4PathENtB15_5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.d)
  br label %bb.l

bb.o:                                             ; preds = %bb.p, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.p:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtNtCsjyY8HP3IvQ6_12object_store5parse17ObjectStoreSchemeNtNtB17_4path4PathENtB15_5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.d) #52
          to label %bb.o unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore29extract_version_from_filename(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 12 uses
  %i.i = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12389
  store i32 0, ptr %i.e, align 8, !noalias !12389
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12389
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %1, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !12389
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx4.i, align 8, !noalias !12389
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !12389
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12389
  call void @_RNvMs2_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX), !noalias !12393
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i32 0, ptr %i.k, align 8, !noalias !12389
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !12389, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !12389, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12389
  %i.p = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, align 8, !noalias !12394, !nonnull !12, !noundef !12 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !12398, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 138
  %i.u = load i8, ptr %i.t, align 2, !range !1459, !noalias !12398, !noundef !12
  %cond.i.i = icmp eq i8 %i.u, 2
  br i1 %cond.i.i, label %.thread.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !noalias !12399 ; 6 uses
  %i.x = load i64, ptr %i.w, align 8, !range !49, !noalias !12399, !noundef !12
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.c, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !12399
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !12399, !noundef !12
  %i.ae = and i32 %i.ad, 1
  %.not8.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not8.i.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !noalias !12399, !noundef !12
  %i.ah = and i32 %i.ag, 2
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !49, !noalias !12399, !noundef !12
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !12399
  %i.ao = icmp ugt i64 %1, %i.an
  br i1 %i.ao, label %.thread.i, label %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i

_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i: ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i, %bb.f, %bb.e, %bb.d, %._crit_edge.i.i
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 8), align 8, !noalias !12394, !nonnull !12, !noundef !12 ; 4 uses
  %i.aq = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE3get0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @477)
          to label %.noexc.i unwind label %bb.r, !noalias !12393 ; 3 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !12403 ; 2 uses
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, label %bb.g, !prof !105

bb.g:                                             ; preds = %.noexc.i
  invoke void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE8get_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.ap, i64 noundef %i.aq, i64 noundef %i.as)
          to label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.r, !noalias !12393

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i: ; preds = %.noexc.i
  store atomic i64 1, ptr %i.ar release, align 8, !noalias !12403
  %i.au = inttoptr i64 %i.aq to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ap, ptr %i.av, align 8, !noalias !12394
  store i64 1, ptr %i.c, align 8, !noalias !12394
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !noalias !12394
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.ax, align 8, !noalias !12394
  %i.ay = load ptr, ptr %i.q, align 8, !noalias !12398, !nonnull !12, !noundef !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !12398, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !490, !invariant.load !12, !noalias !12398
  %i.bd = add nsw i64 %i.bc, -1
  %i.be = and i64 %i.bd, -16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  br label %bb.h

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g
  %.pre.i = load i64, ptr %i.c, align 8, !range !49, !noalias !12394
  %i.bh = trunc nuw i64 %.pre.i to i1
  %i.bi = load ptr, ptr %i.q, align 8, !noalias !12398, !nonnull !12, !noundef !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !12398, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !490, !invariant.load !12, !noalias !12398
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = and i64 %i.bn, -16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  br i1 %i.bh, label %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge, label %bb.i

_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge: ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !12394
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i
  %i.br = phi ptr [ %i.ap, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %.pre, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge ]
  %i.bs = phi ptr [ %i.bg, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %i.bq, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge ]
  %i.bt = phi ptr [ %i.ba, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %i.bk, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i._crit_edge ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !12394, !nonnull !12, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bx = phi ptr [ %i.bs, %bb.h ], [ %i.bq, %bb.i ]
  %i.by = phi ptr [ %i.bt, %bb.h ], [ %i.bk, %bb.i ]
  %i.bz = phi i1 [ true, %bb.h ], [ false, %bb.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.bu, %bb.h ], [ %i.bw, %bb.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !12, !noalias !12398, !nonnull !12
  %i.cc = invoke { i32, i32 } %i.cb(ptr noundef nonnull %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 %i.m, i64 noundef range(i64 0, 1152921504606846976) %i.o)
          to label %bb.k unwind label %bb.p, !noalias !12393 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !12394 ; 7 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !12394 ; 4 uses
  %.sroa.46.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.46.0.copyload.i.i = load i8, ptr %.sroa.46.0..sroa_idx.i9.i, align 8, !noalias !12394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12394
  %i.cd = ptrtoint ptr %.sroa.2.0.copyload.i.i to i64 ; 2 uses
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.cd, ptr %i.b, align 8, !noalias !12406
  %i.ce = icmp eq ptr %.sroa.2.0.copyload.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.ce, label %.noexc10.i.i, label %.noexc11.i.i, !prof !51

bb.m:                                             ; preds = %bb.k
  %i.cf = trunc nuw i8 %.sroa.46.0.copyload.i.i to i1
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i.i, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i.i) #55
          to label %bb.s unwind label %bb.r, !noalias !12393

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.2.0.copyload.i.i)
          to label %.noexc9.i.i unwind label %.body.thread.i.i, !noalias !12393

.body.thread.i.i:                                 ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i, i64 noundef 1400, i64 noundef 8) #51, !noalias !12393
  br label %.body.i

.noexc9.i.i:                                      ; preds = %bb.o
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i, i64 noundef 1400, i64 noundef 8) #51, !noalias !12393
  br label %bb.s

.noexc10.i.i:                                     ; preds = %bb.l
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #56
          to label %.noexc12.i unwind label %bb.r, !noalias !12393

.noexc12.i:                                       ; preds = %.noexc10.i.i
  unreachable

.noexc11.i.i:                                     ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
end_hunk_11
begin_hunk_12_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext17rb_from_scan_meta:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.thread, %bb.ai, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.ai ], [ %i.am, %bb.x ], [ %.pn26, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core.exit37: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit
  %.sink = phi ptr [ %i.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.al, %bb.w ]
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink)
  ret void

bb.z:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !12910)
  call void @llvm.experimental.noalias.scope.decl(metadata !12913)
  call void @llvm.experimental.noalias.scope.decl(metadata !12916)
  call void @llvm.experimental.noalias.scope.decl(metadata !12919)
  call void @llvm.experimental.noalias.scope.decl(metadata !12922)
  %i.ao = load ptr, ptr %i.c, align 8, !alias.scope !12925, !nonnull !12, !noundef !12
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !12925
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i30

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i30 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12926)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !12929, !noundef !12 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.body28, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !12930
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.ad, label %.body28

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.as) #54
          to label %.body28 unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i30: ; preds = %bb.aa, %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12941)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !12944, !noundef !12 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit35, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i30
  %i.ba = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !12945
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit35

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit35 unwind label %bb.j

bb.ag:                                            ; preds = %bb.ad
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i30, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.f)
          to label %bb.ah unwind label %bb.b

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core.exit37 unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ak:                                            ; preds = %bb.am, %.thread, %bb.l, %.body28
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.thread:                                          ; preds = %bb.al, %bb.e, %.body28, %bb.b, %bb.am
  %.pn26 = phi { ptr, i32 } [ %.pn, %.body28 ], [ %lpad.thr_comm, %bb.am ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.bi, %bb.al ], [ %i.o, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #52
          to label %common.resume unwind label %bb.ak

bb.al:                                            ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.am:                                            ; preds = %bb.h, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #52
          to label %.thread unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10tags_field(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12959
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.b unwind label %.thread.i, !noalias !12959

.thread.i:                                        ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) @259) #52
          to label %bb.f unwind label %bb.d, !noalias !12962

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !49, !noalias !12959, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !50, !noalias !12959, !noundef !12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RINvMsu_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapType3newNtB6_8DataTypeBY_ECs14kWLkQVSKO_14deltalake_core.exit, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !noalias !12959
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #50
          to label %bb.e unwind label %.thread.i, !noalias !12959

bb.d:                                             ; preds = %bb.f, %.thread.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12959
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

.thread14.i:                                      ; preds = %bb.f
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %.thread.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) @259) #52
          to label %.thread14.i unwind label %bb.d, !noalias !12963

_RINvMsu_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapType3newNtB6_8DataTypeBY_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.h, align 8, !noalias !12959, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = icmp samesign ugt i64 %i.g, 2
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12959
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @48, i64 3, i1 false), !noalias !12959
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !12956, !noalias !12964
  %.sroa.4.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx18.i, align 8, !alias.scope !12956, !noalias !12964
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12956, !noalias !12964
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.n, align 8, !alias.scope !12956, !noalias !12964
  call fastcc void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_7MapTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @553, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21deletion_vector_field(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [144 x i8], align 16              ; 6 uses
  %i.i = alloca [144 x i8], align 8               ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.k = tail call noundef align 8 dereferenceable_or_null(480) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 480, i64 noundef range(i64 1, 17) 8) #51 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 480) #50
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @259, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.d:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 14, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @259, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.h ], [ %i.n, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.f) #52
          to label %bb.x unwind label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @506, i64 noundef 6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @286, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.o, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.e) #52
          to label %bb.e unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @286, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.q, %bb.n ], [ %i.p, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.d) #52
          to label %bb.h unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @261, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.c) #52
          to label %bb.k unwind label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 5, ptr %i.w, align 8
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !12965)
  call void @llvm.experimental.noalias.scope.decl(metadata !12968)
  %i.x = load i64, ptr %i.h, align 16, !range !50, !alias.scope !12968, !noalias !12970, !noundef !12
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %bb.p, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit, !prof !51

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12973
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.z, i64 96, i1 false), !noalias !12970
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 56, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @555) #50
          to label %bb.r unwind label %bb.q, !noalias !12974

bb.q:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #52
          to label %common.resume unwind label %bb.s, !noalias !12974

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12974
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.q, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.x ], [ %i.aa, %bb.q ], [ %i.ae, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.h, i64 144, i1 false), !alias.scope !12974, !noalias !12975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !12976
  %i.ac = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, 17) 8) #51, !noalias !12976 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !59

bb.t:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #50
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.i) #52
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ac, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ac, ptr %i.ag, align 8
  store i8 2, ptr %i.j, align 8
  call void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 14, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %bb.n, %bb.k, %bb.h, %bb.e
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.x:                                             ; preds = %bb.c, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.e ], [ %i.m, %bb.c ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 480, i64 noundef 8) #51
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields22partition_values_field(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12982
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.b unwind label %.thread.i, !noalias !12982

.thread.i:                                        ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) @259) #52
          to label %bb.f unwind label %bb.d, !noalias !12985

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !49, !noalias !12982, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !50, !noalias !12982, !noundef !12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RINvMsu_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapType3newNtB6_8DataTypeBY_ECs14kWLkQVSKO_14deltalake_core.exit, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !noalias !12982
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #50
          to label %bb.e unwind label %.thread.i, !noalias !12982

bb.d:                                             ; preds = %bb.f, %.thread.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12982
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

.thread14.i:                                      ; preds = %bb.f
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %.thread.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) @259) #52
          to label %.thread14.i unwind label %bb.d, !noalias !12986

_RINvMsu_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapType3newNtB6_8DataTypeBY_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.h, align 8, !noalias !12982, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = icmp samesign ugt i64 %i.g, 2
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12982
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @48, i64 3, i1 false), !noalias !12982
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !12979, !noalias !12987
  %.sroa.4.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx18.i, align 8, !alias.scope !12979, !noalias !12987
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12987
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.n, align 8, !alias.scope !12979, !noalias !12987
  call fastcc void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_7MapTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @556, i64 noundef 15, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators16get_string_value(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noundef nonnull %0) #55
  %i.b = load i8, ptr %i.a, align 8, !range !2905, !noundef !12
  switch i8 %i.b, label %bb.f [
    i8 24, label %bb.b
    i8 25, label %bb.c
    i8 26, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RINvYDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray9as_stringlECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @159) ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c, i64 noundef %1)
  br i1 %i.d, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @_RINvYDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray9as_stringxECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @159) ; 2 uses
  %i.f = tail call noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.e, i64 noundef %1)
  br i1 %i.f, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 ptr @_RNvYDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_NtNtB7_4cast7AsArray14as_string_viewCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @159) ; 2 uses
  %i.h = tail call noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, i64 noundef %1)
  br i1 %i.h, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = tail call { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c, i64 noundef %1) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.h, %bb.g, %bb.e
  %.sroa.8.0 = phi i64 [ undef, %bb.c ], [ %i.k, %bb.e ], [ undef, %bb.a ], [ %i.p, %bb.g ], [ undef, %bb.b ], [ %i.s, %bb.h ], [ undef, %bb.d ]
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.j, %bb.e ], [ null, %bb.a ], [ %i.o, %bb.g ], [ null, %bb.b ], [ %i.r, %bb.h ], [ null, %bb.d ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.m

bb.g:                                             ; preds = %bb.c
  %i.n = tail call { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypexEE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.e, i64 noundef %1) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.q = tail call { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, i64 noundef %1) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @557, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage14DELTA_LOG_PATH, i64 24) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.a, !prof !105

bb.a:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage14DELTA_LOG_PATH, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage14DELTA_LOG_PATH, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #52
          to label %common.resume unwind label %bb.f

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc, %.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !12
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5childReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage14DELTA_LOG_PATH, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.c unwind label %bb.b

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvNtNtNtCs6sYutav3ODB_5serde7private2de7content18content_unexpected(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !344, !noundef !12
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.v
    i8 17, label %bb.v
    i8 18, label %bb.r
    i8 19, label %bb.s
    i8 20, label %bb.t
    i8 21, label %bb.u
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !208, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !noundef !12
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !noundef !12
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !12
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !noundef !12
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i16, ptr %i.x, align 2, !noundef !12
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !12
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !noundef !12
  %i.ak = fpext float %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ak, ptr %i.al, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load double, ptr %i.am, align 8, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.an, ptr %i.ao, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !range !5046, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aq, ptr %i.ar, align 4
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.ax, align 8
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !12, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bd, align 8
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_12
begin_hunk_13_@_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16TransactionErrorE4from:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3623, !noundef !12 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.i
    i64 6, label %bb.i
    i64 7, label %bb.i
    i64 8, label %bb.i
    i64 9, label %bb.i
    i64 10, label %bb.i
    i64 11, label %bb.i
    i64 12, label %bb.g
    i64 13, label %bb.h
    i64 14, label %bb.i
    i64 15, label %bb.i
    i64 16, label %bb.i
    i64 17, label %bb.i
    i64 18, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !align !209, !noundef !12
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.20.0 = phi ptr [ @643, %bb.c ], [ undef, %bb.a ], [ %i.j, %bb.d ], [ @645, %bb.e ], [ @647, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @649, %bb.g ], [ @651, %bb.h ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %0, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.20.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factoriesNtB2_25DefaultObjectStoreFactoryNtB2_18ObjectStoreFactory14parse_url_opts(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.9.i = alloca [24 x i8], align 8          ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 15 uses
  %i.q = alloca [96 x i8], align 16               ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.949 = alloca [16 x i8], align 8          ; 2 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %2, ptr %i.o, align 8, !noalias !13262
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !13259, !noalias !13265, !noundef !12 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !13259, !noalias !13265, !nonnull !12, !noundef !12 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val85.i = load i64, ptr %i.y, align 8, !alias.scope !13259, !noalias !13265, !noundef !12 ; 3 uses
  %i.z = zext i32 %i.w to i64                     ; 5 uses
  %i.aa = icmp eq i32 %i.w, 0
  br i1 %i.aa, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts.exit.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %.val85.i, %i.z
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %.val85.i, %i.z
  br i1 %i.ab, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !13266, !noalias !13273, !noundef !12
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val85.i, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1165) #56, !noalias !13273
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %bb.c
  switch i32 %i.w, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts.exit.thread52 [
    i32 6, label %bb.f
    i32 4, label %bb.h
  ]

bb.f:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.af = load i32, ptr %.val.i, align 1
  %i.ag = xor i32 %i.af, 1869440365
  %i.ah = getelementptr i8, ptr %.val.i, i64 4
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = xor i32 %i.aj, 31090
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts.exit.thread52

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13262
  call void @_RINvNtCsjyY8HP3IvQ6_12object_store5parse14parse_url_optsRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1O_ERB1O_B2v_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u), !noalias !13273
  %i.ap = load i64, ptr %i.l, align 8, !range !10902, !noalias !13262, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, -9223372036854775790
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.026.0.copyload.i = load ptr, ptr %i.aq, align 8, !noalias !13262 ; 4 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.527.0.copyload.i = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !13262 ; 4 uses
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.0..sroa_idx.i, i64 24, i1 false), !noalias !13262
  br i1 %.not.i, label %bb.j, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts.exit

bb.h:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.val.i, ptr nonnull @42, i64 %i.z), !noalias !13273
  %i.ar = icmp eq i32 %bcmp.i, 0
  br i1 %i.ar, label %bb.g, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts.exit.thread52

_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts.exit.thread52: ; preds = %bb.a, %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.f, %bb.h
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.423.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.as = load <2 x ptr>, ptr %.sroa.423.0..sroa_idx.i, align 8
  br label %bb.ai

bb.i:                                             ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.s, %.noexc88.i, %bb.r, %bb.p, %bb.m, %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.i
  %.sroa.025.0.lpad-body.i = phi i1 [ true, %bb.i ], [ false, %bb.w ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.bz, %bb.w ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m) #52
          to label %bb.ag unwind label %bb.af, !noalias !13273

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13262
  store ptr %.sroa.026.0.copyload.i, ptr %i.n, align 8, !noalias !13262
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.527.0.copyload.i, ptr %i.au, align 8, !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.av = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !13262
  %i.aw = icmp ult i64 %i.av, 2
  br i1 %i.aw, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ax = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE, i64 16) monotonic, align 8, !noalias !13262 ; 3 uses
  switch i8 %i.ax, label %bb.l [
    i8 0, label %bb.y
    i8 1, label %bb.m
    i8 2, label %bb.m
  ], !prof !2880

bb.l:                                             ; preds = %bb.k
  %i.ay = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE)
          to label %bb.n unwind label %bb.i, !noalias !13273 ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.n, %bb.k
  %.sroa.015.0.i = phi i8 [ %i.ay, %bb.n ], [ %i.ax, %bb.k ], [ %i.ax, %bb.k ]
  %i.az = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE, align 8, !noalias !13262, !nonnull !12, !align !209, !noundef !12
  %i.ba = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az, i8 noundef %.sroa.015.0.i)
          to label %bb.o unwind label %bb.i, !noalias !13273

bb.n:                                             ; preds = %bb.l
  %i.bb = icmp eq i8 %i.ay, 0
  br i1 %i.bb, label %bb.y, label %bb.m

bb.o:                                             ; preds = %bb.m
  br i1 %i.ba, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13262
  %i.bc = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE, align 8, !noalias !13262, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13262
  store ptr %i.o, ptr %i.h, align 8, !noalias !13262
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !13262
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.m, ptr %i.be, align 8, !noalias !13262
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !13262
  store ptr @544, ptr %i.i, align 8, !noalias !13262
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.bf, align 8, !noalias !13262
  store ptr %i.i, ptr %i.j, align 8, !noalias !13262
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @156, ptr %i.bg, align 8, !noalias !13262
  store i64 1, ptr %i.k, align 8, !noalias !13262
  %.sroa.017.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.017.sroa.4.0..sroa_idx.i, align 8, !noalias !13262
  %.sroa.017.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx.i, align 8, !noalias !13262
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bd, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13262
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %.noexc.i unwind label %bb.i, !noalias !13273

.noexc.i:                                         ; preds = %bb.p
  %i.bh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !13274
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.noexc.i
  %i.bj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !13274 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 6
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp samesign ugt i64 %i.bj, 3
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE, align 8, !noalias !13274, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !13273, !nonnull !12, !noundef !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !13273, !noundef !12
  store i64 4, ptr %i.b, align 8, !noalias !13274
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !13274
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !13274
  %i.br = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc88.i unwind label %bb.i, !noalias !13273 ; 2 uses

.noexc88.i:                                       ; preds = %bb.r
  %i.bs = extractvalue { ptr, ptr } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !12, !noalias !13273, !nonnull !12
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #55
          to label %.noexc89.i unwind label %bb.i, !noalias !13273, !inline_history !13277

.noexc89.i:                                       ; preds = %.noexc88.i
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc89.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.t unwind label %bb.i, !noalias !13273

bb.t:                                             ; preds = %bb.s, %.noexc89.i, %bb.q, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13262
  br label %bb.u

bb.u:                                             ; preds = %bb.ae, %bb.ac, %bb.z, %bb.y, %bb.t
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !13278
  %i.bx = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #51, !noalias !13278 ; 9 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %bb.aj, !prof !59

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #50
          to label %.noexc91.i unwind label %bb.w, !noalias !13273

.noexc91.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtBL_5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.026.0.copyload.i, ptr nonnull %.sroa.527.0.copyload.i) #52
          to label %.body.i unwind label %bb.x, !noalias !13273

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !13273
  unreachable

bb.y:                                             ; preds = %bb.o, %bb.n, %bb.k, %bb.j
  %i.cb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !13262
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %bb.u

bb.z:                                             ; preds = %bb.y
  %i.cd = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !13262 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 6
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i64 %i.cd, 3
  br i1 %i.cf, label %bb.aa, label %bb.u

bb.aa:                                            ; preds = %bb.z
  %i.cg = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE, align 8, !noalias !13262, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !13273, !nonnull !12, !noundef !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !13273, !noundef !12
  store i64 4, ptr %i.g, align 8, !noalias !13262
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ci, ptr %.sroa.363.0..sroa_idx.i, align 8, !noalias !13262
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ck, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !13262
  %i.cl = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ab unwind label %bb.i, !noalias !13273 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cm = extractvalue { ptr, ptr } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.cl, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !12, !noalias !13273, !nonnull !12
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.ac unwind label %bb.i, !noalias !13273

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cq, label %bb.ad, label %bb.u

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13262
  %i.cr = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22default_parse_url_opts10___CALLSITE, align 8, !noalias !13262, !nonnull !12, !align !209, !noundef !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13262
  store ptr %i.o, ptr %i.c, align 8, !noalias !13262
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !13262
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %i.ct, align 8, !noalias !13262
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !13262
  store ptr @544, ptr %i.d, align 8, !noalias !13262
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.cu, align 8, !noalias !13262
  store ptr %i.d, ptr %i.e, align 8, !noalias !13262
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @156, ptr %i.cv, align 8, !noalias !13262
  store i64 1, ptr %i.f, align 8, !noalias !13262
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !13262
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !13262
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cs, ptr %i.cw, align 8, !noalias !13262
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cg, ptr noundef nonnull %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.ae unwind label %bb.i, !noalias !13273

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13262
end_hunk_13
begin_hunk_14_@_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a
    i64 9, label %bb.d
    i64 10, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !align !209, !noundef !12
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !align !209, !noundef !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c
  %.sroa.12.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.12.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serdeNtB5_15SnapshotVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @703, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0INtB7_5FnMutTTjRINtNtB23_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEEE8call_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12
  %.val = load ptr, ptr %i.c, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %.val1 = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !50, !noundef !12
  %.not.i = icmp eq i64 %i.k, -9223372036854775808
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.l, ptr %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.p, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.q = load i64, ptr %i.a, align 8, !range !49, !noundef !12
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !50, !noundef !12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not7.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.t, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.y = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.n, i64 %i.p, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #52
          to label %common.resume.i unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0B8_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.z, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0B8_.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %..i = zext i1 %i.y to i64
  %i.ad = insertvalue { i64, i64 } poison, i64 %..i, 0
  %i.ae = insertvalue { i64, i64 } %i.ad, i64 %1, 1
  ret { i64, i64 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs0_00INtB7_5FnMutTRNtNtNtCs4tdlwR1I4n2_7parquet4file10statistics10StatisticsEE8call_mutBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !12, !align !209, !noundef !12
  %.val = load ptr, ptr %i.q, align 8, !nonnull !12, !align !209, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.r = load ptr, ptr %.val, align 8, !noalias !13748, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = tail call noundef i8 @_RNvMsc_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16ColumnDescriptor13physical_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s), !noalias !13748
  %i.u = icmp eq i8 %i.t, 6
  %.pre.i = load ptr, ptr %.val, align 8, !noalias !13748
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !noalias !13748 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !50, !noalias !13748 ; 2 uses
  br i1 %i.u, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.y, -9223372036854775808
  %i.z = select i1 %.not.i, i64 48, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !range !508, !noalias !13748, !noundef !12 ; 3 uses
  %.not47.i = icmp eq i64 %i.ab, -9223372036854775789
  br i1 %.not47.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp ne i64 %i.ab, -9223372036854775791
  tail call void @llvm.assume(i1 %i.ac)
  %.not48.i = icmp eq i64 %i.ab, -9223372036854775807
  br i1 %.not48.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.a, %bb.c
  %.not49.i = icmp eq i64 %i.y, -9223372036854775808
  %i.ad = select i1 %.not49.i, i64 48, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !508, !noalias !13748, !noundef !12
  %.not50.i = icmp eq i64 %i.af, -9223372036854775789
  %.sroa.013.0.i = select i1 %.not50.i, ptr null, ptr %i.ae
  tail call void @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer5statsNtB5_15AggregatedStatsINtNtCsbvkFyIu7lgC_4core7convert4FromTRNtNtNtCs4tdlwR1I4n2_7parquet4file10statistics10StatisticsINtNtB1h_6option6OptionRNtNtB1V_5basic11LogicalTypeEEE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.013.0.i)
  br label %_RNCNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs0_00Ba_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !13748
  %i.ah = icmp ult i64 %i.ag, 4
  br i1 %i.ah, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.ai = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE, i64 16) monotonic, align 8, !noalias !13748 ; 3 uses
  switch i8 %i.ai, label %bb.f [
    i8 0, label %bb.v
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !2880

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE) #54, !noalias !13748 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.e
  %.sroa.010.0.i = phi i8 [ %i.aj, %bb.f ], [ %i.ai, %bb.e ], [ %i.ai, %bb.e ]
  %i.al = load ptr, ptr @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE, align 8, !noalias !13748, !nonnull !12, !align !209, !noundef !12
  %i.am = tail call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.al, i8 noundef %.sroa.010.0.i), !noalias !13748
  br i1 %i.am, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13748
  %i.an = load ptr, ptr @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE, align 8, !noalias !13748, !nonnull !12, !align !209, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13748
  %i.ap = load ptr, ptr %.val, align 8, !noalias !13748, !nonnull !12, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !13748, !nonnull !12, !noundef !12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !range !50, !noalias !13748, !noundef !12
  %.not51.i = icmp eq i64 %i.at, -9223372036854775808
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.017.0.i = select i1 %.not51.i, ptr %i.au, ptr %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !13748, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !13748, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13748
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ay, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !13748
  %i.az = load i64, ptr %i.c, align 8, !range !49, !noalias !13748, !noundef !12
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !50, !noalias !13748, !noundef !12 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j, !prof !51

bb.i:                                             ; preds = %bb.h
  %i.be = load i64, ptr %i.bd, align 8, !noalias !13748
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #50, !noalias !13748
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.bd, align 8, !noalias !13748, !nonnull !12, !noundef !12 ; 2 uses
  %i.bg = icmp ule i64 %i.ay, %i.bc
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13748
  %.not52.i = icmp eq i64 %i.ay, 0
  br i1 %.not52.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.o, %bb.j
  store i64 %i.bc, ptr %i.l, align 8, !noalias !13748
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bf, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !13748
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.ay, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13748
  store ptr %i.l, ptr %i.m, align 8, !noalias !13748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13748
  store ptr %i.m, ptr %i.k, align 8, !noalias !13748
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !13748
  store ptr @155, ptr %i.n, align 8, !noalias !13748
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.k, ptr %i.bh, align 8, !noalias !13748
  store ptr %i.n, ptr %i.o, align 8, !noalias !13748
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @156, ptr %i.bi, align 8, !noalias !13748
  store i64 1, ptr %i.p, align 8, !noalias !13748
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !noalias !13748
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.012.sroa.5.0..sroa_idx.i, align 8, !noalias !13748
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13748
  %i.bj = load ptr, ptr @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE, align 8, !noalias !13751, !nonnull !12, !align !209, !noundef !12
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %.noexc.i unwind label %bb.p, !noalias !13748

.noexc.i:                                         ; preds = %bb.k
  %i.bk = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !13751
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.noexc.i
  %i.bm = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !13751 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 6
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp samesign ugt i64 %i.bm, 1
  br i1 %i.bo, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE, align 8, !noalias !13751, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !13748, !nonnull !12, !noundef !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !13748, !noundef !12
  store i64 2, ptr %i.a, align 8, !noalias !13751
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.br, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !13751
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !13751
  %i.bu = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc57.i unwind label %bb.p, !noalias !13748 ; 2 uses

.noexc57.i:                                       ; preds = %bb.m
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !12, !noalias !13748, !nonnull !12
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #55
          to label %.noexc58.i unwind label %bb.p, !noalias !13748, !inline_history !13754

.noexc58.i:                                       ; preds = %.noexc57.i
  br i1 %i.bz, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.noexc58.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bp, ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.q unwind label %bb.p, !noalias !13748

bb.o:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull align 1 %i.aw, i64 %i.ay, i1 false), !noalias !13748
  br label %bb.k

bb.p:                                             ; preds = %bb.n, %.noexc57.i, %bb.m, %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #52
          to label %common.resume.i unwind label %bb.u, !noalias !13748

bb.q:                                             ; preds = %bb.n, %.noexc58.i, %bb.l, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13748
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.r, !noalias !13748

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.s, !noalias !13748

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !13748
  unreachable

common.resume.i:                                  ; preds = %bb.af, %bb.ad, %bb.r, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.cb, %bb.r ], [ %i.dr, %bb.ad ], [ %i.ds, %bb.af ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.q
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !13748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13748
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit61.i, %bb.x, %bb.w, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  store i8 12, ptr %0, align 8, !alias.scope !13748
  br label %_RNCNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs0_00Ba_.exit

bb.u:                                             ; preds = %bb.ad, %bb.p
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !13748
  unreachable

bb.v:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ce = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !13748
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v
  %i.cg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !13748 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 6
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp samesign ugt i64 %i.cg, 1
  br i1 %i.ci, label %bb.x, label %bb.t

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr @_RNvNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadatas0_0010___CALLSITE, align 8, !noalias !13748, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !13748, !nonnull !12, !noundef !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !13748, !noundef !12
  store i64 2, ptr %i.j, align 8, !noalias !13748
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_14
begin_hunk_15_@_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBH_8Snapshot10tombstoness_0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtBL_6errors15DeltaTableErrorEE8call_mutBL_:bb.a
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !16028, !noalias !16031, !nonnull !12, !noundef !12
  invoke void @_RNvNtCsljwZ9olD1ul_11arrow_arith7boolean11is_not_null(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @159)
          to label %bb.h unwind label %bb.f, !noalias !16031

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #50
          to label %bb.g unwind label %bb.f, !noalias !16031

.body.i.i:                                        ; preds = %.body64.thread.i.i, %.body64.i.i, %bb.q, %bb.p, %bb.o, %bb.k, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %eh.lpad-body6570.i.i, %.body64.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.body64.i.i ], [ %i.o, %bb.f ], [ %i.z, %bb.q ], [ %i.z, %bb.p ], [ %i.z, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) #52
          to label %bb.ah unwind label %bb.ag, !noalias !16031

bb.f:                                             ; preds = %bb.s, %bb.e, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !noalias !16030, !noundef !12 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !16030
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16030
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i.i, i64 32, i1 false), !noalias !16032
  store i64 -9223372036854775741, ptr %0, align 16, !alias.scope !16033, !noalias !16032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16030
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.j:                                             ; preds = %bb.h
  %.sroa.631.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.631.0..sroa_idx.i.i, i64 48, i1 false), !noalias !16030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16030
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i.i, i64 32, i1 false), !noalias !16030
  store ptr %i.p, ptr %i.e, align 8, !noalias !16030
  invoke void @_RNvNtCsa7Blp2W9WhU_12arrow_select6filter19filter_record_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.e)
          to label %bb.l unwind label %bb.k, !noalias !16031

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.e) #52
          to label %.body.i.i unwind label %bb.ag, !noalias !16031

bb.l:                                             ; preds = %bb.j
  %i.t = load i64, ptr %i.f, align 8, !range !50, !noalias !16030, !noundef !12 ; 2 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !16030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16030
  br i1 %i.u, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.438.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !16032
  store i64 -9223372036854775741, ptr %0, align 16, !alias.scope !16033, !noalias !16032
  call void @llvm.experimental.noalias.scope.decl(metadata !16034)
  call void @llvm.experimental.noalias.scope.decl(metadata !16037)
  call void @llvm.experimental.noalias.scope.decl(metadata !16040)
  call void @llvm.experimental.noalias.scope.decl(metadata !16043)
  call void @llvm.experimental.noalias.scope.decl(metadata !16046)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !16049, !noalias !16030, !nonnull !12, !noundef !12
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !16050
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.o, !noalias !16031

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16051)
  %i.aa = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16054, !noalias !16030, !noundef !12 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.body.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !16055
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.q, label %.body.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i) #54
          to label %.body.i.i unwind label %bb.t, !noalias !16031

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !16066)
  %i.ae = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16069, !noalias !16030, !noundef !12 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ag = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !16070
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.f, !noalias !16031

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !16031
  unreachable

bb.u:                                             ; preds = %bb.l
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !16030
  store i64 %i.t, ptr %i.g, align 8, !noalias !16030
  call void @llvm.experimental.noalias.scope.decl(metadata !16081)
  call void @llvm.experimental.noalias.scope.decl(metadata !16084)
  call void @llvm.experimental.noalias.scope.decl(metadata !16087)
  call void @llvm.experimental.noalias.scope.decl(metadata !16090)
  call void @llvm.experimental.noalias.scope.decl(metadata !16093)
  %i.aj = load ptr, ptr %i.e, align 8, !alias.scope !16096, !noalias !16030, !nonnull !12, !noundef !12
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !16097
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i61.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i61.i.i unwind label %bb.w, !noalias !16031

bb.w:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16098)
  %i.an = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16101, !noalias !16030, !noundef !12 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.body64.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !16102
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.y, label %.body64.thread.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i) #54
          to label %.body64.thread.i.i unwind label %bb.ab, !noalias !16031

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i61.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !16113)
  %i.ar = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16116, !noalias !16030, !noundef !12 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit66.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i61.i.i
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !16117
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit66.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit66.i.i unwind label %.body64.thread72.i.i, !noalias !16031

bb.ab:                                            ; preds = %bb.y
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !16031
  unreachable

.body64.thread72.i.i:                             ; preds = %bb.ac, %bb.aa
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body64.thread.i.i

.body64.i.i:                                      ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit66.i.i: ; preds = %bb.aa, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i61.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16030
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16030
  %i.aw = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones19TOMBSTONE_EVALUATOR, i64 16) acquire, align 8, !noalias !16030
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.ac, !prof !105

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit66.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16030
  store ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones19TOMBSTONE_EVALUATOR, ptr %i.b, align 8, !noalias !16030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16030
  store ptr %i.b, ptr %i.a, align 8, !noalias !16030
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones19TOMBSTONE_EVALUATOR, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc67.i.i unwind label %.body64.thread72.i.i, !noalias !16031

.noexc67.i.i:                                     ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16030
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc67.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit66.i.i
  %i.ay = load ptr, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones19TOMBSTONE_EVALUATOR, align 8, !noalias !16030, !nonnull !12, !noundef !12
  %i.az = load ptr, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones19TOMBSTONE_EVALUATOR, i64 8), align 8, !noalias !16030, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !490, !invariant.load !12, !noalias !16031
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = and i64 %i.bc, -16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  invoke void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noundef nonnull %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g)
          to label %bb.ad unwind label %.body64.i.i, !noalias !16031

bb.ad:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bg = load i64, ptr %i.c, align 16, !range !359, !noalias !16030, !noundef !12 ; 2 uses
  %.not59.i.i = icmp eq i64 %i.bg, -9223372036854775743
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !16030
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.541.0.copyload.i.i = load i64, ptr %.sroa.541.0..sroa_idx.i.i, align 8, !noalias !16030 ; 3 uses
  br i1 %.not59.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.656.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i, i64 48, i1 false), !noalias !16032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16030
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.454.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.sroa.0.i.i, i64 32, i1 false), !noalias !16032
  store i64 %i.bg, ptr %0, align 16, !alias.scope !16033, !noalias !16032
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.541.0.copyload.i.i, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !alias.scope !16033, !noalias !16032
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.0.i.i)
  br label %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstoness_00Ba_.exit.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16030
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.sroa.0.i.i, i64 32, i1 false), !noalias !16032
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.0.i.i)
  %.sroa.023.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.541.0.copyload.i.i, ptr %.sroa.023.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16033, !noalias !16032
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.424.0..sroa_idx.i.i, align 16, !alias.scope !16033, !noalias !16032
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.541.0.copyload.i.i, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !alias.scope !16033, !noalias !16032
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !16033, !noalias !16032
  br label %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstoness_00Ba_.exit.i

.body64.thread.i.i:                               ; preds = %.body64.thread72.i.i, %bb.y, %bb.x, %bb.w
  %eh.lpad-body6570.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body64.thread72.i.i ], [ %i.am, %bb.y ], [ %i.am, %bb.x ], [ %i.am, %bb.w ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.g) #52
          to label %.body.i.i unwind label %bb.ag, !noalias !16031

bb.ag:                                            ; preds = %.body64.thread.i.i, %bb.k, %.body.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !16031
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.s, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16030
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstoness_00Ba_.exit.i

bb.ah:                                            ; preds = %.body.i.i
  resume { ptr, i32 } %.pn.i.i

_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstoness_00Ba_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16030
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h), !noalias !16031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16024
  br label %_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstoness_0B8_.exit

_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstoness_0B8_.exit: ; preds = %bb.b, %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstoness_00Ba_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBH_8Snapshot5files0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBL_6errors15DeltaTableErrorEE8call_mutBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 48)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16133
  %i.c = load i64, ptr %2, align 16, !range !55, !alias.scope !16131, !noalias !16128, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.c, -9223372036854775711
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.320.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.617.0..sroa_idx.i, i64 24, i1 false), !alias.scope !16133
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.219.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false), !alias.scope !16133
  store i64 %i.c, ptr %0, align 16, !alias.scope !16128, !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16133
  br label %_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot5files0B8_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !16128
  call void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext17rb_from_scan_meta(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !16133
  %i.e = load i64, ptr %i.b, align 16, !range !359, !noalias !16133, !noundef !12 ; 2 uses
  %.not33.i = icmp eq i64 %i.e, -9223372036854775743
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !16133
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.532.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.626.0..sroa_idx.i, i64 48, i1 false), !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16133
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.431.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !16131
  store i64 %i.e, ptr %0, align 16, !alias.scope !16128, !noalias !16131
  br label %_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot5files0B8_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !16131
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !16128, !noalias !16131
  br label %_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot5files0B8_.exit

_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot5files0B8_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr8simplifyNtB4_15SimplifyContextNtB4_12SimplifyInfo15execution_props(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !209, !noundef !12
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB4_16DataFusionEngineNtCs8ulvy0Wg6Ot_12delta_kernel6Engine18evaluation_handler(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !12, !noundef !12
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.h = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !12, !noundef !12
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @700, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtB4_13TablePropertyNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  switch i64 %2, label %bb.az [
    i64 16, label %bb.b
    i64 24, label %bb.d
    i64 30, label %bb.f
    i64 32, label %bb.h
    i64 33, label %bb.j
    i64 35, label %bb.l
    i64 40, label %bb.n
    i64 22, label %bb.p
    i64 34, label %bb.x
    i64 28, label %bb.z
    i64 26, label %bb.aa
    i64 27, label %bb.ac
    i64 20, label %bb.ae
    i64 29, label %bb.aj
    i64 23, label %bb.al
    i64 37, label %bb.au
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i128, ptr %1, align 1
  %i.c = icmp ne i128 %i.b, 161399592905859784171311278757511980388
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.f, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.d:                                             ; preds = %bb.a
  %i.g = load i128, ptr %1, align 1
  %i.h = xor i128 %i.g, 154763738647615640352330236290646435172
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 1
  %i.k = zext i64 %i.j to i128
  %i.l = xor i128 %i.k, 7809653462537629257
  %i.m = or i128 %i.h, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.q, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.f:                                             ; preds = %bb.a
  %i.r = load i128, ptr %1, align 1
  %i.s = xor i128 %i.r, 140137038793230050517167447795986883940
  %i.t = getelementptr i8, ptr %1, i64 14
  %i.u = load i128, ptr %i.t, align 1
  %i.v = xor i128 %i.u, 154706461201199320292741572599366707565
  %i.w = or i128 %i.s, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.aa, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.h:                                             ; preds = %bb.a
  %i.ab = load i128, ptr %1, align 1
  %i.ac = xor i128 %i.ab, 140137038793230050517167447795986883940
  %i.ad = getelementptr i8, ptr %1, i64 16
  %i.ae = load i128, ptr %i.ad, align 1
  %i.af = xor i128 %i.ae, 134856472721933328655464147798759204218
  %i.ag = or i128 %i.ac, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ak, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.j:                                             ; preds = %bb.a
  %bcmp35 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %1, ptr noundef nonnull dereferenceable(33) @1060, i64 33)
  %i.al = icmp eq i32 %bcmp35, 0
  br i1 %i.al, label %bb.k, label %bb.az

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.am, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.l:                                             ; preds = %bb.a
  %bcmp36 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(35) %1, ptr noundef nonnull dereferenceable(35) @1061, i64 35)
  %i.an = icmp eq i32 %bcmp36, 0
  br i1 %i.an, label %bb.m, label %bb.az

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.ao, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.n:                                             ; preds = %bb.a
  %bcmp37 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %1, ptr noundef nonnull dereferenceable(40) @1062, i64 40)
  %i.ap = icmp eq i32 %bcmp37, 0
  br i1 %i.ap, label %bb.o, label %bb.az

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.aq, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.p:                                             ; preds = %bb.a
  %i.ar = load i128, ptr %1, align 1
  %i.as = xor i128 %i.ar, 154763738647615640352330236290646435172
  %i.at = getelementptr i8, ptr %1, i64 6
  %i.au = load i128, ptr %i.at, align 1
  %i.av = xor i128 %i.au, 161352763123069803509517896646897526883
  %i.aw = or i128 %i.as, %i.av
  %i.ax = icmp ne i128 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.q, label %bb.am

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 23, ptr %i.ba, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.r:                                             ; preds = %bb.d
  %i.bb = load i128, ptr %1, align 1
  %i.bc = xor i128 %i.bb, 149457046304542224781846041732424951140
  %i.bd = getelementptr i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = zext i64 %i.be to i128
  %i.bg = xor i128 %i.bf, 7306087010222435945
  %i.bh = or i128 %i.bc, %i.bg
  %i.bi = icmp ne i128 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.as

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.bl, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

bb.t:                                             ; preds = %bb.h
  %i.bm = load i128, ptr %1, align 1
  %i.bn = xor i128 %i.bm, 140152756787620437444438958928963593572
  %i.bo = getelementptr i8, ptr %1, i64 16
  %i.bp = load i128, ptr %i.bo, align 1
  %i.bq = xor i128 %i.bp, 153424244262811151603198265055045904238
  %i.br = or i128 %i.bn, %i.bq
  %i.bs = icmp ne i128 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.u, label %bb.az

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.bv, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.bd

end_hunk_15
begin_hunk_16_@_RNvYNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner24DELTA_EXTENSION_PLANNERS0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBa_:bb.a
  store ptr @236, ptr %i.ap, align 8, !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17565
  store i64 5, ptr %0, align 8, !alias.scope !17565
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aq, align 8, !alias.scope !17565
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.ar, align 8, !alias.scope !17565
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan15scan_row_schema() ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaINtB5_13TryFromKernelRNtNtB9_6schema10StructTypeE15try_from_kernel(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.g, %bb.b ], [ %i.t, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17600)
  call void @llvm.experimental.noalias.scope.decl(metadata !17603)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !17606, !nonnull !12, !noundef !12
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !17606
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.o

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17607)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !17607, !noalias !17610, !noundef !12
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.i, !prof !51

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17612
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !17610
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @420, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #50
          to label %bb.g unwind label %bb.f, !noalias !17612

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #52
          to label %.body.i unwind label %bb.h, !noalias !17612

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17612
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.q, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17613
  %i.r = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, 17) 8) #51, !noalias !17613 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.m, !prof !59

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #50
          to label %.noexc5.i unwind label %bb.k

.noexc5.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #52
          to label %.body.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !17616
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.n, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0B7_.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #54
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0B7_.exit

bb.o:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot21SCAN_ROW_ARROW_SCHEMA0B7_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.02.i = alloca [88 x i8], align 8         ; 6 uses
  %i.ap = alloca [96 x i8], align 8               ; 8 uses
  %i.aq = alloca [96 x i8], align 8               ; 8 uses
  %i.ar = alloca [96 x i8], align 8               ; 8 uses
  %i.as = alloca [96 x i8], align 8               ; 8 uses
  %i.at = alloca [96 x i8], align 8               ; 8 uses
  %i.au = alloca [96 x i8], align 8               ; 8 uses
  %i.av = alloca [96 x i8], align 8               ; 8 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [144 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !17621
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17621
  %i.ay = tail call noundef align 8 dereferenceable_or_null(768) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, 17) 8) #51, !noalias !17621 ; 12 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 768) #50, !noalias !17621
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !17621
  %i.ba = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c, !prof !105

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, ptr %i.ao, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17621
  store ptr %i.ao, ptr %i.an, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc.i unwind label %bb.d, !noalias !17621

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17624)
  call void @llvm.experimental.noalias.scope.decl(metadata !17627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !17629
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD)
          to label %.noexc8.i unwind label %bb.d, !noalias !17621

.noexc8.i:                                        ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !17629
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 24))
          to label %bb.g unwind label %bb.f, !noalias !17630

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %i.bd, %bb.f ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am) #52
          to label %bb.bt unwind label %bb.i, !noalias !17630

bb.f:                                             ; preds = %.noexc8.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.noexc8.i
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 88), align 8, !range !208, !alias.scope !17627, !noalias !17630, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !17629
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9ADD_FIELD, i64 40))
          to label %bb.j unwind label %bb.h, !noalias !17630

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al) #52
          to label %bb.e unwind label %bb.i, !noalias !17630

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17630
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !noalias !17631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !17629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !17631
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !noalias !17631
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  store i8 %i.be, ptr %i.bj, align 8, !alias.scope !17624, !noalias !17631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !17621
  %i.bk = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit10.i, label %bb.k, !prof !105

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD, ptr %i.aj, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !17621
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc9.i unwind label %bb.l, !noalias !17621

.noexc9.i:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit10.i

.body13.i:                                        ; preds = %.body20.i, %bb.m, %bb.l
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %.body20.i ], [ %i.bm, %bb.l ], [ %.pn.i11.i, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.av) #52
          to label %bb.bt unwind label %bb.bs, !noalias !17621

bb.l:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit10.i, %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit10.i: ; preds = %.noexc9.i, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !17632)
  call void @llvm.experimental.noalias.scope.decl(metadata !17635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17637
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD)
          to label %.noexc12.i unwind label %bb.l, !noalias !17621

.noexc12.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17637
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD, i64 24))
          to label %bb.o unwind label %bb.n, !noalias !17638

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i11.i = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %i.bn, %bb.n ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #52
          to label %.body13.i unwind label %bb.q, !noalias !17638

bb.n:                                             ; preds = %.noexc12.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %.noexc12.i
  %i.bo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD, i64 88), align 8, !range !208, !alias.scope !17635, !noalias !17638, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17637
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9CDC_FIELD, i64 40))
          to label %bb.r unwind label %bb.p, !noalias !17638

bb.p:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag) #52
          to label %bb.m unwind label %bb.q, !noalias !17638

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17638
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !17639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !17639
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !17639
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i8 %i.bo, ptr %i.bt, align 8, !alias.scope !17632, !noalias !17639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !17621
  %i.bu = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit17.i, label %bb.s, !prof !105

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD, ptr %i.ae, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17621
  store ptr %i.ae, ptr %i.ad, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc16.i unwind label %bb.t, !noalias !17621

.noexc16.i:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit17.i

.body20.i:                                        ; preds = %.body27.i, %bb.u, %bb.t
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body27.i ], [ %i.bw, %bb.t ], [ %.pn.i18.i, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.au) #52
          to label %.body13.i unwind label %bb.bs, !noalias !17621

bb.t:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit17.i, %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit17.i: ; preds = %.noexc16.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !17640)
  call void @llvm.experimental.noalias.scope.decl(metadata !17643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !17645
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD)
          to label %.noexc19.i unwind label %bb.t, !noalias !17621

.noexc19.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !17645
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD, i64 24))
          to label %bb.w unwind label %bb.v, !noalias !17646

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn.i18.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %i.bx, %bb.v ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #52
          to label %.body20.i unwind label %bb.y, !noalias !17646

bb.v:                                             ; preds = %.noexc19.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %.noexc19.i
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD, i64 88), align 8, !range !208, !alias.scope !17643, !noalias !17646, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !17645
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields17COMMIT_INFO_FIELD, i64 40))
          to label %bb.z unwind label %bb.x, !noalias !17646

bb.x:                                             ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #52
          to label %bb.u unwind label %bb.y, !noalias !17646

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17646
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !17647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !17645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !17647
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !17647
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  store i8 %i.by, ptr %i.cd, align 8, !alias.scope !17640, !noalias !17647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !17621
  %i.ce = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit24.i, label %bb.aa, !prof !105

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD, ptr %i.z, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !17621
  store ptr %i.z, ptr %i.y, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc23.i unwind label %bb.ab, !noalias !17621

.noexc23.i:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit24.i

.body27.i:                                        ; preds = %.body34.i, %bb.ac, %bb.ab
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %.body34.i ], [ %i.cg, %bb.ab ], [ %.pn.i25.i, %bb.ac ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.at) #52
          to label %.body20.i unwind label %bb.bs, !noalias !17621

bb.ab:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit24.i, %bb.aa
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit24.i: ; preds = %.noexc23.i, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !17648)
  call void @llvm.experimental.noalias.scope.decl(metadata !17651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17653
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD)
          to label %.noexc26.i unwind label %bb.ab, !noalias !17621

.noexc26.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17653
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD, i64 24))
          to label %bb.ae unwind label %bb.ad, !noalias !17654

bb.ac:                                            ; preds = %bb.af, %bb.ad
  %.pn.i25.i = phi { ptr, i32 } [ %i.cj, %bb.af ], [ %i.ch, %bb.ad ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #52
          to label %.body27.i unwind label %bb.ag, !noalias !17654

bb.ad:                                            ; preds = %.noexc26.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %.noexc26.i
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD, i64 88), align 8, !range !208, !alias.scope !17651, !noalias !17654, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17653
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields21DOMAIN_METADATA_FIELD, i64 40))
          to label %bb.ah unwind label %bb.af, !noalias !17654

bb.af:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #52
          to label %bb.ac unwind label %bb.ag, !noalias !17654

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17654
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !17655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !17655
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !17655
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  store i8 %i.ci, ptr %i.cn, align 8, !alias.scope !17648, !noalias !17655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !17621
  %i.co = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit31.i, label %bb.ai, !prof !105

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD, ptr %i.u, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17621
  store ptr %i.u, ptr %i.t, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc30.i unwind label %bb.aj, !noalias !17621

.noexc30.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit31.i

.body34.i:                                        ; preds = %.body41.i, %bb.ak, %bb.aj
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %.body41.i ], [ %i.cq, %bb.aj ], [ %.pn.i32.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.as) #52
          to label %.body27.i unwind label %bb.bs, !noalias !17621

bb.aj:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit31.i, %bb.ai
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit31.i: ; preds = %.noexc30.i, %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !17656)
  call void @llvm.experimental.noalias.scope.decl(metadata !17659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17661
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD)
          to label %.noexc33.i unwind label %bb.aj, !noalias !17621

.noexc33.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17661
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD, i64 24))
          to label %bb.am unwind label %bb.al, !noalias !17662

bb.ak:                                            ; preds = %bb.an, %bb.al
  %.pn.i32.i = phi { ptr, i32 } [ %i.ct, %bb.an ], [ %i.cr, %bb.al ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #52
          to label %.body34.i unwind label %bb.ao, !noalias !17662

bb.al:                                            ; preds = %.noexc33.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %.noexc33.i
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD, i64 88), align 8, !range !208, !alias.scope !17659, !noalias !17662, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17661
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14METADATA_FIELD, i64 40))
          to label %bb.ap unwind label %bb.an, !noalias !17662

bb.an:                                            ; preds = %bb.am
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #52
          to label %bb.ak unwind label %bb.ao, !noalias !17662

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17662
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !17663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !17663
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !17663
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store i8 %i.cs, ptr %i.cx, align 8, !alias.scope !17656, !noalias !17663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !17621
  %i.cy = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit38.i, label %bb.aq, !prof !105

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD, ptr %i.p, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17621
  store ptr %i.p, ptr %i.o, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc37.i unwind label %bb.ar, !noalias !17621

.noexc37.i:                                       ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit38.i

.body41.i:                                        ; preds = %.body48.i, %bb.as, %bb.ar
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body48.i ], [ %i.da, %bb.ar ], [ %.pn.i39.i, %bb.as ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.ar) #52
          to label %.body34.i unwind label %bb.bs, !noalias !17621

bb.ar:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit38.i, %bb.aq
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit38.i: ; preds = %.noexc37.i, %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !17664)
  call void @llvm.experimental.noalias.scope.decl(metadata !17667)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17669
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD)
          to label %.noexc40.i unwind label %bb.ar, !noalias !17621

.noexc40.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17669
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD, i64 24))
          to label %bb.au unwind label %bb.at, !noalias !17670

bb.as:                                            ; preds = %bb.av, %bb.at
  %.pn.i39.i = phi { ptr, i32 } [ %i.dd, %bb.av ], [ %i.db, %bb.at ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #52
          to label %.body41.i unwind label %bb.aw, !noalias !17670

bb.at:                                            ; preds = %.noexc40.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.au:                                            ; preds = %.noexc40.i
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD, i64 88), align 8, !range !208, !alias.scope !17667, !noalias !17670, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17669
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14PROTOCOL_FIELD, i64 40))
          to label %bb.ax unwind label %bb.av, !noalias !17670

bb.av:                                            ; preds = %bb.au
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #52
          to label %bb.as unwind label %bb.aw, !noalias !17670

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17670
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !17671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !17671
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !17671
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store i8 %i.dc, ptr %i.dh, align 8, !alias.scope !17664, !noalias !17671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !17621
  %i.di = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit45.i, label %bb.ay, !prof !105

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD, ptr %i.k, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17621
  store ptr %i.k, ptr %i.j, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc44.i unwind label %bb.az, !noalias !17621

.noexc44.i:                                       ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit45.i

.body48.i:                                        ; preds = %.body55.i, %bb.ba, %bb.az
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body56.i, %.body55.i ], [ %i.dk, %bb.az ], [ %.pn.i46.i, %bb.ba ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.aq) #52
          to label %.body41.i unwind label %bb.bs, !noalias !17621

bb.az:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit45.i, %bb.ay
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit45.i: ; preds = %.noexc44.i, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !17672)
  call void @llvm.experimental.noalias.scope.decl(metadata !17675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17677
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD)
          to label %.noexc47.i unwind label %bb.az, !noalias !17621

.noexc47.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit45.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17677
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD, i64 24))
          to label %bb.bc unwind label %bb.bb, !noalias !17678

bb.ba:                                            ; preds = %bb.bd, %bb.bb
  %.pn.i46.i = phi { ptr, i32 } [ %i.dn, %bb.bd ], [ %i.dl, %bb.bb ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #52
          to label %.body48.i unwind label %bb.be, !noalias !17678

bb.bb:                                            ; preds = %.noexc47.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %.noexc47.i
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD, i64 88), align 8, !range !208, !alias.scope !17675, !noalias !17678, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17677
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD, i64 40))
          to label %bb.bf unwind label %bb.bd, !noalias !17678

bb.bd:                                            ; preds = %bb.bc
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #52
          to label %bb.ba unwind label %bb.be, !noalias !17678

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17678
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !17679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !17679
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !17679
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store i8 %i.dm, ptr %i.dr, align 8, !alias.scope !17672, !noalias !17679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17677
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  %i.ds = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD, i64 96) acquire, align 8, !noalias !17621
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit52.i, label %bb.bg, !prof !105

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17621
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD, ptr %i.f, align 8, !noalias !17621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17621
  store ptr %i.f, ptr %i.e, align 8, !noalias !17621
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD, i64 96), i1 noundef zeroext true, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc51.i unwind label %bb.bh, !noalias !17621

.noexc51.i:                                       ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17621
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit52.i

bb.bh:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit52.i, %bb.bg
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i

.body55.i:                                        ; preds = %bb.bi, %bb.bh
  %eh.lpad-body56.i = phi { ptr, i32 } [ %i.du, %bb.bh ], [ %.pn.i53.i, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.ap) #52
          to label %.body48.i unwind label %bb.bs, !noalias !17621

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit52.i: ; preds = %.noexc51.i, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !17680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17683
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD)
          to label %.noexc54.i unwind label %bb.bh, !noalias !17621

.noexc54.i:                                       ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE5force0ECs14kWLkQVSKO_14deltalake_core.exit52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17683
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD, i64 24))
          to label %bb.bk unwind label %bb.bj, !noalias !17685

bb.bi:                                            ; preds = %bb.bl, %bb.bj
  %.pn.i53.i = phi { ptr, i32 } [ %i.dx, %bb.bl ], [ %i.dv, %bb.bj ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #52
          to label %.body55.i unwind label %bb.bm, !noalias !17685

bb.bj:                                            ; preds = %.noexc54.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bk:                                            ; preds = %.noexc54.i
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD, i64 88), align 8, !range !208, !alias.scope !17680, !noalias !17685, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17683
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields9TXN_FIELD, i64 40))
          to label %bb.bn unwind label %bb.bl, !noalias !17685

bb.bl:                                            ; preds = %bb.bk
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #52
          to label %bb.bi unwind label %bb.bm, !noalias !17685

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17685
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %.sroa.02.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.40..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !17686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !17686
  %.sroa.02.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !17686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ay, ptr noundef nonnull align 8 dereferenceable(96) %i.av, i64 96, i1 false), !noalias !17621
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dz, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false), !noalias !17621
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, ptr noundef nonnull align 8 dereferenceable(96) %i.at, i64 96, i1 false), !noalias !17621
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eb, ptr noundef nonnull align 8 dereferenceable(96) %i.as, i64 96, i1 false), !noalias !17621
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ec, ptr noundef nonnull align 8 dereferenceable(96) %i.ar, i64 96, i1 false), !noalias !17621
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ed, ptr noundef nonnull align 8 dereferenceable(96) %i.aq, i64 96, i1 false), !noalias !17621
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ay, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ee, ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i64 96, i1 false), !noalias !17621
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ef, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.02.i, i64 88, i1 false), !noalias !17621
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 760
  store i8 %i.dw, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !17621
  store i64 8, ptr %i.aw, align 8, !noalias !17621
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ay, ptr %i.eg, align 8, !noalias !17621
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 8, ptr %i.eh, align 8, !noalias !17621
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw), !noalias !17621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !17621
  call void @llvm.experimental.noalias.scope.decl(metadata !17687)
  call void @llvm.experimental.noalias.scope.decl(metadata !17690)
  %i.ei = load i64, ptr %i.ax, align 16, !range !50, !alias.scope !17690, !noalias !17692, !noundef !12
  %i.ej = icmp eq i64 %i.ei, -9223372036854775808
  br i1 %i.ej, label %bb.bo, label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA0B9_.exit, !prof !51

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17695
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.ek, i64 96, i1 false), !noalias !17692
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 45, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #50
          to label %bb.bq unwind label %bb.bp, !noalias !17696

bb.bp:                                            ; preds = %bb.bo
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #52
          to label %common.resume.i unwind label %bb.br, !noalias !17696

bb.bq:                                            ; preds = %bb.bo
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17696
  unreachable

common.resume.i:                                  ; preds = %bb.bt, %bb.bp
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i, %bb.bt ], [ %i.el, %bb.bp ]
  resume { ptr, i32 } %common.resume.op.i

bb.bs:                                            ; preds = %.body55.i, %.body48.i, %.body41.i, %.body34.i, %.body27.i, %.body20.i, %.body13.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17621
  unreachable

bb.bt:                                            ; preds = %.body13.i, %bb.e, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %.body13.i ], [ %i.bc, %bb.d ], [ %.pn.i.i, %bb.e ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 768, i64 noundef 8) #51, !noalias !17621
  br label %common.resume.i

_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA0B9_.exit: ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.ax, i64 144, i1 false), !alias.scope !17697, !noalias !17698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17621
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields12REMOVE_FIELD0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 5 uses
  %i.g = alloca [96 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 8                ; 5 uses
  %i.j = alloca [96 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [96 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [144 x i8], align 16              ; 6 uses
  %i.o = alloca [144 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17699
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17699
  %i.p = tail call noundef align 8 dereferenceable_or_null(1056) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 1056, i64 noundef range(i64 1, 17) 8) #51, !noalias !17699 ; 14 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1056) #50, !noalias !17699
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17699
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @259, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.c, !noalias !17699

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.d:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17699
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @261, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.f, !noalias !17699

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.h ], [ %i.s, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.l) #52
          to label %bb.am unwind label %bb.al, !noalias !17699

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e
end_hunk_16
begin_hunk_17_@_RNvYNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB9_8Snapshot10tombstones16TOMBSTONE_SCHEMA0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBd_:bb.a
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsZ_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_7SidecarNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.h) #52
          to label %bb.s unwind label %bb.r

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsC_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_8DataTypeINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_10StructTypeE4from(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newReNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 7, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.e, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 2, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 2, ptr %i.q, align 8
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !17914)
  %i.r = load i64, ptr %i.j, align 16, !range !50, !alias.scope !17914, !noalias !17917, !noundef !12
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.k, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !51

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17921
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !17917
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @341) #50
          to label %bb.m unwind label %bb.l, !noalias !17922

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #52
          to label %common.resume.i unwind label %bb.n, !noalias !17922

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17922
  unreachable

common.resume.i:                                  ; preds = %bb.s, %bb.p, %bb.l
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %bb.s ], [ %i.u, %bb.l ], [ %i.aa, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.j, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.x, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17923
  %i.y = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, 17) 8) #51, !noalias !17923 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %_RNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstones16TOMBSTONE_SCHEMA0Ba_.exit, !prof !59

bb.o:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #50
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.w)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.r:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.s:                                             ; preds = %bb.g, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.m, %bb.c ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 192, i64 noundef 8) #51
  br label %common.resume.i

_RNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstones16TOMBSTONE_SCHEMA0Ba_.exit: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtBL_5error5ErrorE6expectCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB9_8Snapshot10tombstones19TOMBSTONE_EVALUATOR0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBd_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [96 x i8], align 16               ; 7 uses
  %i.l = alloca [144 x i8], align 8               ; 7 uses
  %i.m = alloca [112 x i8], align 16              ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !12
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.r
  invoke void @_RINvMs9_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10Expression11struct_fromBN_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB8_6schema11StructFieldENCNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB45_8Snapshot10tombstones19TOMBSTONE_EVALUATOR00EEB49_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.m, ptr noundef nonnull %i.p, ptr noundef nonnull %i.s)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.b ], [ %i.y, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.l) #52
          to label %.critedge.i unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.v, ptr noundef nonnull align 16 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17926
  %i.w = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 17) 16) #51, !noalias !17926 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.g, !prof !59

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #50
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.v)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.w, ptr noundef nonnull align 16 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.w, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.l)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aa = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.i, !prof !105

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc10.i unwind label %bb.w

.noexc10.i:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc10.i, %bb.h
  %i.ac = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ae = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, i64 8) acquire, align 8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.j, !prof !105

bb.j:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc11.i unwind label %bb.w

.noexc11.i:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc11.i, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ag = load ptr, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, align 8, !nonnull !12, !noundef !12
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aj = load ptr, ptr @_RNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot10tombstones16TOMBSTONE_SCHEMA, align 8, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.aj, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ak = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12 ; 3 uses
  store ptr %i.ak, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.f)
          to label %bb.m unwind label %bb.s

bb.l:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXsC_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_8DataTypeINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_10StructTypeE4from(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.f)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !17929)
  %i.al = load i64, ptr %i.k, align 16, !range !359, !alias.scope !17929, !noundef !12
  %.not.i.i = icmp eq i64 %i.al, -9223372036854775743
  br i1 %.not.i.i, label %_RNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstones19TOMBSTONE_EVALUATOR0Ba_.exit, label %bb.o, !prof !105

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #50
          to label %bb.q unwind label %bb.p, !noalias !17929

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #52
          to label %.critedge.i unwind label %bb.r, !noalias !17929

bb.q:                                             ; preds = %bb.o
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17929
  unreachable

bb.s:                                             ; preds = %bb.m, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !17932
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %.noexc14.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #54
          to label %.noexc14.i unwind label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.v, %bb.t, %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.noexc14.i:                                       ; preds = %bb.t, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !17937)
  call void @llvm.experimental.noalias.scope.decl(metadata !17940)
  %i.ar = load ptr, ptr %i.j, align 8, !alias.scope !17943, !nonnull !12, !noundef !12
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !17943
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %.noexc14.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #54
          to label %.critedge.i unwind label %bb.u

.critedge.i:                                      ; preds = %bb.x, %bb.w, %bb.v, %.noexc14.i, %bb.p, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.au, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.au, %bb.x ], [ %lpad.thr_comm.i, %.noexc14.i ], [ %lpad.thr_comm.i, %bb.v ]
  resume { ptr, i32 } %.pn.pn.i

bb.w:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17944)
  call void @llvm.experimental.noalias.scope.decl(metadata !17947)
  %i.av = load ptr, ptr %i.n, align 8, !alias.scope !17950, !nonnull !12, !noundef !12
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !17950
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #54
          to label %.critedge.i unwind label %bb.u

_RNCNvNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot10tombstones19TOMBSTONE_EVALUATOR0Ba_.exit: ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !17929, !nonnull !12, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bb = load ptr, ptr %i.ba, align 16, !alias.scope !17929, !nonnull !12, !align !209, !noundef !12
  %i.bc = insertvalue { ptr, ptr } poison, ptr %i.az, 0
  %i.bd = insertvalue { ptr, ptr } %i.bc, ptr %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret { ptr, ptr } %i.bd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView11data_change11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17951
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 10)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17951, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17951
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView11data_change11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView11data_change11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView18deletion_timestamp11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17955
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 17)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17955, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17955
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView18deletion_timestamp11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView18deletion_timestamp11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView4path11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17959
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17959, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17959
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4path11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4path11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB9_13TombstoneView4size11FIELD_INDEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBh_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsL_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_6RemoveNtNtB7_6schema8ToSchema9to_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17963
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b) #52
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !17963, !noundef !12
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !17963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17963
  br i1 %.not.i.i, label %bb.d, label %_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4size11FIELD_INDEX0Be_.exit, !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #50
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNCNvNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB6_13TombstoneView4size11FIELD_INDEX0Be_.exit: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBe_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 6 uses
  %i.g = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 144) acquire, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 144), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17967
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA), !noalias !17971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17967
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 24))
          to label %bb.e unwind label %bb.d, !noalias !17971

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %common.resume.i unwind label %bb.g, !noalias !17971

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17967
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 96))
          to label %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.f, !noalias !17971

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #52
          to label %bb.c unwind label %bb.g, !noalias !17971

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17971
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %bb.c ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !17972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !17972
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !17972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17973
  %i.q = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, 17) 8) #51, !noalias !17973 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %_RNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0Bb_.exit, !prof !59

bb.h:                                             ; preds = %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #50
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.p)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0Bb_.exit: ; preds = %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 1, 0) i64 @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  ret i64 100
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i32 } @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17976)
  %i.c = load i64, ptr %i.b, align 8, !range !50, !alias.scope !17976, !noalias !17979, !noundef !12
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0Bd_.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17979
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @415, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #50
          to label %bb.d unwind label %bb.c, !noalias !17976

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table6config16DeltaConfigErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17976

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17976
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0Bd_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17976, !noalias !17979, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !4873, !alias.scope !17976, !noalias !17979, !noundef !12
  %i.j = insertvalue { i64, i32 } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i32 } @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17982)
  %i.c = load i64, ptr %i.b, align 8, !range !50, !alias.scope !17982, !noalias !17985, !noundef !12
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0Bd_.exit, label %bb.b, !prof !105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17985
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @415, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #50
          to label %bb.d unwind label %bb.c, !noalias !17982

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table6config16DeltaConfigErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17982

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17982
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0Bd_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17982, !noalias !17985, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !4873, !alias.scope !17982, !noalias !17985, !noundef !12
  %i.j = insertvalue { i64, i32 } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsjyY8HP3IvQ6_12object_store5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsjyY8HP3IvQ6_12object_store5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

end_hunk_17
