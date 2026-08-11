inline.NumInlined: 14058
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11trusted_lenINtNtB9_5utils6NoNullINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeEEINtNtNtCs8774dFTUdNv_12polars_arrow6legacy5utils22FromTrustedLenIteratormE24from_iter_trusted_lengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3X_3ops5range5RangemENCNvNtB7_6random34create_rand_index_with_replacement0EEB9_:bb.a
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.split.i.i, !dbg !70434

bb.d:                                             ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #52
          to label %common.resume unwind label %bb.e, !dbg !70579, !noalias !70398

bb.e:                                             ; preds = %bb.d
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70580, !noalias !70398
  unreachable, !dbg !70580

common.resume:                                    ; preds = %bb.f, %.thread12, %bb.t, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %bb.d ], [ %eh.lpad-body, %.thread12 ], [ %eh.lpad-body, %bb.f ], [ %i.cz, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !70581

bb.f:                                             ; preds = %.body
  br i1 %.sroa.01.1.lpad-body, label %.thread12, label %common.resume, !dbg !70582

bb.g:                                             ; preds = %.loopexit, %bb.l
  %.sroa.01.1 = phi i1 [ true, %.loopexit ], [ false, %bb.l ], !dbg !70583
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !70584

.body:                                            ; preds = %bb.o, %bb.i, %bb.g
  %.sroa.01.1.lpad-body = phi i1 [ true, %bb.i ], [ %.sroa.01.1, %bb.g ], [ false, %bb.o ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.i ], [ %i.cl, %bb.g ], [ %i.cx, %bb.o ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i) #52
          to label %bb.f unwind label %bb.u, !dbg !70584

.loopexit:                                        ; preds = %bb.c, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %.noexc.i
  %i.cm = load i64, ptr %i.o, align 8, !dbg !70586, !alias.scope !70418, !noalias !70421, !noundef !11 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 2305843009213693952, !dbg !70588
  call void @llvm.assume(i1 %i.cn), !dbg !70590
  %i.co = add nuw nsw i64 %i.cm, %.sink1.i.i.i.i, !dbg !70591
  store i64 %i.co, ptr %i.o, align 8, !dbg !70592, !alias.scope !70418, !noalias !70421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !70595, !noalias !70596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !70579, !noalias !70398
  %i.cp = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l), !dbg !70597
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BuffermE12from_storageCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.cp), !dbg !70604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !70605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !70606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !70607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !70607
  store i8 3, ptr %i.i, align 16, !dbg !70608, !alias.scope !70610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !70613, !noalias !70615
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, i16 noundef 1) #55
          to label %.noexc unwind label %bb.g, !dbg !70619

.noexc:                                           ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !70620), !dbg !70623
  call void @llvm.experimental.noalias.scope.decl(metadata !70624), !dbg !70623
  %i.cq = load i64, ptr %i.b, align 8, !dbg !70626, !range !1042, !alias.scope !70624, !noalias !70628, !noundef !11
  %.not.i.i = icmp eq i64 %i.cq, 18, !dbg !70626
  br i1 %.not.i.i, label %bb.l, label %bb.h, !dbg !70629, !prof !1046

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !70630, !noalias !70631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !70630, !noalias !70628
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #53
          to label %bb.j unwind label %bb.i, !dbg !70632, !noalias !70633

bb.i:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.k, !dbg !70634, !noalias !70633

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70635, !noalias !70633
  unreachable, !dbg !70635

bb.l:                                             ; preds = %.noexc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !70636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ct, i64 32, i1 false), !dbg !70636, !alias.scope !70637, !noalias !70638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !70639, !noalias !70615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !70640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !70640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !70641
  store ptr null, ptr %i.g, align 8, !dbg !70641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !70642
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE7try_newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.m unwind label %bb.g, !dbg !70642

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !70645), !dbg !70648
  call void @llvm.experimental.noalias.scope.decl(metadata !70649), !dbg !70648
  %i.cu = load i8, ptr %i.e, align 8, !dbg !70651, !range !47902, !alias.scope !70649, !noalias !70645, !noundef !11
  %i.cv = icmp eq i8 %i.cu, 42, !dbg !70651
  br i1 %i.cv, label %bb.n, label %bb.r, !dbg !70653, !prof !54

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !70654, !noalias !70655
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !70654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cw, i64 72, i1 false), !dbg !70654, !noalias !70645
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #53
          to label %bb.p unwind label %bb.o, !dbg !70656, !noalias !70655

bb.o:                                             ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #52
          to label %.body unwind label %bb.q, !dbg !70657, !noalias !70655

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70658, !noalias !70655
  unreachable, !dbg !70658

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.e, i64 88, i1 false), !dbg !70659, !alias.scope !70655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !70660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !70661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !70661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !70661
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i)
          to label %bb.s unwind label %bb.t, !dbg !70584

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !70584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !70662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !70662
  call void @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEE4fromB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.f), !dbg !70664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !70667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !70668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !70582
  ret void, !dbg !70669

bb.t:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(88) %i.k) #52
          to label %common.resume unwind label %bb.u, !dbg !70668

bb.u:                                             ; preds = %.thread12, %bb.t, %.body
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70670
  unreachable, !dbg !70670

.thread12:                                        ; preds = %bb.f
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.u, !dbg !70671
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11trusted_lenINtNtB9_5utils6NoNullINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeEEINtNtNtCs8774dFTUdNv_12polars_arrow6legacy5utils22FromTrustedLenIteratormE24from_iter_trusted_lengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3X_5slice4iter4IterAmj2_ENCNvMs9_NtNtNtB9_5frame8group_by8positionNtB5h_10GroupsType11group_counts_0EEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70674 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !70675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !70677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !70678, !noalias !70681
  store i64 0, ptr %i.c, align 8, !dbg !70684, !noalias !70681
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !70684 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.n, align 8, !dbg !70684, !noalias !70681
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !70684 ; 4 uses
  store i64 0, ptr %i.o, align 8, !dbg !70684, !noalias !70681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70687), !dbg !70690
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.p = ptrtoint ptr %2 to i64, !dbg !70692      ; 3 uses
  %i.q = ptrtoint ptr %1 to i64, !dbg !70692      ; 3 uses
  %i.r = sub nuw i64 %i.p, %i.q, !dbg !70692
  %i.s = lshr exact i64 %i.r, 3, !dbg !70692      ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.s)
          to label %.noexc.i unwind label %bb.b, !dbg !70702, !noalias !70681

.noexc.i:                                         ; preds = %bb.a
  %i.t = load i64, ptr %i.o, align 8, !dbg !70704, !alias.scope !70687, !noalias !70681, !noundef !11 ; 4 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952, !dbg !70707
  call void @llvm.assume(i1 %i.u), !dbg !70709
  %i.v = icmp eq ptr %1, %2, !dbg !70710
  br i1 %i.v, label %bb.f, label %.lr.ph.preheader.i.i, !dbg !70721

.lr.ph.preheader.i.i:                             ; preds = %.noexc.i
  %i.w = load ptr, ptr %i.n, align 8, !dbg !70722, !alias.scope !70687, !noalias !70681, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.w, i64 %i.t, !dbg !70731 ; 5 uses
  %3 = sub i64 %i.p, %i.q, !dbg !70721
  %4 = add i64 %3, -8, !dbg !70721                ; 2 uses
  %i.y = lshr i64 %4, 3, !dbg !70721
  %i.z = add nuw nsw i64 %i.y, 1, !dbg !70721     ; 2 uses
  %min.iters.check = icmp ult i64 %4, 320, !dbg !70721
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck, !dbg !70721

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.aa = shl nuw nsw i64 %i.t, 2, !dbg !70721
  %i.ab = add i64 %i.p, -8, !dbg !70721
  %i.ac = sub i64 %i.ab, %i.q, !dbg !70721        ; 2 uses
  %i.ad = lshr i64 %i.ac, 1, !dbg !70721
  %i.ae = and i64 %i.ad, 9223372036854775804, !dbg !70721
  %i.af = getelementptr i8, ptr %i.w, i64 %i.aa, !dbg !70721
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae, !dbg !70721
  %scevgep = getelementptr i8, ptr %i.ag, i64 4, !dbg !70721
  %scevgep18 = getelementptr i8, ptr %1, i64 4, !dbg !70721
  %i.ah = and i64 %i.ac, -8, !dbg !70721
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah, !dbg !70721
  %scevgep19 = getelementptr i8, ptr %i.ai, i64 8, !dbg !70721
  %bound0 = icmp ult ptr %i.x, %scevgep19, !dbg !70721
  %bound1 = icmp ult ptr %scevgep18, %scevgep, !dbg !70721
  %found.conflict = and i1 %bound0, %bound1, !dbg !70721
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %i.z, 7                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 8, i64 %i.aj
  %n.vec = sub nsw i64 %i.z, %i.al                ; 3 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ao = shl i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aq ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep20 = getelementptr i8, ptr %1, i64 %i.ar
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %i.at = getelementptr i8, ptr %next.gep20, i64 4, !dbg !70734
  %i.au = getelementptr i8, ptr %i.as, i64 36, !dbg !70734
  %wide.vec = load <8 x i32>, ptr %i.at, align 4, !dbg !70734, !alias.scope !70740, !noalias !70743
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !70734
  %wide.vec22 = load <8 x i32>, ptr %i.au, align 4, !dbg !70734, !alias.scope !70740, !noalias !70743
  %strided.vec23 = shufflevector <8 x i32> %wide.vec22, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !70734
  %i.av = getelementptr i8, ptr %next.gep, i64 16, !dbg !70746
  store <4 x i32> %strided.vec, ptr %next.gep, align 4, !dbg !70746, !alias.scope !70750, !noalias !70752
  store <4 x i32> %strided.vec23, ptr %i.av, align 4, !dbg !70746, !alias.scope !70750, !noalias !70752
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec, !dbg !70721
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %vector.body, !dbg !70721, !llvm.loop !70753

