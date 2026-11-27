Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs9JgWGBoX3PY_12lance_linalg:bb.a
bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ba = load i64, ptr %i.af, align 8, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !27 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.ba, 0
  %i.bf = icmp eq i64 %i.bc, 1
  %or.cond.i.i.i.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i.i, label %bb.q, label %common.resume, !prof !29

bb.q:                                             ; preds = %.body.i
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
          to label %common.resume unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %i.af, align 8, !noundef !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !27 ; 2 uses
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i64 %i.bg, 0
  %i.bl = icmp eq i64 %i.bi, 1
  %or.cond.i.i.i3.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i3.i, label %bb.s, label %_RNCINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs9JgWGBoX3PY_12lance_linalg.exit, !prof !29

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
  br label %_RNCINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs9JgWGBoX3PY_12lance_linalg.exit

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs9JgWGBoX3PY_12lance_linalg.exit

_RNCINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0Cs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.s, %bb.r, %bb.u
  %.sroa.0.0 = phi ptr [ %.val.i, %bb.u ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l226do_l2_distance_arrow_batchNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address, read_provenance) %.32.val, i64 %.40.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1846 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [328 x i8], align 8               ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [328 x i8], align 8               ; 16 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [328 x i8], align 8               ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.p, align 8, !noundef !27
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = tail call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 4 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !27, !nonnull !27
  call void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef %i.u)
  %i.y = load i128, ptr %i.h, align 16, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray10value_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @51, ptr %i.l, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXNtCsc2V0exE7CWf_11lance_arrow6floatsNtB2_9FloatTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.z, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @48, ptr noundef nonnull %i.l)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.m) #77
          to label %common.resume unwind label %bb.ap

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  %i.ab = icmp ne i128 %i.y, -166190901438446393179604529744170412853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 -9223372036854775802, ptr %i.o, align 8
  %.not1 = icmp eq ptr %i.u, null
  %.not = or i1 %.not1, %i.ab
  br i1 %.not, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ad = lshr i64 %.40.val, 2
  %i.ae = getelementptr i8, ptr %i.u, i64 32
  %..val = load ptr, ptr %i.ae, align 8, !noundef !27
  %i.af = getelementptr i8, ptr %i.u, i64 40
  %..val54 = load i64, ptr %i.af, align 8, !noundef !27
  %i.ag = lshr i64 %..val54, 2
  call void @_RNvXs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2fNtB5_2L28l2_batch(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(address) dereferenceable(328) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.32.val, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %..val, i64 noundef %i.ag, i64 noundef %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(328) %i.k, i64 328, i1 false), !alias.scope !1850, !noalias !1851
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1854
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1856, !noalias !1849, !noundef !27 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 312 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1856, !noalias !1849, !noundef !27 ; 2 uses
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1858, !noalias !1849, !noundef !27 ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %i.an, align 8, !alias.scope !1858, !noalias !1849, !noundef !27 ; 4 uses
  %i.as = udiv i64 %i.ar, %i.ap
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 64) ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecfEEB8_.exit.i.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #74, !noalias !1859
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.at = mul i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.ap ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.at, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %.thread.i.i.i.i.i.i.i, !prof !32

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @124, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #74, !noalias !1860
  unreachable

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.g
  %i.au = load ptr, ptr %i.am, align 8, !alias.scope !1858, !noalias !1849, !nonnull !27, !align !46, !noundef !27 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = sub nuw nsw i64 %i.ar, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1858, !noalias !1849, !noundef !27
  %i.ba = load ptr, ptr %i.d, align 8, !alias.scope !1858, !noalias !1849, !nonnull !27, !align !46, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1858, !noalias !1849, !nonnull !27, !noundef !27
  call void %i.bc(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ba, i64 noundef %i.az, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.au, i64 noundef %i.at, i64 noundef %i.ap, ptr noalias noundef nonnull align 4 %i.ax, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i), !noalias !1861, !inline_history !1809
  store ptr %i.av, ptr %i.am, align 8, !alias.scope !1858, !noalias !1849
  store i64 %i.aw, ptr %i.an, align 8, !alias.scope !1858, !noalias !1849
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !alias.scope !1858, !noalias !1849
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.bd = icmp ult i64 %i.ai, 64
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @444) #74, !noalias !1862
  unreachable

bb.k:                                             ; preds = %bb.i, %.thread.i.i.i.i.i.i.i
  %i.be = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.ak, %bb.i ]
  %i.bf = phi i64 [ 0, %.thread.i.i.i.i.i.i.i ], [ %i.ai, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load float, ptr %i.bh, align 4, !alias.scope !1856, !noalias !1849, !noundef !27
  %i.bj = add nuw nsw i64 %i.bf, 1
  store i64 %i.bj, ptr %i.ah, align 8, !alias.scope !1856, !noalias !1849
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1865, !noalias !1849, !noundef !27 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #74, !noalias !1866
  unreachable

_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1865, !noalias !1849, !noundef !27
  %.neg.i.i.i.i.i = xor i64 %i.bf, -1
  %2 = add i64 %i.be, %.neg.i.i.i.i.i
  %i.bp = udiv i64 %i.bo, %i.bl
  %i.bq = add i64 %2, %i.bp
  %i.br = call i64 @llvm.uadd.sat.i64(i64 %i.bq, i64 1) ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.br, i64 4) ; 2 uses
  %i.bs = shl i64 %.sroa.0.0.i8.i.i.i.i.i.i, 2    ; 3 uses
  %i.bt = icmp ugt i64 %i.br, 4611686018427387903
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bs, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.bt, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m, !prof !36

bb.m:                                             ; preds = %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !1867
  %i.bu = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 4) #76, !noalias !1867 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.n, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m, %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 4, %bb.m ], [ 0, %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.bs) #74, !noalias !1861
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %bb.m
  store float %i.bi, ptr %i.bu, align 4, !noalias !1861
  store i64 %.sroa.0.0.i8.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1854
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1854
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.d, i64 328, i1 false), !noalias !1861
  call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %i.ce = phi ptr [ %i.dk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i ], [ %i.bu, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.cf = load i64, ptr %i.bw, align 8, !alias.scope !1873, !noalias !1854, !noundef !27 ; 4 uses
  %i.cg = load i64, ptr %i.bx, align 8, !alias.scope !1873, !noalias !1854, !noundef !27 ; 2 uses
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  %i.ci = load i64, ptr %i.ca, align 8, !alias.scope !1875, !noalias !1854, !noundef !27 ; 5 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.invoke.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load i64, ptr %i.bz, align 8, !alias.scope !1875, !noalias !1854, !noundef !27 ; 4 uses
  %i.cl = udiv i64 %i.ck, %i.ci
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 64) ; 4 uses
  %.not.i.i.i9.i.i.i.i.i.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i.i.i9.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB1f_2l27L2BatchEE11spec_extendB1h_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = mul i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %i.ci ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.cm, %i.ck
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %.thread.i.i.i.i.i.i.i.i.i, !prof !32

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @124, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #74
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1876

.noexc10.i.i.i.i.i.i:                             ; preds = %bb.s
  unreachable

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.r
  %i.cn = load ptr, ptr %i.by, align 8, !alias.scope !1875, !noalias !1854, !nonnull !27, !align !46, !noundef !27 ; 2 uses
  %i.co = load i64, ptr %i.cc, align 8, !alias.scope !1875, !noalias !1854, !noundef !27
  %i.cp = load ptr, ptr %i.b, align 8, !alias.scope !1875, !noalias !1854, !nonnull !27, !align !46, !noundef !27
  %i.cq = load ptr, ptr %i.cd, align 8, !alias.scope !1875, !noalias !1854, !nonnull !27, !noundef !27
  invoke void %i.cq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cp, i64 noundef %i.co, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %i.ci, ptr noalias noundef nonnull align 4 %i.cb, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1877, !inline_history !1830

