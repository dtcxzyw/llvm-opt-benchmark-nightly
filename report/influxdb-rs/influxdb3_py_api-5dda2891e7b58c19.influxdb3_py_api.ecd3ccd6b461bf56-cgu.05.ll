Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_py_api-5dda2891e7b58c19.influxdb3_py_api.ecd3ccd6b461bf56-cgu.05?download=true
inline.NumInlined: 194
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringuENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api:bb.a
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [24 x i8], ptr %.sroa.04.1.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit.i unwind label %bb.e, !noalias !256

bb.e:                                             ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i unwind label %bb.f, !noalias !256

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !256
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %i.w = add i64 %.sroa.14.011.i, -1              ; 2 uses
  %i.x = add i16 %.lcssa.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !256
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.d

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit.i, %bb.b
  %i.aa = add i64 %i.b, 1
  %i.ab = mul nuw i64 %i.aa, %2                   ; 2 uses
  %i.ac = add i64 %3, -1
  %i.ad = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = sub i64 0, %3
  %i.ag = and i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = add i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = sub nuw i64 -9223372036854775808, %3
  %i.al = icmp ule i64 %i.ai, %i.ak
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ai, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.ao = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ap = sub nsw i64 0, %i.ag
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.g, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB1n_13ExpiringCacheENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !269, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB1k_13ExpiringCacheEEB1m_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !275, !noalias !276, !nonnull !9, !noundef !9 ; 3 uses
  %.val4.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !278
  %i.h = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i, %bb.c
  %.sroa.14.010.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i ]
  %.sroa.10.09.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i ] ; 2 uses
  %.sroa.6.08.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i ] ; 2 uses
  %.sroa.04.07.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.04.1.i, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.10.09.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sroa.6.08.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.04.07.i, %bb.d ]
  %.val9.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !279
  %i.m = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1920 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.m to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i

_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.1.i = phi ptr [ %.sroa.04.07.i, %bb.d ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.08.i, %bb.d ], [ %i.o, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.09.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [120 x i8], ptr %.sroa.04.1.i, i64 %i.t
  %i.v = add i64 %.sroa.14.010.i, -1              ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -120
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBE_13ExpiringCacheEEBG_(ptr noalias noundef align 8 dereferenceable(120) %i.w), !noalias !269
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB1k_13ExpiringCacheEEB1m_.exit, label %bb.d

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB1k_13ExpiringCacheEEB1m_.exit: ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_.exit.i, %bb.b
  %i.y = add i64 %i.b, 1
  %i.z = mul nuw i64 %i.y, %2                     ; 2 uses
  %i.aa = add i64 %3, -1
  %i.ab = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = sub i64 0, %3
  %i.ae = and i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = sub nuw i64 -9223372036854775808, %3
  %i.aj = icmp ule i64 %i.ag, %i.ai
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ag, 0
  br i1 %i.al, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB1k_13ExpiringCacheEEB1m_.exit
  %i.am = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.an = sub nsw i64 0, %i.ae
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.e, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB1k_13ExpiringCacheEEB1m_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 48, 121) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 8
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.n, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.c
  %i.d = and i64 %2, 4
  %..i = add nuw nsw i64 %i.d, 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = shl nuw i64 %2, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.4.0.i.ph = phi i64 [ %i.j, %bb.f ], [ %..i, %bb.e ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 48, 121) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.j, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = icmp ugt i64 %i.m, -16
  br i1 %i.n, label %bb.j, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw i64 %i.m, 15
  %i.p = and i64 %i.o, -16                        ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.r = add i64 %i.q, %i.p                       ; 5 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = icmp ugt i64 %i.r, 9223372036854775792
  %or.cond.i = or i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.j, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i, !prof !282

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i: ; preds = %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !283
  %i.u = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !283 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.r

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %3, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !283
  unreachable

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  br i1 %3, label %bb.m, label %bb.q, !prof !10

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.r) #21, !noalias !283
  unreachable

