Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.08?download=true
inline.NumInlined: 112
inline.NumDeleted: 52
begin_hunk_0_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros:bb.a
  %.sroa.5.132 = phi i64 [ %i.as, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val5 = load <2 x i64>, ptr %i.ao, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i64> %.val5, ptr %i.e, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.f, ptr nonnull align 16 %i.e)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit

.noexc3:                                          ; preds = %.noexc
  %i.ap = load <16 x i8>, ptr %i.f, align 16
  %i.aq = icmp sgt <16 x i8> %i.ap, splat (i8 -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %i.as = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ar, 0
  br i1 %.not.i2, label %.noexc, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit
  %.pre46 = load i64, ptr %i.o, align 8
  %.pre47 = load i64, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.f
  %i.at = phi i64 [ %.pre47, %._crit_edge40.loopexit ], [ %i.af, %bb.f ]
  %i.au = phi i64 [ %.pre46, %._crit_edge40.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  store i64 %i.av, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  store i64 %i.au, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.k)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.ar, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.as, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.ao, %.noexc3 ]
  %i.aw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i16 %.sroa.13.1.lcssa, -1
  %i.az = and i16 %i.ay, %.sroa.13.1.lcssa
  %i.ba = add i64 %.sroa.5.1.lcssa, %i.ax         ; 2 uses
  %i.bb = add i64 %.sroa.9.037, -1                ; 2 uses
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = sub nsw i64 0, %i.ba
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  %.val.i = load ptr, ptr %i.m, align 8
  %i.bg = invoke i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECshVzvyy7iigg_12salsa_macros(ptr align 8 %.val.i, ptr nonnull align 8 %i.bf)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit: ; preds = %._crit_edge
  %i.bh = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.0.014.i = and i64 %i.bh, %i.bg           ; 3 uses
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.0.014.i
  %.sroa.0.0.copyload.i15.i = load <2 x i64>, ptr %i.bj, align 1, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i15.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros.exit
  %i.bk = load <16 x i8>, ptr %i.d, align 16
  %i.bl = icmp slt <16 x i8> %i.bk, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i16.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i16.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc15, %.noexc13
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.014.i, %.noexc13 ], [ %.sroa.0.0.i12, %.noexc15 ]
  %.lcssa.i = phi i16 [ %i.bm, %.noexc13 ], [ %i.cg, %.noexc15 ]
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.0.0.lcssa.i, %i.bo
  %i.bq = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8 ; 2 uses
  %i.br = and i64 %i.bp, %i.bq                    ; 2 uses
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.val7.i.i = load <2 x i64>, ptr %.val3.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val7.i.i, ptr %i.a, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.g
  %i.bv = load <16 x i8>, ptr %i.b, align 16
  %i.bw = icmp slt <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i5.i = icmp eq i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.bz
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.pre45 = load i64, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit

.lr.ph.i:                                         ; preds = %.noexc13, %.noexc15
  %.sroa.0.018.i = phi i64 [ %.sroa.0.0.i12, %.noexc15 ], [ %.sroa.0.014.i, %.noexc13 ]
  %.sroa.5.017.i = phi i64 [ %i.ca, %.noexc15 ], [ 0, %.noexc13 ]
  %i.ca = add i64 %.sroa.5.017.i, 16              ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.018.i
  %.sroa.0.0.i12 = and i64 %i.cb, %i.bh           ; 3 uses
  %i.cc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.cd, align 1, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  invoke void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %.lr.ph.i
  %i.ce = load <16 x i8>, ptr %i.d, align 16
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCshVzvyy7iigg_12salsa_macros.exit: ; preds = %.noexc14, %._crit_edge.i
  %i.ch = phi i64 [ %.pre45, %.noexc14 ], [ %i.bq, %._crit_edge.i ]
  %i.ci = phi ptr [ %.pre, %.noexc14 ], [ %.val3.i, %._crit_edge.i ]
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc14 ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0.0.i4.i
  %i.ck = lshr i64 %i.bg, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i4.i, -16
  %i.cn = and i64 %i.ch, %i.cm
  store i8 %i.cl, ptr %i.cj, align 1
  %i.co = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store i8 %i.cl, ptr %i.cq, align 1
  %i.cr = load ptr, ptr %0, align 8
  %.neg.i.i = mul i64 %i.ba, -24
  %i.cs = getelementptr i8, ptr %i.cr, i64 %.neg.i.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.neg63.i.i = mul i64 %.sroa.0.0.i4.i, -24
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.neg63.i.i
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cw, ptr noundef nonnull align 1 dereferenceable(24) %i.ct, i64 24, i1 false)
  %i.cx = icmp eq i64 %i.bb, 0
  br i1 %i.cx, label %._crit_edge40.loopexit, label %.preheader

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.i:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %bb.d, %._crit_edge40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