.noexc11.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.cr = sub nuw nsw i64 %i.ck, %i.cm
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  store ptr %i.cs, ptr %i.by, align 8, !alias.scope !1875, !noalias !1854
  store i64 %i.cr, ptr %i.bz, align 8, !alias.scope !1875, !noalias !1854
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bx, align 8, !alias.scope !1875, !noalias !1854
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.ct = icmp ult i64 %i.cf, 64
  br i1 %i.ct, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @444) #74
          to label %.noexc12.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1878

.noexc12.i.i.i.i.i.i:                             ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t, %.noexc11.i.i.i.i.i.i
  %i.cu = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i ], [ %i.cg, %bb.t ]
  %i.cv = phi i64 [ 0, %.noexc11.i.i.i.i.i.i ], [ %i.cf, %bb.t ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !alias.scope !1873, !noalias !1854, !noundef !27
  %i.cy = add nuw nsw i64 %i.cv, 1
  store i64 %i.cy, ptr %i.bw, align 8, !alias.scope !1873, !noalias !1854
  %i.cz = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.cz)
  %i.da = load i64, ptr %i.c, align 8, !range !38, !alias.scope !1879, !noalias !1854, !noundef !27
  %i.db = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.da
  br i1 %i.db, label %bb.w, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  %i.dc = load i64, ptr %i.ca, align 8, !alias.scope !1882, !noalias !1854, !noundef !27 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.invoke.i.i.i.i.i.i, label %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.w, %bb.p
  %i.de = phi ptr [ @121, %bb.p ], [ @312, %bb.w ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de) #74
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1883

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.df = load i64, ptr %i.bz, align 8, !alias.scope !1882, !noalias !1854, !noundef !27
  %.neg.i.i.i.i.i.i.i = xor i64 %i.cv, -1
  %i.dg = add i64 %i.cu, %.neg.i.i.i.i.i.i.i
  %i.dh = udiv i64 %i.df, %i.dc
  %i.di = add i64 %i.dg, %i.dh
  %i.dj = call i64 @llvm.uadd.sat.i64(i64 %i.di, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.dj, i64 noundef 4, i64 noundef 4)
          to label %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1861