bb.n:                                             ; preds = %bb.d
  br i1 %3, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.0.ph = phi i64 [ 0, %bb.j ], [ 16, %bb.l ]
  %.sroa.7.0.ph = phi i64 [ undef, %bb.j ], [ %i.r, %bb.l ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0.ph, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.ph, ptr %i.x, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  %4 = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.y = add nsw i64 %.sroa.4.0.i.ph, -1          ; 2 uses
  %i.z = lshr i64 %.sroa.4.0.i.ph, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.02.0.i = select i1 %4, i64 %i.y, i64 %i.aa
  %5 = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, i8 -1, i64 %i.q, i1 false)
  store ptr %5, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.b, %bb.r
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr13drop_in_placeTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBL_3vec3VecBH_EEECskkCPRT7oCWw_16influxdb3_py_api(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBG_3vec3VecBC_EEECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr13drop_in_placeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1m_(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1h_(ptr noalias noundef align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr13drop_in_placeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBJ_13ExpiringCacheEEBL_(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBE_13ExpiringCacheEEBG_(ptr noalias noundef align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !286 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !286, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !292, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !292, !noundef !9 ; 5 uses
  %i.h = add i64 %.val1.i, 1
  %i.i = mul nuw i64 %i.e, %i.h                   ; 2 uses
  %i.j = add i64 %i.g, -1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 0, %i.g
  %i.n = and i64 %i.k, %i.m                       ; 3 uses
  %i.o = add i64 %.val1.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = sub nuw i64 -9223372036854775808, %i.g
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = sub nsw i64 0, %i.n
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.g) #20, !noalias !292
  br label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit

_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.a, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardQNtNtNtBG_3raw5inner13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !293, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !293
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !293 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !293, !noundef !9 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !293, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !293, !noundef !9
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !293, !noundef !9
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !293
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !293, !nonnull !9, !noundef !9
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !293
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !293, !nonnull !9, !noundef !9
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !293, !inline_history !296
  %i.s = load i64, ptr %i.e, align 8, !noalias !293, !noundef !9
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !293
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.c

_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !293, !noundef !9 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !293, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !293
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardTjQINtNtNtBG_3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1Z_EEENCNvMsd_B1y_B1v_15clone_from_impl0EECskkCPRT7oCWw_16influxdb3_py_api(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtNtB7_3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1w_EEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.01.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.01.01.i.i, 1          ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !9
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.01.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtNtB7_3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1w_EEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.b

_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtNtB7_3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1w_EEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.d
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB12_13ExpiringCacheEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1O_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0B14_:bb.a
_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit25.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i18.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i11.i.i, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i2.i.i
  %.lcssa.sink.i.i5.i.i = phi i64 [ %i.az, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i2.i.i ], [ %i.bs, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i11.i.i ], [ %i.cw, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i18.i.i ]
  %i.cy = xor i64 %.lcssa.sink.i.i5.i.i, 255
  %i.cz = zext i64 %i.cy to i128
  %i.da = mul nuw nsw i128 %i.cz, 6364136223846793005 ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i64
  br label %_RNCINvNtCsc96bKABWO34_9hashbrown3map11make_hasherNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBN_13ExpiringCacheINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0BP_.exit

bb.h:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds i8, ptr %i.e, i64 -116
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !408, !noalias !409, !noundef !9
  %i.dg = zext i32 %i.df to i64
  %i.dh = xor i64 %i.dg, %i.p
  %i.di = zext i64 %i.dh to i128
  %i.dj = mul nuw nsw i128 %i.di, 6364136223846793005 ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %i.dl = xor i128 %i.dk, %i.dj
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.e, i64 -112
  %i.do = load i32, ptr %i.dn, align 8, !alias.scope !408, !noalias !409, !noundef !9
  %i.dp = zext i32 %i.do to i64
  %i.dq = xor i64 %i.dm, %i.dp
  %i.dr = zext i64 %i.dq to i128
  %i.ds = mul nuw nsw i128 %i.dr, 6364136223846793005 ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = xor i128 %i.dt, %i.ds
  %i.dv = trunc i128 %i.du to i64
  br label %_RNCINvNtCsc96bKABWO34_9hashbrown3map11make_hasherNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBN_13ExpiringCacheINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0BP_.exit

bb.i:                                             ; preds = %bb.a
  %i.dw = getelementptr inbounds i8, ptr %i.e, i64 -104
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !408, !noalias !409, !nonnull !9, !noundef !9 ; 8 uses
  %i.dy = getelementptr inbounds i8, ptr %i.e, i64 -96
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !408, !noalias !409, !noundef !9 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !452), !noalias !403
  call void @llvm.experimental.noalias.scope.decl(metadata !455), !noalias !403
  %i.ea = add i64 %i.dz, %i.p
  %i.eb = mul i64 %i.ea, 6364136223846793005      ; 3 uses
  %i.ec = icmp samesign ugt i64 %i.dz, 8
  br i1 %i.ec, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = icmp samesign ugt i64 %i.dz, 1
  br i1 %i.ed, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = icmp eq i64 %i.dz, 1
  br i1 %i.ee, label %bb.m, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ef = icmp samesign ugt i64 %i.dz, 3
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.dz  ; 2 uses
  br i1 %i.ef, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.eh = load i8, ptr %i.dx, align 1, !alias.scope !457, !noalias !460, !noundef !9
  %i.ei = zext i8 %i.eh to i64                    ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i: ; preds = %bb.l
  %.sroa.0.0.copyload.i29.i.i.i.i = load i16, ptr %i.dx, align 1, !alias.scope !462, !noalias !463
  %i.ej = zext i16 %.sroa.0.0.copyload.i29.i.i.i.i to i64
  %i.ek = getelementptr i8, ptr %i.eg, i64 -1
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !457, !noalias !460, !noundef !9
  %i.em = zext i8 %i.el to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i: ; preds = %bb.l
  %.sroa.0.0.copyload.i31.i.i.i.i = load i32, ptr %i.dx, align 1, !alias.scope !462, !noalias !466
  %i.en = zext i32 %.sroa.0.0.copyload.i31.i.i.i.i to i64
  %i.eo = getelementptr i8, ptr %i.eg, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.eo, align 1, !alias.scope !462, !noalias !460
  %i.ep = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i, %bb.m, %bb.k
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.ep, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i ], [ %i.em, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i ], [ %i.ei, %bb.m ], [ 0, %bb.k ]
  %.sroa.068.0.i.i.i.i = phi i64 [ %i.en, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i ], [ %i.ej, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i ], [ %i.ei, %bb.m ], [ 0, %bb.k ]
  %i.eq = load i64, ptr %i.a, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.er = xor i64 %i.eq, %.sroa.068.0.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.eu = xor i64 %i.et, %.sroa.7.0.i.i.i.i
  %i.ev = zext i64 %i.er to i128
  %i.ew = zext i64 %i.eu to i128
  %i.ex = mul nuw i128 %i.ew, %i.ev               ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = xor i128 %i.ey, %i.ex
  %i.fa = trunc i128 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.fd = add i64 %i.fc, %i.eb
  %i.fe = xor i64 %i.fd, %i.fa                    ; 2 uses
  %i.ff = call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 23)
  br label %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i

bb.n:                                             ; preds = %bb.i
  %i.fg = icmp samesign ugt i64 %i.dz, 16
  br i1 %i.fg, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.0.0.copyload.i33.i.i.i.i = load i64, ptr %i.dx, align 1, !alias.scope !462, !noalias !471
  %i.fh = getelementptr i8, ptr %i.dx, i64 %i.dz
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %.sroa.0.0.copyload.i25.i.i.i.i = load i64, ptr %i.fi, align 1, !alias.scope !462, !noalias !474
  %i.fj = load i64, ptr %i.a, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.fk = xor i64 %i.fj, %.sroa.0.0.copyload.i33.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.fn = xor i64 %i.fm, %.sroa.0.0.copyload.i25.i.i.i.i
  %i.fo = zext i64 %i.fk to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.fw = add i64 %i.fv, %i.eb
  %i.fx = xor i64 %i.fw, %i.ft                    ; 2 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 23)
  br label %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i: ; preds = %bb.n
  %i.fz = getelementptr i8, ptr %i.dx, i64 %i.dz
  %i.ga = getelementptr i8, ptr %i.fz, i64 -16
  %.sroa.0.0.copyload.i27.i.i.i.i = load i128, ptr %i.ga, align 1, !alias.scope !462, !noalias !474 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i27.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i27.i.i.i.i, 64
  %i.gb = load i64, ptr %i.a, align 8, !alias.scope !469, !noalias !470, !noundef !9 ; 2 uses
  %i.gc = xor i64 %i.gb, %.sroa.017.0.extract.trunc.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !469, !noalias !470, !noundef !9
  %i.gf = zext i64 %i.gc to i128
  %i.gg = zext i64 %i.ge to i128                  ; 2 uses
  %i.gh = xor i128 %.sroa.4.0.extract.shift.i.i.i.i, %i.gg
  %i.gi = mul nuw i128 %i.gh, %i.gf               ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = xor i128 %i.gj, %i.gi
  %i.gl = trunc i128 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !469, !noalias !470, !noundef !9 ; 2 uses
  %i.go = add i64 %i.gn, %i.eb
  %i.gp = xor i64 %i.go, %i.gl                    ; 2 uses
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 23)
  br label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i
  %.sroa.0.0105.i.i.i.i = phi ptr [ %i.dx, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i ], [ %i.gr, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i ] ; 2 uses
  %.sroa.11.0104.i.i.i.i = phi i64 [ %i.dz, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i ], [ %i.gs, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i ]
  %storemerge103.i.i.i.i = phi i64 [ %i.gq, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i ], [ %i.hc, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0105.i.i.i.i, i64 16
  %i.gs = add nsw i64 %.sroa.11.0104.i.i.i.i, -16 ; 2 uses
  %.sroa.0.0.copyload.i35.i.i.i.i = load i128, ptr %.sroa.0.0105.i.i.i.i, align 1, !alias.scope !462, !noalias !475 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i35.i.i.i.i to i64
  %.sroa.419.0.extract.shift.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i35.i.i.i.i, 64
  %i.gt = xor i64 %i.gb, %.sroa.018.0.extract.trunc.i.i.i.i
  %i.gu = zext i64 %i.gt to i128
  %i.gv = xor i128 %.sroa.419.0.extract.shift.i.i.i.i, %i.gg
  %i.gw = mul nuw i128 %i.gv, %i.gu               ; 2 uses
  %i.gx = lshr i128 %i.gw, 64
  %i.gy = xor i128 %i.gx, %i.gw
  %i.gz = trunc i128 %i.gy to i64
  %i.ha = add i64 %storemerge103.i.i.i.i, %i.gn
  %i.hb = xor i64 %i.ha, %i.gz                    ; 2 uses
  %i.hc = call noundef i64 @llvm.fshl.i64(i64 %i.hb, i64 %i.hb, i64 23) ; 2 uses
  %i.hd = icmp ugt i64 %i.gs, 16
  br i1 %i.hd, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i, label %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i

_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.ff, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i ], [ %i.fy, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i ], [ %i.hc, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i ]
  %i.he = xor i64 %.lcssa.sink.i.i.i.i, 255
  %i.hf = zext i64 %i.he to i128
  %i.hg = mul nuw nsw i128 %i.hf, 6364136223846793005 ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = xor i128 %i.hh, %i.hg
  %i.hj = trunc i128 %i.hi to i64
  br label %_RNCINvNtCsc96bKABWO34_9hashbrown3map11make_hasherNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBN_13ExpiringCacheINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0BP_.exit