bb.j:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, ptr nonnull %i.l, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros, ptr nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCshVzvyy7iigg_12salsa_macros)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.c, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.i, %bb.j
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr noalias nofree nonnull writeonly align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.m, label %3

3:                                                ; preds = %bb.d
  %4 = shl nuw i64 %2, 3
  %5 = udiv i64 %4, 7
  %6 = add nsw i64 %5, -1
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true)
  %8 = lshr i64 -1, %7
  %9 = add nuw nsw i64 %8, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCsRujiHMkeh3_11proc_macro2(i64 3, i64 range(i64 1, 0) %2) ; 2 uses
  %i.e = icmp ult i64 %i.d, 4
  %i.f = icmp ult i64 %i.d, 8
  %..i = select i1 %i.f, i64 8, i64 16
  %.sroa.04.0.i = select i1 %i.e, i64 4, i64 %..i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %3
  %.sroa.4.0.i.ph = phi i64 [ %9, %3 ], [ %.sroa.04.0.i, %bb.e ] ; 3 uses
  %10 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph, i64 24) ; 2 uses
  %11 = extractvalue { i64, i1 } %10, 1
  br i1 %11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %12 = extractvalue { i64, i1 } %10, 0
  %i.g = add nuw i64 %12, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nuw nsw i64 %.sroa.4.0.i.ph, 16
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.h, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %bb.g
  %i.m = tail call { ptr, i64 } @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocateCshVzvyy7iigg_12salsa_macros(ptr %1, i64 16, i64 %i.j), !noalias !39 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext true), !noalias !39
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i
  %i.r = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext true, i64 16, i64 %i.j), !noalias !39
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.thread

bb.j:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i
  %.not18.i = icmp eq i64 %i.o, %i.j
  br i1 %.not18.i, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = add i64 %i.o, -16
  %i.t = udiv i64 %i.s, 25
  %i.u = tail call range(i64 4, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 false)
  %i.v = and i64 %i.u, 63
  %i.w = lshr exact i64 -9223372036854775808, %i.v ; 3 uses
  %13 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 24) ; 2 uses
  %14 = extractvalue { i64, i1 } %13, 1
  br i1 %14, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %15 = extractvalue { i64, i1 } %13, 0
  %i.x = add nuw i64 %15, 8
  %i.y = and i64 %i.x, -16
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