.lr.ph.i.i.preheader:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader.i.i
  %.sroa.02.019.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader.i.i ], [ %i.an, %vector.body ]
  %.sroa.011.018.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader.i.i ], [ %i.ap, %vector.body ]
  br label %.lr.ph.i.i, !dbg !70721

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.02.019.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.02.019.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.011.018.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.011.018.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i.i, i64 8, !dbg !70754 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.011.018.i.i, i64 4, !dbg !70734
  %.val.i.i.i = load i32, ptr %i.ay, align 4, !dbg !70734, !noalias !70743, !noundef !11
  store i32 %.val.i.i.i, ptr %.sroa.02.019.i.i, align 4, !dbg !70746, !noalias !70681
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i, i64 4, !dbg !70757
  %i.ba = icmp eq ptr %i.ax, %2, !dbg !70710
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !dbg !70721, !llvm.loop !70759

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load i64, ptr %i.o, align 8, !dbg !70760, !alias.scope !70687, !noalias !70681
  br label %bb.f, !dbg !70760

bb.b:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #52
          to label %common.resume unwind label %bb.c, !dbg !70762, !noalias !70681

bb.c:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70763, !noalias !70681
  unreachable, !dbg !70763

common.resume:                                    ; preds = %bb.d, %.thread11, %bb.s, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.b ], [ %eh.lpad-body, %.thread11 ], [ %eh.lpad-body, %bb.d ], [ %i.br, %bb.s ]
  resume { ptr, i32 } %common.resume.op, !dbg !70764

bb.d:                                             ; preds = %.body
  br i1 %.sroa.01.1.lpad-body, label %.thread11, label %common.resume, !dbg !70765

bb.e:                                             ; preds = %bb.f, %bb.k
  %.sroa.01.1 = phi i1 [ true, %bb.f ], [ false, %bb.k ], !dbg !70766
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !70767

.body:                                            ; preds = %bb.n, %bb.h, %bb.e
  %.sroa.01.1.lpad-body = phi i1 [ true, %bb.h ], [ %.sroa.01.1, %bb.e ], [ false, %bb.n ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.h ], [ %i.bd, %bb.e ], [ %i.bp, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i) #52
          to label %bb.d unwind label %bb.t, !dbg !70767

bb.f:                                             ; preds = %.noexc.i, %._crit_edge.loopexit.i.i
  %i.be = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.t, %.noexc.i ], !dbg !70760 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 2305843009213693952, !dbg !70769
  call void @llvm.assume(i1 %i.bf), !dbg !70771
  %i.bg = add nuw nsw i64 %i.be, %i.s, !dbg !70772
  store i64 %i.bg, ptr %i.o, align 8, !dbg !70773, !alias.scope !70687, !noalias !70681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !70776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !70762, !noalias !70681
  %i.bh = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l), !dbg !70777
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BuffermE12from_storageCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.bh), !dbg !70784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !70785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !70786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !70787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !70787
  store i8 3, ptr %i.i, align 16, !dbg !70788, !alias.scope !70790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !70793, !noalias !70795
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, i16 noundef 1) #55
          to label %.noexc unwind label %bb.e, !dbg !70799

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !70800), !dbg !70803
  call void @llvm.experimental.noalias.scope.decl(metadata !70804), !dbg !70803
  %i.bi = load i64, ptr %i.b, align 8, !dbg !70806, !range !1042, !alias.scope !70804, !noalias !70808, !noundef !11
  %.not.i.i = icmp eq i64 %i.bi, 18, !dbg !70806
  br i1 %.not.i.i, label %bb.k, label %bb.g, !dbg !70809, !prof !1046

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !70810, !noalias !70811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !70810, !noalias !70808
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #53
          to label %bb.i unwind label %bb.h, !dbg !70812, !noalias !70813

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.j, !dbg !70814, !noalias !70813

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70815, !noalias !70813
  unreachable, !dbg !70815

bb.k:                                             ; preds = %.noexc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !70816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !dbg !70816, !alias.scope !70817, !noalias !70818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !70819, !noalias !70795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !70820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !70820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !70821
  store ptr null, ptr %i.g, align 8, !dbg !70821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !70822
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE7try_newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.l unwind label %bb.e, !dbg !70822

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !70825), !dbg !70828
  call void @llvm.experimental.noalias.scope.decl(metadata !70829), !dbg !70828
  %i.bm = load i8, ptr %i.e, align 8, !dbg !70831, !range !47902, !alias.scope !70829, !noalias !70825, !noundef !11
  %i.bn = icmp eq i8 %i.bm, 42, !dbg !70831
  br i1 %i.bn, label %bb.m, label %bb.q, !dbg !70833, !prof !54

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !70834, !noalias !70835
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !70834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bo, i64 72, i1 false), !dbg !70834, !noalias !70825
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #53
          to label %bb.o unwind label %bb.n, !dbg !70836, !noalias !70835

