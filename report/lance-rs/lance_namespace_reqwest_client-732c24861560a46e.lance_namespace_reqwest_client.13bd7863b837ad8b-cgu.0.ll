Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_reqwest_client-732c24861560a46e.lance_namespace_reqwest_client.13bd7863b837ad8b-cgu.0?download=true
inline.NumInlined: 526
inline.NumDeleted: 236
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !3
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !663
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !6

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !3
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !663
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !7

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !3
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !3
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %2, ptr %i.u, align 8
  %i.v = load i8, ptr %3, align 8, !range !718, !noundef !3
  %i.w = icmp eq i8 %i.v, 5
  br i1 %i.w, label %.preheader, label %8, !prof !13

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 7 uses
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !3 ; 2 uses
  %.not.not = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %4 = icmp eq i64 %i.ac, 0
  %.not234 = select i1 %.not.not, i1 true, i1 %4
  br i1 %.not234, label %._crit_edge, label %.lr.ph232

.lr.ph232:                                        ; preds = %.preheader
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5170.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %5 = ptrtoint ptr %i.aa to i64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load i64, ptr %6, align 8
  br label %bb.b

8:                                                ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 131 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #29
  unreachable

bb.b:                                             ; preds = %.lr.ph232, %.loopexit
  %i.aq = phi ptr [ %i.dg, %.loopexit ], [ inttoptr (i64 8 to ptr), %.lr.ph232 ] ; 4 uses
  %i.ar = phi i64 [ %i.dh, %.loopexit ], [ 0, %.lr.ph232 ] ; 13 uses
  %.sroa.5.0178230 = phi ptr [ %.sroa.07.0.i.i.i, %.loopexit ], [ null, %.lr.ph232 ] ; 2 uses
  %.sroa.14.0229 = phi i64 [ %.sroa.78.0.i.i.i, %.loopexit ], [ %7, %.lr.ph232 ] ; 6 uses
  %.sroa.22.0228 = phi i64 [ %i.as, %.loopexit ], [ %i.ac, %.lr.ph232 ]
  %.sroa.9.0227 = phi i64 [ 0, %.loopexit ], [ %5, %.lr.ph232 ] ; 2 uses
  %i.as = add i64 %.sroa.22.0228, -1              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.5.0178230, null
  br i1 %.not.i.i, label %bb.c, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i

bb.c:                                             ; preds = %bb.b
  %i.at = inttoptr i64 %.sroa.9.0227 to ptr       ; 3 uses
  %i.au = icmp eq i64 %.sroa.14.0229, 0
  br i1 %i.au, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %.sroa.14.0229, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.at, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.prol ], [ %.sroa.14.0229, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 632
  %i.aw = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.av, align 8, !noalias !719, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !668

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %.sroa.14.0229, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %.sroa.14.0229, 8
  br i1 %i.ax, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 632
  %.sroa.013.0.i.i = load ptr, ptr %i.ay, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 632
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.az, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 632
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.ba, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 632
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.bb, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 632
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.bc, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 632
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.bd, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 632
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.be, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 632
  %i.bg = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bf, align 8, !noalias !719, !nonnull !3, !noundef !3 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c, %bb.b
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.14.0229, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.9.0227, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %.sroa.5.0178230, %bb.b ], [ %i.at, %bb.c ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 626
  %i.bj = load i16, ptr %i.bi, align 2, !noalias !721, !noundef !3
  %i.bk = zext i16 %i.bj to i64
  %i.bl = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bk
  br i1 %i.bl, label %bb.f, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %bb.d
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.bn, %bb.d ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.bp, %bb.d ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 352
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !722, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.d
  %i.bo = zext i16 %i.br to i64
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 624
  %i.br = load i16, ptr %i.bq, align 8, !noalias !722 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 626
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !721, !noundef !3
  %i.bu = icmp ult i16 %i.br, %i.bt
  br i1 %i.bu, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc.i.i unwind label %bb.i, !noalias !723

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bo, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bp, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.bn, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 5 uses
  %i.bv = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit194

bb.h:                                             ; preds = %bb.f
  %i.bx = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 640
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter339 = and i64 %.sroa.7.0.ph.i.i.i, 7   ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.ca, %.prol.preheader ], [ %i.bz, %bb.h ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.h ]
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !724, !nonnull !3, !noundef !3 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !682

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.bz, %bb.h ], [ %i.ca, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.h ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.cb = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.cb, label %.loopexit194, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.ck, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 632
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.cc, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.cd, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.ce, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.cf, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.cg, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.ch, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.ci, align 8, !noalias !724, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 632
  br i1 %i.cj, label %.loopexit194, label %.new

bb.i:                                             ; preds = %bb.e
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %.body139, %bb.ac, %bb.ab, %bb.u, %bb.t, %bb.o, %bb.n, %bb.r, %bb.ap
  %.pn89 = phi { ptr, i32 } [ %.pn87, %bb.u ], [ %.pn, %bb.ac ], [ %i.fj, %bb.ap ], [ %i.cy, %bb.o ], [ %i.dc, %bb.r ], [ %lpad.loopexit.split-lp315, %bb.am ], [ %i.cy, %bb.n ], [ %.pn87, %bb.t ], [ %.pn, %bb.ab ], [ %lpad.loopexit.split-lp315, %.body139 ], [ %lpad.loopexit.split-lp313, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.s) #27
  resume { ptr, i32 } %.pn89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.m, %bb.k, %bb.j
  %lpad.loopexit.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit194:                                     ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.78.0.i.i.i = phi i64 [ %i.bw, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.g ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 360
  %i.cn = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.sroa.10.0.ph.i.i.i
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.co, ptr %i.r, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.ph.i.i.i) ]
  %i.cq = load i8, ptr %i.cp, align 8, !range !718, !noundef !3
  switch i8 %i.cq, label %bb.j [
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
  ]

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.j:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.t, ptr %i.d, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.442.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.am, align 8
end_hunk_0