bb.m:                                             ; preds = %bb.d
  %i.z = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext true) ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.n

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.i, %bb.h
  %.pn = phi { i64, i64 } [ %i.q, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.031 = extractvalue { i64, i64 } %.pn, 1
  %.sroa.4.032 = extractvalue { i64, i64 } %.pn, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.032, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.031, ptr %i.af, align 8
  store ptr null, ptr %0, align 8
  br label %bb.n

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.014.0.i = phi i64 [ %i.h, %bb.j ], [ %i.y, %bb.l ], [ undef, %bb.k ]
  %.sroa.0.0.i22 = phi i64 [ %.sroa.4.0.i.ph, %bb.j ], [ %i.w, %bb.l ], [ %i.w, %bb.k ] ; 3 uses
  %i.ag = add i64 %.sroa.0.0.i22, -1              ; 3 uses
  %i.ah = icmp samesign ult i64 %i.ag, 8
  %i.ai = lshr i64 %.sroa.0.0.i22, 3
  %i.aj = mul nuw nsw i64 %i.ai, 7
  %.sroa.07.0.i = select i1 %i.ah, i64 %i.ag, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.014.0.i ; 2 uses
  %i.al = add nuw i64 %.sroa.0.0.i22, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i8 -1, i64 %i.al, i1 false)
  store ptr %i.ak, ptr %0, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.317.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit.thread, %bb.b, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3Eghgi3KVFH_3syn11parse_quote5parseNtNtB4_2ty4TypeECshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [248 x i8], align 8               ; 4 uses
  %i.h = alloca [248 x i8], align 8               ; 6 uses
  %i.i = alloca [248 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [248 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = call { ptr, i64 } @_RNvMNtCs3Eghgi3KVFH_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c), !noalias !42 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %i.k, align 8, !noalias !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !42
  invoke void @_RNvNtCs3Eghgi3KVFH_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !42

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #13
          to label %common.resume unwind label %bb.t

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([248 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f, !noalias !42

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.w, %bb.k ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #13
          to label %bb.b unwind label %bb.t

bb.f:                                             ; preds = %.invoke12.i, %bb.i, %bb.g, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([248 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f, !noalias !42

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.h, align 8, !noalias !42
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !42
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1e_EE13from_residualBO_(ptr nonnull sret([248 x i8]) align 8 %i.m, ptr nonnull align 8 %i.a, ptr nonnull align 8 @44)
          to label %.invoke.i unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.i, ptr noundef nonnull align 8 dereferenceable(248) %i.h, i64 248, i1 false), !noalias !42
  invoke void @_RNvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k, !noalias !42

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.i) #13
          to label %bb.e unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCs3Eghgi3KVFH_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k, !noalias !42

bb.m:                                             ; preds = %bb.l
  %i.x = load i64, ptr %i.f, align 8, !noalias !42
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !42
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1e_EE13from_residualBO_(ptr nonnull sret([248 x i8]) align 8 %i.m, ptr nonnull align 8 %i.b, ptr nonnull align 8 @43)
          to label %.invoke12.i unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.y = invoke { ptr, ptr } @_RNvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k, !noalias !42 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = invoke { i32, i8 } @_RNvNtCs3Eghgi3KVFH_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.z, ptr %i.aa)
          to label %bb.q unwind label %bb.k, !noalias !42 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ac = extractvalue { i32, i8 } %i.ab, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ac, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = extractvalue { i32, i8 } %i.ab, 0
  invoke void @_RNvNtCs3Eghgi3KVFH_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ad, i8 %i.ac)
          to label %bb.s unwind label %bb.k, !noalias !42

.thread.i:                                        ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.m, ptr noundef nonnull align 8 dereferenceable(248) %i.i, i64 248, i1 false)
  br label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -1, ptr %i.m, align 8, !alias.scope !42
  br label %.invoke12.i

.invoke12.i:                                      ; preds = %bb.s, %bb.n
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.f

.invoke.i:                                        ; preds = %.invoke12.i, %.thread.i, %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %_RNvXsh_NtCs3Eghgi3KVFH_3syn5parseNvYNtNtB7_2ty4TypeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CshVzvyy7iigg_12salsa_macros.exit unwind label %bb.c

bb.t:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.b ], [ %i.aj, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXsh_NtCs3Eghgi3KVFH_3syn5parseNvYNtNtB7_2ty4TypeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CshVzvyy7iigg_12salsa_macros.exit: ; preds = %.invoke.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ag = load i64, ptr %i.m, align 8
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXsh_NtCs3Eghgi3KVFH_3syn5parseNvYNtNtB7_2ty4TypeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CshVzvyy7iigg_12salsa_macros.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13panic_displayNtNtCs3Eghgi3KVFH_3syn5error5ErrorECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.l, ptr align 8 %2) #15
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %_RNvXsh_NtCs3Eghgi3KVFH_3syn5parseNvYNtNtB7_2ty4TypeNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2CshVzvyy7iigg_12salsa_macros.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.m, i64 248, i1 false)
  ret void