_RNCINvNtCsc96bKABWO34_9hashbrown3map11make_hasherNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBN_13ExpiringCacheINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0BP_.exit: ; preds = %bb.a, %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit25.i.i, %bb.h, %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i
  %.val.i.i = phi i64 [ %i.p, %bb.a ], [ %i.dd, %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit25.i.i ], [ %i.dv, %bb.h ], [ %i.hj, %_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i = load i64, ptr %i.hk, align 8, !noalias !400, !noundef !9
  %i.hl = zext i64 %.val.i.i to i128
  %i.hm = zext i64 %.val1.i.i to i128
  %i.hn = mul nuw i128 %i.hm, %i.hl               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64                 ; 2 uses
  %i.hr = call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 %.val.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  ret i64 %i.hr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE16with_capacity_inCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %bb.a, label %4

4:                                                ; preds = %2
  %5 = icmp ult i64 %1, 8
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %30, label %10, !prof !10

8:                                                ; preds = %4
  %9 = and i64 %1, 4
  %..i.i = add nuw nsw i64 %9, 4
  br label %17

10:                                               ; preds = %6
  %11 = shl nuw i64 %1, 3
  %12 = udiv i64 %11, 7
  %13 = add nsw i64 %12, -1
  %14 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %13, i1 true)
  %15 = lshr i64 -1, %14
  %16 = add nuw nsw i64 %15, 1
  br label %17

