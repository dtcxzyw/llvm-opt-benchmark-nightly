Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar:bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !2291 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !2291 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2291
  br i1 %i.t, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = load ptr, ptr %0, align 8, !alias.scope !2292, !noalias !2293, !nonnull !5, !noundef !5 ; 5 uses
  %i.aa = icmp eq i64 %i.e, 0
  br i1 %i.aa, label %._crit_edge29, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val318 = load <16 x i8>, ptr %i.z, align 16
  %i.ab = icmp sgt <16 x i8> %.val318, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %.sroa.5.027 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.bb, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.e, %.preheader.preheader ]
  %.sroa.13.025 = phi i16 [ %i.az, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i120 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i120, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.122 = phi ptr [ %i.ad, %.noexc2 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.ag, %.noexc2 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val19 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val19, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.af, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge29:                                    ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.e
  %i.ah = sub i64 %i.x, %i.e
  store i64 %i.y, ptr %0, align 8, !alias.scope !2294, !noalias !2295
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !2296, !noalias !2297
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !alias.scope !2298, !noalias !2299
  %i.aj = icmp eq i64 %i.i, 0
  br i1 %i.aj, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdftwklc2oBO_7similar.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

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

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldReNtNtCs4wP2HXfJTCR_5alloc6string6StringuNvYeNtNtB10_6borrow7ToOwned8to_ownedNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtB10_3vecINtB3e_3VecBW_E14extend_trustedINtB4_3MapINtNtB3e_9into_iter8IntoIterBU_EB1z_EE0E0E0Csdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i
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
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.ep = phi i64 [ %i.cj, %bb.au ], [ %i.co, %bb.ap ], [ %i.co, %bb.aw ] ; 5 uses
  %.sroa.0.1667 = phi ptr [ %.sroa.0.1, %bb.au ], [ %i.p, %bb.ap ], [ %i.p, %bb.aw ] ; 5 uses
  %.sroa.11.0350656 = phi i64 [ %.sroa.11.0350659, %bb.au ], [ %.sroa.11.0350.jt7, %bb.ap ], [ %.sroa.11.0350.jt7, %bb.aw ] ; 8 uses
  %.sroa.42.0352636 = phi i8 [ %.sroa.42.0352637, %bb.au ], [ %.sroa.42.0352.jt7, %bb.ap ], [ %.sroa.42.0352.jt7, %bb.aw ]
  %.sroa.011.0355627 = phi i1 [ %.sroa.011.0355628, %bb.au ], [ %.sroa.011.0355.jt7, %bb.ap ], [ %.sroa.011.0355.jt7, %bb.aw ] ; 5 uses
  %.sroa.074.0.ph367614 = phi i64 [ %.sroa.074.0.ph367617, %bb.au ], [ %.sroa.074.0.ph367612, %bb.ap ], [ %.sroa.074.0.ph367612, %bb.aw ] ; 8 uses
  %.sroa.073.0.ph368600 = phi i8 [ %.sroa.073.0.ph368603, %bb.au ], [ %.sroa.073.0.ph368598, %bb.ap ], [ %.sroa.073.0.ph368598, %bb.aw ] ; 8 uses
  switch i8 %.sroa.42.0352636, label %bb.ay [
    i8 1, label %.thread150
    i8 2, label %bb.br
    i8 3, label %bb.bs
    i8 4, label %bb.bt
    i8 5, label %bb.bu
    i8 0, label %.thread147
  ]

bb.bg:                                            ; preds = %bb.aj, %bb.au
  %.sroa.028.2690 = phi i8 [ %.sroa.028.2, %bb.au ], [ %.sroa.028.2.jt10, %bb.aj ] ; 2 uses
  %.promoted380675 = phi i8 [ %.promoted380, %bb.au ], [ -1, %bb.aj ]
  %i.eq = phi i64 [ %i.cj, %bb.au ], [ %i.cz, %bb.aj ]
  %.sroa.0.1661 = phi ptr [ %.sroa.0.1, %bb.au ], [ %i.ac, %bb.aj ]
  %.sroa.11.0350641 = phi i64 [ %.sroa.11.0350659, %bb.au ], [ %i.fb, %bb.aj ] ; 2 uses
  %.sroa.011.0355621 = phi i1 [ %.sroa.011.0355628, %bb.au ], [ %.sroa.011.0355483.jt10, %bb.aj ]
  %.sroa.074.0.ph367607 = phi i64 [ %.sroa.074.0.ph367617, %bb.au ], [ %.sroa.074.1.jt10, %bb.aj ]
  %.sroa.073.0.ph368593 = phi i8 [ %.sroa.073.0.ph368603, %bb.au ], [ %.sroa.073.1.jt10, %bb.aj ]
  %i.er = icmp ne i8 %.sroa.028.2690, 17
  %or.cond4 = select i1 %i.er, i1 true, i1 %.sroa.011.0355621
  br i1 %or.cond4, label %.thread150, label %.outer.jt10

bb.bh:                                            ; preds = %bb.az
  %i.es = call fastcc noundef i8 @_RNvMs7_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBounds12get_next_cat(ptr nonnull %i.f, i64 %i.d, i64 noundef %.sroa.11.0350659) #40
  %i.et = icmp eq i8 %i.es, 9
  %. = zext i1 %i.et to i64
  %i.eu = add i64 %.sroa.11.0350659, %.
  br label %.thread147

bb.bi:                                            ; preds = %bb.az
  %i.ev = call fastcc noundef i8 @_RNvMs7_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBounds12get_next_cat(ptr nonnull %i.f, i64 %i.d, i64 noundef %.sroa.11.0350659) #40 ; 3 uses
  switch i8 %i.ev, label %.thread147 [
    i8 18, label %bb.at
    i8 6, label %bb.at
    i8 4, label %bb.at
  ]

.loopexit:                                        ; preds = %bb.az
  br label %.outer.jt1

.outer.jt7:                                       ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bm, %bb.bj, %bb.bl
  %.promoted380686 = phi i8 [ %.promoted380680, %bb.bl ], [ %.promoted380680, %bb.bm ], [ %.promoted380680, %bb.bj ], [ %.promoted380677, %bb.bb ], [ %.promoted380677, %bb.bb ], [ %.promoted380677, %bb.bb ]
  %i.ew = phi i64 [ %i.ek, %bb.bl ], [ %i.ek, %bb.bm ], [ %i.ek, %bb.bj ], [ %i.el, %bb.bb ], [ %i.el, %bb.bb ], [ %i.el, %bb.bb ]
  %.sroa.0.1672 = phi ptr [ %.sroa.0.1666, %bb.bl ], [ %.sroa.0.1666, %bb.bm ], [ %.sroa.0.1666, %bb.bj ], [ %.sroa.0.1663, %bb.bb ], [ %.sroa.0.1663, %bb.bb ], [ %.sroa.0.1663, %bb.bb ] ; 2 uses
  %.sroa.11.0350652 = phi i64 [ %.sroa.11.0350646, %bb.bl ], [ %.sroa.11.0350646, %bb.bm ], [ %.sroa.11.0350646, %bb.bj ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350643, %bb.bb ]
  %.sroa.028.2542.jt7 = phi i8 [ %.sroa.028.2695, %bb.bl ], [ 16, %bb.bm ], [ 3, %bb.bj ], [ %.sroa.028.2692, %bb.bb ], [ %.sroa.028.2692, %bb.bb ], [ %.sroa.028.2692, %bb.bb ]
  %.sroa.011.0355483.jt7 = phi i1 [ %.sroa.011.0355626, %bb.bl ], [ %.sroa.011.0355626, %bb.bm ], [ %.sroa.011.0355626, %bb.bj ], [ %.sroa.011.0355623, %bb.bb ], [ %.sroa.011.0355623, %bb.bb ], [ %.sroa.011.0355623, %bb.bb ]
  %.sroa.074.1.jt7 = phi i64 [ %.sroa.11.0350646, %bb.bl ], [ %.sroa.074.0.ph367613, %bb.bm ], [ %.sroa.11.0350646, %bb.bj ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350643, %bb.bb ] ; 2 uses
  %.sroa.073.1.jt7 = phi i8 [ %.sroa.028.2695, %bb.bl ], [ %.sroa.073.0.ph368599, %bb.bm ], [ 3, %bb.bj ], [ %.sroa.028.2692, %bb.bb ], [ %.sroa.028.2692, %bb.bb ], [ %.sroa.028.2692, %bb.bb ] ; 2 uses
  %.sroa.42.2.jt7 = phi i8 [ 2, %bb.bl ], [ 4, %bb.bm ], [ 3, %bb.bj ], [ 5, %bb.bb ], [ 5, %bb.bb ], [ 5, %bb.bb ] ; 2 uses
  %i.ex = icmp eq ptr %.sroa.0.1672, %i.g
  br i1 %i.ex, label %.thread, label %.lr.ph.jt7

.outer.jt5:                                       ; preds = %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.bc
  %.promoted380687 = phi i8 [ %.promoted380, %bb.az ], [ %.promoted380677, %bb.bb ], [ %.promoted380678, %bb.bc ], [ %.promoted380680, %bb.ba ], [ %.promoted380679, %bb.bd ] ; 4 uses
  %i.ey = phi i64 [ %i.cj, %bb.az ], [ %i.el, %bb.bb ], [ %i.em, %bb.bc ], [ %i.ek, %bb.ba ], [ %i.en, %bb.bd ] ; 6 uses
  %.sroa.0.1673 = phi ptr [ %.sroa.0.1, %bb.az ], [ %.sroa.0.1663, %bb.bb ], [ %.sroa.0.1664, %bb.bc ], [ %.sroa.0.1666, %bb.ba ], [ %.sroa.0.1665, %bb.bd ] ; 5 uses
  %.sroa.11.0350653 = phi i64 [ %.sroa.11.0350659, %bb.az ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350644, %bb.bc ], [ %.sroa.11.0350646, %bb.ba ], [ %.sroa.11.0350645, %bb.bd ]
  %.sroa.011.0355483.jt5 = phi i1 [ %.sroa.011.0355628, %bb.az ], [ %.sroa.011.0355623, %bb.bb ], [ %.sroa.011.0355624, %bb.bc ], [ %.sroa.011.0355626, %bb.ba ], [ %.sroa.011.0355625, %bb.bd ] ; 2 uses
  %.sroa.074.1.jt5 = phi i64 [ %.sroa.074.0.ph367617, %bb.az ], [ %.sroa.074.0.ph367609, %bb.bb ], [ %.sroa.074.0.ph367610, %bb.bc ], [ %.sroa.074.0.ph367613, %bb.ba ], [ %.sroa.074.0.ph367611, %bb.bd ] ; 5 uses
  %.sroa.073.1.jt5 = phi i8 [ %.sroa.073.0.ph368603, %bb.az ], [ %.sroa.073.0.ph368595, %bb.bb ], [ %.sroa.073.0.ph368596, %bb.bc ], [ %.sroa.073.0.ph368599, %bb.ba ], [ %.sroa.073.0.ph368597, %bb.bd ] ; 5 uses
  %i.ez = icmp eq ptr %.sroa.0.1673, %i.g
  br i1 %i.ez, label %.thread147, label %.lr.ph.jt5

.outer.jt8:                                       ; preds = %bb.az
  %i.fa = icmp eq ptr %.sroa.0.1, %i.g
  br i1 %i.fa, label %.thread147, label %.lr.ph.jt8

.outer.jt10:                                      ; preds = %bb.az, %bb.bg
  %.promoted380682 = phi i8 [ %.promoted380675, %bb.bg ], [ %.promoted380, %bb.az ] ; 4 uses
  %i.fb = phi i64 [ %i.eq, %bb.bg ], [ %i.cj, %bb.az ] ; 6 uses
  %.sroa.0.1668 = phi ptr [ %.sroa.0.1661, %bb.bg ], [ %.sroa.0.1, %bb.az ] ; 5 uses
  %.sroa.11.0350647 = phi i64 [ %.sroa.11.0350641, %bb.bg ], [ %.sroa.11.0350659, %bb.az ]
  %.sroa.011.0355483.jt10 = phi i1 [ false, %bb.bg ], [ %.sroa.011.0355628, %bb.az ] ; 2 uses
  %.sroa.074.1.jt10 = phi i64 [ %.sroa.074.0.ph367607, %bb.bg ], [ %.sroa.074.0.ph367617, %bb.az ] ; 5 uses
  %.sroa.073.1.jt10 = phi i8 [ %.sroa.073.0.ph368593, %bb.bg ], [ %.sroa.073.0.ph368603, %bb.az ] ; 5 uses
  %i.fc = icmp eq ptr %.sroa.0.1668, %i.g
  br i1 %i.fc, label %.thread147, label %.lr.ph.jt10

.outer.jt6:                                       ; preds = %bb.az, %bb.bp
  %.promoted380683 = phi i8 [ %.promoted380676, %bb.bp ], [ %.promoted380, %bb.az ] ; 4 uses
  %i.fd = phi i64 [ %i.eo, %bb.bp ], [ %i.cj, %bb.az ] ; 6 uses
  %.sroa.0.1669 = phi ptr [ %.sroa.0.1662, %bb.bp ], [ %.sroa.0.1, %bb.az ] ; 5 uses
  %.sroa.11.0350649 = phi i64 [ %.sroa.11.0350642, %bb.bp ], [ %.sroa.11.0350659, %bb.az ]
  %.sroa.011.0355483.jt6 = phi i1 [ %.sroa.011.0355622, %bb.bp ], [ %.sroa.011.0355628, %bb.az ] ; 2 uses
  %.sroa.074.1.jt6 = phi i64 [ %.sroa.074.0.ph367608, %bb.bp ], [ %.sroa.074.0.ph367617, %bb.az ] ; 5 uses
  %.sroa.073.1.jt6 = phi i8 [ %.sroa.073.0.ph368594, %bb.bp ], [ %.sroa.073.0.ph368603, %bb.az ] ; 5 uses
  %.sroa.42.2.jt6 = phi i8 [ 1, %bb.bp ], [ 0, %bb.az ] ; 5 uses
  %i.fe = icmp eq ptr %.sroa.0.1669, %i.g
  br i1 %i.fe, label %.thread147, label %.lr.ph.jt6

.outer.jt4:                                       ; preds = %bb.bd, %bb.bc, %bb.az
  %.promoted380688 = phi i8 [ %.promoted380678, %bb.bc ], [ %.promoted380, %bb.az ], [ %.promoted380679, %bb.bd ] ; 4 uses
  %i.ff = phi i64 [ %i.em, %bb.bc ], [ %i.cj, %bb.az ], [ %i.en, %bb.bd ] ; 6 uses
  %.sroa.0.1674 = phi ptr [ %.sroa.0.1664, %bb.bc ], [ %.sroa.0.1, %bb.az ], [ %.sroa.0.1665, %bb.bd ] ; 5 uses
  %.sroa.11.0350654 = phi i64 [ %.sroa.11.0350644, %bb.bc ], [ %.sroa.11.0350659, %bb.az ], [ %.sroa.11.0350645, %bb.bd ]
  %.sroa.011.0355483.jt4 = phi i1 [ %.sroa.011.0355624, %bb.bc ], [ %.sroa.011.0355628, %bb.az ], [ %.sroa.011.0355625, %bb.bd ] ; 2 uses
  %.sroa.074.1.jt4 = phi i64 [ %.sroa.074.0.ph367610, %bb.bc ], [ %.sroa.074.0.ph367617, %bb.az ], [ %.sroa.074.0.ph367611, %bb.bd ] ; 5 uses
  %.sroa.073.1.jt4 = phi i8 [ %.sroa.073.0.ph368596, %bb.bc ], [ %.sroa.073.0.ph368603, %bb.az ], [ %.sroa.073.0.ph368597, %bb.bd ] ; 5 uses
  %i.fg = icmp eq ptr %.sroa.0.1674, %i.g
  br i1 %i.fg, label %.thread147, label %.lr.ph.jt4

.outer.jt1:                                       ; preds = %bb.az, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bd, %bb.bo, %bb.bb, %bb.bn, %bb.bk, %bb.ba, %.loopexit
  %.promoted380684 = phi i8 [ %.promoted380681, %bb.br ], [ %.promoted380681, %bb.bs ], [ %.promoted380681, %bb.bt ], [ %.promoted380681, %bb.bv ], [ %.promoted380679, %bb.bd ], [ %.promoted380679, %bb.bo ], [ %.promoted380677, %bb.bb ], [ %.promoted380677, %bb.bn ], [ %.promoted380680, %bb.bk ], [ %.promoted380680, %bb.ba ], [ %.promoted380, %.loopexit ], [ %.promoted380, %bb.az ] ; 4 uses
  %i.fh = phi i64 [ %i.ep, %bb.br ], [ %i.ep, %bb.bs ], [ %i.ep, %bb.bt ], [ %i.ep, %bb.bv ], [ %i.en, %bb.bd ], [ %i.en, %bb.bo ], [ %i.el, %bb.bb ], [ %i.el, %bb.bn ], [ %i.ek, %bb.bk ], [ %i.ek, %bb.ba ], [ %i.cj, %.loopexit ], [ %i.cj, %bb.az ] ; 6 uses
  %.sroa.0.1670 = phi ptr [ %.sroa.0.1667, %bb.br ], [ %.sroa.0.1667, %bb.bs ], [ %.sroa.0.1667, %bb.bt ], [ %.sroa.0.1667, %bb.bv ], [ %.sroa.0.1665, %bb.bd ], [ %.sroa.0.1665, %bb.bo ], [ %.sroa.0.1663, %bb.bb ], [ %.sroa.0.1663, %bb.bn ], [ %.sroa.0.1666, %bb.bk ], [ %.sroa.0.1666, %bb.ba ], [ %.sroa.0.1, %.loopexit ], [ %.sroa.0.1, %bb.az ] ; 5 uses
  %.sroa.11.0350650 = phi i64 [ %.sroa.11.0350656, %bb.br ], [ %.sroa.11.0350656, %bb.bs ], [ %.sroa.11.0350656, %bb.bt ], [ %.sroa.11.0350656, %bb.bv ], [ %.sroa.11.0350645, %bb.bd ], [ %.sroa.11.0350645, %bb.bo ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350643, %bb.bn ], [ %.sroa.11.0350646, %bb.bk ], [ %.sroa.11.0350646, %bb.ba ], [ %.sroa.11.0350659, %.loopexit ], [ %.sroa.11.0350659, %bb.az ]
  %.sroa.028.2542.jt1 = phi i8 [ %.sroa.028.2696, %bb.br ], [ 7, %bb.bs ], [ %.sroa.028.2696, %bb.bt ], [ 0, %bb.bv ], [ %.sroa.028.2694, %bb.bd ], [ %.sroa.028.2694, %bb.bo ], [ %.sroa.028.2692, %bb.bb ], [ %.sroa.028.2692, %bb.bn ], [ %.sroa.028.2695, %bb.bk ], [ %.sroa.028.2695, %bb.ba ], [ %.sroa.028.2, %.loopexit ], [ %.sroa.028.2, %bb.az ]
  %.sroa.011.0355483.jt1 = phi i1 [ %.sroa.011.0355627, %bb.br ], [ %.sroa.011.0355627, %bb.bs ], [ %.sroa.011.0355627, %bb.bt ], [ %.sroa.011.0355627, %bb.bv ], [ %.sroa.011.0355625, %bb.bd ], [ %.sroa.011.0355625, %bb.bo ], [ %.sroa.011.0355623, %bb.bb ], [ %.sroa.011.0355623, %bb.bn ], [ %.sroa.011.0355626, %bb.bk ], [ %.sroa.011.0355626, %bb.ba ], [ %.sroa.011.0355628, %.loopexit ], [ %.sroa.011.0355628, %bb.az ] ; 2 uses
  %.sroa.074.1.jt1 = phi i64 [ %.sroa.074.0.ph367614, %bb.br ], [ %.sroa.074.0.ph367614, %bb.bs ], [ %.sroa.074.0.ph367614, %bb.bt ], [ %.sroa.074.0.ph367614, %bb.bv ], [ %.sroa.074.0.ph367611, %bb.bd ], [ %.sroa.074.0.ph367611, %bb.bo ], [ %.sroa.074.0.ph367609, %bb.bb ], [ %.sroa.074.0.ph367609, %bb.bn ], [ %.sroa.074.0.ph367613, %bb.bk ], [ %.sroa.074.0.ph367613, %bb.ba ], [ %.sroa.074.0.ph367617, %.loopexit ], [ %.sroa.074.0.ph367617, %bb.az ] ; 5 uses
  %.sroa.073.1.jt1 = phi i8 [ %.sroa.073.0.ph368600, %bb.br ], [ %.sroa.073.0.ph368600, %bb.bs ], [ %.sroa.073.0.ph368600, %bb.bt ], [ %.sroa.073.0.ph368600, %bb.bv ], [ %.sroa.073.0.ph368597, %bb.bd ], [ %.sroa.073.0.ph368597, %bb.bo ], [ %.sroa.073.0.ph368595, %bb.bb ], [ %.sroa.073.0.ph368595, %bb.bn ], [ %.sroa.073.0.ph368599, %bb.bk ], [ %.sroa.073.0.ph368599, %bb.ba ], [ %.sroa.073.0.ph368603, %.loopexit ], [ %.sroa.073.0.ph368603, %bb.az ] ; 5 uses
  %.sroa.050.2.jt1 = phi i8 [ 2, %bb.br ], [ 2, %bb.bs ], [ 2, %bb.bt ], [ 1, %bb.bv ], [ 1, %bb.bd ], [ 2, %bb.bo ], [ 1, %bb.bb ], [ 2, %bb.bn ], [ 2, %bb.bk ], [ 1, %bb.ba ], [ 1, %.loopexit ], [ 2, %bb.az ] ; 5 uses
  %i.fi = icmp eq ptr %.sroa.0.1670, %i.g
  br i1 %i.fi, label %.thread147, label %.lr.ph.jt1

.outer.jt3:                                       ; preds = %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.bu
  %.promoted380685 = phi i8 [ %.promoted380677, %bb.bb ], [ %.promoted380680, %bb.ba ], [ %.promoted380, %bb.az ], [ %.promoted380681, %bb.bu ], [ %.promoted380679, %bb.bd ] ; 4 uses
  %i.fj = phi i64 [ %i.el, %bb.bb ], [ %i.ek, %bb.ba ], [ %i.cj, %bb.az ], [ %i.ep, %bb.bu ], [ %i.en, %bb.bd ] ; 6 uses
  %.sroa.0.1671 = phi ptr [ %.sroa.0.1663, %bb.bb ], [ %.sroa.0.1666, %bb.ba ], [ %.sroa.0.1, %bb.az ], [ %.sroa.0.1667, %bb.bu ], [ %.sroa.0.1665, %bb.bd ] ; 5 uses
  %.sroa.11.0350651 = phi i64 [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350646, %bb.ba ], [ %.sroa.11.0350659, %bb.az ], [ %.sroa.11.0350656, %bb.bu ], [ %.sroa.11.0350645, %bb.bd ]
  %.sroa.011.0355483.jt3 = phi i1 [ %.sroa.011.0355623, %bb.bb ], [ %.sroa.011.0355626, %bb.ba ], [ %.sroa.011.0355628, %bb.az ], [ %.sroa.011.0355627, %bb.bu ], [ %.sroa.011.0355625, %bb.bd ] ; 2 uses
  %.sroa.074.1.jt3 = phi i64 [ %.sroa.074.0.ph367609, %bb.bb ], [ %.sroa.074.0.ph367613, %bb.ba ], [ %.sroa.074.0.ph367617, %bb.az ], [ %.sroa.074.0.ph367614, %bb.bu ], [ %.sroa.074.0.ph367611, %bb.bd ] ; 5 uses
  %.sroa.073.1.jt3 = phi i8 [ %.sroa.073.0.ph368595, %bb.bb ], [ %.sroa.073.0.ph368599, %bb.ba ], [ %.sroa.073.0.ph368603, %bb.az ], [ %.sroa.073.0.ph368600, %bb.bu ], [ %.sroa.073.0.ph368597, %bb.bd ] ; 5 uses
  %i.fk = icmp eq ptr %.sroa.0.1671, %i.g
  br i1 %i.fk, label %.thread147, label %.lr.ph.jt3

bb.bj:                                            ; preds = %bb.ba
  %i.fl = icmp eq i8 %.sroa.050.0353632, 2
  br i1 %i.fl, label %.outer.jt7, label %.thread150

bb.bk:                                            ; preds = %bb.ba
  br label %.outer.jt1

bb.bl:                                            ; preds = %bb.bm, %bb.ba, %bb.ba
  br label %.outer.jt7

bb.bm:                                            ; preds = %bb.ba
  %i.fm = icmp eq i8 %.sroa.050.0353632, 2
  br i1 %i.fm, label %.outer.jt7, label %bb.bl

bb.bn:                                            ; preds = %bb.bb
  br label %.outer.jt1

bb.bo:                                            ; preds = %bb.bd
  br label %.outer.jt1

bb.bp:                                            ; preds = %bb.be
  %i.fn = icmp eq i8 %.sroa.028.2691, 15
  br i1 %i.fn, label %.outer.jt6, label %.thread150

bb.bq:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @217, ptr %i.a, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsdftwklc2oBO_7similar, ptr %.sroa.491.0..sroa_idx, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @175, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #37
  unreachable

bb.br:                                            ; preds = %bb.bf
  switch i8 %.sroa.028.2696, label %.thread150 [
    i8 0, label %bb.bv
    i8 7, label %.outer.jt1
  ]

bb.bs:                                            ; preds = %bb.bf
  %i.fo = icmp eq i8 %.sroa.028.2696, 7
  br i1 %i.fo, label %.outer.jt1, label %.thread150

bb.bt:                                            ; preds = %bb.bf
  switch i8 %.sroa.028.2696, label %.thread150 [
    i8 0, label %bb.bv
    i8 7, label %.outer.jt1
  ]

bb.bu:                                            ; preds = %bb.bf
  %i.fp = icmp eq i8 %.sroa.028.2696, 14
  br i1 %i.fp, label %.outer.jt3, label %.thread150

bb.bv:                                            ; preds = %bb.bt, %bb.br
  br label %.outer.jt1

.thread:                                          ; preds = %.outer.jt7, %.outer._crit_edge
  %.sroa.42.0.lcssa716 = phi i8 [ %.sroa.42.1, %.outer._crit_edge ], [ %.sroa.42.2.jt7, %.outer.jt7 ]
  %.sroa.073.0.ph.lcssa341715 = phi i8 [ %.sroa.073.0.ph368592, %.outer._crit_edge ], [ %.sroa.073.1.jt7, %.outer.jt7 ] ; 3 uses
  %.sroa.074.0.ph.lcssa349714 = phi i64 [ %.sroa.074.0.ph367606, %.outer._crit_edge ], [ %.sroa.074.1.jt7, %.outer.jt7 ] ; 3 uses
  %.sroa.11.0350655713 = phi i64 [ %.sroa.11.0350640, %.outer._crit_edge ], [ %.sroa.11.0350652, %.outer.jt7 ]
  switch i8 %.sroa.42.0.lcssa716, label %.thread147 [
    i8 2, label %.thread150
    i8 3, label %.thread150
    i8 5, label %.thread150
  ]

.thread147:                                       ; preds = %bb.at, %.outer.jt3, %.outer.jt1, %.outer.jt4, %.outer.jt6, %.outer.jt10, %.outer.jt8, %.outer.jt5, %bb.as, %bb.bf, %bb.az, %bb.az, %bb.bi, %bb.bh, %.thread, %.outer._crit_edge
  %.sroa.016.1144 = phi i64 [ %.sroa.11.0350655713, %.thread ], [ %.sroa.11.0350640, %.outer._crit_edge ], [ %i.eu, %bb.bh ], [ %.sroa.11.0350659, %bb.at ], [ %.sroa.11.0350659, %bb.as ], [ %.sroa.11.0350653, %.outer.jt5 ], [ %.sroa.11.0350659, %.outer.jt8 ], [ %.sroa.11.0350647, %.outer.jt10 ], [ %.sroa.11.0350649, %.outer.jt6 ], [ %.sroa.11.0350654, %.outer.jt4 ], [ %.sroa.11.0350650, %.outer.jt1 ], [ %.sroa.11.0350651, %.outer.jt3 ], [ %.sroa.11.0350659, %bb.bi ], [ %.sroa.11.0350659, %bb.az ], [ %.sroa.11.0350659, %bb.az ], [ %.sroa.11.0350656, %bb.bf ] ; 7 uses
  %i.fq = icmp eq i64 %.sroa.016.1144, 0
  br i1 %i.fq, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %.thread147
  %.not.i = icmp ult i64 %.sroa.016.1144, %i.d
  br i1 %.not.i, label %bb.bx, label %.split.i

.split.i:                                         ; preds = %bb.bw
  %i.fr = icmp eq i64 %.sroa.016.1144, %i.d
  br i1 %i.fr, label %bb.by, label %.split.i.thread

bb.bx:                                            ; preds = %bb.bw
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.016.1144
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !10837, !noundef !5
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.by, label %.split.i.thread

bb.by:                                            ; preds = %bb.bx, %.split.i, %.thread147
  %.sroa.016.1144729 = phi i64 [ %.sroa.016.1144, %bb.bx ], [ %.sroa.016.1144, %.split.i ], [ 0, %.thread147 ] ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.016.1144729 ; 4 uses
  %i.fw = icmp samesign eq i64 %.sroa.016.1144729, %i.d
  br i1 %i.fw, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fx = load i8, ptr %i.fv, align 1, !noalias !10838, !noundef !5 ; 4 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %.thread158, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i: ; preds = %bb.bz
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.ga = and i8 %i.fx, 31
  %i.gb = zext nneg i8 %i.ga to i32               ; 3 uses
  %i.gc = add nuw nsw i64 %.sroa.016.1144729, 1
  %i.gd = icmp samesign ne i64 %i.gc, %i.d
  call void @llvm.assume(i1 %i.gd)
  %i.ge = load i8, ptr %i.fz, align 1, !noalias !10838, !noundef !5
  %i.gf = shl nuw nsw i32 %i.gb, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32               ; 2 uses
  %i.gi = or disjoint i32 %i.gf, %i.gh
  %i.gj = icmp samesign ugt i8 %i.fx, -33
  br i1 %i.gj, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i, label %bb.ca

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gl = add nuw nsw i64 %.sroa.016.1144729, 2
  %i.gm = icmp samesign ne i64 %i.gl, %i.d
  call void @llvm.assume(i1 %i.gm)
  %i.gn = load i8, ptr %i.gk, align 1, !noalias !10838, !noundef !5
  %i.go = shl nuw nsw i32 %i.gh, 6
  %i.gp = and i8 %i.gn, 63
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.go, %i.gq            ; 2 uses
  %i.gs = shl nuw nsw i32 %i.gb, 12
  %i.gt = or disjoint i32 %i.gr, %i.gs
  %i.gu = icmp samesign ugt i8 %i.fx, -17
  br i1 %i.gu, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i, label %bb.ca

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %i.gw = add nuw nsw i64 %.sroa.016.1144729, 3
  %i.gx = icmp samesign ne i64 %i.gw, %i.d
  call void @llvm.assume(i1 %i.gx)
  %i.gy = load i8, ptr %i.gv, align 1, !noalias !10838, !noundef !5
  %i.gz = shl nuw nsw i32 %i.gb, 18
  %i.ha = and i32 %i.gz, 1835008
  %i.hb = shl nuw nsw i32 %i.gr, 6
  %i.hc = and i8 %i.gy, 63
  %i.hd = zext nneg i8 %i.hc to i32
  %i.he = or disjoint i32 %i.hb, %i.hd
  %i.hf = or disjoint i32 %i.he, %i.ha
  br label %bb.ca

.split.i.thread:                                  ; preds = %bb.bx, %.split.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.d, i64 noundef %.sroa.016.1144, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #37
  unreachable

bb.ca:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.gt, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i ], [ %i.hf, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i ], [ %i.gi, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i ] ; 4 uses
  %i.hg = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.hg)
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.hh, label %.thread158, label %bb.cc