bb.w:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2j_8adapters3map3MapIB3k_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtB9_3setINtB5L_7HashSetBP_B1o_EIB2d_BP_E6extendB3L_E0EEB4D_:bb.a
  %.sroa.0.0 = phi i64 [ %i.k, %bb.d ], [ %spec.select, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ugt i64 %.sroa.0.0, %i.m
  br i1 %i.n, label %bb.f, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, i64 %.sroa.0.0, ptr nonnull align 8 %i.o)
          to label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = and i64 %i.p, 1
  %spec.select = add nuw i64 %i.q, %i.r
  br label %bb.e

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.g, align 8
  call void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2Q_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3z_E6extendBR_E0ENtNtB50_8iterator8Iterator8for_eachNCINvXs1i_NtB2S_3mapINtB6s_7HashMapB3z_uB47_EIB4W_TB3z_uEE6extendB3_E0EB1I_(ptr %i.s, ptr align 8 %i.t, ptr nonnull align 8 %0)
  ret void

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB38_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendB3R_E6extendB19_E0EEB20_(ptr nonnull align 8 %i.c) #13
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB7_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2j_8adapters3map3MapINtNtB3o_10filter_map9FilterMapINtNtNtB2l_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB5n_5Macro12try_generate0ENCINvXs8_NtB9_3setINtB6G_7HashSetBP_B1o_EIB2d_BP_E6extendB3L_E0EEB5p_(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = tail call { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2M_5Macro12try_generate0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB45_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtB2_6ExtendB4O_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB2O_(ptr %1, ptr %2) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.e, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2w_5Macro12try_generate0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3P_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtB9_6traits7collect6ExtendB4y_E6extendBW_E0ENtNtB5Z_8iterator8Iterator9size_hintB2y_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.k = load i64, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2w_5Macro12try_generate0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3P_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtB9_6traits7collect6ExtendB4y_E6extendBW_E0ENtNtB5Z_8iterator8Iterator9size_hintB2y_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 1
  %i.n = and i64 %i.l, 1
  %spec.select = add nuw i64 %i.m, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp ugt i64 %.sroa.0.0, %i.p
  br i1 %i.q, label %bb.e, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, i64 %.sroa.0.0, ptr nonnull align 8 %i.r)
  br label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.d, %bb.e
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.g, align 8
  call void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2r_5Macro12try_generate0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3K_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4t_E6extendBR_E0ENtNtB5U_8iterator8Iterator8for_eachNCINvXs1i_NtB3M_3mapINtB7m_7HashMapB4t_uB51_EIB5Q_TB4t_uEE6extendB3_E0EB2t_(ptr %i.s, ptr %i.t, ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8
  %i.f = tail call i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtCsRujiHMkeh3_11proc_macro25IdentECshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, ptr nonnull align 8 %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0CshVzvyy7iigg_12salsa_macros(ptr nofree readnone captures(none) %0, ptr %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros(ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB1Z_11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %.val = load ptr, ptr %i.a, align 8
  %i.h = tail call zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtCsRujiHMkeh3_11proc_macro25IdentINtB2_10EquivalentBq_E10equivalentCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, ptr nonnull align 8 %i.g)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %.val = load ptr, ptr %i.a, align 8
  %i.h = tail call zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtCsRujiHMkeh3_11proc_macro25IdentINtB2_10EquivalentBq_E10equivalentCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, ptr nonnull align 8 %i.g)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8
  %i.f = tail call i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, ptr nonnull align 8 %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0CshVzvyy7iigg_12salsa_macros(ptr nofree readnone captures(none) %0, ptr %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros(ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB22_11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %.val = load ptr, ptr %i.a, align 8
  %i.h = tail call zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, ptr nonnull align 8 %i.g)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %.val = load ptr, ptr %i.a, align 8
  %i.h = tail call zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCshVzvyy7iigg_12salsa_macros(ptr align 8 %.val, ptr nonnull align 8 %i.g)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = add i64 %i.b, 1
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = extractvalue { i64, i1 } %i.j, 0           ; 2 uses
  %i.l = add i64 %i.h, -1
  %i.m = add i64 %i.l, %2                         ; 2 uses
  %i.n = icmp ult i64 %i.m, %2
  br i1 %i.n, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 0, %i.h
  %i.p = and i64 %i.m, %i.o                       ; 3 uses
  %i.q = add i64 %i.b, 17
  %i.r = add i64 %i.q, %i.p                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub i64 -9223372036854775808, %i.h
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.p, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.r, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %i.h, %bb.e ]
  %i.v = load ptr, ptr %1, align 8
  %i.w = sub nsw i64 0, %.sroa.8.0
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  tail call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCshVzvyy7iigg_12salsa_macros(ptr %i.d, ptr %i.x, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2l_8adapters3map3MapIB3m_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtBb_3setINtB5N_7HashSetBR_B1q_EIB2f_BR_E6extendB3N_E0EE0B4F_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = load ptr, ptr %0, align 8
  call fastcc void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, ptr align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2l_8adapters3map3MapINtNtB3q_10filter_map9FilterMapINtNtNtB2n_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB5p_5Macro12try_generate0ENCINvXs8_NtBb_3setINtB6I_7HashSetBR_B1q_EIB2f_BR_E6extendB3N_E0EE0B5r_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = load ptr, ptr %0, align 8
  call fastcc void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshVzvyy7iigg_12salsa_macros(ptr align 8 %i.b, ptr align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0CshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not8 = icmp eq i64 %i.c, -1
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre10 = add i64 %.pre9, 1
  %i.e = lshr i64 %.pre10, 3
  %i.f = mul nuw i64 %i.e, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %i.f, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.g = phi i64 [ %.pre9, %._crit_edge.loopexit ], [ -1, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = icmp ult i64 %i.g, 8
  %.sroa.03.0 = select i1 %i.i, i64 %i.g, i64 %.pre-phi
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = sub i64 %.sroa.03.0, %i.k
  store i64 %i.m, ptr %i.l, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.07 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.f ] ; 5 uses
  %.neg = xor i64 %.sroa.0.07, -1
  %i.n = add nuw i64 %.sroa.0.07, 1
  %i.o = load ptr, ptr %1, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.07 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, -128
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = add i64 %.sroa.0.07, -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, %i.t
  store i8 -1, ptr %i.q, align 1
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store i8 -1, ptr %i.z, align 1
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %.neg6 = mul i64 %i.ac, %.neg
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6
  tail call void %i.aa(ptr %i.ae)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %exitcond.not = icmp eq i64 %.sroa.0.07, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs3Eghgi3KVFH_3syn4item8ImplItem4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBz_5token5CommaE8iter_mutCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7IterMutTNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBW_5token5CommaEE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs3Eghgi3KVFH_3syn4item7UseTreeNtNtBz_5token5CommaE8iter_mutCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7IterMutTNtNtCs3Eghgi3KVFH_3syn4item7UseTreeNtNtBW_5token5CommaEE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 5 uses
  %i.v = alloca [16 x i8], align 16               ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = invoke i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtCsRujiHMkeh3_11proc_macro25IdentECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.x, ptr nonnull align 8 %1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit.i

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, i64 1, ptr nonnull align 8 %i.x)
          to label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
end_hunk_1
begin_hunk_2_@_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_4item4ItemNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EENtNtNtB1Q_3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.39.0.copyload = load i64, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.07.0.copyload, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx, align 8
  %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.28.0.copyload, ptr %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.07.0.copyload, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.28.0.copyload, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.39.0.copyload.sink = phi i64 [ %.sroa.39.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.39.0.copyload.sink, ptr %i.c, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: cold noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable
define hidden void @_RNvXNvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceNtB2_10PanicGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr nofree readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB1j_6option6OptionB2b_ENtNtBe_5alloc6GlobalEB1d_4dropCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !113 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread, label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.lr.ph

_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.lr.ph: ; preds = %bb.a
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit

_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.lcssa, i64 72
  call void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.g), !noalias !113
  call void @_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1J_EE16deallocating_endNtNtBc_5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %.lcssa), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit: ; preds = %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.lr.ph, %bb.b
  %i.h = phi i64 [ %i.e, %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.lr.ph ], [ %i.o, %bb.b ]
  %i.i = phi ptr [ %i.d, %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.lr.ph ], [ %i.n, %bb.b ]
  %i.j = phi ptr [ %i.c, %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.k = add i64 %i.h, -1
  store i64 %i.k, ptr %i.i, align 8, !noalias !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.l), !noalias !113
  call void @_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1J_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.j), !noalias !113
  %.sroa.0.0.copyload1 = load ptr, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.b)
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !113 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread, label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit

