inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
          to label %bb.ho unwind label %bb.hm

bb.hl:                                            ; preds = %bb.fg
  tail call void @llvm.trap()
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !12516
  %i.rx = icmp eq i64 %i.rw, 1
  br i1 %i.rx, label %bb.hn, label %common.resume

bb.hn:                                            ; preds = %bb.hm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg) #40
          to label %common.resume unwind label %bb.fp

bb.ho:                                            ; preds = %bb.hk
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.pa, ptr %i.ry, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.cf, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.fj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Cs3fLsjMQPbhe_8smallvecNtB5_18CollectionAllocErrNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !63, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @576, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @577, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @575)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @574, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12521, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !12521, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !12521, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !12521
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !12524
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12527, !noalias !12524, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12527, !noalias !12524, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !12527, !noalias !12524
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !12527, !noalias !12524
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs3JXekYNd0JR_7dashmap4iterINtB4_10OwningIterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_3vec3VecbEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.9.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.pre = load i64, ptr %1, align 8, !range !1137
  %i.k = icmp eq i64 %.pre, -9223372036854775807
  br i1 %i.k, label %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1Z_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12531)
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !12531, !noalias !12534, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12536)
  %i.n = load i16, ptr %i.d, align 8, !alias.scope !12539, !noalias !12534, !noundef !4 ; 2 uses
  %.not11.i.i = icmp eq i16 %i.n, 0
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !12539, !noalias !12534 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %.promoted13.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12539, !noalias !12534
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.d
  store ptr %i.s, ptr %i.e, align 8, !alias.scope !12539, !noalias !12534
  store ptr %i.r, ptr %i.c, align 8, !alias.scope !12539, !noalias !12534
  br label %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.o = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.p = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.d ]
  %.val79.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !12540
  %i.q = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -768 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.q to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %._crit_edge.i.i

_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %._crit_edge.i.i
  %i.t = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.c ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.u = add i16 %.lcssa.i.i, -1
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = and i16 %i.u, %.lcssa.i.i
  store i16 %i.x, ptr %i.d, align 8, !alias.scope !12539, !noalias !12534
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [48 x i8], ptr %i.t, i64 %i.y ; 3 uses
  %i.aa = add i64 %i.l, -1
  store i64 %i.aa, ptr %i.b, align 8, !alias.scope !12531, !noalias !12534
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -48
  %.sroa.0.0.copyload = load i64, ptr %i.ab, align 8, !noalias !12531 ; 2 uses
  %.not3 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not3, label %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.e

_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit, %bb.b, %bb.a
  %i.ac = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.ad = load i64, ptr %i.g, align 8, !noundef !4
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, %bb.e
  %storemerge = phi i64 [ %.sroa.0.0.copyload, %bb.e ], [ -9223372036854775808, %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %_RNvXsA_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB15_3vec3VecbEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread
  %i.ag = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, i64 noundef %i.ac) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false)
  %i.ai = cmpxchg ptr %i.ag, i64 -4, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ai, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.u

common.resume.i:                                  ; preds = %.body.i, %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.s ], [ %i.bu, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  store i64 %.sink.i.i, ptr %1, align 8
  store i64 %.sroa.48.0.i, ptr %i.j, align 8
  store ptr %.sroa.59.0.i, ptr %i.i, align 8
  store ptr %.sroa.018.0.copyload, ptr %i.c, align 8
  store ptr %i.as, ptr %i.e, align 8
  store ptr %i.av, ptr %.sroa.9.0..sroa_idx36, align 8
  store <16 x i1> %i.at, ptr %i.d, align 8
  store i64 %.sroa.521.0.copyload, ptr %i.b, align 8
  br label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.sroa.018.0.copyload = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %.sroa.419.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8 ; 4 uses
  %.sroa.521.0.copyload = load i64, ptr %.sroa.521.0..sroa_idx, align 8 ; 2 uses
  %.val13.i.i = load <16 x i8>, ptr %.sroa.018.0.copyload, align 16, !noalias !12541
  %i.aj = icmp eq i64 %.sroa.419.0.copyload, 0
  br i1 %i.aj, label %bb.i, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit
  %i.ak = mul i64 %.sroa.419.0.copyload, 48       ; 2 uses
  %i.al = add i64 %i.ak, 48                       ; 2 uses
  %i.am = add i64 %.sroa.419.0.copyload, 17
  %i.an = add i64 %i.am, %i.al                    ; 3 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = sub i64 -48, %i.ak
  %i.ar = getelementptr inbounds i8, ptr %.sroa.018.0.copyload, i64 %i.aq
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.48.0.i = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit ], [ %i.an, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i ] ; 2 uses
  %.sroa.59.0.i = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit ], [ %i.ar, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i ] ; 2 uses
  %.sink.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit ], [ 16, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 16 ; 2 uses
  %i.at = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1) ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.018.0.copyload, i64 %.sroa.419.0.copyload
  %i.av = getelementptr i8, ptr %i.au, i64 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12547)
  %i.aw = load i64, ptr %1, align 8, !range !1137, !alias.scope !12547, !noundef !4 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1Z_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  %i.ay = load i64, ptr %i.b, align 8, !alias.scope !12559, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMsn_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB10_3vec3VecbEEEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j
  %.promoted.i.i.i = load i16, ptr %i.d, align 8, !alias.scope !12560
  %.promoted2.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !12563
  %.promoted5.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12563
  br label %bb.k