17:                                               ; preds = %10, %8
  %.sroa.4.0.i.ph.i = phi i64 [ %16, %10 ], [ %..i.i, %8 ] ; 5 uses
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 48, 121) 48) ; 2 uses
  %19 = extractvalue { i64, i1 } %18, 1
  br i1 %19, label %28, label %20, !prof !10

20:                                               ; preds = %17
  %21 = extractvalue { i64, i1 } %18, 0           ; 3 uses
  %22 = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16     ; 2 uses
  %23 = add i64 %21, %22                          ; 4 uses
  %24 = icmp ult i64 %23, %21
  %25 = icmp ugt i64 %23, 9223372036854775792
  %or.cond.i.i = or i1 %24, %25
  br i1 %or.cond.i.i, label %28, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i, !prof !282

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !478
  %26 = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %23, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !478 ; 2 uses
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api.exit.i

28:                                               ; preds = %20, %17
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !478
  unreachable

29:                                               ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %23) #21, !noalias !478
  unreachable

30:                                               ; preds = %6
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !483
  unreachable

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %31 = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %32 = add nsw i64 %.sroa.4.0.i.ph.i, -1         ; 2 uses
  %33 = lshr i64 %.sroa.4.0.i.ph.i, 3
  %34 = mul nuw nsw i64 %33, 7
  %.sroa.02.0.i.i = select i1 %31, i64 %32, i64 %34
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 %21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %35, i8 -1, i64 %22, i1 false), !noalias !483
  br label %bb.a