.loopexit:                                        ; preds = %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit, %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedjNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvYRjNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens17into_token_streamCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %0)
  %i.b = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCsRujiHMkeh3_11proc_macro25IdentuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsRujiHMkeh3_11proc_macro25IdentuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %.val1.i.i.i = load <2 x i64>, ptr %i.l, align 16, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !116
  store <2 x i64> %.val1.i.i.i, ptr %i.c, align 16, !noalias !116
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c), !noalias !116
  %i.m = load <16 x i8>, ptr %i.d, align 16, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !116
  %i.n = load i64, ptr %i.i, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.p = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.05.018.i.i = phi ptr [ %.sroa.05.2.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.l, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.4.017.i.i = phi ptr [ %.sroa.4.2.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.r, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.sroa.1.016.i.i = phi i64 [ %i.ab, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.n, %.lr.ph.preheader.i.i ]
  %.sroa.76.015.i.i = phi i16 [ %i.ad, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.q, %.lr.ph.preheader.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.76.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.4.1.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.sroa.4.017.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.05.1.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %.lr.ph.i.i ]
  %.val8.i.i.i = load <2 x i64>, ptr %.sroa.4.1.i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val8.i.i.i, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.s = load <16 x i8>, ptr %i.b, align 16
  %i.t = icmp sgt <16 x i8> %i.s, splat (i8 -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds i8, ptr %.sroa.05.1.i.i, i64 -384 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i, i64 16 ; 2 uses
  %i.w = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.4.2.i.i = phi ptr [ %.sroa.4.017.i.i, %.lr.ph.i.i ], [ %i.v, %.lr.ph.i.i.i ]
  %.sroa.05.2.i.i = phi ptr [ %.sroa.05.018.i.i, %.lr.ph.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.76.015.i.i, %.lr.ph.i.i ], [ %i.w, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [24 x i8], ptr %.sroa.05.2.i.i, i64 %i.z
  %i.ab = add i64 %.sroa.10.sroa.1.016.i.i, -1    ; 2 uses
  %i.ac = add i16 %.lcssa.i.i.i, -1
  %i.ad = and i16 %i.ac, %.lcssa.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -24
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.ae)
  %i.af = icmp eq i64 %i.ab, 0
  br i1 %i.af, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i, label %.lr.ph.i.i

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCsRujiHMkeh3_11proc_macro25IdentuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i, %bb.c, %bb.b
  %i.ag = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ah = add i64 %i.ag, 1
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ah, i64 24) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i
  %3 = extractvalue { i64, i1 } %1, 0
  %i.ai = add nuw i64 %3, 8
  %i.aj = and i64 %i.ai, -16                      ; 3 uses
  %i.ak = add i64 %i.ag, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp ugt i64 %i.al, 9223372036854775792
  br i1 %i.an, label %bb.f, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i
  %.sroa.8.0.i = phi i64 [ undef, %bb.d ], [ undef, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i ], [ %i.aj, %bb.e ], [ undef, %bb.f ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.d ], [ undef, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i ], [ %i.al, %bb.e ], [ undef, %bb.f ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 0, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtCsRujiHMkeh3_11proc_macro25IdentuEECshVzvyy7iigg_12salsa_macros.exit.i ], [ 16, %bb.e ], [ 0, %bb.f ]
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = sub nsw i64 0, %.sroa.8.0.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.e, ptr %i.aq, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsRujiHMkeh3_11proc_macro25IdentuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtCsRujiHMkeh3_11proc_macro25IdentuENtNtCscdodAO9FK5_5alloc5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringuENtNtB1h_5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %.val1.i.i.i = load <2 x i64>, ptr %i.l, align 16, !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !119
  store <2 x i64> %.val1.i.i.i, ptr %i.c, align 16, !noalias !119
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c), !noalias !119
  %i.m = load <16 x i8>, ptr %i.d, align 16, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !119
  %i.n = load i64, ptr %i.i, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.p = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.05.018.i.i = phi ptr [ %.sroa.05.2.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.l, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.4.017.i.i = phi ptr [ %.sroa.4.2.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.r, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.sroa.1.016.i.i = phi i64 [ %i.ab, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.n, %.lr.ph.preheader.i.i ]
  %.sroa.76.015.i.i = phi i16 [ %i.ad, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i ], [ %i.q, %.lr.ph.preheader.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.76.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.4.1.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.sroa.4.017.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.05.1.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %.lr.ph.i.i ]
  %.val8.i.i.i = load <2 x i64>, ptr %.sroa.4.1.i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x i64> %.val8.i.i.i, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.s = load <16 x i8>, ptr %i.b, align 16
  %i.t = icmp sgt <16 x i8> %i.s, splat (i8 -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds i8, ptr %.sroa.05.1.i.i, i64 -384 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i, i64 16 ; 2 uses
  %i.w = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.4.2.i.i = phi ptr [ %.sroa.4.017.i.i, %.lr.ph.i.i ], [ %i.v, %.lr.ph.i.i.i ]
  %.sroa.05.2.i.i = phi ptr [ %.sroa.05.018.i.i, %.lr.ph.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.76.015.i.i, %.lr.ph.i.i ], [ %i.w, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [24 x i8], ptr %.sroa.05.2.i.i, i64 %i.z
  %i.ab = add i64 %.sroa.10.sroa.1.016.i.i, -1    ; 2 uses
  %i.ac = add i16 %.lcssa.i.i.i, -1
  %i.ad = and i16 %i.ac, %.lcssa.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -24
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.ae)
  %i.af = icmp eq i64 %i.ab, 0
  br i1 %i.af, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i, label %.lr.ph.i.i

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE9next_implKb0_ECshVzvyy7iigg_12salsa_macros.exit.i.i, %bb.c, %bb.b
  %i.ag = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ah = add i64 %i.ag, 1
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ah, i64 24) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i
  %3 = extractvalue { i64, i1 } %1, 0
  %i.ai = add nuw i64 %3, 8
  %i.aj = and i64 %i.ai, -16                      ; 3 uses
  %i.ak = add i64 %i.ag, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp ugt i64 %i.al, 9223372036854775792
  br i1 %i.an, label %bb.f, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i
  %.sroa.8.0.i = phi i64 [ undef, %bb.d ], [ undef, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i ], [ %i.aj, %bb.e ], [ undef, %bb.f ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.d ], [ undef, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i ], [ %i.al, %bb.e ], [ undef, %bb.f ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 0, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringuEECshVzvyy7iigg_12salsa_macros.exit.i ], [ 16, %bb.e ], [ 0, %bb.f ]
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = sub nsw i64 0, %.sroa.8.0.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  call void @_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocateCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.e, ptr %i.aq, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringuENtNtB1h_5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringuENtNtB1h_5alloc6GlobalECshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCshVzvyy7iigg_12salsa_macros.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB27_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3k_E7expand1NvCshVzvyy7iigg_12salsa_macros11salsa_valueE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3S_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientNtB4_11TokenStreamINtNtCs4NRVxsYgnAr_4core6option6OptionBX_ENCNCINvMsg_B4_INtB4_6ClientNtB8_11TokenStreamB2m_E7expand1NvCshVzvyy7iigg_12salsa_macros11salsa_valueE00E0B2T_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB27_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3k_E7expand1NvCshVzvyy7iigg_12salsa_macros9supertypeE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3S_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientNtB4_11TokenStreamINtNtCs4NRVxsYgnAr_4core6option6OptionBX_ENCNCINvMsg_B4_INtB4_6ClientNtB8_11TokenStreamB2m_E7expand1NvCshVzvyy7iigg_12salsa_macros9supertypeE00E0B2T_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB1e_11TokenStreamB28_EINtNtB9_6option6OptionB28_ENCNCINvMsh_B1e_INtB1e_6ClientTNtB1i_11TokenStreamB3r_EB3r_E7expand2NvCshVzvyy7iigg_12salsa_macros11accumulatorE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB44_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB4_11TokenStreamBY_EINtNtCs4NRVxsYgnAr_4core6option6OptionBY_ENCNCINvMsh_B4_INtB4_6ClientTNtB8_11TokenStreamB2s_EB2s_E7expand2NvCshVzvyy7iigg_12salsa_macros11accumulatorE00E0B34_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB1e_11TokenStreamB28_EINtNtB9_6option6OptionB28_ENCNCINvMsh_B1e_INtB1e_6ClientTNtB1i_11TokenStreamB3r_EB3r_E7expand2NvCshVzvyy7iigg_12salsa_macros2dbE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB44_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB4_11TokenStreamBY_EINtNtCs4NRVxsYgnAr_4core6option6OptionBY_ENCNCINvMsh_B4_INtB4_6ClientTNtB8_11TokenStreamB2s_EB2s_E7expand2NvCshVzvyy7iigg_12salsa_macros2dbE00E0B34_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB1e_11TokenStreamB28_EINtNtB9_6option6OptionB28_ENCNCINvMsh_B1e_INtB1e_6ClientTNtB1i_11TokenStreamB3r_EB3r_E7expand2NvCshVzvyy7iigg_12salsa_macros5inputE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB44_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB4_11TokenStreamBY_EINtNtCs4NRVxsYgnAr_4core6option6OptionBY_ENCNCINvMsh_B4_INtB4_6ClientTNtB8_11TokenStreamB2s_EB2s_E7expand2NvCshVzvyy7iigg_12salsa_macros5inputE00E0B34_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB1e_11TokenStreamB28_EINtNtB9_6option6OptionB28_ENCNCINvMsh_B1e_INtB1e_6ClientTNtB1i_11TokenStreamB3r_EB3r_E7expand2NvCshVzvyy7iigg_12salsa_macros7trackedE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB44_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB4_11TokenStreamBY_EINtNtCs4NRVxsYgnAr_4core6option6OptionBY_ENCNCINvMsh_B4_INtB4_6ClientTNtB8_11TokenStreamB2s_EB2s_E7expand2NvCshVzvyy7iigg_12salsa_macros7trackedE00E0B34_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB1e_11TokenStreamB28_EINtNtB9_6option6OptionB28_ENCNCINvMsh_B1e_INtB1e_6ClientTNtB1i_11TokenStreamB3r_EB3r_E7expand2NvCshVzvyy7iigg_12salsa_macros8internedE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB44_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @_RNCINvNtNtCstuaXukgBIa_10proc_macro6bridge6client10run_clientTNtB4_11TokenStreamBY_EINtNtCs4NRVxsYgnAr_4core6option6OptionBY_ENCNCINvMsh_B4_INtB4_6ClientTNtB8_11TokenStreamB2s_EB2s_E7expand2NvCshVzvyy7iigg_12salsa_macros8internedE00E0B34_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EENtNtNtB1T_3ops4drop4Drop4dropCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i64, ptr %i.d, align 8, !noalias !122 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread, label %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit

_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread: ; preds = %bb.b
  call void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.e), !noalias !122
  call void @_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1J_EE16deallocating_endNtNtBc_5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.b
  %i.h = add i64 %i.f, -1
  store i64 %i.h, ptr %i.d, align 8, !noalias !122
  call void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros(ptr nonnull %i.e), !noalias !122
  call void @_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1J_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0), !noalias !122
  %.sroa.0.0.copyload1 = load ptr, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  store ptr %0, ptr %i.b, align 8
  invoke void @_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.c)
          to label %bb.b unwind label %bb.d

.loopexit:                                        ; preds = %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit, %_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCshVzvyy7iigg_12salsa_macros.exit.thread
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2r_ENtNtBQ_5alloc6GlobalEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.b) #13
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs3Eghgi3KVFH_3syn4item10ItemStructNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens15to_token_streamCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvXs7_NtNtCs3Eghgi3KVFH_3syn4item8printingNtB7_10ItemStructNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs3Eghgi3KVFH_3syn4item4ItemNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens17into_token_streamCshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXsh_NtCs3Eghgi3KVFH_3syn4itemNtB5_4ItemNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %1, ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.b, !noalias !125

bb.b:                                             ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #13
          to label %.body unwind label %bb.c, !noalias !125

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !125
end_hunk_2