_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1879, !noalias !1854
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i.i, %bb.v
  %i.dk = phi ptr [ %.pre.i.i.i.i.i.i, %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.ce, %bb.v ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.sroa.7.0.copyload.i.i
  store float %i.cx, ptr %i.dl, align 4, !noalias !1877
  %i.dm = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.dm, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1879, !noalias !1854
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtCs9JgWGBoX3PY_12lance_linalg8distanceINtB4_9BatchIterNtNtB4_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintB6_.exit.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i, %bb.u, %bb.s
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !1854 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dn, label %common.resume, label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val7.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1854, !nonnull !27, !noundef !27
  %i.do = shl nuw i64 %.val.i.i.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !1861
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB1f_2l27L2BatchEE11spec_extendB1h_.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1854
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !1884
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1884
  br label %_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecfEEB8_.exit.i.i

common.resume:                                    ; preds = %bb.b, %bb.al, %bb.ah, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.en, %bb.al ], [ %i.dx, %bb.z ], [ %i.eh, %bb.ah ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp53, %bb.x ], [ %i.aa, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecfEEB8_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB1f_2l27L2BatchEE11spec_extendB1h_.exit.i.i.i.i.i.i, %bb.e
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB1f_2l27L2BatchEE11spec_extendB1h_.exit.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB1f_2l27L2BatchEE11spec_extendB1h_.exit.i.i.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB1f_2l27L2BatchEE11spec_extendB1h_.exit.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1849
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.dp = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.dr = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.ds = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1886
  store i64 1, ptr %i.a, align 8, !noalias !1886
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.dt, align 8, !noalias !1886
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.du, align 8, !noalias !1886
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ds, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1886
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !1886
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1886
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.dr, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1886
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !1887
  %i.dv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !1887 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.y, label %_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEEB8_.exit, !prof !32

bb.y:                                             ; preds = %_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecfEEB8_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !1887

.noexc.i.i.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #77
          to label %common.resume unwind label %bb.aa, !noalias !1886

bb.aa:                                            ; preds = %bb.z
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !1886
  unreachable

_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferfEEB8_.exit: ; preds = %_RINvYINtNtCs9JgWGBoX3PY_12lance_linalg8distance9BatchIterNtNtB6_2l27L2BatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecfEEB8_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dv, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1886
  store ptr %i.dv, ptr %i.j, align 8, !alias.scope !1888
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1888
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ds, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !noundef !27 ; 3 uses
  %.not52 = icmp eq ptr %i.ea, null
  br i1 %.not52, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.427.0.copyload = load ptr, ptr %i.ac, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
end_hunk_0
begin_hunk_1_@_RINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTjjEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB2S_41pairwise_hamming_distance_binary_parallel0EEB2W_:bb.a
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.562.0.copyload = load i64, ptr %.sroa.562.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %.sroa.047.0.copyload, i64 %.sroa.855.0.copyload
  %i.at = icmp eq ptr %i.as, %.sroa.060.0.copyload
  br i1 %i.at, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_RINvNtCseYO0BYRUZk5_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProducerTjjEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4e_41pairwise_hamming_distance_binary_parallel0EE0NCB1i_s_0INtB3w_13CollectResultB4c_EB6k_E0TB6k_B6k_EEB4i_.exit
  store ptr %.sroa.047.0.copyload, ptr %0, align 8, !alias.scope !2478
  %.sroa.650.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.650.0.copyload, ptr %.sroa.650.0..sroa_idx51, align 8, !alias.scope !2478
  %.sroa.855.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.855.0.copyload, ptr %.sroa.855.0..sroa_idx56, align 8, !alias.scope !2478
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.au = icmp eq i64 %.sroa.562.0.copyload, 0
  br i1 %i.au, label %_RNvXs6_NtNtNtCs8b6P7Nzverp_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEE6reduceB22_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_.exit.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %.sroa.060.0.copyload, i64 %.sroa.0.07.i.i.i.i ; 6 uses
  %i.aw = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  %.val5.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !2481, !noalias !2482 ; 2 uses
  %i.ax = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val6.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !2481, !noalias !2482, !nonnull !27, !noundef !27
  %i.az = shl nuw i64 %.val5.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !2483
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !2481, !noalias !2482 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit12.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.val2.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !2481, !noalias !2482, !nonnull !27, !noundef !27
  %i.bd = shl nuw i64 %.val.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !2483
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit12.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit12.i.i.i.i.i: ; preds = %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %.val7.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !2481, !noalias !2482 ; 2 uses
  %i.bf = icmp eq i64 %.val7.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit12.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %.val8.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2481, !noalias !2482, !nonnull !27, !noundef !27
  %i.bh = shl nuw i64 %.val7.i.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !2483
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_.exit.i.i.i.i: ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit12.i.i.i.i.i
  %i.bi = icmp eq i64 %i.aw, %.sroa.562.0.copyload
  br i1 %i.bi, label %_RNvXs6_NtNtNtCs8b6P7Nzverp_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEE6reduceB22_.exit, label %.lr.ph.i.i.i.i

bb.aa:                                            ; preds = %_RINvNtCseYO0BYRUZk5_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProducerTjjEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4e_41pairwise_hamming_distance_binary_parallel0EE0NCB1i_s_0INtB3w_13CollectResultB4c_EB6k_E0TB6k_B6k_EEB4i_.exit
  %i.bj = add i64 %.sroa.461.0.copyload, %.sroa.650.0.copyload
  %i.bk = add i64 %.sroa.562.0.copyload, %.sroa.855.0.copyload
  store ptr %.sroa.047.0.copyload, ptr %0, align 8, !alias.scope !2478
  %.sroa.650.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %.sroa.650.0..sroa_idx53, align 8, !alias.scope !2478
  %.sroa.855.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bk, ptr %.sroa.855.0..sroa_idx58, align 8, !alias.scope !2478
  br label %_RNvXs6_NtNtNtCs8b6P7Nzverp_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEE6reduceB22_.exit

_RNvXs6_NtNtNtCs8b6P7Nzverp_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEE6reduceB22_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_.exit.i.i.i.i, %bb.aa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %_RNvXs6_NtNtNtCs8b6P7Nzverp_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEE6reduceB22_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !2486 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 4 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  %.not.i6 = icmp ugt i64 %i.a, 9223372036854775800
  %or.cond.i = or i1 %i.b, %.not.i6
  br i1 %or.cond.i, label %bb.f, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !2487
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.a, i64 noundef range(i64 1, 9) 8) #76, !noalias !2487 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %1, %bb.d ], [ 0, %bb.b ]
  %.sroa.10.0 = phi i64 [ %i.f, %bb.d ], [ 8, %bb.b ]
  %i.g = inttoptr i64 %.sroa.10.0 to ptr
  store i64 %.sroa.4.0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.i, align 8
  ret void

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.a) #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBD_7collectINtNtB8_3vec3VecfEECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !2509 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2516
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !27, !alias.scope !2517, !nonnull !27 ; 2 uses
  %i.f = invoke { i32, float } %i.e(ptr noundef nonnull %1)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i unwind label %bb.u, !noalias !2516, !inline_history !2497 ; 2 uses

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %bb.a
  %i.g = extractvalue { i32, float } %i.f, 0
  %i.h = extractvalue { i32, float } %i.f, 1
  %i.i = trunc i32 %i.g to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2516
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !27, !alias.scope !2517, !noalias !2518, !nonnull !27 ; 2 uses
  invoke void %i.k(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.u, !noalias !2516, !inline_history !2500

bb.c:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !2519
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8, !alias.scope !2519
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !alias.scope !2519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2516
  %i.n = load ptr, ptr %2, align 8, !invariant.load !27, !alias.scope !2517 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.n(ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.f, !noalias !2516

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !38, !invariant.load !27, !alias.scope !2517 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecfEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtB8_5boxed3BoxDNtNtBN_8iterator8Iteratorp4ItemfEL_EECs9JgWGBoX3PY_12lance_linalg.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !37, !invariant.load !27, !alias.scope !2517
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #76, !noalias !2516
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecfEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtB8_5boxed3BoxDNtNtBN_8iterator8Iteratorp4ItemfEL_EECs9JgWGBoX3PY_12lance_linalg.exit

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !38, !invariant.load !27, !alias.scope !2517 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !37, !invariant.load !27, !alias.scope !2517
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #76, !noalias !2516
  br label %common.resume.i.i.i

common.resume.i.i.i:                              ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.w, %bb.t, %.body.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.f
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.t, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.t ], [ %i.bj, %bb.w ], [ %i.bj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.b, align 8, !noalias !2516, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2516
  %i.aa = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 4) ; 2 uses
  %i.ab = shl i64 %.sroa.0.0.i.i.i.i, 2           ; 3 uses
  %i.ac = icmp ugt i64 %i.aa, 4611686018427387903
  %.not.i.i.i.i.i = icmp ugt i64 %i.ab, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.ac, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %bb.h, !prof !36

bb.h:                                             ; preds = %bb.g
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !2520
  %i.ad = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, 9) 4) #76, !noalias !2520 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.h ], [ 0, %bb.g ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ab) #74
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !2516

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store float %i.h, ptr %i.ad, align 4, !noalias !2516
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.c, align 8, !noalias !2516
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2516
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !2516
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %bb.j
  %i.af = phi ptr [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ], [ %i.ad, %bb.j ]
  %i.ag = phi i64 [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ], [ 1, %bb.j ] ; 5 uses
  %i.ah = invoke { i32, float } %i.e(ptr noundef nonnull %1)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i unwind label %bb.r, !noalias !2525, !inline_history !2497 ; 2 uses

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ai = extractvalue { i32, float } %i.ah, 0
  %i.aj = extractvalue { i32, float } %i.ah, 1
  %i.ak = trunc i32 %i.ai to i1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %i.al = icmp samesign ult i64 %i.ag, 2305843009213693952
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.c, align 8, !range !38, !alias.scope !2526, !noalias !2516, !noundef !27
  %i.an = icmp eq i64 %i.ag, %i.am
  br i1 %i.an, label %bb.q, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.m:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_4nextCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %i.ao = load ptr, ptr %2, align 8, !invariant.load !27, !alias.scope !2527 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ao(ptr noundef nonnull %1)
          to label %bb.o unwind label %bb.p, !noalias !2525

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !38, !invariant.load !27, !alias.scope !2527 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtB6_5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !37, !invariant.load !27, !alias.scope !2527
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) %i.at) #76, !noalias !2525
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtB6_5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !38, !invariant.load !27, !alias.scope !2527 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.body.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !37, !invariant.load !27, !alias.scope !2527
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %i.az) #76, !noalias !2525
  br label %.body.i.i.i

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2525
  invoke void %i.k(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i unwind label %bb.r, !noalias !2525, !inline_history !2500

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i, %bb.l
  %i.ba = phi ptr [ %.pre.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i ], [ %i.af, %bb.l ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ag
  store float %i.aj, ptr %i.bb, align 4, !noalias !2525
  %i.bc = add nuw nsw i64 %i.ag, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2526, !noalias !2516
  br label %bb.k

bb.r:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, %bb.q, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemfEL_EECs9JgWGBoX3PY_12lance_linalg(ptr nonnull %1, ptr nonnull readonly align 8 dereferenceable(56) %2) #77
          to label %.body.i.i.i unwind label %bb.s, !noalias !2528

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.q
  %i.be = load i64, ptr %i.a, align 8, !noalias !2525, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2525
  %i.bf = call i64 @llvm.uadd.sat.i64(i64 %i.be, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ag, i64 noundef %i.bf, i64 noundef 4, i64 noundef 4)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i unwind label %bb.r, !noalias !2529

_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EBM_9size_hintCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2526, !noalias !2516
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !2525
  unreachable

.body.i.i.i:                                      ; preds = %bb.r, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.p
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.au, %bb.p ], [ %i.au, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.c, align 8, !noalias !2516 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bh, label %common.resume.i.i.i, label %bb.t

bb.t:                                             ; preds = %.body.i.i.i
  %.val7.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2516, !nonnull !27, !noundef !27
  %i.bi = shl nuw i64 %.val.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !2516
  br label %common.resume.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtB6_5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2516
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecfEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtB8_5boxed3BoxDNtNtBN_8iterator8Iteratorp4ItemfEL_EECs9JgWGBoX3PY_12lance_linalg.exit

.body.i.i:                                        ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.x
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !2516
  unreachable

bb.u:                                             ; preds = %bb.i, %bb.b, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !invariant.load !27, !alias.scope !2530, !noalias !2514 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.bk(ptr noundef nonnull %1)
          to label %bb.w unwind label %bb.x, !noalias !2531

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !38, !invariant.load !27, !alias.scope !2530, !noalias !2514 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %common.resume.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !37, !invariant.load !27, !alias.scope !2530, !noalias !2514
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) %i.bp) #76, !noalias !2531
  br label %common.resume.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !38, !invariant.load !27, !alias.scope !2530, !noalias !2514 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !37, !invariant.load !27, !alias.scope !2530, !noalias !2514
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %i.bv) #76, !noalias !2531
  br label %.body.i.i

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecfEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorfE9from_iterINtNtB8_5boxed3BoxDNtNtBN_8iterator8Iteratorp4ItemfEL_EECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtB6_5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemfEL_EE11spec_extendCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECs9JgWGBoX3PY_12lance_linalg(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #12 personality ptr @rust_eh_personality !guid !2544 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !2545
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2545
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !2545
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2545
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !2545
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !2545
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2545
  %.val.i = load i64, ptr %0, align 8, !noalias !2546, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2547
  store i64 %.val.i, ptr %i.a, align 8, !noalias !2547
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2547
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !2548
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2548
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !2548 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2548
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !2548, !noundef !27
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2548, !noundef !27
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch:bb.a
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [48 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 8 uses
  %i.aw = alloca [56 x i8], align 8               ; 11 uses
  %i.ax = alloca [48 x i8], align 8               ; 9 uses
  %i.ay = alloca [16 x i8], align 16              ; 4 uses
  %i.az = alloca [104 x i8], align 8              ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [104 x i8], align 8              ; 9 uses
  %i.bd = alloca [96 x i8], align 8               ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !27, !nonnull !27 ; 2 uses
  %i.bg = tail call noundef nonnull align 8 ptr %i.bf(ptr noundef nonnull %1)
  %i.bh = load i8, ptr %i.bg, align 8, !range !39, !noundef !27
  switch i8 %i.bh, label %.split [
    i8 2, label %bb.b
    i8 10, label %bb.bf
    i8 11, label %bb.cj
    i8 12, label %bb.cl
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.bi = tail call noundef nonnull align 8 ptr %i.bf(ptr noundef nonnull %1)
  store ptr %i.bi, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bb, ptr %i.ba, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs9JgWGBoX3PY_12lance_linalg, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull @231, ptr noundef nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.dx

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val26 = load ptr, ptr %i.bj, align 8
  %i.bk = tail call { ptr, ptr } %.val26(ptr noundef nonnull %1), !inline_history !11 ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 10 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !27, !nonnull !27
  call void %i.bo(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ay, ptr noundef %i.bl), !inline_history !11
  %i.bp = load i128, ptr %i.ay, align 16, !noundef !27
  %i.bq = icmp ne i128 %i.bp, 110042066783113313026500756864334383727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not1.i = icmp eq ptr %i.bl, null
  %.not.i = or i1 %.not1.i, %i.bq
  br i1 %.not.i, label %bb.c, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5921)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.val.i.i = load i64, ptr %i.br, align 8, !alias.scope !5921, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5922)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !5923, !noalias !5924, !noundef !27 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.d

bb.d:                                             ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.bu = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8, !noalias !5925
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !5926, !noalias !5924, !noundef !27 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !5926, !noalias !5924, !noundef !27 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !5926, !noalias !5924, !noundef !27 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !5926, !noalias !5924, !noundef !27 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !5926, !noalias !5924, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5927
  store ptr %i.bt, ptr %i.ax, align 8, !noalias !5928
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bx, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !5928
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.bz, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5928
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.cb, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !5928
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %i.cd, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !5928
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.cf, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !5928
  %.not2.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not2.i.i, label %bb.g, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.cg = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !5929
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.h, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ax), !noalias !5927
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.03.0.ph.i = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.bt, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5927
  br label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i
  %.sroa.7.022.i = phi ptr [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bx, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.9.020.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bz, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.10.018.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cb, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.11.016.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cd, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.12.014.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cf, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.03.0.i = phi ptr [ null, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %.sroa.03.0.ph.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5930
  store i64 0, ptr %i.aw, align 8, !noalias !5930
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i64 0, ptr %i.ci, align 8, !noalias !5930
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %.val.i.i, ptr %i.cj, align 8, !noalias !5930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5930
  call void @llvm.experimental.noalias.scope.decl(metadata !5931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5932
  store ptr %i.bl, ptr %i.ao, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %.sroa.7.022.i, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %.sroa.9.020.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %.sroa.10.018.i, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 %.sroa.11.016.i, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 %.sroa.12.014.i, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.486.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.486.0..sroa_idx87, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.589.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  store i64 %.val.i.i, ptr %.sroa.589.0..sroa_idx90, align 8, !alias.scope !5933, !noalias !5934
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store ptr %i.aw, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !5933, !noalias !5935
  call void @llvm.experimental.noalias.scope.decl(metadata !5936)
  call void @llvm.experimental.noalias.scope.decl(metadata !5937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5938
  %i.ck = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorfE9from_iterBW_E0ENtNtB4X_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ao)
          to label %bb.j unwind label %bb.af, !noalias !5939 ; 2 uses

.body11.i:                                        ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.au, %bb.aq, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %.body.i.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.es, %bb.aj ], [ %i.fy, %bb.bd ], [ %i.fe, %bb.ba ], [ %i.ef, %bb.ag ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.ad ], [ %i.ef, %bb.ah ], [ %i.ef, %bb.af ], [ %i.fy, %bb.be ], [ %i.fp, %bb.au ], [ %i.fl, %bb.aq ], [ %i.fe, %bb.bb ], [ %i.fe, %bb.az ] ; 2 uses
  %i.cl = load i64, ptr %i.aw, align 8, !range !45, !alias.scope !5940, !noalias !5930, !noundef !27
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %common.resume, label %bb.i

bb.i:                                             ; preds = %.body11.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aw)
          to label %common.resume unwind label %bb.bc, !noalias !5930

bb.j:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit
  %i.cn = extractvalue { i32, float } %i.ck, 0
  %i.co = extractvalue { i32, float } %i.ck, 1
  %i.cp = trunc i32 %i.cn to i1
  br i1 %i.cp, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5938
  call void @llvm.experimental.noalias.scope.decl(metadata !5941)
  call void @llvm.experimental.noalias.scope.decl(metadata !5942)
  call void @llvm.experimental.noalias.scope.decl(metadata !5943)
  call void @llvm.experimental.noalias.scope.decl(metadata !5944)
  %i.cq = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !5945, !noalias !5932, !noundef !27 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !5946
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.m, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.aq, !noalias !5939

bb.n:                                             ; preds = %bb.j
  %.val8.i.i.i.i = load i64, ptr %.sroa.486.0..sroa_idx87, align 8, !alias.scope !5947, !noalias !5932, !noundef !27
  %.val9.i.i.i.i = load i64, ptr %.sroa.589.0..sroa_idx90, align 8, !alias.scope !5947, !noalias !5932, !noundef !27
  %i.cu = sub i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  %i.cv = call i64 @llvm.uadd.sat.i64(i64 %i.cu, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cv, i64 4) ; 2 uses
  %i.cw = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 3 uses
  %i.cx = icmp ugt i64 %i.cv, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.cw, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.cx, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %bb.o, !prof !36

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !5948
  %i.cy = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cw, i64 noundef range(i64 1, 9) 4) #76, !noalias !5948 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.o ], [ 0, %bb.n ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cw) #74
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !5938

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  store float %i.co, ptr %i.cy, align 4, !noalias !5938
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.am, align 8, !noalias !5938
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5938
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !5938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i64 80, i1 false), !noalias !5939
  call void @llvm.experimental.noalias.scope.decl(metadata !5949)
  call void @llvm.experimental.noalias.scope.decl(metadata !5950)
  call void @llvm.experimental.noalias.scope.decl(metadata !5951)
  call void @llvm.experimental.noalias.scope.decl(metadata !5952)
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i, %bb.q
  %i.dc = phi ptr [ %i.dp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ %i.cy, %bb.q ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.dr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ 1, %bb.q ] ; 6 uses
  %i.dd = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorfE9from_iterBW_E0ENtNtB4X_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.al)
          to label %bb.s unwind label %bb.x, !noalias !5953 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.de = extractvalue { i32, float } %i.dd, 0
  %i.df = extractvalue { i32, float } %i.dd, 1
  %i.dg = trunc i32 %i.de to i1
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dh)
  %i.di = load i64, ptr %i.am, align 8, !range !38, !alias.scope !5954, !noalias !5938, !noundef !27
  %i.dj = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.di
  br i1 %i.dj, label %bb.aa, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !5955)
  call void @llvm.experimental.noalias.scope.decl(metadata !5956)
  call void @llvm.experimental.noalias.scope.decl(metadata !5957)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5958)
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !5959, !noalias !5938, !noundef !27 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = atomicrmw add ptr %i.dl, i64 -1 release, align 8, !noalias !5960
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.w, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dk)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ac, !noalias !5953

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i, %bb.t
  %i.dp = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i ], [ %i.dc, %bb.t ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.sroa.7.0.copyload.i.i
  store float %i.df, ptr %i.dq, align 4, !noalias !5961
  %i.dr = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.dr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5954, !noalias !5938
  br label %bb.r

bb.x:                                             ; preds = %bb.aa, %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5962)
  call void @llvm.experimental.noalias.scope.decl(metadata !5963)
  call void @llvm.experimental.noalias.scope.decl(metadata !5964)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !5966, !noalias !5938, !noundef !27 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.body.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = atomicrmw add ptr %i.du, i64 -1 release, align 8, !noalias !5967
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.z, label %.body.i.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dt)
          to label %.body.i.i.i.i unwind label %bb.ab, !noalias !5953