bb.cb:                                            ; preds = %bb.by
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #37
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.hi = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.hi, label %.thread158, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hj = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %.120 = select i1 %i.hj, i64 3, i64 4
  br label %.thread158

.thread158:                                       ; preds = %bb.bz, %bb.cc, %bb.cd, %bb.ca
  %.sroa.086.0 = phi i64 [ 2, %bb.cc ], [ %.120, %bb.cd ], [ 1, %bb.ca ], [ 1, %bb.bz ]
  %i.hk = add i64 %.sroa.086.0, %.sroa.016.1144729
  br label %.thread150

.thread150:                                       ; preds = %bb.br, %bb.bu, %bb.bs, %bb.ba, %bb.bj, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bp, %bb.bg, %bb.bf, %bb.bt, %bb.au, %bb.au, %bb.aq, %bb.ax, %.thread, %.thread, %.thread, %.thread158
  %.sroa.085.0 = phi i8 [ -1, %.thread158 ], [ %.sroa.073.0.ph.lcssa341715, %.thread ], [ %.sroa.073.0.ph.lcssa341715, %.thread ], [ %.sroa.073.0.ph.lcssa341715, %.thread ], [ %.sroa.073.0.ph368600, %bb.bu ], [ %.sroa.073.0.ph368600, %bb.br ], [ %.sroa.028.2690, %bb.bg ], [ %.sroa.028.2691, %bb.bp ], [ %.sroa.028.2691, %bb.be ], [ %.sroa.028.2694, %bb.bd ], [ %.sroa.028.2693, %bb.bc ], [ %.sroa.028.2692, %bb.bb ], [ 3, %bb.bj ], [ %.sroa.028.2695, %bb.ba ], [ -1, %bb.bt ], [ -1, %bb.bf ], [ %.sroa.073.0.ph368600, %bb.bs ], [ %.sroa.028.2.jt8, %bb.aq ], [ %.sroa.028.2, %bb.au ], [ %.sroa.028.2, %bb.au ], [ %.sroa.028.2.jt8, %bb.ax ]
  %.sroa.016.3 = phi i64 [ %i.hk, %.thread158 ], [ %.sroa.074.0.ph.lcssa349714, %.thread ], [ %.sroa.074.0.ph.lcssa349714, %.thread ], [ %.sroa.074.0.ph.lcssa349714, %.thread ], [ %.sroa.074.0.ph367614, %bb.bu ], [ %.sroa.074.0.ph367614, %bb.br ], [ %.sroa.11.0350641, %bb.bg ], [ %.sroa.11.0350642, %bb.bp ], [ %.sroa.11.0350642, %bb.be ], [ %.sroa.11.0350645, %bb.bd ], [ %.sroa.11.0350644, %bb.bc ], [ %.sroa.11.0350643, %bb.bb ], [ %.sroa.11.0350646, %bb.bj ], [ %.sroa.11.0350646, %bb.ba ], [ %.sroa.11.0350656, %bb.bt ], [ %.sroa.11.0350656, %bb.bf ], [ %.sroa.074.0.ph367614, %bb.bs ], [ %i.cj, %bb.aq ], [ %.sroa.11.0350659, %bb.au ], [ %.sroa.11.0350659, %bb.au ], [ %i.cj, %bb.ax ] ; 10 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.085.0, ptr %i.hl, align 8
  %i.hm = icmp eq i64 %.sroa.016.3, 0
  br i1 %i.hm, label %.split.i131, label %bb.ce