bb.a:                                             ; preds = %2, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %.sroa.6.0 = phi i64 [ %.sroa.02.0.i.i, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api.exit.i ], [ 0, %2 ]
  %.sroa.5.0 = phi i64 [ %32, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api.exit.i ], [ 0, %2 ]
  %.sroa.0.0 = phi ptr [ %35, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api.exit.i ], [ @3, %2 ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i, !prof !282

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !484
  %i.n = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !484 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE17new_uninitializedCskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !484
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.k) #21, !noalias !484
  unreachable

_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE17new_uninitializedCskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 3 uses
  %i.q = icmp ult i64 %i.d, 8
  %i.r = lshr i64 %i.f, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.02.0.i.i = select i1 %i.q, i64 %i.d, i64 %i.s
  store ptr %i.p, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.02.0.i.i, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !492, !noalias !489, !nonnull !9, !noundef !9 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.p, ptr nonnull align 1 %i.t, i64 %i.j, i1 false), !noalias !494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !498, !noalias !499, !noundef !9 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE17new_uninitializedCskkCPRT7oCWw_16influxdb3_py_api.exit
  %.val4.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !501
  %i.x = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = ptrtoint ptr %i.t to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.ar, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardTjQINtNtNtBG_3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1Z_EEENCNvMsd_B1y_B1v_15clone_from_impl0EECskkCPRT7oCWw_16influxdb3_py_api(i64 %.sroa.0.023.i, ptr nonnull align 8 dereferenceable(32) %i.b) #18
          to label %.body unwind label %bb.k, !noalias !492

bb.h:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i, %.lr.ph.i
  %.sroa.0.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.az, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i ]
  %.sroa.14.022.i = phi i64 [ %i.v, %.lr.ph.i ], [ %i.ao, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i ]
  %.sroa.10.021.i = phi i16 [ %i.y, %.lr.ph.i ], [ %i.al, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i ] ; 2 uses
  %.sroa.6.020.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.6.1.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i ] ; 2 uses
  %.sroa.013.019.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.013.1.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.10.021.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ad = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.sroa.6.020.i, %bb.h ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.013.019.i, %bb.h ]
  %.val9.i.i = load <16 x i8>, ptr %i.ad, align 16, !noalias !502
  %i.af = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -768 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.af to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.013.1.i = phi ptr [ %.sroa.013.019.i, %bb.h ], [ %i.ag, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.020.i, %bb.h ], [ %i.ah, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.021.i, %bb.h ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ai = add i16 %.lcssa.i.i, -1
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = and i16 %i.ai, %.lcssa.i.i
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i, i64 %i.am ; 3 uses
  %i.ao = add i64 %.sroa.14.022.i, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !494
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -48
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap)
          to label %.noexc.i unwind label %bb.g, !noalias !494

.noexc.i:                                         ; preds = %.loopexit.i
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -24
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i unwind label %bb.i, !noalias !494

bb.i:                                             ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #18
          to label %.body.i unwind label %bb.j, !noalias !494

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !494
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %.noexc.i
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = sub i64 %i.ab, %i.at
  %i.av = sdiv exact i64 %i.au, 48                ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [48 x i8], ptr %i.p, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.ao, 0
  br i1 %i.ba, label %.loopexit, label %bb.h