bb.aa:                                            ; preds = %bb.t
  %.val6.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !5968, !noalias !5938, !noundef !27
  %.val.i.i.i.i.i.i = load i64, ptr %i.db, align 8, !alias.scope !5968, !noalias !5938, !noundef !27
  %i.dy = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.dz = call i64 @llvm.uadd.sat.i64(i64 %i.dy, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.dz, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i unwind label %bb.x, !noalias !5969

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.aa
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !5954, !noalias !5938
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5953
  unreachable

bb.ac:                                            ; preds = %bb.w
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ac, %bb.z, %bb.y, %bb.x
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.ac ], [ %i.ds, %bb.z ], [ %i.ds, %bb.y ], [ %i.ds, %bb.x ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !5938 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ec, label %.body11.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5938, !nonnull !27, !noundef !27
  %i.ed = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !5938
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5938
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.am, align 8, !noalias !5970
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5938
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.ae:                                            ; preds = %bb.ah
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5939
  unreachable

bb.af:                                            ; preds = %bb.p, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5971)
  call void @llvm.experimental.noalias.scope.decl(metadata !5972)
  call void @llvm.experimental.noalias.scope.decl(metadata !5973)
  call void @llvm.experimental.noalias.scope.decl(metadata !5974)
  %i.eg = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !5975, !noalias !5932, !noundef !27 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.body11.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = atomicrmw add ptr %i.eg, i64 -1 release, align 8, !noalias !5976
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.ah, label %.body11.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.body11.i unwind label %bb.ae, !noalias !5939

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.k ], [ inttoptr (i64 4 to ptr), %bb.l ], [ inttoptr (i64 4 to ptr), %bb.m ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5932
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.ek = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.em = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.en = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5932
  store i64 1, ptr %i.an, align 8, !noalias !5932
  %i.eo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.eo, align 8, !noalias !5932
  %i.ep = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.ep, align 8, !noalias !5932
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.en, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5932
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5932
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5932
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 %i.em, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5932
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !5977
  %i.eq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !5977 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ai, label %bb.al, !prof !32

bb.ai:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.aj, !noalias !5977

.noexc.i.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an) #77
          to label %.body11.i unwind label %bb.ak, !noalias !5932

