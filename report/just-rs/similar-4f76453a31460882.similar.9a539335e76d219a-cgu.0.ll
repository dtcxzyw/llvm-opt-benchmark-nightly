Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar:bb.a
_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge29
  %i.ak = shl i64 %i.i, 5                         ; 2 uses
  %i.al = add i64 %i.ak, 32
  %i.am = add i64 %i.ak, 47                       ; 2 uses
  %i.an = icmp uge i64 %i.am, %i.al
  call void @llvm.assume(i1 %i.an), !noalias !2300
  %i.ao = and i64 %i.am, -32                      ; 3 uses
  %i.ap = add i64 %i.i, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  call void @llvm.assume(i1 %i.ar), !noalias !2300
  call void @llvm.assume(i1 %i.as), !noalias !2300
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.au = sub nsw i64 0, %i.ao
  %i.av = getelementptr inbounds i8, ptr %i.z, i64 %i.au
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !2301
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.aw = add i16 %.sroa.13.1.lcssa, -1
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = and i16 %i.aw, %.sroa.13.1.lcssa
  %i.ba = add i64 %.sroa.5.1.lcssa, %i.ay         ; 2 uses
  %i.bb = add i64 %.sroa.9.026, -1                ; 2 uses
  %i.bc = sub nsw i64 0, %i.ba
  %i.bd = getelementptr inbounds [32 x i8], ptr %i.z, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !2302, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %.val.i.i8 = load i64, ptr %.val.i, align 8, !noalias !2303, !noundef !5
  %i.bf = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i9 = load i64, ptr %i.bf, align 8, !noalias !2303, !noundef !5
  %i.bg = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i.i8, i64 %.val1.i.i9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be), !noalias !2302 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bg, %i.v             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !2304
  %i.bi = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !14

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bj, %._crit_edge ], [ %i.ca, %.lr.ph.i ]
  %i.bk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.0.0.lcssa.i, %i.bl
  %i.bn = and i64 %i.bm, %i.v                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.g, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !13

bb.g:                                             ; preds = %._crit_edge.i
  %.val2.i.i10 = load <16 x i8>, ptr %i.s, align 16
  %i.br = icmp slt <16 x i8> %.val2.i.i10, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bs, 0
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bs, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.bw = add i64 %i.bv, 16                       ; 2 uses
  %i.bx = add i64 %i.bw, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.bx, %i.v            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.by, align 1, !noalias !2304
  %i.bz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !15

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bu, %bb.g ], [ %i.bn, %._crit_edge.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  %i.cc = lshr i64 %i.bg, 57
  %i.cd = trunc nuw nsw i64 %i.cc to i8           ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16
  %i.cf = and i64 %i.ce, %i.v
  store i8 %i.cd, ptr %i.cb, align 1, !noalias !2300
  %i.cg = getelementptr i8, ptr %i.s, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i8 %i.cd, ptr %i.ch, align 1, !noalias !2300
  %.neg.i.i = xor i64 %i.ba, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.ci = getelementptr inbounds i8, ptr %i.z, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.cj = getelementptr inbounds i8, ptr %i.s, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cj, ptr noundef nonnull align 1 dereferenceable(32) %i.ci, i64 range(i64 16, 33) 32, i1 false), !noalias !2300
  %i.ck = icmp eq i64 %i.bb, 0
  br i1 %i.ck, label %._crit_edge29, label %.preheader

bb.h:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csdftwklc2oBO_7similar, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtBb_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0Es_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTOhEE9call_onceCsdftwklc2oBO_7similar) #40
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar.exit: ; preds = %bb.d, %bb.f, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge29, %bb.c, %bb.h
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.h ], [ undef, %bb.f ], [ undef, %._crit_edge29 ], [ undef, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.x, %bb.d ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %._crit_edge29 ], [ -1, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ %i.v, %bb.d ]
  %i.cl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cm = insertvalue { i64, i64 } %i.cl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.cm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeE14from_tokenizedNvYeNtNtB5_11abstraction11DiffableStr14tokenize_linesEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !17, !noundef !5 ; 5 uses
  %.not = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit10: ; preds = %bb.q, %bb.p, %bb.b
  ret void

