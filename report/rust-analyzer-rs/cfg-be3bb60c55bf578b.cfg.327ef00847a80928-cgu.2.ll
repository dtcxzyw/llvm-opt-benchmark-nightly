Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cfg-be3bb60c55bf578b.cfg.327ef00847a80928-cgu.2?download=true
inline.NumInlined: 101
inline.NumDeleted: 57
begin_hunk_0_@_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions15insert_any_atom:bb.a
  %i.o = load ptr, ptr @_RNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions15insert_any_atom10___CALLSITE, align 8, !nonnull !7, !align !32, !noundef !7
  %i.p = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, i8 noundef %.sroa.08.0)
          to label %bb.i unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %bb.j, label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.p, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.l, %bb.i
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %i.e, ptr %.val)
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.r = load ptr, ptr @_RNvNvMs0_Cs4kMRW8zVVbM_3cfgNtB7_10CfgOptions15insert_any_atom10___CALLSITE, align 8, !nonnull !7, !align !32, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @6, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.t, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @5, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.m:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.k, %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %i.e, ptr %.val) #18
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions16insert_key_value(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  call void @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions15insert_any_atom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions5check(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i8 @_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions6append(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetBO_B1r_EEBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_Cs4kMRW8zVVbM_3cfgNtB5_7CfgDiff3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 2
  br i1 %i.h, label %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %i.g, 21
  br i1 %i.i, label %bb.d, label %bb.c, !prof !52

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsbSS6DM8SDEO_5alloc3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.g, ptr noalias nofree noundef nonnull %i.a) #20
          to label %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit unwind label %.loopexit.split-lp

.loopexit20:                                      ; preds = %bb.m, %bb.o, %bb.p, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit, %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit15, %bb.c, %bb.d, %bb.h, %bb.i, %.lr.ph.split.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit20
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit20 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #18
          to label %bb.s unwind label %bb.r

_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !7 ; 4 uses
  %i.n = icmp samesign ult i64 %i.m, 2
  br i1 %i.n, label %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit15, label %bb.g, !prof !52

bb.g:                                             ; preds = %bb.f
  %i.o = icmp samesign ult i64 %i.m, 21
  br i1 %i.o, label %bb.i, label %bb.h, !prof !52

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsbSS6DM8SDEO_5alloc3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef range(i64 0, 576460752303423488) %i.m, ptr noalias nofree noundef nonnull %i.a) #20
          to label %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit15 unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef range(i64 0, 576460752303423488) %i.m, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit15 unwind label %.loopexit.split-lp

_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit15: ; preds = %bb.f, %bb.h, %bb.i
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltEBL_.exit15
  %i.p = load i64, ptr %i.f, align 8, !noundef !7 ; 3 uses
  %i.q = icmp ult i64 %i.p, 576460752303423488
  call void @llvm.assume(i1 %i.q)
  %.not25 = icmp eq i64 %i.p, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.l, align 8, !noundef !7 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void

.lr.ph.splitthread-pre-split:                     ; preds = %.loopexit
  %.pr = load i64, ptr %i.l, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.w = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.t, %.lr.ph ] ; 3 uses
  %.sroa.0.026 = phi i64 [ %i.x, %.lr.ph.splitthread-pre-split ], [ %i.p, %.lr.ph ]
  %i.x = add nsw i64 %.sroa.0.026, -1             ; 6 uses
  %i.y = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !53, !noalias !56, !noundef !7 ; 2 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %3 = load ptr, ptr %i.d, align 8, !alias.scope !53, !noalias !56, !nonnull !7
  %4 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.x ; 2 uses
  %5 = getelementptr i8, ptr %4, i64 8
  %.val3.i.us.i = load ptr, ptr %4, align 8, !noalias !59, !noundef !7 ; 3 uses
  %.val4.i.us.i = load ptr, ptr %5, align 8, !noalias !59 ; 3 uses
  %6 = icmp eq ptr %.val3.i.us.i, null            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i, %.lr.ph.split.us.i
  %.sroa.02.015.us.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.aj, %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i ] ; 3 uses
  %i.ad = phi ptr [ %i.y, %.lr.ph.split.us.i ], [ %7, %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i ] ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.val7.us.i = load ptr, ptr %i.ad, align 8, !noalias !59 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val7.us.i.a = load ptr, ptr %i.ae, align 8, !noalias !59 ; 3 uses
  %i.af = icmp ne ptr %.val7.us.i, null           ; 2 uses
  %i.ag = xor i1 %6, %i.af
  br i1 %i.ag, label %8, label %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i

8:                                                ; preds = %bb.k
  br i1 %i.af, label %.split.us.i, label %bb.l

bb.l:                                             ; preds = %8
  call void @llvm.assume(i1 %6)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.us.i.a) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.us.i) ]
  %i.ah = icmp eq ptr %.val7.us.i.a, %.val4.i.us.i
  br i1 %i.ah, label %bb.m, label %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i

.split.us.i:                                      ; preds = %8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.us.i) ]
  %9 = icmp eq ptr %.val7.us.i, %.val3.i.us.i
  %i.ai = icmp eq ptr %.val7.us.i.a, %.val4.i.us.i
  %spec.select.i.i.us.i = select i1 %9, i1 %i.ai, i1 false
  br i1 %spec.select.i.i.us.i, label %bb.m, label %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i