bb.ce:                                            ; preds = %.thread150
  %.not.i127 = icmp ult i64 %.sroa.016.3, %i.d
  br i1 %.not.i127, label %bb.cf, label %.split.i128

.split.i128:                                      ; preds = %bb.ce
  %i.hn = icmp eq i64 %.sroa.016.3, %i.d
  br i1 %i.hn, label %.split.i131, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.016.3
  %i.hp = load i8, ptr %i.ho, align 1, !alias.scope !10839, !noundef !5
  %i.hq = icmp sgt i8 %i.hp, -65
  br i1 %i.hq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.016.3
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !10840, !noundef !5
  %i.ht = icmp sgt i8 %i.hs, -65
  br i1 %i.ht, label %.split.i131, label %bb.ci

bb.ch:                                            ; preds = %bb.cf, %.split.i128
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.d, i64 noundef 0, i64 noundef %.sroa.016.3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #37
  unreachable

.split.i131:                                      ; preds = %.split.i128, %.thread150, %bb.cg
  %i.hu = sub nuw i64 %i.d, %.sroa.016.3
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.016.3
  store ptr %i.hv, ptr %0, align 8, !captures !33
  store i64 %i.hu, ptr %i.c, align 8
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.d, i64 noundef %.sroa.016.3, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #37
  unreachable