bb.k:                                             ; preds = %.noexc5, %.preheader.i.i.i.i
  %.promoted13.i.i7.i.i.i = phi ptr [ %.promoted5.i.i.i, %.preheader.i.i.i.i ], [ %.promoted13.i.i6.i.i.i, %.noexc5 ] ; 2 uses
  %.lcssa14.i.i.i = phi ptr [ %.promoted2.i.i.i, %.preheader.i.i.i.i ], [ %.lcssa13.i.i.i, %.noexc5 ] ; 2 uses
  %i.ba = phi i16 [ %.promoted.i.i.i, %.preheader.i.i.i.i ], [ %i.bk, %.noexc5 ] ; 2 uses
  %i.bb = phi i64 [ %i.ay, %.preheader.i.i.i.i ], [ %i.bn, %.noexc5 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12564)
  %.not11.i.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.bg, ptr %i.e, align 8, !alias.scope !12560
  store ptr %i.bf, ptr %i.c, align 8, !alias.scope !12560
  br label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.promoted13.i.i7.i.i.i, %bb.k ] ; 2 uses
  %i.bd = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.lcssa14.i.i.i, %bb.k ]
  %.val79.i.i.i.i.i = load <16 x i8>, ptr %i.bc, align 16, !noalias !12560
  %i.be = icmp sgt <16 x i8> %.val79.i.i.i.i.i, splat (i8 -1)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -768 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.be to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.k
  %.promoted13.i.i6.i.i.i = phi ptr [ %i.bg, %._crit_edge.i.i.i.i.i ], [ %.promoted13.i.i7.i.i.i, %bb.k ]
  %.lcssa13.i.i.i = phi ptr [ %i.bf, %._crit_edge.i.i.i.i.i ], [ %.lcssa14.i.i.i, %bb.k ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.bh = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = and i16 %i.bh, %.lcssa.i.i.i.i.i        ; 2 uses
  store i16 %i.bk, ptr %i.d, align 8, !alias.scope !12560
  %i.bl = sub nsw i64 0, %i.bj
  %i.bm = getelementptr inbounds [48 x i8], ptr %.lcssa13.i.i.i, i64 %i.bl ; 3 uses
  %i.bn = add i64 %i.bb, -1                       ; 3 uses
  store i64 %i.bn, ptr %i.b, align 8, !alias.scope !12559
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %.body.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.br, %bb.n ], [ %i.bp, %bb.l ]
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.bs) #38
          to label %common.resume.i unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bm, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.noexc5 unwind label %bb.s

bb.q:                                             ; preds = %.body.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.noexc5:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit.i
  %.old3.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.old3.i.i.i.i, label %_RNvMsn_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB10_3vec3VecbEEEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.k

_RNvMsn_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB10_3vec3VecbEEEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.noexc5, %bb.j
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1Z_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMsn_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB10_3vec3VecbEEEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bx = load ptr, ptr %i.i, align 8, !alias.scope !12563, !nonnull !4, !noundef !4
  %i.by = load i64, ptr %i.j, align 8, !alias.scope !12563, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #41, !noalias !12563
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1Z_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1Z_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %_RNvMsn_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB10_3vec3VecbEEEE13drop_elementsCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.i
  store i64 %.sink.i.i, ptr %1, align 8
  store i64 %.sroa.48.0.i, ptr %i.j, align 8
  store ptr %.sroa.59.0.i, ptr %i.i, align 8
  store ptr %.sroa.018.0.copyload, ptr %i.c, align 8
  store ptr %i.as, ptr %i.e, align 8
  store ptr %i.av, ptr %.sroa.9.0..sroa_idx36, align 8
  store <16 x i1> %i.at, ptr %i.d, align 8
  store i64 %.sroa.521.0.copyload, ptr %i.b, align 8
  %i.ca = load i64, ptr %i.f, align 8, !noundef !4
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.t:                                             ; preds = %common.resume.i, %bb.u
  %.pn47 = phi { ptr, i32 } [ %i.cc, %bb.u ], [ %eh.lpad-body, %common.resume.i ]
  resume { ptr, i32 } %.pn47

bb.u:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1z_3vec3VecbEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.a) #38
          to label %bb.t unwind label %bb.v

end_hunk_0
