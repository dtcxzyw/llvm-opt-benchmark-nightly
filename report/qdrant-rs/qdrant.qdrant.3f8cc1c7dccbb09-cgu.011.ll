Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.011?download=true
inline.NumInlined: 4847
inline.NumDeleted: 2086
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.i

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i64 [ %i.j, %bb.g ], [ %.pre, %bb.f ]
  %.sroa.5.0 = phi i64 [ %i.b, %bb.g ], [ %.sroa.7.0.ph.i, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.s, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !5621, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !5622
  %i.u = xor i64 %i.b, -1
  %i.v = getelementptr [24 x i8], ptr %i.t, i64 %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = xor i64 %.sroa.5.0, -1
  %i.x = getelementptr [24 x i8], ptr %.sroa.0.0, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = mul i64 %.sroa.5.0, 24
  %i.z = add i64 %i.y, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.v, i64 %i.z, i1 false), !noalias !5622
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !5621
  store <2 x i64> %i.ab, ptr %.sroa.93.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 72) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = add nuw i64 %i.i, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add i64 %i.d, 17                         ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !22

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !5645
  %i.q = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !5645 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5645
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !5645
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %i.v = icmp ult i64 %i.d, 8
  %i.w = lshr i64 %i.f, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i = select i1 %i.v, i64 %i.d, i64 %i.x
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.l, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.f ], [ %i.d, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5649)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !5650, !nonnull !16, !noundef !16 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.y, i64 %.pre-phi, i1 false), !noalias !5651
  %.sink.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i.i.sroa.gep16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !5650, !noundef !16 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit
  %.val13.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !5652
  %i.ac = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.n, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEEENCNvMse_B1y_B1v_15clone_from_impl0EECsl8OoimOLbh_6qdrant(i64 %.sroa.011.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #36
          to label %.body unwind label %bb.q, !noalias !5650

bb.i:                                             ; preds = %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %.lr.ph.i.i
  %.sroa.011.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bs, %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.012.027.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.813.025.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.sroa.1014.024.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.at, %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.813.025.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.i ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.012.027.i.i, %bb.i ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !5653
  %i.ak = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -1152 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ak to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.i ], [ %i.am, %.lr.ph.i.i.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.027.i.i, %bb.i ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.025.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [72 x i8], ptr %.sroa.012.1.i.i, i64 %i.ar ; 6 uses
  %i.at = add i64 %.sroa.1014.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5651
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5657)
  %i.av = load i64, ptr %i.au, align 8, !range !29, !alias.scope !5658, !noalias !5651, !noundef !16
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -64 ; 2 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i.i
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !5658, !noalias !5651, !noundef !16
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.k:                                             ; preds = %.loopexit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 -49
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !5658, !noalias !5651, !noundef !16
  %.not.i.i.i.i = icmp slt i8 %i.ba, 0
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 -56
  %.val.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !5658, !noalias !5651 ; 4 uses
  %.val21.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !5658, !noalias !5651 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.bd = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8, !noalias !5659
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.m, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, !prof !17

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val21.i.i.i.i) #38
          to label %.noexc.i.i unwind label %bb.h, !noalias !5651

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.k, %bb.l
  store ptr %.val.i.i.i.i, ptr %.sink.i.i.sroa.gep16.i.i, align 8, !alias.scope !5660, !noalias !5651
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.j
  %.sink.i.i.sroa.phi.i.i = phi ptr [ %.sink.i.i.sroa.gep.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sink.i.i.sroa.gep16.i.i, %bb.j ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.ay, %bb.j ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.j ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.i.sroa.phi.i.i, align 8, !alias.scope !5660, !noalias !5651
  store i64 %storemerge.i.i.i.i, ptr %i.a, align 8, !alias.scope !5660, !noalias !5651
  %i.bf = getelementptr inbounds i8, ptr %i.as, i64 -48
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf)
          to label %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.n, !noalias !5651

bb.n:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load i64, ptr %i.a, align 8, !range !29, !alias.scope !5661, !noalias !5651, !noundef !16
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !5661, !noalias !5651
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.bk, -1
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.o, label %.body.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.i.sroa.gep16.i.i)
          to label %.body.i.i unwind label %bb.p, !noalias !5651

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !5651
  unreachable

_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %i.bm = ptrtoint ptr %i.as to i64
  %i.bn = sub i64 %i.ag, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 72                ; 2 uses
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [72 x i8], ptr %.sroa.0.0, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !5651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5651
  %i.bs = add nsw i64 %i.bo, 1
  %i.bt = icmp eq i64 %i.at, 0
  br i1 %i.bt, label %.loopexit, label %bb.i

bb.q:                                             ; preds = %.body.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !5651
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.s

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.t

.loopexit:                                        ; preds = %_RNvYTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit
  store i64 %i.aa, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !5662
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !5650, !noundef !16
  store i64 %i.bw, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !5662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r
  ret void

bb.t:                                             ; preds = %.body
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types18PayloadFieldSchemaEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7.sroa.0.i.i.i.i.i.i = alloca [23 x i8], align 1 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [152 x i8], align 8               ; 20 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 152) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.p, %i.o                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !22

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !5695
  %i.u = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !5695 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5695
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.x = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !5695
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.x, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types18PayloadFieldSchemaEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.u, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.o
  %i.z = icmp ult i64 %i.h, 8
  %i.aa = lshr i64 %i.j, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.07.0.i.i = select i1 %i.z, i64 %i.h, i64 %i.ab
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types18PayloadFieldSchemaEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types18PayloadFieldSchemaEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.p, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.f ], [ %i.h, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.y, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.0.0, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5699)
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !5700, !nonnull !16, !noundef !16 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.ac, i64 %.pre-phi, i1 false), !noalias !5701
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !5700, !noundef !16 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types18PayloadFieldSchemaEE17new_uninitializedCsl8OoimOLbh_6qdrant.exit
  %.val13.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !5702
  %i.ag = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 89
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 145
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 149
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 150
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 151
  %i.am = ptrtoint ptr %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i
  %i.an = landingpad { ptr, i32 }
end_hunk_0
