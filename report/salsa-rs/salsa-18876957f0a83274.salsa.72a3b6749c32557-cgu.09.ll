Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.09?download=true
inline.NumInlined: 236
inline.NumDeleted: 126
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_:bb.a
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap5inner4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEB1i_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %.not = icmp ult i64 %i.c, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %2, 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit
  %.sroa.02.04 = phi ptr [ %1, %.lr.ph ], [ %i.g, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.04, i64 24 ; 2 uses
  %i.h = load i64, ptr %.sroa.02.04, align 8, !noundef !3 ; 3 uses
  %i.i = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !297, !nonnull !3, !noundef !3 ; 6 uses
  %.val6.i = load i64, ptr %i.f, align 8, !alias.scope !297, !noundef !3 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val6.i, %i.h        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !298
  %i.k = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.d ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.l, %bb.d ], [ %i.ac, %.lr.ph.i.i ]
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.0.lcssa.i.i, %i.n
  %i.p = and i64 %i.o, %.val6.i                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !297, !noundef !3 ; 2 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.e, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !6

bb.e:                                             ; preds = %._crit_edge.i.i
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !297
  %i.t = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.u, 0
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.u, i1 true)
  %i.w = zext nneg i16 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.w
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !297
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.d ]
  %i.x = phi i64 [ %i.y, %.lr.ph.i.i ], [ 0, %bb.d ]
  %i.y = add i64 %i.x, 16                         ; 2 uses
  %i.z = add i64 %i.y, %.sroa.0.010.i.i
  %.sroa.0.0.i.i = and i64 %i.z, %.val6.i         ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !298
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.e, %._crit_edge.i.i
  %i.ad = phi i8 [ %.pre.i, %bb.e ], [ %i.r, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i = phi i64 [ %i.w, %bb.e ], [ %i.p, %._crit_edge.i.i ]
  %i.ae = load i64, ptr %i.b, align 8, !alias.scope !297, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = trunc i8 %i.ad to i1
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit, !prof !299

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ah = tail call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB26_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i1 noundef zeroext true) ; 0 uses
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !297 ; 3 uses
  %.val8.i = load i64, ptr %i.f, align 8, !alias.scope !297, !noundef !3 ; 2 uses
  %i.ai = tail call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i, i64 %.val8.i, i64 noundef %i.h) ; 2 uses
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %i.ai
  %.pre10.i = load i8, ptr %.phi.trans.insert9.i, align 1, !noalias !300
  %.pre11.i = load i64, ptr %i.b, align 8, !alias.scope !301
  %.pre = load i64, ptr %i.a, align 8, !alias.scope !301
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i
  %i.aj = phi i64 [ %.pre, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.ak = phi i64 [ %.val8.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %.val6.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.al = phi i64 [ %.pre11.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %i.ae, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.am = phi i8 [ %.pre10.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %i.ad, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.an = phi ptr [ %.val7.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %.val.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.ai, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %.sroa.0.0.i5.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ] ; 3 uses
  %i.ao = lshr i64 %i.h, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i
  %i.ar = and i8 %i.am, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = sub i64 %i.al, %i.as
  store i64 %i.at, ptr %i.b, align 8, !alias.scope !301
  %i.au = add i64 %.sroa.0.0.i, -16
  %i.av = and i64 %i.au, %i.ak
  store i8 %i.ap, ptr %i.aq, align 1, !noalias !300
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store i8 %i.ap, ptr %i.ax, align 1, !noalias !300
  %i.ay = add i64 %i.aj, 1
  store i64 %i.ay, ptr %i.a, align 8, !alias.scope !301
  %i.az = sub nsw i64 0, %.sroa.0.0.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  store i64 %i.i, ptr %i.bb, align 8, !noalias !300
  %i.bc = icmp eq ptr %i.g, %i.d
  br i1 %i.bc, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ee, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ec, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.cv, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !328, !alias.scope !329, !noalias !330, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !328, !alias.scope !331, !noalias !332, !noundef !3 ; 2 uses
  %i.u = sub nsw i8 %i.r, %i.t
  %i.v = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p), !noalias !330 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  %i.y = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !333 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr %i.w, ptr %i.z, i64 %spec.store.select.i.i.i), !noalias !333 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.x, %i.aa
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp eq i8 %i.r, %i.t
  %i.ag = icmp slt i64 %spec.select.i.i.i, 0
  %i.ah = icmp eq i8 %i.u, -1
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah     ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ai, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.sroa.01.0.i23.i = phi i64 [ %i.bd, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i ; 4 uses
  %6 = getelementptr i8, ptr %i.aj, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !328, !alias.scope !338, !noalias !339, !noundef !3 ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -8
  %i.an = load i8, ptr %i.am, align 8, !range !328, !alias.scope !340, !noalias !341, !noundef !3 ; 2 uses
  %i.ao = sub nsw i8 %i.al, %i.an
  %i.ap = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj), !noalias !339 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1      ; 2 uses
  %i.as = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6), !noalias !333 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 2 uses
  %spec.store.select.i.i7.i = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.au)
  %i.av = tail call i32 @memcmp(ptr %i.aq, ptr %i.at, i64 %spec.store.select.i.i7.i), !noalias !333 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %i.ar, %i.au
  %spec.select.i.i8.i = select i1 %i.ax, i64 %i.ay, i64 %i.aw
  %i.az = icmp eq i8 %i.al, %i.an
  %i.ba = icmp slt i64 %spec.select.i.i8.i, 0
  %i.bb = icmp eq i8 %i.ao, -1
  %i.bc = select i1 %i.az, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw nsw i64 %.sroa.01.0.i23.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i26.i = phi i64 [ %i.by, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i ; 4 uses
  %7 = getelementptr i8, ptr %i.be, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i8, ptr %i.bf, align 8, !range !328, !alias.scope !346, !noalias !347, !noundef !3 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 -8
  %i.bi = load i8, ptr %i.bh, align 8, !range !328, !alias.scope !348, !noalias !349, !noundef !3 ; 2 uses
  %i.bj = sub nsw i8 %i.bg, %i.bi
  %i.bk = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.be), !noalias !347 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1      ; 2 uses
  %i.bn = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7), !noalias !333 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  %spec.store.select.i.i9.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bp)
  %i.bq = tail call i32 @memcmp(ptr %i.bl, ptr %i.bo, i64 %spec.store.select.i.i9.i), !noalias !333 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i32 %i.bq, 0
  %i.bt = sub i64 %i.bm, %i.bp
  %spec.select.i.i10.i = select i1 %i.bs, i64 %i.bt, i64 %i.br
  %i.bu = icmp eq i8 %i.bg, %i.bi
  %i.bv = icmp slt i64 %spec.select.i.i10.i, 0
  %i.bw = icmp eq i8 %i.bj, -1
  %i.bx = select i1 %i.bu, i1 %i.bv, i1 %i.bw
  br i1 %i.bx, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.by = add nuw nsw i64 %.sroa.01.1.i26.i, 1    ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.by, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.bz = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bz)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i
  %i.ca = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ca, 0
  %or.cond.not.i = and i1 %i.ai, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i11.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.cb = shl nuw nsw i64 %.sroa.0.0.i11.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i12.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i12.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cc = shl nuw nsw i64 %.sroa.0.0.i12.i, 1
  %i.cd = or disjoint i64 %i.cc, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i445155.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i ]
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.cg = phi i64 [ %i.ca, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i445155.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i445155.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.cm, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ci = xor i64 %.sroa.0.017.i.i.i, -1
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ck = getelementptr [40 x i8], ptr %i.ch, i64 %i.ci
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, i64 noundef 5)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i unwind label %bb.q, !noalias !333

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #24, !noalias !333
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cm = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cm, %i.cg
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.cf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i ], [ %i.cd, %bb.p ], [ %i.cb, %bb.o ] ; 2 uses
  %i.cn = lshr i64 %.sroa.023.0, 1
  %i.co = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cp = sub nsw i64 %factor, %i.cn
  %i.cq = add nuw nsw i64 %i.co, %factor
  %i.cr = mul i64 %i.cp, %.sroa.0.0
  %i.cs = mul i64 %i.cq, %.sroa.0.0
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ct, i1 false)
  %i.cv = trunc nuw nsw i64 %i.cu to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit
  %.sroa.02.138 = phi i64 [ %i.cw, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cw = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.cy, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.da, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cw
  %i.dc = load i64, ptr %i.db, align 8, !noundef !3 ; 3 uses
  %i.dd = lshr i64 %i.dc, 1                       ; 5 uses
  %i.de = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.df = add nuw i64 %i.dd, %i.de                ; 5 uses
  %i.dg = sub i64 %.sroa.09.0, %i.df
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.dg ; 3 uses
  %i.di = icmp samesign ugt i64 %i.df, %3
  %i.dj = trunc i64 %.sroa.023.137 to i1
  %i.dk = or i64 %i.dc, %.sroa.023.137
  %i.dl = trunc i64 %i.dk to i1
  %or.cond3.i = or i1 %i.di, %i.dl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = trunc i64 %i.dc to i1
  br i1 %i.dm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dn = shl nuw nsw i64 %i.df, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dj, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.do = or i64 %i.dd, 1
  %i.dp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 230584300921369396) %i.dd, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 230584300921369396) %i.df, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.dt = shl nuw nsw i64 %i.df, 1
  %i.du = or disjoint i64 %i.dt, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit

bb.x:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %i.dh, i64 %i.dd
  %i.dw = or i64 %i.de, 1
  %i.dx = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.dv, i64 noundef range(i64 0, 230584300921369396) %i.de, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.du, %bb.w ], [ %i.dn, %bb.t ] ; 2 uses
  %i.eb = icmp ugt i64 %i.cw, 1
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ec = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ed = lshr i64 %.sroa.018.0, 1
  %i.ee = add nuw i64 %i.ed, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ef = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ef, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = or i64 %1, 1
  %i.eh = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eg, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = xor i32 %i.ej, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RINvNvCseiUJRdNtLVy_9inventory1__9into_iterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEBJ_() unnamed_addr #1 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvXsA_NtCsC8CapfvpQ1_5salsa5zalsaNtB7_9ErasedJarNtCseiUJRdNtLVy_9inventory7Collect8registry8REGISTRY acquire, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