bb.c:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceBc_.exit unwind label %bb.c

_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceBc_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 6 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.p = load i64, ptr %i.b, align 8, !range !6, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2352
  %i.q = mul nuw nsw i64 %i.m, 24                 ; 2 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.m, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.e, !prof !8

bb.e:                                             ; preds = %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceBc_.exit
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdftwklc2oBO_7similar.exit.i.i.i.i.thread, label %bb.f

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdftwklc2oBO_7similar.exit.i.i.i.i.thread: ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !noalias !2352
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !2352
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2353
  %i.u = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #36, !noalias !2353 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.preheader

bb.g:                                             ; preds = %bb.f, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceBc_.exit
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.q, %bb.f ], [ undef, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceBc_.exit ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.f ], [ 0, %_RNvYNvYeNtNtNtCsdftwklc2oBO_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTReEE9call_onceBc_.exit ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #38
          to label %.noexc.i.i unwind label %bb.m, !noalias !2352

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  store i64 %i.m, ptr %i.a, align 8, !noalias !2352
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !2352
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.val9.i.i.i.i.i.i.i = phi i64 [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.y = phi ptr [ %i.ac, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2356, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !2356, !noundef !5 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2357
  %i.ae = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 9) 1) #36, !noalias !2357 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.ab) #38
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l, !noalias !2356

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.z, i64 range(i64 0, -9223372036854775808) %i.ab, i1 false), !noalias !2358
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.j ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.val9.i.i.i.i.i.i.i ; 3 uses
  store i64 %i.ab, ptr %i.ag, align 8, !noalias !2359
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2359
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ab, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2359
  %i.ah = add nuw nsw i64 %.val9.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdftwklc2oBO_7similar.exit.i.i.i.i.thread
  %i.ai = phi ptr [ %i.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdftwklc2oBO_7similar.exit.i.i.i.i.thread ], [ %i.x, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i ]
  %.sroa.52.0.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsdftwklc2oBO_7similar.exit.i.i.i.i.thread ], [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i ]
  %i.aj = icmp eq i64 %i.p, 0
  br i1 %i.aj, label %bb.p, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ak = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !2356
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i64 %.val9.i.i.i.i.i.i.i, ptr %i.x, align 8, !alias.scope !2360, !noalias !2361
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %.body.i.i, label %.body.sink.split.i.i.i.i

.body.sink.split.i.i.i.i:                         ; preds = %bb.l
  %i.an = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !2362
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.sink.split.i.i.i.i, %bb.l
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35, !noalias !2352
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.p, 0
  br i1 %i.ap, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = shl nuw i64 %i.p, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !2363
  br label %.body

.body:                                            ; preds = %bb.n, %bb.m, %.body.i.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ao, %bb.n ], [ %i.al, %.body.i.i ], [ %i.ao, %bb.m ]
  %i.ar = icmp eq i64 %i.c, 0
  br i1 %i.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit, label %bb.o

bb.o:                                             ; preds = %.body
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !2364
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit

bb.p:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i
  store i64 %.sroa.52.0.i.i.i.i.i.i, ptr %i.ai, align 8, !alias.scope !2360, !noalias !2361
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2352
  store i64 1, ptr %0, align 8
  %i.at = icmp eq i64 %i.c, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit10, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !2365
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit: ; preds = %bb.o, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 16, 33) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 16, 33) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !8

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.n, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2368
  %i.w = tail call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !2368 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !2368
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %i.z = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.s), !noalias !2368
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.aa = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { i64, i64 } [ %i.z, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0.ph, ptr %i.ag, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i9.i = phi ptr [ %i.w, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i, i64 %i.q ; 2 uses
end_hunk_0