_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i: ; preds = %.split.us.i, %bb.l, %bb.k
  %i.aj = add nuw nsw i64 %.sroa.02.015.us.i, 1
  %i.ak = icmp eq ptr %7, %i.z
  br i1 %i.ak, label %.loopexit, label %bb.k

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %.lr.ph.split.i
  unreachable

bb.m:                                             ; preds = %.split.us.i, %bb.l
  %i.al = icmp ult i64 %.sroa.02.015.us.i, %i.w
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE6removeBI_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.n unwind label %.loopexit20

bb.n:                                             ; preds = %bb.m
  %.val10 = load ptr, ptr %i.c, align 8, !noundef !7
  %.val11 = load ptr, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val10, ptr %.val11)
          to label %bb.o unwind label %.loopexit20

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE6removeBI_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.02.015.us.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %bb.p unwind label %.loopexit20

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.b, align 8, !noundef !7
  %.val9 = load ptr, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val, ptr %.val9)
          to label %bb.q unwind label %.loopexit20

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvMs5_Cs4kMRW8zVVbM_3cfgNtB7_7CfgDiff3new0B7_.exit.thread.us.i, %.lr.ph.split, %bb.q
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !60

bb.r:                                             ; preds = %bb.s, %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #18
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCs4kMRW8zVVbM_3cfgNtB2_10CfgOptionsNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62
  store ptr null, ptr %i.a, align 8, !noalias !66
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5true_10SYMBOL_STR, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !66
  invoke void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendABO_j1_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
          to label %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterAB14_j1_EB18_.exit unwind label %bb.b, !noalias !62

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomj1_EBG_.exit.i unwind label %bb.c, !noalias !62

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !62
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomj1_EBG_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterAB14_j1_EB18_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptionsNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_Cs4kMRW8zVVbM_3cfgRNtB5_10CfgOptionsNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_Cs4kMRW8zVVbM_3cfgNtB5_7CfgDiffNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 7)
  br i1 %i.e, label %.loopexit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.f = icmp ult i64 %.pre, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %.pre, 0
  br i1 %i.g, label %.loopexit, label %.thread53

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.idx = shl nuw nsw i64 %i.b, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.k = add nsw i64 %i.b, -1
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.m, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e
  %i.n = icmp eq i64 %i.b, 1
  br i1 %i.n, label %.loopexit40, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.preheader
  %.sroa.0.056 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.f

.peel.next:                                       ; preds = %bb.h
  %i.o = add nuw nsw i64 %.sroa.8.057, 1
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.058, i64 16 ; 2 uses
  %i.p = icmp eq ptr %.sroa.0.0, %i.j
  br i1 %i.p, label %.loopexit40, label %bb.f, !llvm.loop !67

bb.f:                                             ; preds = %.lr.ph, %.peel.next
  %.sroa.0.058 = phi ptr [ %.sroa.0.056, %.lr.ph ], [ %.sroa.0.0, %.peel.next ] ; 2 uses
  %.sroa.8.057 = phi i64 [ 1, %.lr.ph ], [ %i.o, %.peel.next ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.8.057, %i.k           ; 2 uses
  %. = select i1 %i.q, i64 5, i64 2
  %.17 = select i1 %i.q, ptr @20, ptr @19
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.17, i64 noundef %.)
  br i1 %i.r, label %.loopexit, label %bb.h

.loopexit40:                                      ; preds = %.peel.next, %.peel.next.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 3 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.loopexit40
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
  br i1 %i.w, label %.loopexit, label %.thread53

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noundef zeroext i1 @_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.058, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.x, label %.loopexit, label %.peel.next, !llvm.loop !67

..loopexit.loopexit_crit_edge:                    ; preds = %bb.l
  br label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %bb.f, %bb.h, %.peel.next42, %bb.k, %.peel.next42.preheader, %..loopexit.loopexit_crit_edge, %bb.d, %bb.e, %bb.i, %bb.j, %.loopexit40, %.thread53, %bb.c, %bb.g, %bb.b
  %.sroa.0.1 = phi i1 [ true, %bb.g ], [ false, %bb.c ], [ false, %.loopexit40 ], [ true, %bb.b ], [ true, %.thread53 ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.i ], [ true, %bb.j ], [ false, %.peel.next42.preheader ], [ %i.ai, %.peel.next42 ], [ true, %..loopexit.loopexit_crit_edge ], [ %i.ai, %bb.k ], [ true, %bb.h ], [ true, %bb.f ]
  ret i1 %.sroa.0.1

.thread53:                                        ; preds = %bb.g, %bb.c
  %i.y = phi i64 [ %.pre, %bb.c ], [ %i.t, %bb.g ] ; 3 uses
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8)
  br i1 %i.z, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.thread53
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.idx51 = shl nuw nsw i64 %i.y, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx51
  %i.ad = add nsw i64 %i.y, -1
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  br i1 %i.ae, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call noundef zeroext i1 @_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.af, label %.loopexit, label %.peel.next42.preheader

.peel.next42.preheader:                           ; preds = %bb.j
end_hunk_0
