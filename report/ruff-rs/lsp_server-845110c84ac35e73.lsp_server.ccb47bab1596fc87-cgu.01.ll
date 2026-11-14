Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/lsp_server-845110c84ac35e73.lsp_server.ccb47bab1596fc87-cgu.01?download=true
inline.NumInlined: 209
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXNvMNvNtCshzDG46PUpLf_10lsp_server3msgs9_1__NtB8_14ResponseResult11deserializeNtB3_14___FieldVisitorNtNtCs6nZeqdiIoCH_10serde_core2de7Visitor11visit_bytesNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEBa_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = icmp eq i8 %i.e, 101
  br i1 %i.f, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs6nZeqdiIoCH_10serde_core7private6string15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 ptr @_RNvYNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error15unknown_variantCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @3, i64 noundef 2)
          to label %bb.q unwind label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !noundef !5
  %i.n = icmp eq i8 %i.m, 115
  br i1 %i.n, label %bb.f, label %bb.d, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = icmp eq i8 %i.p, 117
  br i1 %i.q, label %bb.g, label %bb.d, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = icmp eq i8 %i.s, 108
  br i1 %i.t, label %bb.h, label %bb.d, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.v = load i8, ptr %i.u, align 1, !noundef !5
  %i.w = icmp eq i8 %i.v, 116
  br i1 %i.w, label %bb.i, label %bb.d, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.x, align 1
  store i8 0, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.o, %bb.i
  ret void