bb.k:                                             ; preds = %.body.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !494
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1q_EEECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(32) %i.b) #18
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskkCPRT7oCWw_16influxdb3_py_api.exit.i, %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE17new_uninitializedCskkCPRT7oCWw_16influxdb3_py_api.exit
  store i64 %i.v, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !489, !noalias !492
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !492, !noalias !489, !noundef !9
  store i64 %i.bd, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !489, !noalias !492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk0FzFVI8urx_8iox_time4TimeINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtNtB8_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskkCPRT7oCWw_16influxdb3_py_api(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_Dealloc(ptr noundef) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCs9xaRPakndqT_4pyo38instanceINtB7_2PypENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs6Y3vYp7Mdwn_18object_store_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!5 = distinct !{!5, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!6 = !{!7, !8}
!7 = distinct !{!7, !5, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!8 = distinct !{!8, !5, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 2"}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!13 = distinct !{!13, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!14 = !{!12, !15, !16, !4, !7, !8}
!15 = distinct !{!15, !13, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!16 = distinct !{!16, !13, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 2"}
!17 = !{!16, !8}
!18 = !{!12, !4}
!19 = !{!15, !16, !7, !8}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!22 = distinct !{!22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECskkCPRT7oCWw_16influxdb3_py_api"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!25 = distinct !{!25, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api"}
!26 = !{!24, !21}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!29 = distinct !{!29, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CskkCPRT7oCWw_16influxdb3_py_api"}
!30 = !{!28, !24, !21}
!31 = !{!28, !24, !21, !16, !8}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB14_3vec3VecB10_EEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1B_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0CskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!34 = distinct !{!34, !"_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB14_3vec3VecB10_EEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1B_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0CskkCPRT7oCWw_16influxdb3_py_api"}
!35 = !{!36, !16, !8}
!36 = distinct !{!36, !34, !"_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB14_3vec3VecB10_EEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1B_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!37 = !{!36, !33, !16, !8}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!40 = distinct !{!40, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place: argument 0"}
!43 = distinct !{!43, !"_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place"}
!44 = !{!42, !45, !7}
!45 = distinct !{!45, !43, !"_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place: argument 1"}
!46 = !{!45, !7}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB14_3vec3VecB10_EEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1B_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0CskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!49 = distinct !{!49, !"_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB14_3vec3VecB10_EEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1B_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0CskkCPRT7oCWw_16influxdb3_py_api"}
!50 = !{!51, !45, !7}
!51 = distinct !{!51, !49, !"_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB14_3vec3VecB10_EEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_B1B_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!52 = !{!51, !48, !45, !7}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RINvNtCsc96bKABWO34_9hashbrown3map9make_hashNtNtCscdodAO9FK5_5alloc6string6StringINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!55 = distinct !{!55, !"_RINvNtCsc96bKABWO34_9hashbrown3map9make_hashNtNtCscdodAO9FK5_5alloc6string6StringINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEECskkCPRT7oCWw_16influxdb3_py_api"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!58 = distinct !{!58, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 0"}
!63 = distinct !{!63, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write"}
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!281 = distinct !{!281, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtB15_13ExpiringCacheEE9next_implKb0_EB17_"}
!282 = !{!"branch_weights", i32 2002, i32 2000}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!285 = distinct !{!285, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!288 = distinct !{!288, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!291 = distinct !{!291, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CskkCPRT7oCWw_16influxdb3_py_api"}
!292 = !{!290, !287}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!295 = distinct !{!295, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api"}
!296 = distinct !{null, null}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_RNvXsf_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!299 = distinct !{!299, !"_RNvXsf_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringB1l_ENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!302 = distinct !{!302, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringB1l_ENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!303 = !{!301, !298}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringB1i_EECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!306 = distinct !{!306, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringB1i_EECskkCPRT7oCWw_16influxdb3_py_api"}
!307 = !{!305, !301, !298}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringB18_EECskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!310 = distinct !{!310, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringB18_EECskkCPRT7oCWw_16influxdb3_py_api"}
!311 = !{!309, !305, !301, !298}
!312 = !{!313}
!313 = distinct !{!313, !310, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringB18_EECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!314 = !{!313, !309, !305, !301, !298}
!315 = !{!316, !305, !301, !298}
!316 = distinct !{!316, !317, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringB13_EE9next_implKb0_ECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!317 = distinct !{!317, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringB13_EE9next_implKb0_ECskkCPRT7oCWw_16influxdb3_py_api"}
!318 = !{!"branch_weights", i32 4000000, i32 4001}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1V_: argument 0"}
!321 = distinct !{!321, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1V_"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEEB25_: argument 0"}
!324 = distinct !{!324, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEEB25_"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_RNvXsf_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_: argument 0"}
!327 = distinct !{!327, !"_RNvXsf_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB20_: argument 0"}
!330 = distinct !{!330, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB20_"}
!331 = !{!329, !326, !323, !320}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1X_: argument 0"}
!334 = distinct !{!334, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1X_"}
!335 = !{!333, !329, !326, !323, !320}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1N_: argument 1"}
!338 = distinct !{!338, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1N_"}
!339 = !{!337, !333, !329, !326, !323, !320}
!340 = !{!341}
!341 = distinct !{!341, !338, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEEB1N_: argument 0"}
!342 = !{!341, !337, !333, !329, !326, !323, !320}
!343 = !{!344, !333, !329, !326, !323, !320}
!344 = distinct !{!344, !345, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEE9next_implKb0_EB1I_: argument 0"}
!345 = distinct !{!345, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache10CacheEntryEE9next_implKb0_EB1I_"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!348 = distinct !{!348, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECskkCPRT7oCWw_16influxdb3_py_api"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!351 = distinct !{!351, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api"}
!352 = !{!350, !347}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!355 = distinct !{!355, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECskkCPRT7oCWw_16influxdb3_py_api"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!358 = distinct !{!358, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api"}
!359 = !{!357, !354}
!360 = !{i32 0, i32 4}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdEBF_: argument 0"}
!363 = distinct !{!363, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdEBF_"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!366 = distinct !{!366, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 0"}
!371 = distinct !{!371, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write"}
!372 = !{!373}
!373 = distinct !{!373, !371, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 1"}
!374 = !{!370, !365}
!375 = !{!373, !368}
!376 = !{!377, !373, !368}
!377 = distinct !{!377, !378, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 1"}
!378 = distinct !{!378, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small"}
!379 = !{!380, !370, !365}
!380 = distinct !{!380, !378, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 0"}
!381 = !{!382, !380, !370, !365}
!382 = distinct !{!382, !383, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16: argument 0"}
!383 = distinct !{!383, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16"}
!384 = !{!385, !380, !370, !365}
!385 = distinct !{!385, !386, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32: argument 0"}
!386 = distinct !{!386, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32"}
!387 = !{!388, !370, !365}
!388 = distinct !{!388, !389, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64: argument 0"}
!389 = distinct !{!389, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64"}
!390 = !{!391, !370, !365}
!391 = distinct !{!391, !392, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128: argument 0"}
!392 = distinct !{!392, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128"}
!393 = !{i64 8}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_RNCINvNtCsc96bKABWO34_9hashbrown3map11make_hasherNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBN_13ExpiringCacheINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0BP_: argument 0"}
!396 = distinct !{!396, !"_RNCINvNtCsc96bKABWO34_9hashbrown3map11make_hasherNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdNtBN_13ExpiringCacheINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0BP_"}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_RINvNtCsc96bKABWO34_9hashbrown3map9make_hashNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEEBK_: argument 1"}
!399 = distinct !{!399, !"_RINvNtCsc96bKABWO34_9hashbrown3map9make_hashNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEEBK_"}
!400 = !{!401, !398, !395}
!401 = distinct !{!401, !399, !"_RINvNtCsc96bKABWO34_9hashbrown3map9make_hashNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7CacheIdINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEEBK_: argument 0"}
!402 = !{!398, !395}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_RINvXs7_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB6_7CacheIdNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEB8_: argument 0"}
!405 = distinct !{!405, !"_RINvXs7_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB6_7CacheIdNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEB8_"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_RINvXs7_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB6_7CacheIdNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEB8_: argument 1"}
!408 = !{!404, !398, !395}
!409 = !{!407, !401}
!410 = !{!411, !413, !407}
!411 = distinct !{!411, !412, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usize: argument 0"}
!412 = distinct !{!412, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usize"}
!413 = distinct !{!413, !414, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_isizeCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!414 = distinct !{!414, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_isizeCskkCPRT7oCWw_16influxdb3_py_api"}
!415 = !{!404, !401, !398, !395}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!418 = distinct !{!418, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 0"}
!423 = distinct !{!423, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write"}
!424 = !{!425}
!425 = distinct !{!425, !423, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 1"}
!426 = !{!427, !425, !420}
!427 = distinct !{!427, !428, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 1"}
!428 = distinct !{!428, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small"}
!429 = !{!430, !422, !417, !404, !398, !395}
!430 = distinct !{!430, !428, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 0"}
!431 = !{!425, !420}
!432 = !{!433, !430, !422, !417, !404, !398, !395}
!433 = distinct !{!433, !434, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16: argument 0"}
!434 = distinct !{!434, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16"}
!435 = !{!436, !430, !422, !417, !404, !398, !395}
!436 = distinct !{!436, !437, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32: argument 0"}
!437 = distinct !{!437, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32"}
!438 = !{!422, !417}
!439 = !{!425, !420, !404, !401, !398, !395}
!440 = !{!441, !422, !417, !404, !398, !395}
!441 = distinct !{!441, !442, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64: argument 0"}
!442 = distinct !{!442, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64"}
!443 = !{!422, !417, !404, !398, !395}
!444 = !{!445, !422, !417, !404, !398, !395}
!445 = distinct !{!445, !446, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128: argument 0"}
!446 = distinct !{!446, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!449 = distinct !{!449, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 0"}
!454 = distinct !{!454, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 1"}
!457 = !{!458, !456, !451}
!458 = distinct !{!458, !459, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 1"}
!459 = distinct !{!459, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small"}
!460 = !{!461, !453, !448, !404, !398, !395}
!461 = distinct !{!461, !459, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 0"}
!462 = !{!456, !451}
!463 = !{!464, !461, !453, !448, !404, !398, !395}
!464 = distinct !{!464, !465, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16: argument 0"}
!465 = distinct !{!465, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16"}
!466 = !{!467, !461, !453, !448, !404, !398, !395}
!467 = distinct !{!467, !468, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32: argument 0"}
!468 = distinct !{!468, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32"}
!469 = !{!453, !448}
!470 = !{!456, !451, !404, !401, !398, !395}
!471 = !{!472, !453, !448, !404, !398, !395}
!472 = distinct !{!472, !473, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64: argument 0"}
!473 = distinct !{!473, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64"}
!474 = !{!453, !448, !404, !398, !395}
!475 = !{!476, !453, !448, !404, !398, !395}
!476 = distinct !{!476, !477, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128: argument 0"}
!477 = distinct !{!477, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128"}
!478 = !{!479, !481}
!479 = distinct !{!479, !480, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!480 = distinct !{!480, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!481 = distinct !{!481, !482, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!482 = distinct !{!482, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!483 = !{!481}
!484 = !{!485, !487}
!485 = distinct !{!485, !486, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!486 = distinct !{!486, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECskkCPRT7oCWw_16influxdb3_py_api"}
!487 = distinct !{!487, !488, !"_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE17new_uninitializedCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!488 = distinct !{!488, !"_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE17new_uninitializedCskkCPRT7oCWw_16influxdb3_py_api"}
!489 = !{!490}
!490 = distinct !{!490, !491, !"_RNvMsd_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE15clone_from_implCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!491 = distinct !{!491, !"_RNvMsd_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE15clone_from_implCskkCPRT7oCWw_16influxdb3_py_api"}
!492 = !{!493}
!493 = distinct !{!493, !491, !"_RNvMsd_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBX_EE15clone_from_implCskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!494 = !{!490, !493}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringB18_EECskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!497 = distinct !{!497, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringB18_EECskkCPRT7oCWw_16influxdb3_py_api"}
!498 = !{!496, !493}
!499 = !{!500, !490}
!500 = distinct !{!500, !497, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCscdodAO9FK5_5alloc6string6StringB18_EECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!501 = !{!500, !496, !490, !493}
!502 = !{!503, !490, !493}
!503 = distinct !{!503, !504, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringB13_EE9next_implKb0_ECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!504 = distinct !{!504, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringB13_EE9next_implKb0_ECskkCPRT7oCWw_16influxdb3_py_api"}
end_hunk_2