bb.ak:                                            ; preds = %bb.aj
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5932
  unreachable

bb.al:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l223l2_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false), !noalias !5932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5932
  store ptr %i.eq, ptr %i.av, align 8, !alias.scope !5931, !noalias !5930
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.eu, align 8, !alias.scope !5931, !noalias !5930
  %i.ev = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.en, ptr %i.ev, align 8, !alias.scope !5931, !noalias !5930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5930
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aw)
          to label %bb.am unwind label %bb.bd, !noalias !5930

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5930
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch:bb.a
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [48 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [56 x i8], align 8               ; 11 uses
  %i.bb = alloca [48 x i8], align 8               ; 9 uses
  %i.bc = alloca [16 x i8], align 16              ; 4 uses
  %i.bd = alloca [104 x i8], align 8              ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [104 x i8], align 8              ; 9 uses
  %i.bh = alloca [96 x i8], align 8               ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !27, !nonnull !27 ; 2 uses
  %i.bk = tail call noundef nonnull align 8 ptr %i.bj(ptr noundef nonnull %1)
  %i.bl = load i8, ptr %i.bk, align 8, !range !39, !noundef !27
  switch i8 %i.bl, label %.split [
    i8 2, label %bb.b
    i8 10, label %bb.bf
    i8 11, label %bb.cg
    i8 12, label %bb.ci
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.bm = tail call noundef nonnull align 8 ptr %i.bj(ptr noundef nonnull %1)
  store ptr %i.bm, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bf, ptr %i.be, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCs9JgWGBoX3PY_12lance_linalg, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull @231, ptr noundef nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store i64 -9223372036854775794, ptr %0, align 8
  br label %bb.ds

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val26 = load ptr, ptr %i.bn, align 8
  %i.bo = tail call { ptr, ptr } %.val26(ptr noundef nonnull %1), !inline_history !11 ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 10 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !27, !nonnull !27
  call void %i.bs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bc, ptr noundef %i.bp), !inline_history !11
  %i.bt = load i128, ptr %i.bc, align 16, !noundef !27
  %i.bu = icmp ne i128 %i.bt, 110042066783113313026500756864334383727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.not1.i = icmp eq ptr %i.bp, null
  %.not.i = or i1 %.not1.i, %i.bu
  br i1 %.not.i, label %bb.c, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !6250)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %.val.i.i = load i64, ptr %i.bv, align 8, !alias.scope !6250, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6251)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !6252, !noalias !6253, !noundef !27 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.d

bb.d:                                             ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.by = atomicrmw add ptr %i.bx, i64 1 monotonic, align 8, !noalias !6254
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !6255, !noalias !6253, !noundef !27 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !6255, !noalias !6253, !noundef !27 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !6255, !noalias !6253, !noundef !27 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !6255, !noalias !6253, !noundef !27 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !6255, !noalias !6253, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !6256
  store ptr %i.bx, ptr %i.bb, align 8, !noalias !6257
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.cb, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6257
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.cd, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !6257
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %i.cf, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !6257
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %i.ch, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !6257
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 %i.cj, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !6257
  %.not2.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not2.i.i, label %bb.g, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.ck = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !6258
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.h, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb), !noalias !6256
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.03.0.ph.i = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.bx, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !6256
  br label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i
  %.sroa.7.022.i = phi ptr [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cb, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.9.020.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cd, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.10.018.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cf, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.11.016.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ch, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.12.014.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.cj, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.03.0.i = phi ptr [ null, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %.sroa.03.0.ph.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !6259
  store i64 0, ptr %i.ba, align 8, !noalias !6259
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i64 0, ptr %i.cm, align 8, !noalias !6259
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i64 %.val.i.i, ptr %i.cn, align 8, !noalias !6259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !6259
  call void @llvm.experimental.noalias.scope.decl(metadata !6260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6261
  store ptr %i.bp, ptr %i.as, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %.sroa.7.022.i, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.9.020.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %.sroa.10.018.i, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i64 %.sroa.11.016.i, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i64 %.sroa.12.014.i, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.480.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.480.0..sroa_idx81, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.583.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store i64 %.val.i.i, ptr %.sroa.583.0..sroa_idx84, align 8, !alias.scope !6262, !noalias !6263
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store ptr %i.ba, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !6262, !noalias !6264
  call void @llvm.experimental.noalias.scope.decl(metadata !6265)
  call void @llvm.experimental.noalias.scope.decl(metadata !6266)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !6267
  %i.co = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorfE9from_iterBW_E0ENtNtB4Z_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.as)
          to label %bb.j unwind label %bb.af, !noalias !6268 ; 2 uses

.body11.i:                                        ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.au, %bb.aq, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %.body.i.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ew, %bb.aj ], [ %i.gc, %bb.bd ], [ %i.fi, %bb.ba ], [ %i.ej, %bb.ag ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.ad ], [ %i.ej, %bb.ah ], [ %i.ej, %bb.af ], [ %i.gc, %bb.be ], [ %i.ft, %bb.au ], [ %i.fp, %bb.aq ], [ %i.fi, %bb.bb ], [ %i.fi, %bb.az ] ; 2 uses
  %i.cp = load i64, ptr %i.ba, align 8, !range !45, !alias.scope !6269, !noalias !6259, !noundef !27
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %common.resume, label %bb.i

bb.i:                                             ; preds = %.body11.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ba)
          to label %common.resume unwind label %bb.bc, !noalias !6259