bb.k:                                             ; preds = %bb.a
  %i.y = load i8, ptr %1, align 1, !noundef !5
  %i.z = icmp eq i8 %i.y, 101
  br i1 %i.z, label %bb.l, label %bb.d, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !5
  %i.ae = icmp eq i8 %i.ab, 114
  %i.af = icmp eq i8 %i.ad, 114
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.m, label %bb.d, !prof !92

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 111
  br i1 %i.ai, label %bb.n, label %bb.d, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = icmp eq i8 %i.ak, 114
  br i1 %i.al, label %bb.o, label %bb.d, !prof !12

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.am, align 1
  store i8 0, ptr %0, align 8
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(24) %i.a) #18
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.ao, align 8
  store i8 1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.r:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.s:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvMNvNtCshzDG46PUpLf_10lsp_server3msgs9_1__NtB8_14ResponseResult11deserializeNtB3_14___FieldVisitorNtNtCs6nZeqdiIoCH_10serde_core2de7Visitor9visit_strNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !guid !93 {
bb.a:
  switch i64 %2, label %bb.e [
    i64 6, label %bb.b
    i64 5, label %bb.d
  ], !prof !13

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1970496882
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 29804
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 1
  %i.m = xor i32 %i.l, 1869771365
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, 114
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.v = tail call noundef nonnull align 8 ptr @_RNvYNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error15unknown_variantCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @3, i64 noundef 2)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.x, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvMNvNtCshzDG46PUpLf_10lsp_server3msgs9_1__NtB8_14ResponseResult11deserializeNtB3_14___FieldVisitorNtNtCs6nZeqdiIoCH_10serde_core2de7Visitor9visit_u64NtNtCscvBHLZPbXnS_10serde_json5error5ErrorEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1) unnamed_addr #0 !guid !94 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  switch i64 %1, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ], !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  store i8 1, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.f, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs0_1__NtB5_9RequestIdNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 !guid !100 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.b = load i64, ptr %0, align 8, !range !8, !alias.scope !101, !noundef !5
  %.not.i = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !101, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !101, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f), !noalias !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs2_1__NtB5_6IdReprNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.h), !noalias !101
  br label %_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs2_1__NtB5_6IdReprNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.c, align 8, !alias.scope !101, !noundef !5 ; 2 uses
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.k = icmp sgt i32 %i.j, -1
  %.sroa.0.0.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.j, i1 false) ; 6 uses
  %i.l = icmp ugt i32 %.sroa.0.0.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %bb.d
  %.sroa.09.0.lcssa.i.i.i.i = phi i64 [ 11, %bb.d ], [ 7, %.lr.ph.i.i.i.i ], [ 3, %.lr.ph.i.i.i.i.1 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ], [ %3, %.lr.ph.i.i.i.i.1 ] ; 3 uses
  %i.m = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i, 99
  br i1 %i.m, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.n = urem i32 %.sroa.0.0.i.i.i.i, 10000
  %i.o = udiv i32 %.sroa.0.0.i.i.i.i, 10000       ; 2 uses
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i32 %i.n to i16 ; 2 uses
  %i.p = udiv i16 %.lhs.trunc.i.i.i.i, 100
  %i.q = shl nuw nsw i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i64
  %i.s = urem i16 %.lhs.trunc.i.i.i.i, 100
  %i.t = shl nuw nsw i16 %i.s, 1
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @63, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.x = load i16, ptr %i.v, align 1, !noalias !105
  store i16 %i.x, ptr %i.w, align 1, !alias.scope !104, !noalias !103
  %i.y = getelementptr inbounds nuw i8, ptr @63, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.aa = load i16, ptr %i.y, align 1, !noalias !105
  store i16 %i.aa, ptr %i.z, align 1, !alias.scope !104, !noalias !103
  %i.ab = icmp ugt i32 %.sroa.0.0.i.i.i.i, 99999999
  br i1 %i.ab, label %.lr.ph.i.i.i.i.1, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %2 = urem i32 %i.o, 10000
  %3 = udiv i32 %.sroa.0.0.i.i.i.i, 100000000
  %.lhs.trunc.i.i.i.i.1 = trunc nuw nsw i32 %2 to i16 ; 2 uses
  %4 = udiv i16 %.lhs.trunc.i.i.i.i.1, 100
  %5 = shl nuw nsw i16 %4, 1
  %6 = zext nneg i16 %5 to i64
  %7 = urem i16 %.lhs.trunc.i.i.i.i.1, 100
  %8 = shl nuw nsw i16 %7, 1
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr @63, i64 %6
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %12 = load i16, ptr %10, align 1, !noalias !105
  store i16 %12, ptr %11, align 1, !alias.scope !104, !noalias !103
  %13 = getelementptr inbounds nuw i8, ptr @63, i64 %9
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %15 = load i16, ptr %13, align 1, !noalias !105
  store i16 %15, ptr %14, align 1, !alias.scope !104, !noalias !103
  br label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %.lhs.trunc24.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i to i16 ; 2 uses
  %i.ac = urem i16 %.lhs.trunc24.i.i.i.i, 100
  %i.ad = shl nuw nsw i16 %i.ac, 1
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = udiv i16 %.lhs.trunc24.i.i.i.i, 100
  %.zext27.i.i.i.i = zext nneg i16 %i.af to i32
  %i.ag = add i64 %.sroa.09.0.lcssa.i.i.i.i, -2   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @63, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.aj = load i16, ptr %i.ah, align 1, !noalias !105
  store i16 %i.aj, ptr %i.ai, align 1, !alias.scope !104, !noalias !103
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.sroa.09.1.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %.sroa.09.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i32 [ %.zext27.i.i.i.i, %bb.e ], [ %.sroa.0.1.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ak = icmp samesign ult i32 %.sroa.0.2.i.i.i.i, 10
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = shl nuw nsw i32 %.sroa.0.2.i.i.i.i, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.09.1.i.i.i.i, -2         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @63, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.aq = load i16, ptr %i.ao, align 1, !noalias !105
  store i16 %i.aq, ptr %i.ap, align 1, !alias.scope !104, !noalias !103
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = add i64 %.sroa.09.1.i.i.i.i, -1         ; 2 uses
  %i.as = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.au = or disjoint i8 %i.as, 48
  store i8 %i.au, ptr %i.at, align 1, !alias.scope !104, !noalias !103
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.09.2.i.i.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  br i1 %i.k, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_i32CshzDG46PUpLf_10lsp_server.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add i64 %.sroa.09.2.i.i.i.i, -1         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 45, ptr %i.aw, align 1, !alias.scope !104, !noalias !103
  br label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_i32CshzDG46PUpLf_10lsp_server.exit.i

_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_i32CshzDG46PUpLf_10lsp_server.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.09.3.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ax = sub i64 11, %.sroa.09.3.i.i.i.i         ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i
  %i.az = icmp ult i64 %i.ax, 12
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.ax), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  br label %_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs2_1__NtB5_6IdReprNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_.exit

