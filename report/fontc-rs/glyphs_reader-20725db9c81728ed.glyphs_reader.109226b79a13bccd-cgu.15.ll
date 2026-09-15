Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.15?download=true
inline.NumInlined: 578
inline.NumDeleted: 359
begin_hunk_0_@_RNvNtCs1qcNTItuk7F_13glyphs_reader17corner_components34insert_corner_components_for_layer:bb.a
  br i1 %i.ey, label %bb.az, label %.backedge

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az) #28
          to label %.backedge unwind label %.loopexit214

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ax

bb.bb:                                            ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEBF_.exit, %bb.bc
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bc:                                            ; preds = %bb.d, %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #30
          to label %common.resume unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_name(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8
  %i.c = icmp eq i64 %1, 6855
  br i1 %i.c, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 6856, ptr %i.a, align 8
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = mul i64 %1, 3                            ; 4 uses
  %i.e = add i64 %i.d, 3                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 20565
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.d, -4
  br i1 %i.g, label %bb.d, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.e, i64 noundef 20565, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33
  unreachable

bb.e:                                             ; preds = %bb.b
  call fastcc void @_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset0B5_(i64 20565, ptr noundef nonnull align 8 %i.b) #31
  unreachable

_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @9, i64 %i.d ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1
  %i.j = load i16, ptr %i.i, align 1, !alias.scope !1132
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 8
  %i.m = load i8, ptr %i.h, align 1, !alias.scope !1132, !noundef !4
  %i.n = zext i8 %i.m to i64
  %i.o = or disjoint i64 %i.l, %i.n               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = add i64 %1, 1                            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp eq i64 %i.p, 6855
  br i1 %i.q, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit14, label %bb.f

bb.f:                                             ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit
  %i.r = mul i64 %i.p, 3                          ; 4 uses
  %i.s = add i64 %i.r, 3                          ; 2 uses
  %i.t = icmp ugt i64 %i.s, 20565
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ugt i64 %i.r, -4
  br i1 %i.u, label %bb.h, label %bb.i, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.s, i64 noundef 20565, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr @9, i64 %i.r ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 1
  %i.x = load i16, ptr %i.w, align 1, !alias.scope !1133
  %i.y = zext i16 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 8
  %i.aa = load i8, ptr %i.v, align 1, !alias.scope !1133, !noundef !4
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.z, %i.ab
  br label %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit14

bb.j:                                             ; preds = %.thread, %bb.f
  call fastcc void @_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset0B5_(i64 20565, ptr noundef nonnull align 8 %i.a) #31
  unreachable

_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit14: ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit, %bb.i
  %.sroa.0.1.i13 = phi i64 [ 87695, %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit ], [ %i.ac, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = icmp samesign uge i64 %.sroa.0.1.i13, %i.o
  %i.ae = icmp samesign ult i64 %.sroa.0.1.i13, 87696
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit14
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %.sroa.0.1.i13, i64 noundef 87695, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable

bb.l:                                             ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit14
  %i.af = sub nuw nsw i64 %.sroa.0.1.i13, %i.o    ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.af, 2
  br i1 %i.ag, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs1qcNTItuk7F_13glyphs_reader.exit, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #33, !noalias !1134
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr @34, i64 %i.o ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aj = add nsw i64 %i.af, -3
  %i.ak = getelementptr i8, ptr %i.ah, i64 1
  %i.al = load i16, ptr %i.ak, align 1, !alias.scope !1135
  %i.am = zext i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = load i8, ptr %i.ah, align 1, !alias.scope !1135, !noundef !4
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.an, %i.ap
  store i8 24, ptr %0, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %.sroa.68.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aq, ptr %i.ar, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.k
  %.sroa.01.022.i = phi i32 [ %.sroa.01.1.i, %bb.k ], [ 78575, %bb.a ] ; 2 uses
  %.sroa.03.021.i = phi i32 [ %.sroa.03.1.i, %bb.k ], [ 0, %bb.a ] ; 2 uses
  %i.c = add i32 %.sroa.03.021.i, %.sroa.01.022.i ; 2 uses
  %i.d = sdiv i32 %i.c, 2                         ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1151
  store i64 %i.e, ptr %i.b, align 8, !noalias !1151
  %i.f = and i32 %i.c, -2
  %i.g = icmp eq i32 %i.f, 157152
  br i1 %i.g, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1151
  store i64 78577, ptr %i.a, align 8, !noalias !1151
  call fastcc void @_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset0B5_(i64 235728, ptr noundef nonnull align 8 %i.a) #31
  unreachable

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = mul nsw i64 %i.e, 3                      ; 4 uses
  %i.i = add nsw i64 %i.h, 3                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 235728
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.h, -4
  br i1 %i.k, label %bb.d, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit.i.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.i, i64 noundef 235728, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33, !noalias !1151
  unreachable

bb.e:                                             ; preds = %bb.b
  call fastcc void @_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset0B5_(i64 235728, ptr noundef nonnull align 8 %i.b) #31
  unreachable

_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr @37, i64 %i.h ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = load i16, ptr %i.m, align 1, !alias.scope !1152, !noalias !1151
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = load i8, ptr %i.l, align 1, !alias.scope !1152, !noalias !1151, !noundef !4
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.p, %i.r               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1151
  %i.t = add nsw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1151
  %i.u = icmp eq i64 %i.t, 78576
  br i1 %i.u, label %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit6.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit.i.i.i
  %i.v = mul nuw nsw i64 %i.t, 3
  %i.w = getelementptr inbounds nuw i8, ptr @37, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %i.y = load i16, ptr %i.x, align 1, !alias.scope !1153, !noalias !1151
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = load i8, ptr %i.w, align 1, !alias.scope !1153, !noalias !1151, !noundef !4
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  br label %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit6.i.i.i

_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit6.i.i.i: ; preds = %bb.f, %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit.i.i.i
  %.sroa.0.1.i5.i.i.i = phi i64 [ 720809, %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit.i.i.i ], [ %i.ad, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1151
  %i.ae = icmp samesign uge i64 %.sroa.0.1.i5.i.i.i, %i.s
  %i.af = icmp samesign ult i64 %.sroa.0.1.i5.i.i.i, 720810
  %or.cond.i.i.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i, label %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit6.i.i.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %.sroa.0.1.i5.i.i.i, i64 noundef 720809, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #33, !noalias !1151
  unreachable

_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i: ; preds = %_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled6offset.exit6.i.i.i
  %i.ag = sub nuw nsw i64 %.sroa.0.1.i5.i.i.i, %i.s ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @45, i64 %i.s
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %1)
  %i.ai = tail call i32 @memcmp(ptr nonnull readonly %i.ah, ptr nonnull readonly %0, i64 %spec.store.select.i.i.i), !alias.scope !1154 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp eq i32 %i.ai, 0
  %i.al = sub i64 %i.ag, %1
  %spec.select.i.i.i = select i1 %i.ak, i64 %i.al, i64 %i.aj
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  switch i8 %i.am, label %bb.h [
    i8 -1, label %bb.i
    i8 0, label %_RINvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled7bsearchReNCNvB2_16find_pos_by_name0EB4_.exit
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i
  unreachable

bb.i:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i
  %i.an = add nsw i32 %i.d, 1
  br label %bb.k

bb.j:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i
  %i.ao = add nsw i32 %i.d, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.03.1.i = phi i32 [ %i.an, %bb.i ], [ %.sroa.03.021.i, %bb.j ] ; 2 uses
  %.sroa.01.1.i = phi i32 [ %.sroa.01.022.i, %bb.i ], [ %i.ao, %bb.j ] ; 2 uses
  %.not.i = icmp sgt i32 %.sroa.03.1.i, %.sroa.01.1.i
  br i1 %.not.i, label %_RINvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled7bsearchReNCNvB2_16find_pos_by_name0EB4_.exit, label %.lr.ph.i

_RINvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled7bsearchReNCNvB2_16find_pos_by_name0EB4_.exit: ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i, %bb.k
  %.sroa.0.0.i = phi i64 [ 0, %bb.k ], [ 1, %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16find_pos_by_name0B5_.exit.i ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %i.e, 1
  ret { i64, i64 } %i.aq
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.a
  %.sroa.01.023.i = phi i32 [ %.sroa.01.1.i, %bb.g ], [ 71400, %bb.a ] ; 2 uses
  %.sroa.03.022.i = phi i32 [ %.sroa.03.1.i, %bb.g ], [ 0, %bb.a ] ; 2 uses
  %i.b = add i32 %.sroa.03.022.i, %.sroa.01.023.i
  %i.c = sdiv i32 %i.b, 2                         ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 6                      ; 4 uses
  %i.f = add nsw i64 %i.e, 6                      ; 2 uses
  %i.g = icmp ugt i64 %i.f, 428406
  br i1 %i.g, label %_RNvMs0_NtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundledINtB5_7ArrayOfTjjEE3getB7_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = icmp ugt i64 %i.e, -7
  br i1 %i.h, label %bb.c, label %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.f, i64 noundef 428406, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33, !noalias !1163
  unreachable

_RNvMs0_NtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundledINtB5_7ArrayOfTjjEE3getB7_.exit.i.i: ; preds = %.lr.ph.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #33
  unreachable

_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr @10, i64 %i.e ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %i.k = load i16, ptr %i.j, align 1, !alias.scope !1164, !noalias !1163
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = load i8, ptr %i.i, align 1, !alias.scope !1164, !noalias !1163, !noundef !4
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.p, i64 range(i64 0, 4294967296) %i.a)
  switch i8 %i.q, label %bb.d [
    i8 -1, label %bb.e
    i8 0, label %.split.loop.exit.i
    i8 1, label %bb.f
  ]

.split.loop.exit.i:                               ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.s = getelementptr i8, ptr %i.i, i64 4
  %i.t = load i16, ptr %i.s, align 1, !alias.scope !1165, !noalias !1163
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = load i8, ptr %i.r, align 1, !alias.scope !1165, !noalias !1163, !noundef !4
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.v, %i.x
  br label %_RINvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled7bsearchjNCNvB2_21find_pos_by_codepoint0EB4_.exit

bb.d:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i
  unreachable

bb.e:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i
  %i.z = add nsw i32 %i.c, 1
  br label %bb.g

bb.f:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i
  %i.aa = add nsw i32 %i.c, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.03.1.i = phi i32 [ %i.z, %bb.e ], [ %.sroa.03.022.i, %bb.f ] ; 2 uses
  %.sroa.01.1.i = phi i32 [ %.sroa.01.023.i, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %.not.i = icmp sgt i32 %.sroa.03.1.i, %.sroa.01.1.i
  br i1 %.not.i, label %_RINvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled7bsearchjNCNvB2_21find_pos_by_codepoint0EB4_.exit, label %.lr.ph.i

_RINvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled7bsearchjNCNvB2_21find_pos_by_codepoint0EB4_.exit: ; preds = %bb.g, %.split.loop.exit.i
  %.sroa.3.0.i = phi i64 [ %i.y, %.split.loop.exit.i ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi i64 [ 1, %.split.loop.exit.i ], [ 0, %bb.g ]
  %i.ab = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ac = insertvalue { i64, i64 } %i.ab, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_prod_name(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = load i8, ptr %0, align 8, !range !8, !noundef !4
  %i.e = icmp samesign ugt i8 %i.d, 25
  br i1 %i.e, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.01.0 = load i32, ptr %.sroa.01.0.in, align 4, !noundef !4 ; 4 uses
  %i.f = icmp ult i32 %.sroa.01.0, 917632
  br i1 %i.f, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i32 %.sroa.01.0 to i8
  %i.h = and i8 %i.g, 7
  %i.i = shl nuw i8 1, %i.h
  %i.j = lshr i32 %.sroa.01.0, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @38, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = and i8 %i.m, %i.i
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %.sroa.01.0 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.d
  %.sroa.01.023.i.i = phi i32 [ %.sroa.01.1.i.i, %bb.j ], [ 71400, %bb.d ] ; 2 uses
  %.sroa.03.022.i.i = phi i32 [ %.sroa.03.1.i.i, %bb.j ], [ 0, %bb.d ] ; 2 uses
  %i.p = add i32 %.sroa.03.022.i.i, %.sroa.01.023.i.i
  %i.q = sdiv i32 %i.p, 2                         ; 3 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 6                      ; 4 uses
  %i.t = add nsw i64 %i.s, 6                      ; 2 uses
  %i.u = icmp ugt i64 %i.t, 428406
  br i1 %i.u, label %_RNvMs0_NtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundledINtB5_7ArrayOfTjjEE3getB7_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.v = icmp ugt i64 %i.s, -7
  br i1 %i.v, label %bb.f, label %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i.i, !prof !13

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.t, i64 noundef 428406, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.f
  unreachable

_RNvMs0_NtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundledINtB5_7ArrayOfTjjEE3getB7_.exit.i.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #33
          to label %.noexc7 unwind label %bb.ao

.noexc7:                                          ; preds = %_RNvMs0_NtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundledINtB5_7ArrayOfTjjEE3getB7_.exit.i.i.i
  unreachable

_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr @10, i64 %i.s ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %i.y = load i16, ptr %i.x, align 1, !alias.scope !1222, !noalias !1223
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = load i8, ptr %i.w, align 1, !alias.scope !1222, !noalias !1223, !noundef !4
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.ad, i64 range(i64 0, 4294967296) %i.o)
  switch i8 %i.ae, label %bb.g [
    i8 -1, label %bb.h
    i8 0, label %.split.loop.exit.i.i
    i8 1, label %bb.i
  ]

.split.loop.exit.i.i:                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ag = getelementptr i8, ptr %i.w, i64 4
  %i.ah = load i16, ptr %i.ag, align 1, !alias.scope !1224, !noalias !1223
  %i.ai = zext i16 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 8
  %i.ak = load i8, ptr %i.af, align 1, !alias.scope !1224, !noalias !1223, !noundef !4
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.aj, %i.al
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit

bb.g:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i.i
  unreachable

bb.h:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i.i
  %i.an = add nsw i32 %i.q, 1
  br label %bb.j

bb.i:                                             ; preds = %_RNCNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled21find_pos_by_codepoint0B5_.exit.i.i
  %i.ao = add nsw i32 %i.q, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.1.i.i = phi i32 [ %i.an, %bb.h ], [ %.sroa.03.022.i.i, %bb.i ] ; 2 uses
  %.sroa.01.1.i.i = phi i32 [ %.sroa.01.023.i.i, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.sroa.03.1.i.i, %.sroa.01.1.i.i
  br i1 %.not.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit, label %.lr.ph.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit: ; preds = %bb.j, %bb.c, %bb.b, %.split.loop.exit.i.i, %bb.an
  %.sroa.0.0.pn = phi i64 [ %.sroa.0.0.i, %bb.an ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %.split.loop.exit.i.i ], [ 0, %bb.j ]
  %.sroa.4.0.pn = phi i64 [ %i.bh, %bb.an ], [ undef, %bb.b ], [ undef, %bb.c ], [ %i.am, %.split.loop.exit.i.i ], [ undef, %bb.j ]
  %.pn = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.pn, 0
  %.merged = insertvalue { i64, i64 } %.pn, i64 %.sroa.4.0.pn, 1
  ret { i64, i64 } %.merged

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br label %bb.m

._crit_edge.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit15.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.ay = load i8, ptr %i.c, align 8, !range !8, !alias.scope !1227, !noundef !4 ; 3 uses
  %i.az = icmp samesign ugt i8 %i.ay, 25
  %i.ba = and i8 %i.ay, 30
  %switch1.i.i = icmp eq i8 %i.ba, 26
  %switch.i.i = and i1 %i.az, %switch1.i.i
  br i1 %switch.i.i, label %bb.an, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %switch.i.i.i.i = icmp samesign ult i8 %i.ay, 25
  br i1 %switch.i.i.i.i, label %bb.an, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.bb = load ptr, ptr %i.at, align 8, !alias.scope !1232, !nonnull !4, !noundef !4
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !1232
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit.sink.split.i, label %bb.an

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit15.i, %.lr.ph.i
  %.sroa.01.033.i = phi i32 [ 6854, %.lr.ph.i ], [ %.sroa.01.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit15.i ] ; 2 uses
  %.sroa.03.032.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.03.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit15.i ] ; 2 uses
  %i.be = add i32 %.sroa.03.032.i, %.sroa.01.033.i
  %i.bf = sdiv i32 %i.be, 2                       ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1225
  invoke fastcc void @_RNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_name(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 -1073741824, 1073741824) %i.bg)
          to label %_RNvYNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_nameINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEE4callB6_.exit.i unwind label %.loopexit.i, !noalias !1225

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_.exit.sink.split.i: ; preds = %bb.al, %bb.l
  %.sroa.0.0.ph.i = phi i64 [ 1, %bb.al ], [ 0, %bb.l ]
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at) #28
  br label %bb.an

.loopexit.i:                                      ; preds = %bb.aj, %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.thread unwind label %bb.am

_RNvYNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_nameINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEE4callB6_.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1225
  %i.bh = load i64, ptr %i.ap, align 8, !noalias !1225, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1225
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.bi = load i8, ptr %i.b, align 8, !range !8, !alias.scope !1233, !noalias !1235, !noundef !4 ; 8 uses
  %i.bj = add nsw i8 %i.bi, -26
  %i.bk = icmp samesign ugt i8 %i.bi, 25          ; 3 uses
  %narrow.i.i = select i1 %i.bk, i8 %i.bj, i8 2   ; 3 uses
  %i.bl = load i8, ptr %i.c, align 8, !range !8, !alias.scope !1235, !noalias !1233, !noundef !4 ; 4 uses
  %i.bm = add nsw i8 %i.bl, -26
  %i.bn = icmp samesign ugt i8 %i.bl, 25
  %narrow2.i.i = select i1 %i.bn, i8 %i.bm, i8 2  ; 2 uses
  %i.bo = call i8 @llvm.ucmp.i8.i8(i8 %narrow.i.i, i8 %narrow2.i.i)
  %i.bp = icmp eq i8 %narrow.i.i, %narrow2.i.i
  br i1 %i.bp, label %bb.o, label %_RNvXsL_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_14ProductionNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i

bb.o:                                             ; preds = %_RNvYNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_nameINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEE4callB6_.exit.i
  switch i8 %narrow.i.i, label %bb.p [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = load i32, ptr %i.aw, align 4, !alias.scope !1233, !noalias !1235, !noundef !4
  %i.br = load i32, ptr %i.ax, align 4, !alias.scope !1235, !noalias !1233, !noundef !4
  %i.bs = call i8 @llvm.ucmp.i8.i32(i32 %i.bq, i32 %i.br)
  br label %_RNvXsL_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_14ProductionNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i

bb.r:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %i.aw, align 4, !alias.scope !1233, !noalias !1235, !noundef !4
  %i.bu = load i32, ptr %i.ax, align 4, !alias.scope !1235, !noalias !1233, !noundef !4
  %i.bv = call i8 @llvm.ucmp.i8.i32(i32 %i.bt, i32 %i.bu)
  br label %_RNvXsL_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_14ProductionNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.bw = icmp samesign ugt i8 %i.bi, 23
  %i.bx = zext nneg i8 %i.bi to i64               ; 2 uses
  %i.by = add nsw i64 %i.bx, -23
  %i.bz = select i1 %i.bw, i64 %i.by, i64 0
  switch i64 %i.bz, label %bb.t [
    i64 0, label %bb.w
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.w, %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.aq, align 8, !alias.scope !1238, !noalias !1239, !nonnull !4, !noundef !4
  %i.cb = load i64, ptr %i.ar, align 8, !alias.scope !1238, !noalias !1239, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.aq, align 8, !alias.scope !1238, !noalias !1239, !nonnull !4, !noundef !4
  %i.cd = load i64, ptr %i.ar, align 8, !alias.scope !1238, !noalias !1239, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.4.0.i.i.i = phi i64 [ %i.cd, %bb.v ], [ %i.cb, %bb.u ], [ %i.bx, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ce, %bb.v ], [ %i.ca, %bb.u ], [ %i.as, %bb.s ]
  %i.cf = icmp samesign ugt i8 %i.bl, 23
  %i.cg = zext nneg i8 %i.bl to i64               ; 2 uses
  %i.ch = add nsw i64 %i.cg, -23
  %i.ci = select i1 %i.cf, i64 %i.ch, i64 0
  switch i64 %i.ci, label %bb.t [
    i64 0, label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %i.at, align 8, !alias.scope !1239, !noalias !1238, !nonnull !4, !noundef !4
  %i.ck = load i64, ptr %i.au, align 8, !alias.scope !1239, !noalias !1238, !noundef !4
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.cl = load ptr, ptr %i.at, align 8, !alias.scope !1239, !noalias !1238, !nonnull !4, !noundef !4
  %i.cm = load i64, ptr %i.au, align 8, !alias.scope !1239, !noalias !1238, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i

_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %.sroa.42.0.i.i.i = phi i64 [ %i.cm, %bb.y ], [ %i.ck, %bb.x ], [ %i.cg, %bb.w ] ; 2 uses
  %.sroa.01.0.i.i.i = phi ptr [ %i.cn, %bb.y ], [ %i.cj, %bb.x ], [ %i.av, %bb.w ]
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.42.0.i.i.i)
  %i.co = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.01.0.i.i.i, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp eq i32 %i.co, 0
  %i.cr = sub i64 %.sroa.4.0.i.i.i, %.sroa.42.0.i.i.i
  %spec.select.i.i.i = select i1 %i.cq, i64 %i.cr, i64 %i.cp
  %i.cs = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNvXsL_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_14ProductionNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i

_RNvXsL_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_14ProductionNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i: ; preds = %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i, %bb.r, %bb.q, %_RNvYNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_nameINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEE4callB6_.exit.i
  %.sroa.0.0.i.i8 = phi i8 [ %i.bs, %bb.q ], [ %i.bv, %bb.r ], [ %i.cs, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i ], [ %i.bo, %_RNvYNvNtCs1qcNTItuk7F_13glyphs_reader17glyphdata_bundled16custom_prod_nameINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTjEE4callB6_.exit.i ]
  switch i8 %.sroa.0.0.i.i8, label %bb.z [
    i8 -1, label %bb.aa
    i8 0, label %bb.ab
    i8 1, label %bb.af
  ]

end_hunk_0