bb.j:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit
  %i.cr = extractvalue { i32, float } %i.co, 0
  %i.cs = extractvalue { i32, float } %i.co, 1
  %i.ct = trunc i32 %i.cr to i1
  br i1 %i.ct, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6267
  call void @llvm.experimental.noalias.scope.decl(metadata !6270)
  call void @llvm.experimental.noalias.scope.decl(metadata !6271)
  call void @llvm.experimental.noalias.scope.decl(metadata !6272)
  call void @llvm.experimental.noalias.scope.decl(metadata !6273)
  %i.cu = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6274, !noalias !6261, !noundef !27 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = atomicrmw add ptr %i.cu, i64 -1 release, align 8, !noalias !6275
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.m, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.aq, !noalias !6268

bb.n:                                             ; preds = %bb.j
  %.val8.i.i.i.i = load i64, ptr %.sroa.480.0..sroa_idx81, align 8, !alias.scope !6276, !noalias !6261, !noundef !27
  %.val9.i.i.i.i = load i64, ptr %.sroa.583.0..sroa_idx84, align 8, !alias.scope !6276, !noalias !6261, !noundef !27
  %i.cy = sub i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  %i.cz = call i64 @llvm.uadd.sat.i64(i64 %i.cy, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cz, i64 4) ; 2 uses
  %i.da = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 3 uses
  %i.db = icmp ugt i64 %i.cz, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.da, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.db, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %bb.o, !prof !36

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6277
  %i.dc = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.da, i64 noundef range(i64 1, 9) 4) #76, !noalias !6277 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.o ], [ 0, %bb.n ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.da) #74
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !6267

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  store float %i.cs, ptr %i.dc, align 4, !noalias !6267
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.aq, align 8, !noalias !6267
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  store ptr %i.dc, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6267
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !6267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !6267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %i.as, i64 80, i1 false), !noalias !6268
  call void @llvm.experimental.noalias.scope.decl(metadata !6278)
  call void @llvm.experimental.noalias.scope.decl(metadata !6279)
  call void @llvm.experimental.noalias.scope.decl(metadata !6280)
  call void @llvm.experimental.noalias.scope.decl(metadata !6281)
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i, %bb.q
  %i.dg = phi ptr [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ %i.dc, %bb.q ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ 1, %bb.q ] ; 6 uses
  %i.dh = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorfE9from_iterBW_E0ENtNtB4Z_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ap)
          to label %bb.s unwind label %bb.x, !noalias !6282 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.di = extractvalue { i32, float } %i.dh, 0
  %i.dj = extractvalue { i32, float } %i.dh, 1
  %i.dk = trunc i32 %i.di to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dl)
  %i.dm = load i64, ptr %i.aq, align 8, !range !38, !alias.scope !6283, !noalias !6267, !noundef !27
  %i.dn = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.dm
  br i1 %i.dn, label %bb.aa, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !6284)
  call void @llvm.experimental.noalias.scope.decl(metadata !6285)
  call void @llvm.experimental.noalias.scope.decl(metadata !6286)
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6287)
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !6288, !noalias !6267, !noundef !27 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !6289
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.w, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.do)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ac, !noalias !6282

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i, %bb.t
  %i.dt = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i ], [ %i.dg, %bb.t ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.7.0.copyload.i.i
  store float %i.dj, ptr %i.du, align 4, !noalias !6290
  %i.dv = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6283, !noalias !6267
  br label %bb.r

bb.x:                                             ; preds = %bb.aa, %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6291)
  call void @llvm.experimental.noalias.scope.decl(metadata !6292)
  call void @llvm.experimental.noalias.scope.decl(metadata !6293)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6294)
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !6295, !noalias !6267, !noundef !27 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.body.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !6296
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.z, label %.body.i.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dx)
          to label %.body.i.i.i.i unwind label %bb.ab, !noalias !6282

bb.aa:                                            ; preds = %bb.t
  %.val6.i.i.i.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !6297, !noalias !6267, !noundef !27
  %.val.i.i.i.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !6297, !noalias !6267, !noundef !27
  %i.ec = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.ed = call i64 @llvm.uadd.sat.i64(i64 %i.ec, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.ed, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i unwind label %bb.x, !noalias !6298

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.aa
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6283, !noalias !6267
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6282
  unreachable

bb.ac:                                            ; preds = %bb.w
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ac, %bb.z, %bb.y, %bb.x
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ef, %bb.ac ], [ %i.dw, %bb.z ], [ %i.dw, %bb.y ], [ %i.dw, %bb.x ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !6267 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.eg, label %.body11.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6267, !nonnull !27, !noundef !27
  %i.eh = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !6267
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6267
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aq, align 8, !noalias !6299
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6267
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.ae:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6268
  unreachable

bb.af:                                            ; preds = %bb.p, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6300)
  call void @llvm.experimental.noalias.scope.decl(metadata !6301)
  call void @llvm.experimental.noalias.scope.decl(metadata !6302)
  call void @llvm.experimental.noalias.scope.decl(metadata !6303)
  %i.ek = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6304, !noalias !6261, !noundef !27 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.body11.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = atomicrmw add ptr %i.ek, i64 -1 release, align 8, !noalias !6305
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.ah, label %.body11.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.body11.i unwind label %bb.ae, !noalias !6268

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.k ], [ inttoptr (i64 4 to ptr), %bb.l ], [ inttoptr (i64 4 to ptr), %bb.m ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6261
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.eo = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.er = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6261
  store i64 1, ptr %i.ar, align 8, !noalias !6261
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 1, ptr %i.es, align 8, !noalias !6261
  %i.et = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.et, align 8, !noalias !6261
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6261
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6261
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6261
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i64 %i.eq, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6261
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6306
  %i.eu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6306 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ai, label %bb.al, !prof !32

bb.ai:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.aj, !noalias !6306

.noexc.i.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ar) #77
          to label %.body11.i unwind label %bb.ak, !noalias !6261

bb.ak:                                            ; preds = %bb.aj
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6261
  unreachable

bb.al:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot24dot_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i64 56, i1 false), !noalias !6261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6261
  store ptr %i.eu, ptr %i.az, align 8, !alias.scope !6260, !noalias !6259
  %i.ey = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.ey, align 8, !alias.scope !6260, !noalias !6259
  %i.ez = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.er, ptr %i.ez, align 8, !alias.scope !6260, !noalias !6259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !6259
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ba)
          to label %bb.am unwind label %bb.bd, !noalias !6259

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !6259
end_hunk_3
begin_hunk_4_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch:bb.a
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [56 x i8], align 8               ; 11 uses
  %i.an = alloca [48 x i8], align 8               ; 9 uses
  %i.ao = alloca [16 x i8], align 16              ; 4 uses
  %i.ap = alloca [104 x i8], align 8              ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [104 x i8], align 8              ; 9 uses
  %i.at = alloca [96 x i8], align 8               ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !27, !nonnull !27 ; 2 uses
  %i.aw = tail call noundef nonnull align 8 ptr %i.av(ptr noundef nonnull %1)
  %i.ax = load i8, ptr %i.aw, align 8, !range !39, !noundef !27
  switch i8 %i.ax, label %.split [
    i8 2, label %bb.b
    i8 10, label %bb.bf
    i8 11, label %bb.ca
    i8 12, label %bb.cc
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ay = tail call noundef nonnull align 8 ptr %i.av(ptr noundef nonnull %1)
  store ptr %i.ay, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.ar, ptr %i.aq, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCs9JgWGBoX3PY_12lance_linalg, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull @61, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i64 -9223372036854775794, ptr %0, align 8
  br label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine30do_cosine_distance_arrow_batchNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float16TypeEB6_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val26 = load ptr, ptr %i.az, align 8
  %i.ba = tail call { ptr, ptr } %.val26(ptr noundef nonnull %1), !inline_history !11 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 10 uses
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !27, !nonnull !27
  call void %i.be(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noundef %i.bb), !inline_history !11
  %i.bf = load i128, ptr %i.ao, align 16, !noundef !27
  %i.bg = icmp ne i128 %i.bf, 110042066783113313026500756864334383727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.not1.i = icmp eq ptr %i.bb, null
  %.not.i = or i1 %.not1.i, %i.bg
  br i1 %.not.i, label %bb.c, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #74
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !6584)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.val.i.i = load i64, ptr %i.bh, align 8, !alias.scope !6584, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6585)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !6586, !noalias !6587, !noundef !27 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.d