bb.cj:                                            ; preds = %bb.a, %.split.i131
  %.sroa.5.0 = phi i64 [ %.sroa.016.3, %.split.i131 ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %.split.i131 ], [ null, %bb.a ]
  %i.hw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.hx = insertvalue { ptr, i64 } %i.hw, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.hx
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsdftwklc2oBO_7similar5udiffINtB5_15UnifiedDiffHunkeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [192 x i8], align 8               ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = getelementptr [40 x i8], ptr %i.l, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.0.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.o, ptr %.sroa.2.sroa.0.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.0.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.q, ptr %.sroa.2.sroa.0.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  store i8 -1, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store i8 -1, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.626.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.727.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.828.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.929.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.1030.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %.sroa.1131.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.sroa.9106.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.not.i99 = icmp eq i64 %i.n, 0
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 -40
  %.sroa.520.0..sroa_idx.i = getelementptr i8, ptr %i.o, i64 -32
  %.sroa.621.0..sroa_idx.i = getelementptr i8, ptr %i.o, i64 -24
  %.sroa.1025.0..sroa_idx.i = getelementptr i8, ptr %i.o, i64 -16
  %.sroa.1530.0..sroa_idx.i = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load ptr, ptr %1, align 8, !nonnull !5   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !9 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !range !10
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10888
  call void @llvm.experimental.noalias.scope.decl(metadata !10889)
  call void @llvm.experimental.noalias.scope.decl(metadata !10890)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10891
  call fastcc void @_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtCsdftwklc2oBO_7similar4text15TextChangesItereEINtNtB1b_5types6ChangeReENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef align 8 dereferenceable(80) %i.r) #40, !noalias !10892
  %i.ah = load i64, ptr %i.a, align 8, !range !24, !noalias !10891, !noundef !5
  %.not55.i.i.i = icmp eq i64 %i.ah, 2
  br i1 %.not55.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !10893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10891
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpEINtNtB1y_4text15TextChangesItereENCNvMs4_NtB1y_5udiffINtB2N_15UnifiedDiffHunkeE12iter_changes0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10891
  call void @llvm.experimental.noalias.scope.decl(metadata !10894)
  %i.ai = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !10895, !noalias !10896, !noundef !5 ; 14 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENCNvMs4_NtB1I_5udiffINtB2q_15UnifiedDiffHunkeE12iter_changes0EEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10897)
  %i.aj = load ptr, ptr %.sroa.2.sroa.0.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !10898, !noalias !10899, !nonnull !5, !noundef !5
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENCNvMs4_NtB1I_5udiffINtB2q_15UnifiedDiffHunkeE12iter_changes0EEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !10898, !noalias !10899
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.2.sroa.0.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !10900, !noalias !10899, !nonnull !5, !align !9, !noundef !5
  %i.am = load i64, ptr %i.ai, align 8, !range !4, !alias.scope !10901, !noalias !10902, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10901, !noalias !10902, !noundef !5 ; 7 uses
  switch i64 %i.am, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !10901, !noalias !10902, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !10901, !noalias !10902, !noundef !5 ; 2 uses
  %i.at = add i64 %i.as, %i.ao
  %i.au = add i64 %i.as, %i.aq
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10901, !noalias !10902, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !10901, !noalias !10902, !noundef !5
  %i.az = add i64 %i.ay, %i.ao
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !10901, !noalias !10902, !noundef !5 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !10901, !noalias !10902, !noundef !5
  %i.be = add i64 %i.bd, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !10901, !noalias !10902, !noundef !5
end_hunk_1