bb.n:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #52
          to label %.body unwind label %bb.p, !dbg !70837, !noalias !70835

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !70838, !noalias !70835
  unreachable, !dbg !70838

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.e, i64 88, i1 false), !dbg !70839, !alias.scope !70835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !70840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !70841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !70841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !70841
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCs1LHh8CLbVkQ_11polars_core:bb.a
  %cmp.n39 = icmp eq i64 %i.r, %n.vec33, !dbg !257629
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !257629

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i8 [ %.promoted, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !257629

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !257652
  unreachable, !dbg !257652

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.af = phi i8 [ %i.ai, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !257649
  %.sroa.03.014 = phi ptr [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 1, !dbg !257649 ; 2 uses
  %i.ah = load i8, ptr %.sroa.03.014, align 1, !dbg !257643, !noundef !11
  %i.ai = sub i8 %i.af, %i.ah, !dbg !257645       ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.n, !dbg !257628
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !257629, !llvm.loop !257653

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i8 [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ], !dbg !257645
  store i8 %.lcssa29, ptr %i.q, align 8, !dbg !257645, !alias.scope !257638
  br label %bb.f, !dbg !257629

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ak = icmp ult i64 %2, %i.h, !dbg !257654
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ak, !dbg !257654
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !257654, !prof !13851

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %2, !dbg !257658
  %i.am = icmp samesign eq i64 %i.h, %2, !dbg !257663
  br i1 %i.am, label %bb.i, label %iter.check60, !dbg !257666

iter.check60:                                     ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !257667 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i8, ptr %i.ao, align 8, !alias.scope !257669 ; 3 uses
  %i.ap = sub i64 %2, %i.h, !dbg !257666          ; 7 uses
  %min.iters.check42 = icmp ult i64 %i.ap, 4, !dbg !257666
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !257666

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.ap, 32, !dbg !257666
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !257666

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.aq = and i64 %i.ap, 28
  %n.vec46 = and i64 %i.ap, -32                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %n.vec46
  %i.as = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted19, i64 0
  br label %vector.body47, !dbg !257666

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <16 x i8> [ %i.as, %vector.ph45 ], [ %i.au, %vector.body47 ]
  %vec.phi50 = phi <16 x i8> [ zeroinitializer, %vector.ph45 ], [ %i.av, %vector.body47 ]
  %next.gep51 = getelementptr i8, ptr %i.an, i64 %index48 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep51, i64 16, !dbg !257674
  %wide.load52 = load <16 x i8>, ptr %next.gep51, align 1, !dbg !257674
  %wide.load53 = load <16 x i8>, ptr %i.at, align 1, !dbg !257674
  %i.au = add <16 x i8> %vec.phi49, %wide.load52, !dbg !257675 ; 2 uses
  %i.av = add <16 x i8> %vec.phi50, %wide.load53, !dbg !257675 ; 2 uses
  %index.next54 = add nuw i64 %index48, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec46, !dbg !257666
  br i1 %i.aw, label %middle.block55, label %vector.body47, !dbg !257666, !llvm.loop !257678

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <16 x i8> %i.av, %i.au, !dbg !257666
  %i.ax = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx56), !dbg !257666 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec46, !dbg !257666
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !257666

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !150927

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i8 [ %i.ax, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !257679
  %n.vec65 = and i64 %i.ap, -4                    ; 3 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %n.vec65
  %i.az = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i8> [ %i.az, %vec.epilog.ph64 ], [ %i.ba, %vec.epilog.vector.body66 ]
  %next.gep69 = getelementptr i8, ptr %i.an, i64 %index67
  %wide.load70 = load <4 x i8>, ptr %next.gep69, align 1, !dbg !257674
  %i.ba = add <4 x i8> %vec.phi68, %wide.load70, !dbg !257675 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec65, !dbg !257666
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !257666, !llvm.loop !257681

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bc = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ba), !dbg !257666 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.ap, %n.vec65, !dbg !257666
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !257666

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i8 [ %.promoted19, %iter.check60 ], [ %i.ax, %vec.epilog.iter.check62 ], [ %i.bc, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.an, %iter.check60 ], [ %i.ar, %vec.epilog.iter.check62 ], [ %i.ay, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !257666

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !257682
  unreachable, !dbg !257682

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bd = phi i8 [ %i.bg, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !257679
  %.sroa.06.015 = phi ptr [ %i.be, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1, !dbg !257679 ; 2 uses
  %i.bf = load i8, ptr %.sroa.06.015, align 1, !dbg !257674, !noundef !11
  %i.bg = add i8 %i.bd, %i.bf, !dbg !257675       ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.al, !dbg !257663
  br i1 %i.bh, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !257666, !llvm.loop !257683

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i8 [ %i.bc, %vec.epilog.middle.block72 ], [ %i.ax, %middle.block55 ], [ %i.bg, %vec.epilog.scalar.ph61 ], !dbg !257675
  store i8 %.lcssa, ptr %i.ao, align 8, !dbg !257675, !alias.scope !257669
  br label %bb.i, !dbg !257666

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257604
  store i64 %1, ptr %i.bi, align 8, !dbg !257684
  store i64 %2, ptr %i.a, align 8, !dbg !257685
  ret void, !dbg !257686
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !257687 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257688), !dbg !257691
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !257692
  %i.b = load i64, ptr %i.a, align 8, !dbg !257692, !alias.scope !257688, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !257692
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !257692

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !257694
  %i.e = load i8, ptr %i.d, align 8, !dbg !257694, !alias.scope !257688, !noundef !11
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257695

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !257696
  %i.g = load i64, ptr %i.f, align 8, !dbg !257696, !alias.scope !257688, !noundef !11
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !257697
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !257697

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !257698
  %i.j = load i64, ptr %i.i, align 8, !dbg !257698, !alias.scope !257688, !noundef !11
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !257699
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !257699

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !257700, !noalias !257688
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257701

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !257702, !noalias !257688
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257703

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !257704, !noalias !257688
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257703

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !257705
  %i.o = insertvalue { i1, i8 } { i1 true, i8 undef }, i8 %.sroa.5.0.i, 1, !dbg !257706
  ret { i1, i8 } %i.o, !dbg !257707
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !257708 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !257709, !prof !13851

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !257719, !noalias !257720
  unreachable, !dbg !257719

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !257723
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !257723
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !257723, !prof !13851

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !257729
  %i.c = icmp samesign eq i64 %3, %4, !dbg !257743
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph17.i, !dbg !257753

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !257754 ; 3 uses
  %8 = sub i64 %4, %3, !dbg !257753
  %i.e = add i64 %8, 4611686018427387903, !dbg !257753
  %9 = and i64 %i.e, 4611686018427387903, !dbg !257753 ; 2 uses
  %i.f = add nuw nsw i64 %9, 1, !dbg !257753      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 7, !dbg !257753
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !257753

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 9223372036854775800      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !257753

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !257758
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !257758, !noalias !257720
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !dbg !257758, !noalias !257720
  %i.k = add <4 x i32> %wide.load, %vec.phi, !dbg !257760 ; 2 uses
  %i.l = add <4 x i32> %wide.load9, %vec.phi8, !dbg !257760 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !257753
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !257753, !llvm.loop !257763

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k, !dbg !257753
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !257753 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !257753
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !257753

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !257753

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !257764, !noalias !257720
  unreachable, !dbg !257764

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i32 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !257765
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !257765 ; 2 uses
  %i.q = load i32, ptr %.sroa.06.015.i, align 4, !dbg !257758, !noalias !257720, !noundef !11
  %i.r = add i32 %i.q, %i.o, !dbg !257760         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !257743
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !257753, !llvm.loop !257768

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !257769
  store ptr %1, ptr %0, align 8, !dbg !257770
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !257770
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !257770
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !257770
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257770
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !257770
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !257770
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !257770
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !257770
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !257770
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !257770
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !257770
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !257770
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !257770
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !257770
  ret void, !dbg !257771
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !257716 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !257772 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !257772, !noundef !11 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !257773
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !257773

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !257774
  br label %bb.c, !dbg !257773

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !257775
  store i32 0, ptr %i.c, align 8, !dbg !257775, !alias.scope !257777
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !257780
  store i32 0, ptr %i.d, align 4, !dbg !257780, !alias.scope !257777
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !257781
  store i32 0, ptr %i.e, align 8, !dbg !257781, !alias.scope !257777
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !257782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !257782, !alias.scope !257777
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257783
  store i64 %1, ptr %i.g, align 8, !dbg !257783
  store i64 %1, ptr %i.a, align 8, !dbg !257784
  br label %bb.c, !dbg !257785

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !257774 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !257786, !nonnull !11, !align !11931, !noundef !11 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !257786
  %i.l = load i64, ptr %i.k, align 8, !dbg !257786, !noundef !11 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !257787
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !257787
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !257787, !prof !13851

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !257791
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !257798
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !257799

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i, !dbg !257805 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.q, align 8, !alias.scope !257808 ; 2 uses
  %3 = sub i64 %1, %i.i, !dbg !257799
  %i.r = add i64 %3, 4611686018427387903, !dbg !257799
  %4 = and i64 %i.r, 4611686018427387903, !dbg !257799 ; 2 uses
  %i.s = add nuw nsw i64 %4, 1, !dbg !257799      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 7, !dbg !257799
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !257799

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body, !dbg !257799

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16, !dbg !257813
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !257813
  %wide.load31 = load <4 x i32>, ptr %i.x, align 4, !dbg !257813
  %i.y = sub <4 x i32> %vec.phi, %wide.load, !dbg !257815 ; 2 uses
  %i.z = sub <4 x i32> %vec.phi30, %wide.load31, !dbg !257815 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec, !dbg !257799
  br i1 %i.aa, label %middle.block, label %vector.body, !dbg !257799, !llvm.loop !257818

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.z, %i.y, !dbg !257799
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !257799 ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec, !dbg !257799
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !257799

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i32 [ %.promoted, %.lr.ph ], [ %i.ab, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph, !dbg !257799

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !257819
  unreachable, !dbg !257819

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ac = phi i32 [ %i.af, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !257820
  %.sroa.03.014 = phi ptr [ %i.ad, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 4, !dbg !257820 ; 2 uses
  %i.ae = load i32, ptr %.sroa.03.014, align 4, !dbg !257813, !noundef !11
  %i.af = sub i32 %i.ac, %i.ae, !dbg !257815      ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.n, !dbg !257798
  br i1 %i.ag, label %._crit_edge, label %scalar.ph, !dbg !257799, !llvm.loop !257822

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i32 [ %i.ab, %middle.block ], [ %i.af, %scalar.ph ], !dbg !257815
  store i32 %.lcssa29, ptr %i.q, align 8, !dbg !257815, !alias.scope !257808
  br label %bb.f, !dbg !257799

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ah = icmp ult i64 %2, %i.h, !dbg !257823
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ah, !dbg !257823
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !257823, !prof !13851

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2, !dbg !257827
  %i.aj = icmp samesign eq i64 %i.h, %2, !dbg !257832
  br i1 %i.aj, label %bb.i, label %.lr.ph17, !dbg !257835

.lr.ph17:                                         ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h, !dbg !257836 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i32, ptr %i.al, align 8, !alias.scope !257838 ; 2 uses
  %5 = sub i64 %2, %i.h, !dbg !257835
  %i.am = add i64 %5, 4611686018427387903, !dbg !257835
  %6 = and i64 %i.am, 4611686018427387903, !dbg !257835 ; 2 uses
  %i.an = add nuw nsw i64 %6, 1, !dbg !257835     ; 2 uses
  %min.iters.check33 = icmp samesign ult i64 %6, 7, !dbg !257835
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !257835

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec35, 2
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted19, i64 0
  br label %vector.body36, !dbg !257835

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <4 x i32> [ %i.aq, %vector.ph34 ], [ %i.at, %vector.body36 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.au, %vector.body36 ]
  %i.ar = shl i64 %index37, 2
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep40, i64 16, !dbg !257843
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !dbg !257843
  %wide.load42 = load <4 x i32>, ptr %i.as, align 4, !dbg !257843
  %i.at = add <4 x i32> %vec.phi38, %wide.load41, !dbg !257844 ; 2 uses
  %i.au = add <4 x i32> %vec.phi39, %wide.load42, !dbg !257844 ; 2 uses
  %index.next43 = add nuw i64 %index37, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next43, %n.vec35, !dbg !257835
  br i1 %i.av, label %middle.block44, label %vector.body36, !dbg !257835, !llvm.loop !257847

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <4 x i32> %i.au, %i.at, !dbg !257835
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45), !dbg !257835 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.an, %n.vec35, !dbg !257835
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !257835

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i32 [ %.promoted19, %.lr.ph17 ], [ %i.aw, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ak, %.lr.ph17 ], [ %i.ap, %middle.block44 ]
  br label %scalar.ph32, !dbg !257835

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !257848
  unreachable, !dbg !257848

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.ax = phi i32 [ %i.ba, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !257849
  %.sroa.06.015 = phi ptr [ %i.ay, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4, !dbg !257849 ; 2 uses
  %i.az = load i32, ptr %.sroa.06.015, align 4, !dbg !257843, !noundef !11
  %i.ba = add i32 %i.ax, %i.az, !dbg !257844      ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ai, !dbg !257832
  br i1 %i.bb, label %._crit_edge18, label %scalar.ph32, !dbg !257835, !llvm.loop !257851

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i32 [ %i.aw, %middle.block44 ], [ %i.ba, %scalar.ph32 ], !dbg !257844
  store i32 %.lcssa, ptr %i.al, align 8, !dbg !257844, !alias.scope !257838
  br label %bb.i, !dbg !257835

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257774
  store i64 %1, ptr %i.bc, align 8, !dbg !257852
  store i64 %2, ptr %i.a, align 8, !dbg !257853
  ret void, !dbg !257854
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !257855 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257856), !dbg !257859
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !257860
  %i.b = load i64, ptr %i.a, align 8, !dbg !257860, !alias.scope !257856, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !257860
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !257860

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !257862
  %i.e = load i32, ptr %i.d, align 8, !dbg !257862, !alias.scope !257856, !noundef !11
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257863

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !257864
  %i.g = load i64, ptr %i.f, align 8, !dbg !257864, !alias.scope !257856, !noundef !11
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !257865
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !257865

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !257866
  %i.j = load i64, ptr %i.i, align 8, !dbg !257866, !alias.scope !257856, !noundef !11
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !257867
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !257867

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !257868, !noalias !257856
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257869

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !257870, !noalias !257856
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257871

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvYlNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !257872, !noalias !257856
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !257871

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !257873
  %i.o = insertvalue { i32, i32 } { i32 1, i32 undef }, i32 %.sroa.5.0.i, 1, !dbg !257874
  ret { i32, i32 } %i.o, !dbg !257875
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !257876 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !257877, !prof !13851

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !257887, !noalias !257888
  unreachable, !dbg !257887

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !257891
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !257891
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !257891, !prof !13851

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !257897
  %i.c = icmp samesign eq i64 %3, %4, !dbg !257911
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph17.i, !dbg !257921

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !257922 ; 3 uses
  %8 = sub i64 %4, %3, !dbg !257921
  %i.e = add i64 %8, 4611686018427387903, !dbg !257921
  %9 = and i64 %i.e, 4611686018427387903, !dbg !257921 ; 2 uses
  %i.f = add nuw nsw i64 %9, 1, !dbg !257921      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 7, !dbg !257921
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !257921

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 9223372036854775800      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !257921

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !257926
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !257926, !noalias !257888
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !dbg !257926, !noalias !257888
  %i.k = add <4 x i32> %wide.load, %vec.phi, !dbg !257928 ; 2 uses
  %i.l = add <4 x i32> %wide.load9, %vec.phi8, !dbg !257928 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !257921
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !257921, !llvm.loop !257931

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k, !dbg !257921
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !257921 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !257921
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !257921

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !257921

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !257932, !noalias !257888
  unreachable, !dbg !257932

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i32 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !257933
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !257933 ; 2 uses
  %i.q = load i32, ptr %.sroa.06.015.i, align 4, !dbg !257926, !noalias !257888, !noundef !11
  %i.r = add i32 %i.q, %i.o, !dbg !257928         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !257911
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !257921, !llvm.loop !257936

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !257937
  store ptr %1, ptr %0, align 8, !dbg !257938
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !257938
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !257938
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !257938
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !257938
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !257938
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !257938
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !257938
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !257938
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !257938
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !257938
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !257938
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !257938
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !257938
  ret void, !dbg !257939
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !257884 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !257940 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !257940, !noundef !11 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !257941
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !257941

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !257942
  br label %bb.c, !dbg !257941

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !257943
  store i32 0, ptr %i.c, align 8, !dbg !257943, !alias.scope !257945
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !257948
  store i32 0, ptr %i.d, align 4, !dbg !257948, !alias.scope !257945
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !257949
  store i32 0, ptr %i.e, align 8, !dbg !257949, !alias.scope !257945
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !257950
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !257950, !alias.scope !257945
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257951
  store i64 %1, ptr %i.g, align 8, !dbg !257951
  store i64 %1, ptr %i.a, align 8, !dbg !257952
  br label %bb.c, !dbg !257953

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !257942 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !257954, !nonnull !11, !align !11931, !noundef !11 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !257954
  %i.l = load i64, ptr %i.k, align 8, !dbg !257954, !noundef !11 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !257955
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !257955
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !257955, !prof !13851

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !257959
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !257966
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !257967

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i, !dbg !257973 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.q, align 8, !alias.scope !257976 ; 2 uses
  %3 = sub i64 %1, %i.i, !dbg !257967
  %i.r = add i64 %3, 4611686018427387903, !dbg !257967
  %4 = and i64 %i.r, 4611686018427387903, !dbg !257967 ; 2 uses
  %i.s = add nuw nsw i64 %4, 1, !dbg !257967      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 7, !dbg !257967
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !257967

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body, !dbg !257967

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16, !dbg !257981
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !257981
  %wide.load31 = load <4 x i32>, ptr %i.x, align 4, !dbg !257981
  %i.y = sub <4 x i32> %vec.phi, %wide.load, !dbg !257983 ; 2 uses
  %i.z = sub <4 x i32> %vec.phi30, %wide.load31, !dbg !257983 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec, !dbg !257967
  br i1 %i.aa, label %middle.block, label %vector.body, !dbg !257967, !llvm.loop !257986

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.z, %i.y, !dbg !257967
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !257967 ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec, !dbg !257967
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !257967

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i32 [ %.promoted, %.lr.ph ], [ %i.ab, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph, !dbg !257967

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !257987
  unreachable, !dbg !257987

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ac = phi i32 [ %i.af, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !257988
  %.sroa.03.014 = phi ptr [ %i.ad, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 4, !dbg !257988 ; 2 uses
  %i.ae = load i32, ptr %.sroa.03.014, align 4, !dbg !257981, !noundef !11
  %i.af = sub i32 %i.ac, %i.ae, !dbg !257983      ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.n, !dbg !257966
  br i1 %i.ag, label %._crit_edge, label %scalar.ph, !dbg !257967, !llvm.loop !257990

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i32 [ %i.ab, %middle.block ], [ %i.af, %scalar.ph ], !dbg !257983
  store i32 %.lcssa29, ptr %i.q, align 8, !dbg !257983, !alias.scope !257976
  br label %bb.f, !dbg !257967

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ah = icmp ult i64 %2, %i.h, !dbg !257991
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ah, !dbg !257991
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !257991, !prof !13851

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2, !dbg !257995
  %i.aj = icmp samesign eq i64 %i.h, %2, !dbg !258000
  br i1 %i.aj, label %bb.i, label %.lr.ph17, !dbg !258003

.lr.ph17:                                         ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h, !dbg !258004 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i32, ptr %i.al, align 8, !alias.scope !258006 ; 2 uses
  %5 = sub i64 %2, %i.h, !dbg !258003
  %i.am = add i64 %5, 4611686018427387903, !dbg !258003
  %6 = and i64 %i.am, 4611686018427387903, !dbg !258003 ; 2 uses
  %i.an = add nuw nsw i64 %6, 1, !dbg !258003     ; 2 uses
  %min.iters.check33 = icmp samesign ult i64 %6, 7, !dbg !258003
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !258003

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ao = shl i64 %n.vec35, 2
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted19, i64 0
  br label %vector.body36, !dbg !258003

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <4 x i32> [ %i.aq, %vector.ph34 ], [ %i.at, %vector.body36 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph34 ], [ %i.au, %vector.body36 ]
  %i.ar = shl i64 %index37, 2
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep40, i64 16, !dbg !258011
  %wide.load41 = load <4 x i32>, ptr %next.gep40, align 4, !dbg !258011
  %wide.load42 = load <4 x i32>, ptr %i.as, align 4, !dbg !258011
  %i.at = add <4 x i32> %vec.phi38, %wide.load41, !dbg !258012 ; 2 uses
  %i.au = add <4 x i32> %vec.phi39, %wide.load42, !dbg !258012 ; 2 uses
  %index.next43 = add nuw i64 %index37, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next43, %n.vec35, !dbg !258003
  br i1 %i.av, label %middle.block44, label %vector.body36, !dbg !258003, !llvm.loop !258015

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <4 x i32> %i.au, %i.at, !dbg !258003
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx45), !dbg !258003 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.an, %n.vec35, !dbg !258003
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !258003

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i32 [ %.promoted19, %.lr.ph17 ], [ %i.aw, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ak, %.lr.ph17 ], [ %i.ap, %middle.block44 ]
  br label %scalar.ph32, !dbg !258003

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !258016
  unreachable, !dbg !258016

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.ax = phi i32 [ %i.ba, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !258017
  %.sroa.06.015 = phi ptr [ %i.ay, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4, !dbg !258017 ; 2 uses
  %i.az = load i32, ptr %.sroa.06.015, align 4, !dbg !258011, !noundef !11
  %i.ba = add i32 %i.ax, %i.az, !dbg !258012      ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ai, !dbg !258000
  br i1 %i.bb, label %._crit_edge18, label %scalar.ph32, !dbg !258003, !llvm.loop !258019

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i32 [ %i.aw, %middle.block44 ], [ %i.ba, %scalar.ph32 ], !dbg !258012
  store i32 %.lcssa, ptr %i.al, align 8, !dbg !258012, !alias.scope !258006
  br label %bb.i, !dbg !258003

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !257942
  store i64 %1, ptr %i.bc, align 8, !dbg !258020
  store i64 %2, ptr %i.a, align 8, !dbg !258021
  ret void, !dbg !258022
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258023 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258024), !dbg !258027
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258028
  %i.b = load i64, ptr %i.a, align 8, !dbg !258028, !alias.scope !258024, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !258028
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !258028

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !258030
  %i.e = load i32, ptr %i.d, align 8, !dbg !258030, !alias.scope !258024, !noundef !11
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258031

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !258032
  %i.g = load i64, ptr %i.f, align 8, !dbg !258032, !alias.scope !258024, !noundef !11
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !258033
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !258033

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !258034
  %i.j = load i64, ptr %i.i, align 8, !dbg !258034, !alias.scope !258024, !noundef !11
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !258035
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !258035

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258036, !noalias !258024
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258037

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258038, !noalias !258024
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258039

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RNvYmNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258040, !noalias !258024
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258039

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowmmE7get_sumCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i32 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !258041
  %i.o = insertvalue { i32, i32 } { i32 1, i32 undef }, i32 %.sroa.5.0.i, 1, !dbg !258042
  ret { i32, i32 } %i.o, !dbg !258043
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258044 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !258045, !prof !13851

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !258055, !noalias !258056
  unreachable, !dbg !258055

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !258059
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !258059
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !258059, !prof !13851

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %4, !dbg !258065
  %i.c = icmp samesign eq i64 %3, %4, !dbg !258079
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph17.i, !dbg !258089

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !258090
  br label %bb.e, !dbg !258089

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !258094, !noalias !258056
  unreachable, !dbg !258094

bb.e:                                             ; preds = %bb.e, %.lr.ph17.i
  %i.e = phi i128 [ 0, %.lr.ph17.i ], [ %i.h, %bb.e ], !dbg !258095
  %.sroa.06.015.i = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 16, !dbg !258095 ; 2 uses
  %i.g = load i128, ptr %.sroa.06.015.i, align 16, !dbg !258098, !noalias !258056, !noundef !11
  %i.h = add i128 %i.g, %i.e, !dbg !258100        ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.b, !dbg !258079
  br i1 %i.i, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %bb.e, !dbg !258089

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.e, %bb.c
  %.sroa.7.2 = phi i128 [ 0, %bb.c ], [ %i.h, %bb.e ], !dbg !258103
  store ptr %1, ptr %0, align 16, !dbg !258104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !258104
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !258104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !258104
  store i128 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !258104
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !258104
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !258104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.13.0..sroa_idx, i8 0, i64 72, i1 false), !dbg !258104
  store i64 %3, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !258104
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !258104
  store i64 %4, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !258104
  ret void, !dbg !258105
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 16 captures(none) dereferenceable(128) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258052 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !258106 ; 3 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !258106, !noundef !11 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !258107
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !258107

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !258108
  br label %bb.c, !dbg !258107

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !258109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !258111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !dbg !258112, !alias.scope !258113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !dbg !258111, !alias.scope !258113
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !258116
  store i64 %1, ptr %i.e, align 8, !dbg !258116
  store i64 %1, ptr %i.a, align 16, !dbg !258117
  br label %bb.c, !dbg !258118

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.f = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 4 uses
  %i.g = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !258108 ; 4 uses
  %i.h = load ptr, ptr %0, align 16, !dbg !258119, !nonnull !11, !align !69047, !noundef !11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !258119
  %i.j = load i64, ptr %i.i, align 8, !dbg !258119, !noundef !11 ; 4 uses
  %i.k = icmp ult i64 %1, %i.g, !dbg !258120
  %.not11 = icmp ugt i64 %1, %i.j
  %or.cond = or i1 %.not11, %i.k, !dbg !258120
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !258120, !prof !13851

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1, !dbg !258124
  %i.m = icmp samesign eq i64 %i.g, %1, !dbg !258131
  br i1 %i.m, label %bb.g, label %.lr.ph, !dbg !258132

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g, !dbg !258138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCs1LHh8CLbVkQ_11polars_core:bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !258657
  unreachable, !dbg !258657

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.ao = phi i16 [ %i.ar, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !258654
  %.sroa.03.014 = phi ptr [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 2, !dbg !258654 ; 2 uses
  %i.aq = load i16, ptr %.sroa.03.014, align 2, !dbg !258648, !noundef !11
  %i.ar = sub i16 %i.ao, %i.aq, !dbg !258650      ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.n, !dbg !258633
  br i1 %i.as, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !258634, !llvm.loop !258658

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i16 [ %i.an, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !258650
  store i16 %.lcssa29, ptr %i.q, align 8, !dbg !258650, !alias.scope !258643
  br label %bb.f, !dbg !258634

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.at = icmp ult i64 %2, %i.h, !dbg !258659
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.at, !dbg !258659
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !258659, !prof !13851

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %2, !dbg !258663
  %i.av = icmp samesign eq i64 %i.h, %2, !dbg !258668
  br i1 %i.av, label %bb.i, label %iter.check60, !dbg !258671

iter.check60:                                     ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.h, !dbg !258672 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i16, ptr %i.ax, align 8, !alias.scope !258674 ; 3 uses
  %i.ay = shl i64 %2, 1, !dbg !258671
  %i.az = add i64 %i.ay, -2, !dbg !258671
  %i.ba = shl i64 %i.h, 1, !dbg !258671
  %i.bb = sub i64 %i.az, %i.ba, !dbg !258671      ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 1, !dbg !258671
  %i.bd = add nuw i64 %i.bc, 1, !dbg !258671      ; 5 uses
  %min.iters.check42 = icmp ult i64 %i.bb, 6, !dbg !258671
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !258671

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.bb, 30, !dbg !258671
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !258671

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.be = and i64 %i.bd, 12
  %n.vec46 = and i64 %i.bd, -16                   ; 4 uses
  %i.bf = shl i64 %n.vec46, 1
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted19, i64 0
  br label %vector.body47, !dbg !258671

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49 = phi <8 x i16> [ %i.bh, %vector.ph45 ], [ %i.bk, %vector.body47 ]
  %vec.phi50 = phi <8 x i16> [ zeroinitializer, %vector.ph45 ], [ %i.bl, %vector.body47 ]
  %i.bi = shl i64 %index48, 1
  %next.gep51 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep51, i64 16, !dbg !258679
  %wide.load52 = load <8 x i16>, ptr %next.gep51, align 2, !dbg !258679
  %wide.load53 = load <8 x i16>, ptr %i.bj, align 2, !dbg !258679
  %i.bk = add <8 x i16> %vec.phi49, %wide.load52, !dbg !258680 ; 2 uses
  %i.bl = add <8 x i16> %vec.phi50, %wide.load53, !dbg !258680 ; 2 uses
  %index.next54 = add nuw i64 %index48, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next54, %n.vec46, !dbg !258671
  br i1 %i.bm, label %middle.block55, label %vector.body47, !dbg !258671, !llvm.loop !258683

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <8 x i16> %i.bl, %i.bk, !dbg !258671
  %i.bn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx56), !dbg !258671 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.bd, %n.vec46, !dbg !258671
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !258671

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !258426

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i16 [ %i.bn, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !258684
  %n.vec65 = and i64 %i.bd, -4                    ; 3 uses
  %i.bo = shl i64 %n.vec65, 1
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bo
  %i.bq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i16> [ %i.bq, %vec.epilog.ph64 ], [ %i.bs, %vec.epilog.vector.body66 ]
  %i.br = shl i64 %index67, 1
  %next.gep69 = getelementptr i8, ptr %i.aw, i64 %i.br
  %wide.load70 = load <4 x i16>, ptr %next.gep69, align 2, !dbg !258679
  %i.bs = add <4 x i16> %vec.phi68, %wide.load70, !dbg !258680 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next71, %n.vec65, !dbg !258671
  br i1 %i.bt, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !258671, !llvm.loop !258686

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bu = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bs), !dbg !258671 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.bd, %n.vec65, !dbg !258671
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !258671

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i16 [ %.promoted19, %iter.check60 ], [ %i.bn, %vec.epilog.iter.check62 ], [ %i.bu, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.aw, %iter.check60 ], [ %i.bg, %vec.epilog.iter.check62 ], [ %i.bp, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !258671

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !258687
  unreachable, !dbg !258687

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bv = phi i16 [ %i.by, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !258684
  %.sroa.06.015 = phi ptr [ %i.bw, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2, !dbg !258684 ; 2 uses
  %i.bx = load i16, ptr %.sroa.06.015, align 2, !dbg !258679, !noundef !11
  %i.by = add i16 %i.bv, %i.bx, !dbg !258680      ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.au, !dbg !258668
  br i1 %i.bz, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !258671, !llvm.loop !258688

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i16 [ %i.bu, %vec.epilog.middle.block72 ], [ %i.bn, %middle.block55 ], [ %i.by, %vec.epilog.scalar.ph61 ], !dbg !258680
  store i16 %.lcssa, ptr %i.ax, align 8, !dbg !258680, !alias.scope !258674
  br label %bb.i, !dbg !258671

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !258609
  store i64 %1, ptr %i.ca, align 8, !dbg !258689
  store i64 %2, ptr %i.a, align 8, !dbg !258690
  ret void, !dbg !258691
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258692 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258693), !dbg !258696
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258697
  %i.b = load i64, ptr %i.a, align 8, !dbg !258697, !alias.scope !258693, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !258697
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !258697

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !258699
  %i.e = load i16, ptr %i.d, align 8, !dbg !258699, !alias.scope !258693, !noundef !11
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258700

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !258701
  %i.g = load i64, ptr %i.f, align 8, !dbg !258701, !alias.scope !258693, !noundef !11
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !258702
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !258702

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !258703
  %i.j = load i64, ptr %i.i, align 8, !dbg !258703, !alias.scope !258693, !noundef !11
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !258704
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !258704

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258705, !noalias !258693
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258706

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258707, !noalias !258693
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258708

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258709, !noalias !258693
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258708

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i16 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !258710
  %i.o = insertvalue { i16, i16 } { i16 1, i16 undef }, i16 %.sroa.5.0.i, 1, !dbg !258711
  ret { i16, i16 } %i.o, !dbg !258712
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258713 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !258714, !prof !13851

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !258724, !noalias !258725
  unreachable, !dbg !258724

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !258728
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !258728
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !258728, !prof !13851

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !258734
  %i.c = icmp samesign eq i64 %3, %4, !dbg !258748
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph17.i, !dbg !258758

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !258759 ; 3 uses
  %8 = sub i64 %4, %3, !dbg !258758
  %i.e = add i64 %8, 2305843009213693951, !dbg !258758
  %9 = and i64 %i.e, 2305843009213693951, !dbg !258758 ; 2 uses
  %i.f = add nuw nsw i64 %9, 1, !dbg !258758      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 3, !dbg !258758
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !258758

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.g = shl i64 %n.vec, 3
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !258758

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !258763
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !258763, !noalias !258725
  %wide.load9 = load <2 x i64>, ptr %i.j, align 8, !dbg !258763, !noalias !258725
  %i.k = add <2 x i64> %wide.load, %vec.phi, !dbg !258765 ; 2 uses
  %i.l = add <2 x i64> %wide.load9, %vec.phi8, !dbg !258765 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !258758
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !258758, !llvm.loop !258768

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k, !dbg !258758
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !258758 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !258758
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !258758

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !258758

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !258769, !noalias !258725
  unreachable, !dbg !258769

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i64 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !258770
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !258770 ; 2 uses
  %i.q = load i64, ptr %.sroa.06.015.i, align 8, !dbg !258763, !noalias !258725, !noundef !11
  %i.r = add i64 %i.q, %i.o, !dbg !258765         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !258748
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !258758, !llvm.loop !258773

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !258774
  store ptr %1, ptr %0, align 8, !dbg !258775
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !258775
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !258775
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !258775
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !258775
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258775
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !258775
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !258775
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !258775
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258775
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !258775
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !258775
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !258775
  ret void, !dbg !258776
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258721 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !258777 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !258777, !noundef !11 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !258778
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !258778

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !258779
  br label %bb.c, !dbg !258778

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !258782, !alias.scope !258783
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258786
  store i64 %1, ptr %i.d, align 8, !dbg !258786
  store i64 %1, ptr %i.a, align 8, !dbg !258787
  br label %bb.c, !dbg !258788

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !258779 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !258789, !nonnull !11, !align !847, !noundef !11 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !258789
  %i.i = load i64, ptr %i.h, align 8, !dbg !258789, !noundef !11 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !258790
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !258790
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !258790, !prof !13851

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !258794
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !258801
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !258802

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !258808 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !258811 ; 2 uses
  %3 = sub i64 %1, %i.f, !dbg !258802
  %i.o = add i64 %3, 2305843009213693951, !dbg !258802
  %4 = and i64 %i.o, 2305843009213693951, !dbg !258802 ; 2 uses
  %i.p = add nuw nsw i64 %4, 1, !dbg !258802      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 3, !dbg !258802
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !258802

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body, !dbg !258802

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.s, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16, !dbg !258816
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !258816
  %wide.load31 = load <2 x i64>, ptr %i.u, align 8, !dbg !258816
  %i.v = sub <2 x i64> %vec.phi, %wide.load, !dbg !258818 ; 2 uses
  %i.w = sub <2 x i64> %vec.phi30, %wide.load31, !dbg !258818 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !258802
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !258802, !llvm.loop !258821

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v, !dbg !258802
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !258802 ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec, !dbg !258802
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !258802

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i64 [ %.promoted, %.lr.ph ], [ %i.y, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !258802

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !258822
  unreachable, !dbg !258822

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.z = phi i64 [ %i.ac, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !258823
  %.sroa.03.014 = phi ptr [ %i.aa, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !258823 ; 2 uses
  %i.ab = load i64, ptr %.sroa.03.014, align 8, !dbg !258816, !noundef !11
  %i.ac = sub i64 %i.z, %i.ab, !dbg !258818       ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.k, !dbg !258801
  br i1 %i.ad, label %._crit_edge, label %scalar.ph, !dbg !258802, !llvm.loop !258825

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i64 [ %i.y, %middle.block ], [ %i.ac, %scalar.ph ], !dbg !258818
  store i64 %.lcssa29, ptr %i.n, align 8, !dbg !258818, !alias.scope !258811
  br label %bb.f, !dbg !258802

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ae = icmp ult i64 %2, %i.e, !dbg !258826
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ae, !dbg !258826
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !258826, !prof !13851

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !258830
  %i.ag = icmp samesign eq i64 %i.e, %2, !dbg !258835
  br i1 %i.ag, label %bb.i, label %.lr.ph17, !dbg !258838

.lr.ph17:                                         ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !258839 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted19 = load i64, ptr %i.ai, align 8, !alias.scope !258841 ; 2 uses
  %5 = sub i64 %2, %i.e, !dbg !258838
  %i.aj = add i64 %5, 2305843009213693951, !dbg !258838
  %6 = and i64 %i.aj, 2305843009213693951, !dbg !258838 ; 2 uses
  %i.ak = add nuw nsw i64 %6, 1, !dbg !258838     ; 2 uses
  %min.iters.check33 = icmp samesign ult i64 %6, 3, !dbg !258838
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !258838

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.al = shl i64 %n.vec35, 3
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted19, i64 0
  br label %vector.body36, !dbg !258838

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <2 x i64> [ %i.an, %vector.ph34 ], [ %i.aq, %vector.body36 ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph34 ], [ %i.ar, %vector.body36 ]
  %i.ao = shl i64 %index37, 3
  %next.gep40 = getelementptr i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep40, i64 16, !dbg !258846
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !dbg !258846
  %wide.load42 = load <2 x i64>, ptr %i.ap, align 8, !dbg !258846
  %i.aq = add <2 x i64> %vec.phi38, %wide.load41, !dbg !258847 ; 2 uses
  %i.ar = add <2 x i64> %vec.phi39, %wide.load42, !dbg !258847 ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next43, %n.vec35, !dbg !258838
  br i1 %i.as, label %middle.block44, label %vector.body36, !dbg !258838, !llvm.loop !258850

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <2 x i64> %i.ar, %i.aq, !dbg !258838
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45), !dbg !258838 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ak, %n.vec35, !dbg !258838
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !258838

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i64 [ %.promoted19, %.lr.ph17 ], [ %i.at, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ah, %.lr.ph17 ], [ %i.am, %middle.block44 ]
  br label %scalar.ph32, !dbg !258838

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !258851
  unreachable, !dbg !258851

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.au = phi i64 [ %i.ax, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !258852
  %.sroa.06.015 = phi ptr [ %i.av, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8, !dbg !258852 ; 2 uses
  %i.aw = load i64, ptr %.sroa.06.015, align 8, !dbg !258846, !noundef !11
  %i.ax = add i64 %i.au, %i.aw, !dbg !258847      ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.af, !dbg !258835
  br i1 %i.ay, label %._crit_edge18, label %scalar.ph32, !dbg !258838, !llvm.loop !258854

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.at, %middle.block44 ], [ %i.ax, %scalar.ph32 ], !dbg !258847
  store i64 %.lcssa, ptr %i.ai, align 8, !dbg !258847, !alias.scope !258841
  br label %bb.i, !dbg !258838

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258779
  store i64 %1, ptr %i.az, align 8, !dbg !258855
  store i64 %2, ptr %i.a, align 8, !dbg !258856
  ret void, !dbg !258857
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258858 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258859), !dbg !258862
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !258863
  %i.b = load i64, ptr %i.a, align 8, !dbg !258863, !alias.scope !258859, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !258863
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !258863

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258865
  %i.e = load i64, ptr %i.d, align 8, !dbg !258865, !alias.scope !258859, !noundef !11
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258866

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !258867
  %i.g = load i64, ptr %i.f, align 8, !dbg !258867, !alias.scope !258859, !noundef !11
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !258868
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !258868

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !258869
  %i.j = load i64, ptr %i.i, align 8, !dbg !258869, !alias.scope !258859, !noundef !11
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !258870
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !258870

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258871, !noalias !258859
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258872

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258873, !noalias !258859
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258874

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 @_RNvYxNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !258875, !noalias !258859
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !258874

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !258876
  %i.o = insertvalue { i64, i64 } { i64 1, i64 undef }, i64 %.sroa.5.0.i, 1, !dbg !258877
  ret { i64, i64 } %i.o, !dbg !258878
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258879 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !258880, !prof !13851

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !258890, !noalias !258891
  unreachable, !dbg !258890

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !258894
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !258894
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !258894, !prof !13851

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !258900
  %i.c = icmp samesign eq i64 %3, %4, !dbg !258914
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph17.i, !dbg !258924

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !258925 ; 3 uses
  %8 = sub i64 %4, %3, !dbg !258924
  %i.e = add i64 %8, 2305843009213693951, !dbg !258924
  %9 = and i64 %i.e, 2305843009213693951, !dbg !258924 ; 2 uses
  %i.f = add nuw nsw i64 %9, 1, !dbg !258924      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 3, !dbg !258924
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !258924

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.g = shl i64 %n.vec, 3
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  br label %vector.body, !dbg !258924

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16, !dbg !258929
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !258929, !noalias !258891
  %wide.load9 = load <2 x i64>, ptr %i.j, align 8, !dbg !258929, !noalias !258891
  %i.k = add <2 x i64> %wide.load, %vec.phi, !dbg !258931 ; 2 uses
  %i.l = add <2 x i64> %wide.load9, %vec.phi8, !dbg !258931 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !258924
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !258924, !llvm.loop !258934

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k, !dbg !258924
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !258924 ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec, !dbg !258924
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !258924

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.n, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.h, %middle.block ]
  br label %scalar.ph, !dbg !258924

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !258935, !noalias !258891
  unreachable, !dbg !258935

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i64 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !258936
  %.sroa.06.015.i = phi ptr [ %i.p, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !258936 ; 2 uses
  %i.q = load i64, ptr %.sroa.06.015.i, align 8, !dbg !258929, !noalias !258891, !noundef !11
  %i.r = add i64 %i.q, %i.o, !dbg !258931         ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.b, !dbg !258914
  br i1 %i.s, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !258924, !llvm.loop !258939

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.r, %scalar.ph ], !dbg !258940
  store ptr %1, ptr %0, align 8, !dbg !258941
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !258941
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !258941
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !258941
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !258941
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258941
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !258941
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !258941
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !258941
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258941
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !258941
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !258941
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !258941
  ret void, !dbg !258942
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !258887 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !258943 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !258943, !noundef !11 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !258944
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !258944

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !258945
  br label %bb.c, !dbg !258944

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !258946
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !258948, !alias.scope !258949
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258952
  store i64 %1, ptr %i.d, align 8, !dbg !258952
  store i64 %1, ptr %i.a, align 8, !dbg !258953
  br label %bb.c, !dbg !258954

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !258945 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !258955, !nonnull !11, !align !847, !noundef !11 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !258955
  %i.i = load i64, ptr %i.h, align 8, !dbg !258955, !noundef !11 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !258956
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !258956
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !258956, !prof !13851

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !258960
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !258967
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !258968

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !258974 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !258977 ; 2 uses
  %3 = sub i64 %1, %i.f, !dbg !258968
  %i.o = add i64 %3, 2305843009213693951, !dbg !258968
  %4 = and i64 %i.o, 2305843009213693951, !dbg !258968 ; 2 uses
  %i.p = add nuw nsw i64 %4, 1, !dbg !258968      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 3, !dbg !258968
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !258968

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body, !dbg !258968

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.s, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16, !dbg !258982
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !258982
  %wide.load31 = load <2 x i64>, ptr %i.u, align 8, !dbg !258982
  %i.v = sub <2 x i64> %vec.phi, %wide.load, !dbg !258984 ; 2 uses
  %i.w = sub <2 x i64> %vec.phi30, %wide.load31, !dbg !258984 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !258968
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !258968, !llvm.loop !258987

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v, !dbg !258968
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !258968 ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec, !dbg !258968
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !258968

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph52 = phi i64 [ %.promoted, %.lr.ph ], [ %i.y, %middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !258968

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1384) #57, !dbg !258988
  unreachable, !dbg !258988

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.z = phi i64 [ %i.ac, %scalar.ph ], [ %.ph52, %scalar.ph.preheader ], !dbg !258989
  %.sroa.03.014 = phi ptr [ %i.aa, %scalar.ph ], [ %.sroa.03.014.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !258989 ; 2 uses
  %i.ab = load i64, ptr %.sroa.03.014, align 8, !dbg !258982, !noundef !11
  %i.ac = sub i64 %i.z, %i.ab, !dbg !258984       ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.k, !dbg !258967
  br i1 %i.ad, label %._crit_edge, label %scalar.ph, !dbg !258968, !llvm.loop !258991

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa29 = phi i64 [ %i.y, %middle.block ], [ %i.ac, %scalar.ph ], !dbg !258984
  store i64 %.lcssa29, ptr %i.n, align 8, !dbg !258984, !alias.scope !258977
  br label %bb.f, !dbg !258968

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ae = icmp ult i64 %2, %i.e, !dbg !258992
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ae, !dbg !258992
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !258992, !prof !13851

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !258996
  %i.ag = icmp samesign eq i64 %i.e, %2, !dbg !259001
  br i1 %i.ag, label %bb.i, label %.lr.ph17, !dbg !259004

.lr.ph17:                                         ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !259005 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted19 = load i64, ptr %i.ai, align 8, !alias.scope !259007 ; 2 uses
  %5 = sub i64 %2, %i.e, !dbg !259004
  %i.aj = add i64 %5, 2305843009213693951, !dbg !259004
  %6 = and i64 %i.aj, 2305843009213693951, !dbg !259004 ; 2 uses
  %i.ak = add nuw nsw i64 %6, 1, !dbg !259004     ; 2 uses
  %min.iters.check33 = icmp samesign ult i64 %6, 3, !dbg !259004
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.ph34, !dbg !259004

vector.ph34:                                      ; preds = %.lr.ph17
  %n.vec35 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.al = shl i64 %n.vec35, 3
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted19, i64 0
  br label %vector.body36, !dbg !259004

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body36 ] ; 2 uses
  %vec.phi38 = phi <2 x i64> [ %i.an, %vector.ph34 ], [ %i.aq, %vector.body36 ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph34 ], [ %i.ar, %vector.body36 ]
  %i.ao = shl i64 %index37, 3
  %next.gep40 = getelementptr i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep40, i64 16, !dbg !259012
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !dbg !259012
  %wide.load42 = load <2 x i64>, ptr %i.ap, align 8, !dbg !259012
  %i.aq = add <2 x i64> %vec.phi38, %wide.load41, !dbg !259013 ; 2 uses
  %i.ar = add <2 x i64> %vec.phi39, %wide.load42, !dbg !259013 ; 2 uses
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next43, %n.vec35, !dbg !259004
  br i1 %i.as, label %middle.block44, label %vector.body36, !dbg !259004, !llvm.loop !259016

middle.block44:                                   ; preds = %vector.body36
  %bin.rdx45 = add <2 x i64> %i.ar, %i.aq, !dbg !259004
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45), !dbg !259004 ; 2 uses
  %cmp.n46 = icmp eq i64 %i.ak, %n.vec35, !dbg !259004
  br i1 %cmp.n46, label %._crit_edge18, label %scalar.ph32.preheader, !dbg !259004

scalar.ph32.preheader:                            ; preds = %.lr.ph17, %middle.block44
  %.ph = phi i64 [ %.promoted19, %.lr.ph17 ], [ %i.at, %middle.block44 ]
  %.sroa.06.015.ph = phi ptr [ %i.ah, %.lr.ph17 ], [ %i.am, %middle.block44 ]
  br label %scalar.ph32, !dbg !259004

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1383) #57, !dbg !259017
  unreachable, !dbg !259017

scalar.ph32:                                      ; preds = %scalar.ph32.preheader, %scalar.ph32
  %i.au = phi i64 [ %i.ax, %scalar.ph32 ], [ %.ph, %scalar.ph32.preheader ], !dbg !259018
  %.sroa.06.015 = phi ptr [ %i.av, %scalar.ph32 ], [ %.sroa.06.015.ph, %scalar.ph32.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8, !dbg !259018 ; 2 uses
  %i.aw = load i64, ptr %.sroa.06.015, align 8, !dbg !259012, !noundef !11
  %i.ax = add i64 %i.au, %i.aw, !dbg !259013      ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.af, !dbg !259001
  br i1 %i.ay, label %._crit_edge18, label %scalar.ph32, !dbg !259004, !llvm.loop !259020

._crit_edge18:                                    ; preds = %scalar.ph32, %middle.block44
  %.lcssa = phi i64 [ %i.at, %middle.block44 ], [ %i.ax, %scalar.ph32 ], !dbg !259013
  store i64 %.lcssa, ptr %i.ai, align 8, !dbg !259013, !alias.scope !259007
  br label %bb.i, !dbg !259004

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258945
  store i64 %1, ptr %i.az, align 8, !dbg !259021
  store i64 %2, ptr %i.a, align 8, !dbg !259022
  ret void, !dbg !259023
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !259024 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259025), !dbg !259028
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !259029
  %i.b = load i64, ptr %i.a, align 8, !dbg !259029, !alias.scope !259025, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !259029
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !259029

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !259031
  %i.e = load i64, ptr %i.d, align 8, !dbg !259031, !alias.scope !259025, !noundef !11
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !259032

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !259033
  %i.g = load i64, ptr %i.f, align 8, !dbg !259033, !alias.scope !259025, !noundef !11
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !259034
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !259034

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !259035
  %i.j = load i64, ptr %i.i, align 8, !dbg !259035, !alias.scope !259025, !noundef !11
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !259036
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !259036

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !259037, !noalias !259025
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !259038

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !259039, !noalias !259025
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !259040

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 @_RNvYyNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCs1LHh8CLbVkQ_11polars_core(), !dbg !259041, !noalias !259025
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCs1LHh8CLbVkQ_11polars_core.exit, !dbg !259040

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowyyE7get_sumCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !259042
  %i.o = insertvalue { i64, i64 } { i64 1, i64 undef }, i64 %.sroa.5.0.i, 1, !dbg !259043
  ret { i64, i64 } %i.o, !dbg !259044
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7decimalINtB6_7LogicalNtNtBa_9datatypes11DecimalTypeNtB1m_10Int128TypeENtB6_11LogicalType13get_any_value(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 16 %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !259045 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !259047
  %i.f = load i64, ptr %i.e, align 16, !dbg !259047, !noundef !11 ; 4 uses
  %i.g = icmp ult i64 %2, %i.f, !dbg !259052
  br i1 %i.g, label %bb.b, label %.split, !dbg !259052, !prof !1046

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !259053
  store i64 %i.f, ptr %i.b, align 8, !dbg !259054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !259058
  store ptr %i.d, ptr %i.a, align 8, !dbg !259058
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !259058
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !259058
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !259058
  store ptr %i.b, ptr %i.h, align 8, !dbg !259058
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !259058
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !259058
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @466, ptr noundef nonnull %i.a), !dbg !259061, !noalias !259067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !259070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !259070
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !259070
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.412.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1387), !dbg !259071
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !259070
  store i64 7, ptr %i.i, align 8, !dbg !259070
  br label %bb.i, !dbg !259075

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !259076 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !dbg !259076, !noalias !259085, !noundef !11 ; 6 uses
  %i.l = icmp ult i64 %i.k, 576460752303423488, !dbg !259088
  tail call void @llvm.assume(i1 %i.l), !dbg !259090
  %i.m = icmp eq i64 %i.k, 1, !dbg !259091
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !259092 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !dbg !259092, !noalias !259085, !nonnull !11, !noundef !11 ; 5 uses
  br i1 %i.m, label %bb.c, label %bb.d, !dbg !259091

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !dbg !259093, !noalias !259085, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !259093
  %i.r = load ptr, ptr %i.q, align 8, !dbg !259093, !noalias !259085, !nonnull !11, !align !847, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48, !dbg !259093
  %i.t = load ptr, ptr %i.s, align 8, !dbg !259093, !invariant.load !11, !noalias !259085, !nonnull !11
  %i.u = tail call noundef i64 %i.t(ptr noundef nonnull %i.p) #55, !dbg !259094, !noalias !259085, !inline_history !259095 ; 2 uses
  %i.v = icmp uge i64 %2, %i.u, !dbg !259096      ; 2 uses
  %i.w = select i1 %i.v, i64 %i.u, i64 0, !dbg !259096
  %spec.select13.i.i = sub nuw i64 %2, %i.w, !dbg !259096
  %i.x = zext i1 %i.v to i64, !dbg !259096
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10Int128TypeE22index_to_chunked_indexBa_.exit.i, !dbg !259096

bb.d:                                             ; preds = %bb.b
  %.idx.i.i = shl nuw nsw i64 %i.k, 4, !dbg !259098 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i, !dbg !259098 ; 2 uses
  %i.z = lshr i64 %i.f, 1, !dbg !259109
  %.not.i.i = icmp ugt i64 %2, %i.z, !dbg !259112
  br i1 %.not.i.i, label %bb.e, label %bb.g, !dbg !259112

bb.e:                                             ; preds = %bb.d
  %i.aa = sub i64 %i.f, %2, !dbg !259113          ; 2 uses
  %i.ab = icmp eq i64 %i.k, 0, !dbg !259114
  br i1 %i.ab, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjEB4_.exit.i.i, label %.lr.ph.i.preheader.i.i, !dbg !259121

.lr.ph.i.preheader.i.i:                           ; preds = %bb.e
  %i.ac = add nsw i64 %.idx.i.i, -16, !dbg !259122
  %i.ad = lshr exact i64 %i.ac, 4, !dbg !259122
  %i.ae = add nuw nsw i64 %i.ad, 2, !dbg !259122
  br label %.lr.ph.i.i.i, !dbg !259122

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.preheader.i.i
  %.sroa.0.019.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.aa, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.sroa.08.018.i.i.i = phi i64 [ %i.al, %bb.f ], [ 1, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.sroa.4.017.i.i.i = phi ptr [ %i.af, %bb.f ], [ %i.y, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i, i64 -16, !dbg !259123 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259128), !dbg !259131
  %.val.i.i.i = load ptr, ptr %i.af, align 8, !dbg !259135, !alias.scope !259128, !noalias !259138, !nonnull !11, !noundef !11
  %i.ag = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i, i64 -8, !dbg !259135
  %.val2.i.i.i = load ptr, ptr %i.ag, align 8, !dbg !259135, !alias.scope !259128, !noalias !259138, !nonnull !11, !align !847, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 48, !dbg !259145
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !259145, !invariant.load !11, !noalias !259148, !nonnull !11
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull %.val.i.i.i) #55, !dbg !259149, !noalias !259148, !inline_history !259150 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.aj, %.sroa.0.019.i.i.i, !dbg !259151
  br i1 %.not.i.i.i, label %bb.f, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjEB4_.exit.i.i, !dbg !259122

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = sub nuw i64 %.sroa.0.019.i.i.i, %i.aj, !dbg !259153 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.08.018.i.i.i, 1, !dbg !259155
  %i.am = icmp eq ptr %i.o, %i.af, !dbg !259114
  br i1 %i.am, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjEB4_.exit.i.i, label %.lr.ph.i.i.i, !dbg !259121

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjEB4_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
end_hunk_2