bb.d:                                             ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit
  %i.bk = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8, !noalias !6588
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !6589, !noalias !6587, !noundef !27 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !6589, !noalias !6587, !noundef !27 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !6589, !noalias !6587, !noundef !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !6589, !noalias !6587, !noundef !27 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !6589, !noalias !6587, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !6590
  store ptr %i.bj, ptr %i.an, align 8, !noalias !6591
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.bn, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6591
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.bp, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !6591
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.br, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !6591
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 %i.bt, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !6591
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 %i.bv, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !6591
  %.not2.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not2.i.i, label %bb.g, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.bw = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !6592
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.h, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.an), !noalias !6590
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.03.0.ph.i = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.bj, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !6590
  br label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i
  %.sroa.7.022.i = phi ptr [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bn, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.9.020.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bp, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.10.018.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.br, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.11.016.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bt, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.12.014.i = phi i64 [ undef, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bv, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  %.sroa.03.0.i = phi ptr [ null, %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types8Int8TypeECs9JgWGBoX3PY_12lance_linalg.exit ], [ %.sroa.03.0.ph.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECs9JgWGBoX3PY_12lance_linalg.exit.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !6593
  store i64 0, ptr %i.am, align 8, !noalias !6593
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 0, ptr %i.by, align 8, !noalias !6593
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 %.val.i.i, ptr %i.bz, align 8, !noalias !6593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !6593
  call void @llvm.experimental.noalias.scope.decl(metadata !6594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6595
  store ptr %i.bb, ptr %i.ae, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %.sroa.7.022.i, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %.sroa.9.020.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sroa.10.018.i, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i64 %.sroa.11.016.i, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 %.sroa.12.014.i, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.481.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.481.0..sroa_idx82, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.584.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  store i64 %.val.i.i, ptr %.sroa.584.0..sroa_idx85, align 8, !alias.scope !6596, !noalias !6597
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr %i.am, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !6596, !noalias !6598
  call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6601
  %i.ca = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorfE9from_iterBW_E0ENtNtB55_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ae)
          to label %bb.j unwind label %bb.af, !noalias !6602 ; 2 uses

.body11.i:                                        ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.au, %bb.aq, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %.body.i.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ei, %bb.aj ], [ %i.fo, %bb.bd ], [ %i.eu, %bb.ba ], [ %i.dv, %bb.ag ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.ad ], [ %i.dv, %bb.ah ], [ %i.dv, %bb.af ], [ %i.fo, %bb.be ], [ %i.ff, %bb.au ], [ %i.fb, %bb.aq ], [ %i.eu, %bb.bb ], [ %i.eu, %bb.az ] ; 2 uses
  %i.cb = load i64, ptr %i.am, align 8, !range !45, !alias.scope !6603, !noalias !6593, !noundef !27
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %common.resume, label %bb.i

bb.i:                                             ; preds = %.body11.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %common.resume unwind label %bb.bc, !noalias !6593

bb.j:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit
  %i.cd = extractvalue { i32, float } %i.ca, 0
  %i.ce = extractvalue { i32, float } %i.ca, 1
  %i.cf = trunc i32 %i.cd to i1
  br i1 %i.cf, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6601
  call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  call void @llvm.experimental.noalias.scope.decl(metadata !6605)
  call void @llvm.experimental.noalias.scope.decl(metadata !6606)
  call void @llvm.experimental.noalias.scope.decl(metadata !6607)
  %i.cg = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6608, !noalias !6595, !noundef !27 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = atomicrmw add ptr %i.cg, i64 -1 release, align 8, !noalias !6609
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.m, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.aq, !noalias !6602

bb.n:                                             ; preds = %bb.j
  %.val8.i.i.i.i = load i64, ptr %.sroa.481.0..sroa_idx82, align 8, !alias.scope !6610, !noalias !6595, !noundef !27
  %.val9.i.i.i.i = load i64, ptr %.sroa.584.0..sroa_idx85, align 8, !alias.scope !6610, !noalias !6595, !noundef !27
  %i.ck = sub i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  %i.cl = call i64 @llvm.uadd.sat.i64(i64 %i.ck, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cl, i64 4) ; 2 uses
  %i.cm = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 3 uses
  %i.cn = icmp ugt i64 %i.cl, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.cm, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.cn, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %bb.o, !prof !36

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6611
  %i.co = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cm, i64 noundef range(i64 1, 9) 4) #76, !noalias !6611 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.o ], [ 0, %bb.n ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cm) #74
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !6601

.noexc.i.i.i.i:                                   ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  store float %i.ce, ptr %i.co, align 4, !noalias !6601
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ac, align 8, !noalias !6601
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6601
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !6601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 80, i1 false), !noalias !6602
  call void @llvm.experimental.noalias.scope.decl(metadata !6612)
  call void @llvm.experimental.noalias.scope.decl(metadata !6613)
  call void @llvm.experimental.noalias.scope.decl(metadata !6614)
  call void @llvm.experimental.noalias.scope.decl(metadata !6615)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i, %bb.q
  %i.cs = phi ptr [ %i.df, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ %i.co, %bb.q ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.dh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i ], [ 1, %bb.q ] ; 6 uses
  %i.ct = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorfE9from_iterBW_E0ENtNtB55_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %bb.s unwind label %bb.x, !noalias !6616 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.cu = extractvalue { i32, float } %i.ct, 0
  %i.cv = extractvalue { i32, float } %i.ct, 1
  %i.cw = trunc i32 %i.cu to i1
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.cx)
  %i.cy = load i64, ptr %i.ac, align 8, !range !38, !alias.scope !6617, !noalias !6601, !noundef !27
  %i.cz = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.cy
  br i1 %i.cz, label %bb.aa, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !6618)
  call void @llvm.experimental.noalias.scope.decl(metadata !6619)
  call void @llvm.experimental.noalias.scope.decl(metadata !6620)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !6622, !noalias !6601, !noundef !27 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = atomicrmw add ptr %i.db, i64 -1 release, align 8, !noalias !6623
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.w, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.da)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ac, !noalias !6616

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i, %bb.t
  %i.df = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i ], [ %i.cs, %bb.t ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.7.0.copyload.i.i
  store float %i.cv, ptr %i.dg, align 4, !noalias !6624
  %i.dh = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.dh, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6617, !noalias !6601
  br label %bb.r

bb.x:                                             ; preds = %bb.aa, %bb.r
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6625)
  call void @llvm.experimental.noalias.scope.decl(metadata !6626)
  call void @llvm.experimental.noalias.scope.decl(metadata !6627)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6628)
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !6629, !noalias !6601, !noundef !27 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.body.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !noalias !6630
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.z, label %.body.i.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dj)
          to label %.body.i.i.i.i unwind label %bb.ab, !noalias !6616

bb.aa:                                            ; preds = %bb.t
  %.val6.i.i.i.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !6631, !noalias !6601, !noundef !27
  %.val.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !6631, !noalias !6601, !noundef !27
  %i.do = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.dp = call i64 @llvm.uadd.sat.i64(i64 %i.do, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.dp, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i unwind label %bb.x, !noalias !6632

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.aa
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6617, !noalias !6601
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6616
  unreachable

bb.ac:                                            ; preds = %bb.w
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ac, %bb.z, %bb.y, %bb.x
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dr, %bb.ac ], [ %i.di, %bb.z ], [ %i.di, %bb.y ], [ %i.di, %bb.x ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !6601 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ds, label %.body11.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6601, !nonnull !27, !noundef !27
  %i.dt = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !6601
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6601
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8, !noalias !6633
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6601
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.ae:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6602
  unreachable

bb.af:                                            ; preds = %bb.p, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCs9JgWGBoX3PY_12lance_linalg.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6634)
  call void @llvm.experimental.noalias.scope.decl(metadata !6635)
  call void @llvm.experimental.noalias.scope.decl(metadata !6636)
  call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  %i.dw = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !6638, !noalias !6595, !noundef !27 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.body11.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = atomicrmw add ptr %i.dw, i64 -1 release, align 8, !noalias !6639
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.ah, label %.body11.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.body11.i unwind label %bb.ae, !noalias !6602

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.k ], [ inttoptr (i64 4 to ptr), %bb.l ], [ inttoptr (i64 4 to ptr), %bb.m ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorfE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6595
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.ea = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.ec = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.ed = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6595
  store i64 1, ptr %i.ad, align 8, !noalias !6595
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.ee, align 8, !noalias !6595
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.ef, align 8, !noalias !6595
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6595
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6595
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6595
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.ec, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6595
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !6640
  %i.eg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !6640 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ai, label %bb.al, !prof !32

bb.ai:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.aj, !noalias !6640

.noexc.i.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad) #77
          to label %.body11.i unwind label %bb.ak, !noalias !6595