_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs2_1__NtB5_6IdReprNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_.exit: ; preds = %bb.b, %bb.c, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_i32CshzDG46PUpLf_10lsp_server.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_i32CshzDG46PUpLf_10lsp_server.exit.i ], [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCshzDG46PUpLf_10lsp_server3msgs1_1__NtB5_9RequestIdNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content22ContentRefDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !109 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !110
  call void @_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer24___deserialize_content_v1NtB6_14ContentVisitorECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !111
  %i.g = load i8, ptr %i.e, align 8, !range !15, !noalias !110, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !110, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !110
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !110
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !110
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx.i, i64 16, i1 false), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !110
  store i8 %i.g, ptr %i.f, align 8, !noalias !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  invoke void @_RINvMs9_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorE19deserialize_integerNtNvXsR_NtNtCs6nZeqdiIoCH_10serde_core2de5implslNtB2v_11Deserialize11deserialize16PrimitiveVisitorECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.d unwind label %.body.i, !noalias !111

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit40.i, %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit26.i, %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %i.f) #18
          to label %bb.m unwind label %bb.l, !noalias !111

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.c, align 8, !range !16, !noalias !110, !noundef !5
  %i.m = trunc nuw i32 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noalias !110, !noundef !5
  store i32 %i.p, ptr %i.n, align 8, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  %.sroa.8.0.copyload4 = load ptr, ptr %i.n, align 8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !110
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !110, !nonnull !5, !align !7, !noundef !5
  store ptr %i.r, ptr %i.n, align 8, !noalias !110
  store i64 -2, ptr %i.d, align 8, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5error5ErrorECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit26.i unwind label %.body.i, !noalias !111

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit26.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  invoke void @_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_strNtNtB22_5impls13StringVisitorECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.g unwind label %.body.i, !noalias !111

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit26.i
  %i.s = load i64, ptr %i.a, align 8, !range !8, !noalias !110, !noundef !5
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %.thread41.i, label %bb.h

.thread41.i:                                      ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !110, !nonnull !5, !align !7, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.v, ptr %i.w, align 8, !noalias !110
  store i64 -2, ptr %i.b, align 8, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !110
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !110 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  %i.x = icmp eq i64 %.pr.i, -2
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0.copyload6 = load ptr, ptr %.sroa.8.0..sroa_idx5, align 8, !noalias !112
  %.sroa.11.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.11.0.copyload10 = load i64, ptr %.sroa.11.0..sroa_idx9, align 8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  br label %bb.o

bb.j:                                             ; preds = %bb.h, %.thread41.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5error5ErrorECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit40.i unwind label %.body.i, !noalias !111

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit40.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  %i.z = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCscvBHLZPbXnS_10serde_json5errorNtB6_5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error6customReECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 54)
          to label %bb.k unwind label %.body.i, !noalias !111

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg6IdReprNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEEB11_.exit40.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %i.f), !noalias !111
  br label %bb.n

bb.l:                                             ; preds = %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !111
  unreachable

bb.m:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.k

bb.n:                                             ; preds = %bb.b, %bb.k
  %.sroa.8.1.ph = phi ptr [ %i.z, %bb.k ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !110
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1.ph, ptr %i.ab, align 8
  store i64 -2, ptr %0, align 8
end_hunk_0