bb.ak:                                            ; preds = %bb.aj
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !6595
  unreachable

bb.al:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine27cosine_distance_arrow_batch0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorfE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false), !noalias !6595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6595
  store ptr %i.eg, ptr %i.al, align 8, !alias.scope !6594, !noalias !6593
  %i.ek = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.ek, align 8, !alias.scope !6594, !noalias !6593
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.ed, ptr %i.el, align 8, !alias.scope !6594, !noalias !6593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6593
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %bb.am unwind label %bb.bd, !noalias !6593

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6593
end_hunk_4
begin_hunk_5_@_RNvXs6_NtCs4ytUTZt2Gw9_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtB5_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEENtNtNtNtB1P_4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !9833, !nonnull !27, !noundef !27 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !9833
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !9833
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !9832
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6_NtCs4ytUTZt2Gw9_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtB5_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEENtNtNtNtB1P_4iter6traits8iterator8Iterator9size_hintCs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #42 !guid !9836 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 40                  ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !9837
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !9837
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !9837
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array13shrink_to_fitCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #2 !guid !9838 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array18logical_null_countCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #44 !guid !9839 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array21get_array_memory_sizeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #2 !guid !9840 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.c = add i64 %i.b, 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !27
  %i.f = add i64 %i.c, %.sroa.03.0                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !noundef !27 ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.i, %bb.c ], [ %i.f, %bb.a ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.05.0 = load i64, ptr %.sroa.05.0.in, align 8, !noundef !27
  %i.i = add i64 %.sroa.05.0, %i.f
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array22get_buffer_memory_sizeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #2 !guid !9841 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !27
  %i.e = add i64 %.sroa.03.0, %i.b                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noundef !27 ; 2 uses
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.a ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.05.0 = load i64, ptr %.sroa.05.0.in, align 8, !noundef !27
  %i.h = add i64 %.sroa.05.0, %i.e
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 -1, 4611686018427387903) i64 @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array3lenCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #44 !guid !9842 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = lshr i64 %i.b, 2
  %i.d = add nsw i64 %i.c, -1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array5nullsCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(112) %0) unnamed_addr #44 !guid !9843 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array5sliceCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !9892 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 16               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [128 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9894
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0), !noalias !9895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9894
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9893, !noundef !27
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9894
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, i64 noundef %1, i64 noundef %2)
          to label %bb.f unwind label %bb.e, !noalias !9895

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.f, align 8, !noalias !9894
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9894
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !alias.scope !9893
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !9893, !nonnull !27, !noundef !27
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !9895
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.u, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.z, %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.e ], [ %eh.lpad-body.i, %bb.z ], [ %eh.lpad-body.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ %eh.lpad-body.i, %bb.y ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.g) #77
          to label %common.resume unwind label %bb.x, !noalias !9895

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9894
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  store <2 x ptr> %i.l, ptr %i.e, align 16, !noalias !9894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %3 = call i64 @llvm.uadd.sat.i64(i64 %2, i64 1) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9897
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9898, !nonnull !27, !noundef !27
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !9899
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !9898, !noundef !27
  %i.w = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !9898
  store <2 x ptr> %i.w, ptr %i.b, align 16, !noalias !9897
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.v, ptr %i.x, align 16, !noalias !9897
  call void @llvm.experimental.noalias.scope.decl(metadata !9900)
  %i.y = shl nuw i64 %1, 2
  %i.z = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.z, label %.invoke.i.i.i, label %bb.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.aa, label %.invoke.i.i.i, label %bb.j, !prof !32

bb.j:                                             ; preds = %bb.i
  %i.ab = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9901
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.y, i64 noundef %i.ab)
          to label %bb.m unwind label %bb.k, !noalias !9902

.invoke.i.i.i:                                    ; preds = %bb.i, %bb.h
  %i.ac = phi ptr [ @201, %bb.h ], [ @198, %bb.i ]
  %i.ad = phi ptr [ @202, %bb.h ], [ @200, %bb.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #74
          to label %.cont.i.i.i unwind label %bb.k, !noalias !9903

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.k:                                             ; preds = %.invoke.i.i.i, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.n, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9904)
  call void @llvm.experimental.noalias.scope.decl(metadata !9905)
  call void @llvm.experimental.noalias.scope.decl(metadata !9906)
  %i.af = load ptr, ptr %i.b, align 16, !alias.scope !9907, !noalias !9897, !nonnull !27, !noundef !27
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !9908
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %.body.i

bb.l:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.s, !noalias !9902

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !9909)
  call void @llvm.experimental.noalias.scope.decl(metadata !9910)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9910, !noalias !9901, !noundef !27
  %i.ak = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.al = add i64 %i.ak, 3
  %i.am = and i64 %i.al, -4                       ; 2 uses
  %i.an = sub i64 %i.am, %i.ak
  %i.ao = icmp ult i64 %i.an, 4
  call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.am, %i.ak
  br i1 %i.ap, label %bb.q, label %.invoke.i.i.i.i, !prof !25

bb.n:                                             ; preds = %.invoke.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !9911
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.o, label %.body.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.p, !noalias !9912

.invoke.i.i.i.i:                                  ; preds = %bb.m
  %i.at = load ptr, ptr %i.a, align 8, !alias.scope !9910, !noalias !9901, !nonnull !27, !noundef !27 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !9913, !noundef !27
  %.not.i.i.i.i = icmp eq ptr %i.av, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @395, ptr @397
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #74
          to label %.cont.i.i.i.i unwind label %bb.n, !noalias !9913

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !9912
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !9914, !noalias !9915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9901
  call void @llvm.experimental.noalias.scope.decl(metadata !9916)
  call void @llvm.experimental.noalias.scope.decl(metadata !9917)
  call void @llvm.experimental.noalias.scope.decl(metadata !9918)
  %i.ax = load ptr, ptr %i.b, align 16, !alias.scope !9919, !noalias !9897, !nonnull !27, !noundef !27
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !9920
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.v, !noalias !9902

bb.s:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !9902
  unreachable

bb.t:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %bb.l, %.body.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %eh.lpad-body.i.i.i, %bb.l ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9921)
  call void @llvm.experimental.noalias.scope.decl(metadata !9922)
  %i.bc = load ptr, ptr %i.e, align 16, !alias.scope !9923, !noalias !9894, !nonnull !27, !noundef !27
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !9924
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.w:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.x, !noalias !9895

bb.x:                                             ; preds = %bb.z, %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !9895
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.w, %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9925)
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !9925, !noalias !9894, !noundef !27 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.bi = atomicrmw add ptr %i.bg, i64 -1 release, align 8, !noalias !9926
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.x, !noalias !9895

common.resume:                                    ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ %i.bp, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9897
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bm = load <2 x ptr>, ptr %i.e, align 16, !noalias !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9894
  store i64 1, ptr %i.h, align 8
  store i64 1, ptr %i.bl, align 8
  store <2 x ptr> %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !9927
  %i.bn = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !9927 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aa, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEEE3newCs9JgWGBoX3PY_12lance_linalg.exit, !prof !32

bb.aa:                                            ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #74
          to label %.noexc unwind label %bb.ab, !noalias !9927

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bk)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5sliceCs9JgWGBoX3PY_12lance_linalg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.br = insertvalue { ptr, ptr } poison, ptr %i.bn, 0
  %i.bs = insertvalue { ptr, ptr } %i.br, ptr @88, 1
end_hunk_5
