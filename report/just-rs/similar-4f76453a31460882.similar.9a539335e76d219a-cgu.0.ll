Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsdftwklc2oBO_7similar:bb.a
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

end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i, %bb.l
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !2971, !noalias !2972, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.ba ; 4 uses
  store i64 2, ptr %i.be, align 8, !noalias !2973
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2973
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !2973
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %.sroa.011.0.i, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !2973
  %i.bf = add i64 %i.au, 2
  store i64 %i.bf, ptr %i.at, align 8, !alias.scope !2971, !noalias !2972
  br label %bb.aa

bb.m:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit24.i, %bb.i, %bb.c, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i, %.split.i
  %.sroa.0.0.i7 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0.i = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.bg = add i64 %.sroa.05.0.i, %.sroa.0.0.i7    ; 2 uses
  %i.bh = lshr i64 %i.bg, 1
  %.sroa.011.0.i8 = sub nuw i64 %i.bg, %i.bh
  %i.bi = add nuw i64 %.sroa.011.0.i8, 1          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2975)
  %i.bj = shl i64 %i.bi, 1                        ; 6 uses
  %i.bk = shl i64 %i.bi, 4                        ; 6 uses
  %i.bl = icmp ugt i64 %i.bj, 2305843009213693951
  %.not.i5.i.i.i = icmp ugt i64 %i.bk, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.bl, %.not.i5.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.p, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %.thread.i9, label %bb.o

.thread.i9:                                       ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bi, ptr %i.bn, align 8, !alias.scope !2975, !noalias !2974
  store i64 0, ptr %i.b, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.4.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.5.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i38.i, align 8, !alias.scope !2975, !noalias !2974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2974
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2976
  %i.bo = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 8) #36, !noalias !2976 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.o ], [ 0, %bb.m ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bk) #38, !noalias !2977
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bi, ptr %i.bq, align 8, !alias.scope !2975, !noalias !2974
  store i64 %i.bj, ptr %i.b, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2975, !noalias !2974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2978)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2979
  %i.br = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 8) #36, !noalias !2979 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bk) #38
          to label %.noexc.i unwind label %bb.t, !noalias !2974

.noexc.i:                                         ; preds = %bb.r
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i: ; preds = %bb.w, %bb.v, %bb.t
  %.sroa.4.0..sroa_idx.i39.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i, %bb.t ], [ %.sroa.4.0..sroa_idx.i40.i, %bb.v ], [ %.sroa.4.0..sroa_idx.i40.i, %bb.w ]
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bx, %bb.v ], [ %i.bx, %bb.w ]
  %.val22.i = load i64, ptr %i.b, align 8, !noalias !2974 ; 2 uses
  %i.bt = icmp eq i64 %.val22.i, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i
  %.val23.i = load ptr, ptr %.sroa.4.0..sroa_idx.i39.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val22.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i

bb.u:                                             ; preds = %bb.q, %.thread.i9
  %.sroa.4.0..sroa_idx.i40.i = phi ptr [ %.sroa.4.0..sroa_idx.i37.i, %.thread.i9 ], [ %.sroa.4.0..sroa_idx.i.i, %bb.q ] ; 3 uses
  %.sroa.4.0.i.i26.i = phi i64 [ 0, %.thread.i9 ], [ %i.bj, %bb.q ]
  %.sroa.10.0.i.i27.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i9 ], [ %i.br, %bb.q ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bi, ptr %i.bw, align 8, !alias.scope !2978, !noalias !2974
  store i64 %.sroa.4.0.i.i26.i, ptr %i.a, align 8, !alias.scope !2978, !noalias !2974
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i27.i, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !alias.scope !2978, !noalias !2974
  %.sroa.5.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i29.i, align 8, !alias.scope !2978, !noalias !2974
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20.i = load i64, ptr %i.a, align 8, !noalias !2974 ; 2 uses
  %i.by = icmp eq i64 %.val20.i, 0
  br i1 %i.by, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val21.i = load ptr, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.bz = shl nuw i64 %.val20.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i

bb.x:                                             ; preds = %bb.u
  %.val18.i = load i64, ptr %i.a, align 8, !noalias !2974 ; 2 uses
  %i.ca = icmp eq i64 %.val18.i, 0
  br i1 %i.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val19.i = load ptr, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.cb = shl nuw i64 %.val18.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2974
  %.val.i = load i64, ptr %i.b, align 8, !noalias !2974 ; 2 uses
  %i.cc = icmp eq i64 %.val.i, 0
  br i1 %i.cc, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i
  %.val17.i = load ptr, ptr %.sroa.4.0..sroa_idx.i40.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.cd = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2974
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph268, label %bb.h, !prof !11

.lr.ph268:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin311 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin311
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph268, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread
  %.sroa.048.0267 = phi i64 [ 0, %.lr.ph268 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0267, 1          ; 2 uses
  br i1 %.not.i, label %.lr.ph252.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 2 uses
  %i.av = icmp eq i64 %i.au, %9
  br i1 %i.av, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.aw = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i32 %i.aw, %10
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph252.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.az = icmp sgt i64 %i.au, %9
  br i1 %i.az, label %.split._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %i.ba = sub nsw i64 0, %.sroa.048.0267          ; 6 uses
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.bg
  %.sroa.7.0251 = phi i64 [ %i.bf, %bb.bg ], [ %.sroa.048.0267, %.lr.ph252.preheader ]
  %not..sroa.11164.0250 = phi i64 [ 1, %bb.bg ], [ 0, %.lr.ph252.preheader ]
  %i.bb = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0251, i64 %not..sroa.11164.0250) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 10 uses
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0       ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  %i.bh = or i1 %i.bc, %i.bg
  %.not3.i.not = icmp slt i64 %i.bd, %i.ba
  %or.cond190 = select i1 %i.bc, i1 true, i1 %.not3.i.not
  br i1 %or.cond190, label %.lr.ph265.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph252
  %i.bi = icmp eq i64 %i.bd, %i.ba
  br i1 %i.bi, label %._crit_edge312, label %bb.am

._crit_edge312:                                   ; preds = %bb.k
  %.pre317 = add i64 %i.i, %i.bd
  br label %bb.an

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.ah
  %not..sroa.14173.0264 = phi i64 [ 1, %bb.ah ], [ 0, %.lr.ph265.preheader ]
  %.sroa.7172.0263 = phi i64 [ %i.bn, %bb.ah ], [ %.sroa.048.0267, %.lr.ph265.preheader ]
  %i.bj = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7172.0263, i64 %not..sroa.14173.0264) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1       ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bj, 0       ; 10 uses
  %i.bm = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bl, i64 -1) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bm, 1
  %i.bp = or i1 %i.bk, %i.bo
  %.not3.i145.not = icmp slt i64 %i.bl, %i.ba
  %or.cond192 = select i1 %i.bk, i1 true, i1 %.not3.i145.not
  br i1 %or.cond192, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph265
  %i.bq = icmp eq i64 %i.bl, %i.ba
  br i1 %i.bq, label %._crit_edge314.a, label %bb.m

._crit_edge314.a:                                 ; preds = %bb.l
  %.pre = add i64 %i.r, %i.bl
  br label %bb.n

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread: ; preds = %bb.ah, %.lr.ph265
  %exitcond311.not = icmp eq i64 %i.as, %15
  br i1 %exitcond311.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bl, %.sroa.048.0267
  %.pre315 = add i64 %i.ap, %i.bl                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.o

bb.n:                                             ; preds = %._crit_edge314.a, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314.a ], [ %i.bu, %bb.r ] ; 3 uses
  %i.br = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.br, label %bb.w, label %bb.x

._crit_edge313:                                   ; preds = %bb.m, %bb.r
  %i.bs = icmp ult i64 %.pre315, %i.t
  br i1 %i.bs, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bt = icmp ult i64 %.pre315, %i.t
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = add i64 %i.r, %i.bl                     ; 4 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = icmp ult i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.n, label %._crit_edge313

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.t:                                             ; preds = %._crit_edge313
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5
  %i.cd = add i64 %i.cc, 1
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.014.0 = phi i64 [ %i.ci, %bb.w ], [ %i.cd, %bb.t ] ; 5 uses
  %i.ce = sub i64 %.sroa.014.0, %i.bl             ; 4 uses
  %i.cf = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cg = icmp ult i64 %i.ce, %.sroa.037.0
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  br label %bb.v

bb.x:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.y:                                             ; preds = %bb.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cx, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %i.ce, %bb.v ]
  %.sroa.014.1 = phi i64 [ %i.cw, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.014.0, %bb.v ] ; 3 uses
  %i.cj = add i64 %i.bl, %i.q                     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.t
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.z:                                             ; preds = %bb.v
  %i.cl = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cm = sub i64 %i.ar, %i.ce                    ; 2 uses
  %i.cn = sub i64 %i.cl, %2
  %i.co = sub i64 %i.cm, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cn) ; 3 uses
  %.not270 = icmp eq i64 %..i, 0
  br i1 %.not270, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.z
  %invariant.op258 = sub i64 %i.cm, %i.ae
  %invariant.op260 = sub i64 %i.cl, %i.ak
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph255, %bb.ad
  %.sroa.0.0.i136254 = phi i64 [ 0, %.lr.ph255 ], [ %i.cv, %bb.ad ] ; 3 uses
  %i.cp = xor i64 %.sroa.0.0.i136254, -1          ; 2 uses
  %.reass259 = add i64 %invariant.op258, %i.cp    ; 3 uses
  %i.cq = icmp ult i64 %.reass259, %i.ag
  br i1 %i.cq, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !2988
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137: ; preds = %bb.aa
  %.reass261 = add i64 %invariant.op260, %i.cp    ; 3 uses
  %i.cr = icmp ult i64 %.reass261, %i.am
  br i1 %i.cr, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass261, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !2989
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass259
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass261
  %.val = load i64, ptr %i.cs, align 8, !noundef !5
  %.val140 = load i64, ptr %i.ct, align 8, !noundef !5
  %i.cu = icmp eq i64 %.val, %.val140
  br i1 %i.cu, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.ad:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.cv = add nuw i64 %.sroa.0.0.i136254, 1       ; 2 uses
  %exitcond310.not = icmp eq i64 %i.cv, %..i
  br i1 %exitcond310.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.aa

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ad, %bb.z
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.z ], [ %..i, %bb.ad ], [ %.sroa.0.0.i136254, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.cw = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cx = add i64 %.sroa.0.0.i136.lcssa, %i.ce
  br label %bb.y

bb.ae:                                            ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cj
  store i64 %.sroa.014.1, ptr %i.cy, align 8
  br i1 %.not, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cz = sub i64 %i.bl, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cz, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0267
  br i1 %.not131, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.aj, %bb.ae
  %.not.i144 = icmp slt i64 %i.bn, %i.ba
  %or.cond191 = select i1 %i.bp, i1 true, i1 %.not.i144
  br i1 %or.cond191, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %.lr.ph265

bb.ai:                                            ; preds = %bb.ag
  %i.da = sub i64 %i.h, %i.cz                     ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.k
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.da
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5
  %i.de = add i64 %i.dd, %.sroa.014.1
  %.not132 = icmp ult i64 %i.de, %.sroa.025.0
  br i1 %.not132, label %bb.ah, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.df = sub i64 %i.aq, %.sroa.014.1
  %i.dg = sub i64 %i.ar, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.am:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bd, %.sroa.048.0267
  %.pre319 = add i64 %i.ac, %i.bd                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.ao

bb.an:                                            ; preds = %._crit_edge312, %bb.ar
  %.pre-phi318 = phi i64 [ %.pre317, %._crit_edge312 ], [ %i.dk, %bb.ar ] ; 3 uses
  %i.dh = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.dh, label %bb.aw, label %bb.ax

._crit_edge:                                      ; preds = %bb.am, %bb.ar
  %i.di = icmp ult i64 %.pre319, %i.k
  br i1 %i.di, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.dj = icmp ult i64 %.pre319, %i.k
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dk = add i64 %i.i, %i.bd                     ; 4 uses
  %i.dl = icmp ult i64 %i.dk, %i.k
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dk
  %i.dp = load i64, ptr %i.do, align 8, !noundef !5
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.an, label %._crit_edge

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.at:                                            ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !5
  %i.dt = add i64 %i.ds, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.dz, %bb.aw ], [ %i.dt, %bb.at ] ; 6 uses
  %i.du = sub i64 %.sroa.04.0, %i.bd              ; 3 uses
  %i.dv = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dv, i1 false
  %i.dw = icmp ult i64 %i.du, %i.d
  %i.dx = and i1 %i.c, %.sroa.051.0
  %or.cond188 = select i1 %i.dx, i1 %i.dw, i1 false
  br i1 %or.cond188, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5
  br label %bb.av

bb.ax:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.em, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.ea = add i64 %i.bd, %i.h                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.k
  br i1 %i.eb, label %bb.be, label %bb.bf

bb.az:                                            ; preds = %bb.av
  %i.ec = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.ed = add i64 %i.du, %5                       ; 2 uses
  %i.ee = sub i64 %3, %i.ec
  %i.ef = sub i64 %6, %i.ed
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ee) ; 3 uses
  %.not269 = icmp eq i64 %..i150, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %invariant.op = sub i64 %i.ed, %i.ae            ; 2 uses
  %invariant.op247 = sub i64 %i.ec, %i.ak         ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bd
  %.sroa.0.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.el, %bb.bd ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i245, %invariant.op ; 2 uses
  %i.eg = icmp ult i64 %.reass, %i.ag
  br i1 %i.eg, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !2990
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.ba
  %.reass248 = add nuw i64 %.sroa.0.0.i245, %invariant.op247 ; 2 uses
  %i.eh = icmp ult i64 %.reass248, %i.am
  br i1 %i.eh, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %umax309 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op247)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax309, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !2991
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass248
  %.val141 = load i64, ptr %i.ei, align 8, !noundef !5
  %.val142 = load i64, ptr %i.ej, align 8, !noundef !5
  %i.ek = icmp eq i64 %.val141, %.val142
  br i1 %i.ek, label %bb.bd, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.bd:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138
  %i.el = add nuw i64 %.sroa.0.0.i245, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %..i150
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.ba

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bd, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %..i150, %bb.bd ], [ %.sroa.0.0.i245, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.em = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.be:                                            ; preds = %bb.ay
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ea
  store i64 %.sroa.04.1, ptr %i.en, align 8
  br i1 %.not, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.bg:                                            ; preds = %bb.bh, %bb.bj, %bb.be
  %.not.i143 = icmp slt i64 %i.bf, %i.ba
  %or.cond189 = select i1 %i.bh, i1 true, i1 %.not.i143
  br i1 %or.cond189, label %.lr.ph265.preheader, label %.lr.ph252

.lr.ph265.preheader:                              ; preds = %.lr.ph252, %bb.bg
  br label %.lr.ph265

bb.bh:                                            ; preds = %bb.be
  %i.eo = sub i64 %i.bd, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.eo, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0267
  br i1 %.not134.not, label %bb.bi, label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.ep = sub i64 %i.q, %i.eo                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.t
  br i1 %i.eq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ep
  %i.es = load i64, ptr %i.er, align 8, !noundef !5
  %i.et = add i64 %i.es, %.sroa.04.1
  %.not135 = icmp ult i64 %i.et, %.sroa.025.0
  br i1 %.not135, label %bb.bg, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ep, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.eu = add i64 %.sroa.04.0, %2
  %i.ev = add i64 %i.du, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bl, %bb.al
  %.sink401 = phi i64 [ %i.df, %bb.al ], [ %i.eu, %bb.bl ]
  %.sink399 = phi i64 [ %i.dg, %bb.al ], [ %i.ev, %bb.bl ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink401, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink399, ptr %i.ex, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph268, label %bb.h, !prof !11

.lr.ph268:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin311 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin311
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph268, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread
  %.sroa.048.0267 = phi i64 [ 0, %.lr.ph268 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0267, 1          ; 2 uses
  br i1 %.not.i, label %.lr.ph252.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 2 uses
  %i.av = icmp eq i64 %i.au, %9
  br i1 %i.av, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.aw = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i32 %i.aw, %10
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph252.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.az = icmp sgt i64 %i.au, %9
  br i1 %i.az, label %.split._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %i.ba = sub nsw i64 0, %.sroa.048.0267          ; 6 uses
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.bg
  %.sroa.7.0251 = phi i64 [ %i.bf, %bb.bg ], [ %.sroa.048.0267, %.lr.ph252.preheader ]
  %not..sroa.11164.0250 = phi i64 [ 1, %bb.bg ], [ 0, %.lr.ph252.preheader ]
  %i.bb = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0251, i64 %not..sroa.11164.0250) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 10 uses
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0       ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  %i.bh = or i1 %i.bc, %i.bg
  %.not3.i.not = icmp slt i64 %i.bd, %i.ba
  %or.cond190 = select i1 %i.bc, i1 true, i1 %.not3.i.not
  br i1 %or.cond190, label %.lr.ph265.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph252
  %i.bi = icmp eq i64 %i.bd, %i.ba
  br i1 %i.bi, label %._crit_edge312, label %bb.am

._crit_edge312:                                   ; preds = %bb.k
  %.pre317 = add i64 %i.i, %i.bd
  br label %bb.an

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.ah
  %not..sroa.14173.0264 = phi i64 [ 1, %bb.ah ], [ 0, %.lr.ph265.preheader ]
  %.sroa.7172.0263 = phi i64 [ %i.bn, %bb.ah ], [ %.sroa.048.0267, %.lr.ph265.preheader ]
  %i.bj = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7172.0263, i64 %not..sroa.14173.0264) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1       ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bj, 0       ; 10 uses
  %i.bm = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bl, i64 -1) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bm, 1
  %i.bp = or i1 %i.bk, %i.bo
  %.not3.i145.not = icmp slt i64 %i.bl, %i.ba
  %or.cond192 = select i1 %i.bk, i1 true, i1 %.not3.i145.not
  br i1 %or.cond192, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph265
  %i.bq = icmp eq i64 %i.bl, %i.ba
  br i1 %i.bq, label %._crit_edge314.a, label %bb.m

._crit_edge314.a:                                 ; preds = %bb.l
  %.pre = add i64 %i.r, %i.bl
  br label %bb.n

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread: ; preds = %bb.ah, %.lr.ph265
  %exitcond311.not = icmp eq i64 %i.as, %15
  br i1 %exitcond311.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bl, %.sroa.048.0267
  %.pre315 = add i64 %i.ap, %i.bl                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.o

bb.n:                                             ; preds = %._crit_edge314.a, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314.a ], [ %i.bu, %bb.r ] ; 3 uses
  %i.br = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.br, label %bb.w, label %bb.x

._crit_edge313:                                   ; preds = %bb.m, %bb.r
  %i.bs = icmp ult i64 %.pre315, %i.t
  br i1 %i.bs, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bt = icmp ult i64 %.pre315, %i.t
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = add i64 %i.r, %i.bl                     ; 4 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = icmp ult i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.n, label %._crit_edge313

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.t:                                             ; preds = %._crit_edge313
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5
  %i.cd = add i64 %i.cc, 1
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.014.0 = phi i64 [ %i.ci, %bb.w ], [ %i.cd, %bb.t ] ; 5 uses
  %i.ce = sub i64 %.sroa.014.0, %i.bl             ; 4 uses
  %i.cf = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cg = icmp ult i64 %i.ce, %.sroa.037.0
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  br label %bb.v

bb.x:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.y:                                             ; preds = %bb.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cx, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %i.ce, %bb.v ]
  %.sroa.014.1 = phi i64 [ %i.cw, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.014.0, %bb.v ] ; 3 uses
  %i.cj = add i64 %i.bl, %i.q                     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.t
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.z:                                             ; preds = %bb.v
  %i.cl = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cm = sub i64 %i.ar, %i.ce                    ; 2 uses
  %i.cn = sub i64 %i.cl, %2
  %i.co = sub i64 %i.cm, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cn) ; 3 uses
  %.not270 = icmp eq i64 %..i, 0
  br i1 %.not270, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.z
  %invariant.op258 = sub i64 %i.cm, %i.ae
  %invariant.op260 = sub i64 %i.cl, %i.ak
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph255, %bb.ad
  %.sroa.0.0.i136254 = phi i64 [ 0, %.lr.ph255 ], [ %i.cv, %bb.ad ] ; 3 uses
  %i.cp = xor i64 %.sroa.0.0.i136254, -1          ; 2 uses
  %.reass259 = add i64 %invariant.op258, %i.cp    ; 3 uses
  %i.cq = icmp ult i64 %.reass259, %i.ag
  br i1 %i.cq, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !3000
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137: ; preds = %bb.aa
  %.reass261 = add i64 %invariant.op260, %i.cp    ; 3 uses
  %i.cr = icmp ult i64 %.reass261, %i.am
  br i1 %i.cr, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass261, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !3001
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass259
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass261
  %.val = load i32, ptr %i.cs, align 4, !noundef !5
  %.val140 = load i32, ptr %i.ct, align 4, !noundef !5
  %i.cu = icmp eq i32 %.val, %.val140
  br i1 %i.cu, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.ad:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.cv = add nuw i64 %.sroa.0.0.i136254, 1       ; 2 uses
  %exitcond310.not = icmp eq i64 %i.cv, %..i
  br i1 %exitcond310.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.aa

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ad, %bb.z
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.z ], [ %..i, %bb.ad ], [ %.sroa.0.0.i136254, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.cw = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cx = add i64 %.sroa.0.0.i136.lcssa, %i.ce
  br label %bb.y

bb.ae:                                            ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cj
  store i64 %.sroa.014.1, ptr %i.cy, align 8
  br i1 %.not, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cz = sub i64 %i.bl, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cz, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0267
  br i1 %.not131, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.aj, %bb.ae
  %.not.i144 = icmp slt i64 %i.bn, %i.ba
  %or.cond191 = select i1 %i.bp, i1 true, i1 %.not.i144
  br i1 %or.cond191, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %.lr.ph265

bb.ai:                                            ; preds = %bb.ag
  %i.da = sub i64 %i.h, %i.cz                     ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.k
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.da
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5
  %i.de = add i64 %i.dd, %.sroa.014.1
  %.not132 = icmp ult i64 %i.de, %.sroa.025.0
  br i1 %.not132, label %bb.ah, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.df = sub i64 %i.aq, %.sroa.014.1
  %i.dg = sub i64 %i.ar, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.am:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bd, %.sroa.048.0267
  %.pre319 = add i64 %i.ac, %i.bd                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.ao

bb.an:                                            ; preds = %._crit_edge312, %bb.ar
  %.pre-phi318 = phi i64 [ %.pre317, %._crit_edge312 ], [ %i.dk, %bb.ar ] ; 3 uses
  %i.dh = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.dh, label %bb.aw, label %bb.ax

._crit_edge:                                      ; preds = %bb.am, %bb.ar
  %i.di = icmp ult i64 %.pre319, %i.k
  br i1 %i.di, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.dj = icmp ult i64 %.pre319, %i.k
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dk = add i64 %i.i, %i.bd                     ; 4 uses
  %i.dl = icmp ult i64 %i.dk, %i.k
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dk
  %i.dp = load i64, ptr %i.do, align 8, !noundef !5
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.an, label %._crit_edge

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.at:                                            ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !5
  %i.dt = add i64 %i.ds, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.dz, %bb.aw ], [ %i.dt, %bb.at ] ; 6 uses
  %i.du = sub i64 %.sroa.04.0, %i.bd              ; 3 uses
  %i.dv = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dv, i1 false
  %i.dw = icmp ult i64 %i.du, %i.d
  %i.dx = and i1 %i.c, %.sroa.051.0
  %or.cond188 = select i1 %i.dx, i1 %i.dw, i1 false
  br i1 %or.cond188, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5
  br label %bb.av

bb.ax:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.em, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.ea = add i64 %i.bd, %i.h                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.k
  br i1 %i.eb, label %bb.be, label %bb.bf

bb.az:                                            ; preds = %bb.av
  %i.ec = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.ed = add i64 %i.du, %5                       ; 2 uses
  %i.ee = sub i64 %3, %i.ec
  %i.ef = sub i64 %6, %i.ed
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ee) ; 3 uses
  %.not269 = icmp eq i64 %..i150, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %invariant.op = sub i64 %i.ed, %i.ae            ; 2 uses
  %invariant.op247 = sub i64 %i.ec, %i.ak         ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bd
  %.sroa.0.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.el, %bb.bd ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i245, %invariant.op ; 2 uses
  %i.eg = icmp ult i64 %.reass, %i.ag
  br i1 %i.eg, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !3002
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.ba
  %.reass248 = add nuw i64 %.sroa.0.0.i245, %invariant.op247 ; 2 uses
  %i.eh = icmp ult i64 %.reass248, %i.am
  br i1 %i.eh, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %umax309 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op247)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax309, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !3003
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass248
  %.val141 = load i32, ptr %i.ei, align 4, !noundef !5
  %.val142 = load i32, ptr %i.ej, align 4, !noundef !5
  %i.ek = icmp eq i32 %.val141, %.val142
  br i1 %i.ek, label %bb.bd, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.bd:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138
  %i.el = add nuw i64 %.sroa.0.0.i245, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %..i150
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.ba

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bd, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %..i150, %bb.bd ], [ %.sroa.0.0.i245, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.em = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.be:                                            ; preds = %bb.ay
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ea
  store i64 %.sroa.04.1, ptr %i.en, align 8
  br i1 %.not, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.bg:                                            ; preds = %bb.bh, %bb.bj, %bb.be
  %.not.i143 = icmp slt i64 %i.bf, %i.ba
  %or.cond189 = select i1 %i.bh, i1 true, i1 %.not.i143
  br i1 %or.cond189, label %.lr.ph265.preheader, label %.lr.ph252

.lr.ph265.preheader:                              ; preds = %.lr.ph252, %bb.bg
  br label %.lr.ph265

bb.bh:                                            ; preds = %bb.be
  %i.eo = sub i64 %i.bd, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.eo, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0267
  br i1 %.not134.not, label %bb.bi, label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.ep = sub i64 %i.q, %i.eo                     ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.t
  br i1 %i.eq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ep
  %i.es = load i64, ptr %i.er, align 8, !noundef !5
  %i.et = add i64 %i.es, %.sroa.04.1
  %.not135 = icmp ult i64 %i.et, %.sroa.025.0
  br i1 %.not135, label %bb.bg, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ep, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.eu = add i64 %.sroa.04.0, %2
  %i.ev = add i64 %i.du, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bl, %bb.al
  %.sink401 = phi i64 [ %i.df, %bb.al ], [ %i.eu, %bb.bl ]
  %.sink399 = phi i64 [ %i.dg, %bb.al ], [ %i.ev, %bb.bl ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink401, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink399, ptr %i.ex, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph311, label %bb.h, !prof !11

.lr.ph311:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ac = add i64 %i.h, -1
  %i.ad = load i64, ptr %4, align 8, !range !7
  %i.ae = trunc nuw i64 %i.ad to i1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 6 uses
  %i.aj = load i64, ptr %1, align 8, !range !7
  %.fr312 = freeze i64 %i.aj
  %i.ak = trunc i64 %.fr312 to i1                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 8 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin379 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin379
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph311, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread
  %.sroa.048.0310 = phi i64 [ 0, %.lr.ph311 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0310, 1          ; 2 uses
  br i1 %.not.i, label %.lr.ph273.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 2 uses
  %i.av = icmp eq i64 %i.au, %9
  br i1 %i.av, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.aw = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i32 %i.aw, %10
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph273.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.az = icmp sgt i64 %i.au, %9
  br i1 %i.az, label %.split._crit_edge, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %i.ba = sub nsw i64 0, %.sroa.048.0310          ; 6 uses
  br label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %bb.bm
  %.sroa.7.0272 = phi i64 [ %i.bf, %bb.bm ], [ %.sroa.048.0310, %.lr.ph273.preheader ]
  %not..sroa.11177.0271 = phi i64 [ 1, %bb.bm ], [ 0, %.lr.ph273.preheader ]
  %i.bb = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0272, i64 %not..sroa.11177.0271) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 10 uses
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0       ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  %i.bh = or i1 %i.bc, %i.bg
  %.not3.i.not = icmp slt i64 %i.bd, %i.ba
  %or.cond205 = select i1 %i.bc, i1 true, i1 %.not3.i.not
  br i1 %or.cond205, label %.lr.ph308.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph273
  %i.bi = icmp eq i64 %i.bd, %i.ba
  br i1 %i.bi, label %._crit_edge380, label %bb.ap

._crit_edge380:                                   ; preds = %bb.k
  %.pre385 = add i64 %i.i, %i.bd
  br label %bb.aq

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %bb.ak
  %not..sroa.14186.0307 = phi i64 [ 1, %bb.ak ], [ 0, %.lr.ph308.preheader ]
  %.sroa.7185.0306 = phi i64 [ %i.bn, %bb.ak ], [ %.sroa.048.0310, %.lr.ph308.preheader ]
  %i.bj = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7185.0306, i64 %not..sroa.14186.0307) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1       ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bj, 0       ; 10 uses
  %i.bm = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bl, i64 -1) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bm, 1
  %i.bp = or i1 %i.bk, %i.bo
  %.not3.i139.not = icmp slt i64 %i.bl, %i.ba
  %or.cond207 = select i1 %i.bk, i1 true, i1 %.not3.i139.not
  br i1 %or.cond207, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph308
  %i.bq = icmp eq i64 %i.bl, %i.ba
  br i1 %i.bq, label %._crit_edge382.a, label %bb.m

._crit_edge382.a:                                 ; preds = %bb.l
  %.pre = add i64 %i.r, %i.bl
  br label %bb.n

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread: ; preds = %bb.ak, %.lr.ph308
  %exitcond379.not = icmp eq i64 %i.as, %15
  br i1 %exitcond379.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bl, %.sroa.048.0310
  %.pre383 = add i64 %i.ap, %i.bl                 ; 6 uses
  br i1 %.not130, label %._crit_edge381, label %bb.o

bb.n:                                             ; preds = %._crit_edge382.a, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge382.a ], [ %i.bu, %bb.r ] ; 3 uses
  %i.br = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.br, label %bb.w, label %bb.x

._crit_edge381:                                   ; preds = %bb.m, %bb.r
  %i.bs = icmp ult i64 %.pre383, %i.t
  br i1 %i.bs, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bt = icmp ult i64 %.pre383, %i.t
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = add i64 %i.r, %i.bl                     ; 4 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre383, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre383
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = icmp ult i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.n, label %._crit_edge381

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.t:                                             ; preds = %._crit_edge381
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre383
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5
  %i.cd = add i64 %i.cc, 1
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge381
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre383, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.014.0 = phi i64 [ %i.ci, %bb.w ], [ %i.cd, %bb.t ] ; 5 uses
  %i.ce = sub i64 %.sroa.014.0, %i.bl             ; 4 uses
  %i.cf = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cg = icmp ult i64 %i.ce, %.sroa.037.0
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  br label %bb.v

bb.x:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.y:                                             ; preds = %bb.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.ef, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %i.ce, %bb.v ]
  %.sroa.014.1 = phi i64 [ %i.ee, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.014.0, %bb.v ] ; 3 uses
  %i.cj = add i64 %i.bl, %i.q                     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.t
  br i1 %i.ck, label %bb.ah, label %bb.ai

bb.z:                                             ; preds = %bb.v
  %i.cl = sub i64 %i.aq, %.sroa.014.0             ; 4 uses
  %i.cm = sub i64 %i.ar, %i.ce                    ; 4 uses
  %i.cn = sub i64 %i.cl, %2
  %i.co = sub i64 %i.cm, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cn) ; 7 uses
  %.not314 = icmp eq i64 %..i, 0
  br i1 %.not314, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.z
  br i1 %i.ae, label %.lr.ph276.split.us, label %.lr.ph276.split

.lr.ph276.split.us:                               ; preds = %.lr.ph276, %bb.ae
  %.sroa.0.0.i136275.us = phi i64 [ %i.de, %bb.ae ], [ 0, %.lr.ph276 ] ; 4 uses
  %i.cp = xor i64 %.sroa.0.0.i136275.us, -1       ; 2 uses
  %i.cq = add i64 %i.cm, %i.cp                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.ag
  br i1 %i.cr, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us: ; preds = %.lr.ph276.split.us
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.cq ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 16
  %.sroa.0.1.i.i.us = load ptr, ptr %i.ct, align 8, !noalias !3030, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.us = load i64, ptr %i.cu, align 8, !noalias !3030, !noundef !5 ; 2 uses
  %i.cv = add i64 %i.cl, %i.cp                    ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %i.am               ; 2 uses
  br i1 %i.ak, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us
  br i1 %i.cw, label %bb.ab, label %.split283.us

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cv ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us

bb.ac:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us
  br i1 %i.cw, label %bb.ad, label %.split283.us

bb.ad:                                            ; preds = %bb.ac
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.cv ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = getelementptr i8, ptr %i.cz, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us: ; preds = %bb.ad, %bb.ab
  %.sroa.5.1.i.in.i144.us = phi ptr [ %i.db, %bb.ad ], [ %i.cy, %bb.ab ]
  %.sroa.0.1.i.in.i145.us = phi ptr [ %i.da, %bb.ad ], [ %i.cx, %bb.ab ]
  %.sroa.5.1.i.i147.us = load i64, ptr %.sroa.5.1.i.in.i144.us, align 8, !noalias !3031, !noundef !5
  %i.dc = icmp eq i64 %.sroa.5.1.i.i.us, %.sroa.5.1.i.i147.us
  br i1 %i.dc, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us
  %.sroa.0.1.i.i146.us = load ptr, ptr %.sroa.0.1.i.in.i145.us, align 8, !noalias !3031, !nonnull !5, !noundef !5
  %bcmp.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i146.us, i64 %.sroa.5.1.i.i.us), !alias.scope !3032
  %i.dd = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.dd, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us
  %i.de = add nuw i64 %.sroa.0.0.i136275.us, 1    ; 2 uses
  %exitcond378.not = icmp eq i64 %i.de, %..i
  br i1 %exitcond378.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.us

.lr.ph276.split:                                  ; preds = %.lr.ph276
  br i1 %i.ak, label %.lr.ph276.split.split.us, label %.lr.ph276.split.split

.lr.ph276.split.split.us:                         ; preds = %.lr.ph276.split, %bb.af
  %.sroa.0.0.i136275.us287 = phi i64 [ %i.dr, %bb.af ], [ 0, %.lr.ph276.split ] ; 4 uses
  %i.df = xor i64 %.sroa.0.0.i136275.us287, -1    ; 2 uses
  %i.dg = add i64 %i.cm, %i.df                    ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.ag
  br i1 %i.dh, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288: ; preds = %.lr.ph276.split.split.us
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.dg ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.0.1.i.i.us289 = load ptr, ptr %i.di, align 8, !noalias !3030, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.us290 = load i64, ptr %i.dj, align 8, !noalias !3030, !noundef !5 ; 2 uses
  %i.dk = add i64 %i.cl, %i.df                    ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.am
  br i1 %i.dl, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291, label %.split283.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.dk ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %.sroa.5.1.i.i147.us294 = load i64, ptr %i.dn, align 8, !noalias !3031, !noundef !5
  %i.do = icmp eq i64 %.sroa.5.1.i.i.us290, %.sroa.5.1.i.i147.us294
  br i1 %i.do, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291
  %i.dp = getelementptr i8, ptr %i.dm, i64 8
  %.sroa.0.1.i.i146.us296 = load ptr, ptr %i.dp, align 8, !noalias !3031, !nonnull !5, !noundef !5
  %bcmp.i.us297 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us289, ptr nonnull readonly %.sroa.0.1.i.i146.us296, i64 %.sroa.5.1.i.i.us290), !alias.scope !3032
  %i.dq = icmp eq i32 %bcmp.i.us297, 0
  br i1 %i.dq, label %bb.af, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.af:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295
  %i.dr = add nuw i64 %.sroa.0.0.i136275.us287, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %i.dr, %..i
  br i1 %exitcond377.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.split.us

.lr.ph276.split.split:                            ; preds = %.lr.ph276.split, %bb.ag
  %.sroa.0.0.i136275 = phi i64 [ %i.ed, %bb.ag ], [ 0, %.lr.ph276.split ] ; 4 uses
  %i.ds = xor i64 %.sroa.0.0.i136275, -1          ; 2 uses
  %i.dt = add i64 %i.cm, %i.ds                    ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ag
  br i1 %i.du, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit: ; preds = %.lr.ph276.split.split
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.dt ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.1.i.i = load ptr, ptr %i.dv, align 8, !noalias !3030, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i = load i64, ptr %i.dw, align 8, !noalias !3030, !noundef !5 ; 2 uses
  %i.dx = add i64 %i.cl, %i.ds                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.am
  br i1 %i.dy, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148, label %.split283.us

.split281.us:                                     ; preds = %.lr.ph276.split.split, %.lr.ph276.split.split.us, %.lr.ph276.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !3033
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.dx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %invariant.gep60.i = getelementptr [16 x i8], ptr %.val8.i.i.i.i.i, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.01.051.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.i, %bb.h ] ; 7 uses
  %i.i = add nuw i64 %.sroa.01.051.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.051.i.i.i.i, %i.g
  br i1 %exitcond.not.i, label %bb.d, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax40.i, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #37, !noalias !6240
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i: ; preds = %bb.c
  %exitcond41.not.i = icmp eq i64 %.sroa.01.051.i.i.i.i, %i.h
  br i1 %exitcond41.not.i, label %bb.e, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #37, !noalias !6241
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.051.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6243)
  %i.j = load ptr, ptr %gep.i, align 8, !alias.scope !6242, !noalias !6244, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6242, !noalias !6244, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6245)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !6245, !noalias !6246, !noundef !5
  %i.o = sub i64 %i.l, %i.n                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6245, !noalias !6246, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6247
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i
  %gep61.i = getelementptr [16 x i8], ptr %invariant.gep60.i, i64 %.sroa.01.051.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !6245, !noalias !6246, !nonnull !5, !noundef !5
  %i.u = load ptr, ptr %gep61.i, align 8, !alias.scope !6243, !noalias !6248, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %gep61.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6243, !noalias !6248, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6249)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6249, !noalias !6250, !noundef !5
  %i.z = sub i64 %i.w, %i.y                       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6249, !noalias !6250, !noundef !5 ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6251
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !6249, !noalias !6250, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.z
  %.val.i.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !6252, !noundef !5
  %.val7.i.i.i.i.i = load i32, ptr %i.ag, align 4, !noalias !6252, !noundef !5
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.ah, label %bb.h, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit

bb.h:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.i, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.051.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit
  %.sroa.0.0.i74473 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit ], [ %.sroa.0.0.i74477, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i74473, %2           ; 3 uses
  %i.aj = add i64 %.sroa.0.0.i74473, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  %i.ak = icmp uge i64 %i.ai, %3
  %i.al = icmp uge i64 %i.aj, %6
  %or.cond.i75 = or i1 %i.ak, %i.al
  br i1 %or.cond.i75, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge, label %.lr.ph.i.i.i.i76

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1645 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1645, align 8
  %.phi.trans.insert1647 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1647, align 8
  %.phi.trans.insert1649 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1649, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit

.lr.ph.i.i.i.i76:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = sub nuw i64 %3, %i.ai                   ; 2 uses
  %i.ar = sub nuw i64 %6, %i.aj                   ; 2 uses
  %.val11.i.i.i.i.i77 = load i64, ptr %i.am, align 8, !alias.scope !6254, !noalias !6253 ; 5 uses
  %.val9.i.i.i.i.i78 = load i64, ptr %i.an, align 8, !alias.scope !6253, !noalias !6254 ; 5 uses
  %.val8.i.i.i.i.i79 = load ptr, ptr %i.ao, align 8, !alias.scope !6253, !noalias !6254 ; 4 uses
  %.val10.i.i.i.i.i80 = load ptr, ptr %i.ap, align 8, !alias.scope !6254, !noalias !6253 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i76
  %i.as = phi i64 [ %3, %.lr.ph.i.i.i.i76 ], [ %i.av, %bb.o ]
  %.sroa.01.049.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i76 ], [ %i.bz, %bb.o ] ; 3 uses
  %i.at = phi i64 [ %6, %.lr.ph.i.i.i.i76 ], [ %i.au, %bb.o ]
  %i.au = add i64 %i.at, -1                       ; 4 uses
  %exitcond.not.i.i.i.i81 = icmp eq i64 %.sroa.01.049.i.i.i.i, %i.aq
  br i1 %exitcond.not.i.i.i.i81, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add i64 %i.as, -1                       ; 4 uses
  %i.aw = icmp ult i64 %i.au, %.val11.i.i.i.i.i77
  br i1 %i.aw, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef range(i64 0, 576460752303423488) %.val11.i.i.i.i.i77, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #37, !noalias !6255
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82: ; preds = %bb.j
  %i.ax = icmp ult i64 %i.av, %.val9.i.i.i.i.i78
  br i1 %i.ax, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i83, label %bb.l

bb.l:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, 576460752303423488) %.val9.i.i.i.i.i78, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #37, !noalias !6256
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i83: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i.i.i.i80, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !6257, !noalias !6259, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !6257, !noalias !6259, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6260)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !6260, !noalias !6261, !noundef !5
  %i.be = sub i64 %i.bb, %i.bd                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !6260, !noalias !6261, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i84, label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i83
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6262
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i84: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit12.i.i.i.i.i83
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.val8.i.i.i.i.i79, i64 %i.av ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !6260, !noalias !6261, !nonnull !5, !noundef !5
  %i.bl = load ptr, ptr %i.bi, align 8, !alias.scope !6258, !noalias !6263, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !6258, !noalias !6263, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6264)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !6264, !noalias !6265, !noundef !5
  %i.bq = sub i64 %i.bn, %i.bp                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !6264, !noalias !6265, !noundef !5 ; 2 uses
  %i.bt = icmp ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85, label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i84
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6266
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit6.i.i.i.i.i84
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.be
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !6264, !noalias !6265, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bq
  %.val.i.i.i.i.i86 = load i32, ptr %i.bu, align 4, !noalias !6267, !noundef !5
  %.val7.i.i.i.i.i87 = load i32, ptr %i.bx, align 4, !noalias !6267, !noundef !5
  %i.by = icmp eq i32 %.val.i.i.i.i.i86, %.val7.i.i.i.i.i87
  br i1 %i.by, label %bb.o, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit

bb.o:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85
  %i.bz = add nuw i64 %.sroa.01.049.i.i.i.i, 1    ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.bz, %i.ar
  br i1 %exitcond102.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit, label %bb.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %bb.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85, %bb.o, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge
  %.val61 = phi i64 [ %.val49.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge ], [ %.val9.i.i.i.i.i78, %bb.o ], [ %.val9.i.i.i.i.i78, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85 ], [ %.val9.i.i.i.i.i78, %bb.i ] ; 22 uses
  %.val60 = phi ptr [ %.val48.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge ], [ %.val8.i.i.i.i.i79, %bb.o ], [ %.val8.i.i.i.i.i79, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85 ], [ %.val8.i.i.i.i.i79, %bb.i ] ; 13 uses
  %.val63 = phi i64 [ %.val51.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge ], [ %.val11.i.i.i.i.i77, %bb.o ], [ %.val11.i.i.i.i.i77, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85 ], [ %.val11.i.i.i.i.i77, %bb.i ] ; 26 uses
  %.val62 = phi ptr [ %.val50.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge ], [ %.val10.i.i.i.i.i80, %bb.o ], [ %.val10.i.i.i.i.i80, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85 ], [ %.val10.i.i.i.i.i80, %bb.i ] ; 14 uses
  %.sroa.0.0.i88 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit_crit_edge ], [ %i.aq, %bb.i ], [ %.sroa.01.049.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i.i.i.i.i85 ], [ %i.ar, %bb.o ] ; 4 uses
  %i.ca = sub i64 %3, %.sroa.0.0.i88              ; 12 uses
  %i.cb = sub i64 %6, %.sroa.0.0.i88              ; 14 uses
  %.not.i98 = icmp eq i32 %10, -1                 ; 19 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %.sroa.7.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %.sroa.52.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.sroa.6.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.sroa.7.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.sroa.52.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.sroa.6.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.sroa.7.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.p

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread474: ; preds = %bb.h, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit
  %.sroa.0.0.i74477 = phi i64 [ %.sroa.01.051.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit ], [ %..i.i.i.i, %bb.h ] ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !6268
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ci, align 8, !alias.scope !6268
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.cj, align 8, !alias.scope !6269
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6269
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6269
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !6269
  %i.ck = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.ck, i64 %.sroa.52.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.ck, i64 %.sroa.6.0.copyload.i, i64 %5
  %i.cl = select i1 %i.ck, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.cl, %.sroa.0.0.i74477
  store i64 1, ptr %i.cj, align 8, !alias.scope !6269
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6269
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6269
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !6269
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit.thread

bb.p:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit
  %.sroa.0426.0 = phi i64 [ %i.aj, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit ], [ %.sroa.0426.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 60 uses
  %.sroa.0.0 = phi i64 [ %i.ai, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 58 uses
  %i.cm = icmp ult i64 %.sroa.0.0, %i.ca          ; 2 uses
  %i.cn = icmp ult i64 %.sroa.0426.0, %i.cb       ; 3 uses
  %or.cond512 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond512, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.p
  br i1 %i.cm, label %bb.au, label %bb.av

bb.r:                                             ; preds = %bb.p
  %i.co = sub nuw i64 %i.ca, %.sroa.0.0           ; 6 uses
  %i.cp = sub nuw i64 %i.cb, %.sroa.0426.0        ; 5 uses
  %i.cq = icmp ult i64 %i.co, 97
  %i.cr = icmp ult i64 %i.cp, 97
  %or.cond.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.co) ; 2 uses
  %..i89 = tail call noundef i64 @llvm.umax.i64(i64 %i.cp, i64 %i.co)
  %i.cs = shl nuw i64 %..i, 1
  %i.ct = icmp slt i64 %..i, 0
  br i1 %i.ct, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.052.0.i = phi i64 [ -1, %bb.t ], [ %i.cs, %bb.s ]
  %i.cu = icmp ult i64 %..i89, %.sroa.052.0.i
  br i1 %i.cu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp ule i64 %i.cp, %i.co
  %.not.i.fr = freeze i1 %.not.i                  ; 3 uses
  %i.cv = icmp ule i64 %i.co, %i.cp               ; 3 uses
  br label %bb.w

.loopexit:                                        ; preds = %.outer.us, %bb.ad, %.split.us1101.4, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1100.4, %.lr.ph.split.split.us.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us1079.us.1, %.split.4, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4
  %.sroa.525.2.i.ph.lcssa821 = phi i64 [ %.sroa.525.0.i1241, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us1079.us.1 ], [ %.sroa.525.0.i1241, %.split.4 ], [ %.sroa.525.0.i1241, %.split.us1101.4 ], [ %.sroa.525.0.i1241, %.lr.ph.split.split.us.split ], [ %.sroa.525.2.i.ph1202.us, %bb.ad ], [ %.sroa.525.0.i1241, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.525.0.i1241, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1100.4 ], [ %.sroa.525.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa810 = phi i64 [ %.sroa.023.0.i1242, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us1079.us.1 ], [ %.sroa.023.0.i1242, %.split.4 ], [ %.sroa.023.0.i1242, %.split.us1101.4 ], [ %.sroa.023.0.i1242, %.lr.ph.split.split.us.split ], [ %.sroa.023.1.i.ph1203.us, %bb.ad ], [ %.sroa.023.0.i1242, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.023.0.i1242, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1100.4 ], [ %.sroa.023.2.i.us, %.outer.us ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa799 = phi i64 [ %.sroa.9.0.i1243, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us1079.us.1 ], [ %.sroa.9.0.i1243, %.split.4 ], [ %.sroa.9.0.i1243, %.split.us1101.4 ], [ %.sroa.9.0.i1243, %.lr.ph.split.split.us.split ], [ %.sroa.9.2.i.ph1204.us, %bb.ad ], [ %.sroa.9.0.i1243, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.9.0.i1243, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1100.4 ], [ %.sroa.9.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa788 = phi i64 [ %.sroa.12.0.i1244, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us1079.us.1 ], [ %.sroa.12.0.i1244, %.split.4 ], [ %.sroa.12.0.i1244, %.split.us1101.4 ], [ %.sroa.12.0.i1244, %.lr.ph.split.split.us.split ], [ %.sroa.12.2.i.ph1205.us, %bb.ad ], [ %.sroa.12.0.i1244, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.12.0.i1244, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1100.4 ], [ %.sroa.12.3.i.us, %.outer.us ] ; 2 uses
  %indvars.iv.next1634 = add i64 %indvars.iv1633, -1
  %exitcond1643 = icmp eq i64 %i.cw, 5
  br i1 %exitcond1643, label %bb.am, label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %indvars.iv1633 = phi i64 [ %i.co, %bb.v ], [ %indvars.iv.next1634, %.loopexit ] ; 2 uses
  %.sroa.12.0.i1244 = phi i64 [ undef, %bb.v ], [ %.sroa.12.2.i.ph.lcssa788, %.loopexit ] ; 7 uses
  %.sroa.9.0.i1243 = phi i64 [ undef, %bb.v ], [ %.sroa.9.2.i.ph.lcssa799, %.loopexit ] ; 7 uses
  %.sroa.023.0.i1242 = phi i64 [ 0, %bb.v ], [ %.sroa.023.1.i.ph.lcssa810, %.loopexit ] ; 7 uses
  %.sroa.525.0.i1241 = phi i64 [ undef, %bb.v ], [ %.sroa.525.2.i.ph.lcssa821, %.loopexit ] ; 7 uses
  %.sroa.0460.01240 = phi i64 [ 0, %bb.v ], [ %i.cw, %.loopexit ] ; 10 uses
  %i.cw = add nuw nsw i64 %.sroa.0460.01240, 1    ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0460.01240, 0        ; 3 uses
  %i.cy = add i64 %.sroa.0460.01240, %.sroa.0.0   ; 5 uses
  %i.cz = icmp ult i64 %i.cy, %.val61
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.cy ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %.fr = freeze i1 %i.cz
  %i.dc = sub i64 %i.ca, %i.cy
  br i1 %.fr, label %.lr.ph.us, label %.split1206

.lr.ph.us:                                        ; preds = %bb.w, %.outer.us
  %.sroa.12.2.i.ph1205.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i1244, %bb.w ] ; 7 uses
  %.sroa.9.2.i.ph1204.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i1243, %bb.w ] ; 7 uses
  %.sroa.023.1.i.ph1203.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i1242, %bb.w ] ; 4 uses
  %.sroa.525.2.i.ph1202.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i1241, %bb.w ] ; 7 uses
  %.sroa.0462.0.ph1201.us = phi i64 [ %i.df, %.outer.us ], [ 0, %bb.w ] ; 2 uses
  %i.dd = add i64 %.sroa.0426.0, %.sroa.0462.0.ph1201.us ; 2 uses
  %i.de = sub i64 %i.cb, %i.dd
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.us
  %indvars.iv1635 = phi i64 [ %indvars.iv.next1636, %bb.ad ], [ %i.de, %.lr.ph.us ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ %i.dd, %.lr.ph.us ] ; 2 uses
  %.sroa.0462.0912.us.us = phi i64 [ %i.df, %bb.ad ], [ %.sroa.0462.0.ph1201.us, %.lr.ph.us ] ; 10 uses
  %i.df = add i64 %.sroa.0462.0912.us.us, 1       ; 2 uses
  br i1 %.not.i98, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !6270 ; 2 uses
  %i.dh = extractvalue { i64, i32 } %i.dg, 0      ; 2 uses
  %i.di = icmp eq i64 %i.dh, %9
  br i1 %i.di, label %.split.us.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.us: ; preds = %bb.y
  %i.dj = icmp sgt i64 %i.dh, %9
  br i1 %i.dj, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us

.split.us.us:                                     ; preds = %bb.y
  %i.dk = extractvalue { i64, i32 } %i.dg, 1      ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 1000000000
  tail call void @llvm.assume(i1 %i.dl), !noalias !6270
  %i.dm = icmp samesign ugt i32 %i.dk, %10
  br i1 %i.dm, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us: ; preds = %.split.us.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.us, %bb.x
  %i.dn = icmp eq i64 %.sroa.0462.0912.us.us, 0   ; 2 uses
  %i.do = or i64 %.sroa.0462.0912.us.us, %.sroa.0460.01240
  %or.cond2.i.us.us = icmp eq i64 %i.do, 0
  br i1 %or.cond2.i.us.us, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us
  br i1 %i.cx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.dn
  br i1 %brmerge.i.not.us.us, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %or.cond3.old.i.us.us = or i1 %i.cv, %i.dn
  br i1 %or.cond3.old.i.us.us, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dp = add i64 %.sroa.0462.0912.us.us, %.sroa.0426.0 ; 5 uses
  %i.dq = icmp ult i64 %i.dp, %.val63
  br i1 %i.dq, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us, label %.split921

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.dp ; 2 uses
  %.val56.us.us = load ptr, ptr %i.dr, align 8, !alias.scope !6271, !noalias !6272, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.val57.us.us = load i64, ptr %i.ds, align 8, !alias.scope !6271, !noalias !6272, !noundef !5
  %.val58.us.us = load ptr, ptr %i.da, align 8    ; 4 uses
  %.val59.us.us = load i64, ptr %i.db, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6273)
  %i.dt = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !6273, !noalias !6274, !noundef !5
  %i.dv = sub i64 %.val57.us.us, %i.du            ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !6273, !noalias !6274, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit1.i.us.us, label %.split924.us

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit1.i.us.us: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !6273, !noalias !6274, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6275)
  %i.eb = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !6275, !noalias !6276, !noundef !5
  %i.ed = sub i64 %.val59.us.us, %i.ec            ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !6275, !noalias !6276, !noundef !5 ; 2 uses
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.us.us, label %.split928.us

_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.us.us: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit1.i.us.us
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dv
  %i.ei = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !6275, !noalias !6276, !nonnull !5, !noundef !5
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ed
  %.val.i.us.us = load i32, ptr %i.eh, align 4, !noundef !5
  %.val2.i.us.us = load i32, ptr %i.ek, align 4, !noundef !5
  %.not514.us.us = icmp eq i32 %.val.i.us.us, %.val2.i.us.us
  br i1 %.not514.us.us, label %.split932.us.us, label %bb.ad

bb.ad:                                            ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.us.us, %bb.ab, %bb.aa, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us
  %exitcond = icmp eq i64 %.sroa.0462.0912.us.us, 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next1636 = add i64 %indvars.iv1635, -1
  br i1 %exitcond, label %.loopexit, label %bb.x

.split932.us.us:                                  ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.us.us
  %i.el = sub i64 %i.cb, %i.dp
  %..i100.us = tail call noundef i64 @llvm.umin.i64(i64 %i.el, i64 %i.dc)
  %.not1251 = icmp eq i64 %..i100.us, 0
  br i1 %.not1251, label %.outer.us, label %.lr.ph1198.us.preheader

.lr.ph1198.us.preheader:                          ; preds = %.split932.us.us
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv1633, i64 %indvars.iv1635) ; 2 uses
  br label %.lr.ph1198.us

.lr.ph1198.us:                                    ; preds = %.lr.ph1198.us.preheader, %bb.af
  %.sroa.01.0.i1197.us = phi i64 [ %i.fv, %bb.af ], [ 0, %.lr.ph1198.us.preheader ] ; 5 uses
  %i.em = and i64 %.sroa.01.0.i1197.us, 1023
  %i.en = icmp ne i64 %i.em, 0
  %brmerge.us = or i1 %.not.i98, %i.en
  br i1 %brmerge.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.thread.us, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1198.us
  %i.eo = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !6270 ; 2 uses
  %i.ep = extractvalue { i64, i32 } %i.eo, 0      ; 2 uses
  %i.eq = icmp eq i64 %i.ep, %9
  br i1 %i.eq, label %.split489.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.us: ; preds = %bb.ae
  %i.er = icmp sgt i64 %i.ep, %9
  br i1 %i.er, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.thread.us

.split489.us:                                     ; preds = %bb.ae
  %i.es = extractvalue { i64, i32 } %i.eo, 1      ; 2 uses
  %i.et = icmp ult i32 %i.es, 1000000000
  tail call void @llvm.assume(i1 %i.et), !noalias !6270
  %i.eu = icmp samesign ugt i32 %i.es, %10
  br i1 %i.eu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1H_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2y_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.thread.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.thread.us: ; preds = %.split489.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit103.us, %.lr.ph1198.us
  %i.ev = add nuw i64 %.sroa.01.0.i1197.us, %i.dp ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
.split42.us.i338:                                 ; preds = %.noexc315.us.i327
  %i.ajc = extractvalue { i64, i32 } %i.aiy, 1    ; 2 uses
  %i.ajd = icmp ult i32 %i.ajc, 1000000000
  tail call void @llvm.assume(i1 %i.ajd)
  %i.aje = icmp samesign ugt i32 %i.ajc, %10
  br i1 %i.aje, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329: ; preds = %.split42.us.i338, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.us.i328, %.lr.ph.split.us.i322
  %i.ajf = add i64 %i.aiv, %.sroa.0426.0          ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.ajg = icmp ult i64 %i.ajf, %.val63
  br i1 %i.ajg, label %bb.ft, label %.invoke1759.i213

bb.ft:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  %i.ajh = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.ajf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6385)
  %i.aji = load ptr, ptr %i.ajh, align 8, !alias.scope !6384, !noalias !6386, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajk = load i64, ptr %i.ajj, align 8, !alias.scope !6384, !noalias !6386, !noundef !5
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajm = load i64, ptr %i.ajl, align 8, !alias.scope !6387, !noalias !6388, !noundef !5
  %i.ajn = sub i64 %i.ajk, %i.ajm                 ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajp = load i64, ptr %i.ajo, align 8, !alias.scope !6387, !noalias !6388, !noundef !5 ; 2 uses
  %i.ajq = icmp ult i64 %i.ajn, %i.ajp
  br i1 %i.ajq, label %.noexc.us.i330, label %.invoke1759.i213

.noexc.us.i330:                                   ; preds = %bb.ft
  %i.ajr = load ptr, ptr %i.ait, align 8, !alias.scope !6385, !noalias !6389, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ajs = load i64, ptr %i.aiu, align 8, !alias.scope !6385, !noalias !6389, !noundef !5
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.aju = load i64, ptr %i.ajt, align 8, !alias.scope !6390, !noalias !6391, !noundef !5
  %i.ajv = sub i64 %i.ajs, %i.aju                 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.ajx = load i64, ptr %i.ajw, align 8, !alias.scope !6390, !noalias !6391, !noundef !5 ; 2 uses
  %i.ajy = icmp ult i64 %i.ajv, %i.ajx
  br i1 %i.ajy, label %bb.fu, label %.invoke1759.i213

bb.fu:                                            ; preds = %.noexc.us.i330
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8, !alias.scope !6387, !noalias !6388, !nonnull !5, !noundef !5
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.ajn
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.akd = load ptr, ptr %i.akc, align 8, !alias.scope !6390, !noalias !6391, !nonnull !5, !noundef !5
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.ajv
  %.val231.us.i331 = load i32, ptr %i.akb, align 4, !noundef !5
  %.val232.us.i332 = load i32, ptr %i.ake, align 4, !noundef !5
  %i.akf = icmp eq i32 %.val231.us.i331, %.val232.us.i332
  br i1 %i.akf, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.akg = add i64 %i.aiv, %i.aiq                 ; 3 uses
  %i.akh = icmp ult i64 %i.akg, %i.yb
  br i1 %i.akh, label %bb.fw, label %.invoke1757.i

bb.fw:                                            ; preds = %bb.fv
  %i.aki = add i64 %.sroa.0105.0658.us.i323, %i.aip ; 3 uses
  %i.akj = icmp ult i64 %i.aki, %i.yb
  br i1 %i.akj, label %bb.fx, label %.split680.us.invoke.i222

bb.fx:                                            ; preds = %bb.fw
  %i.akk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.akg
  %i.akl = load i8, ptr %i.akk, align 1, !noundef !5
  %i.akm = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.aki
  %i.akn = load i8, ptr %i.akm, align 1, !noundef !5
  %..i.us.i333 = tail call noundef i8 @llvm.umax.i8(i8 %i.akn, i8 %i.akl)
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fu
  %i.ako = add i64 %.sroa.0105.0658.us.i323, %i.aiq ; 3 uses
  %i.akp = icmp ult i64 %i.ako, %i.yb
  br i1 %i.akp, label %bb.fz, label %.invoke1757.i

bb.fz:                                            ; preds = %bb.fy
  %i.akq = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.ako
  %i.akr = load i8, ptr %i.akq, align 1, !noundef !5
  %i.aks = add i8 %i.akr, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fx
  %.sroa.04.0.us.i334 = phi i8 [ %i.aks, %bb.fz ], [ %..i.us.i333, %bb.fx ]
  %i.akt = add i64 %i.aiv, %i.aip                 ; 3 uses
  %i.aku = icmp ult i64 %i.akt, %i.yb
  br i1 %i.aku, label %bb.gb, label %.split680.us.invoke.i222

bb.gb:                                            ; preds = %bb.ga
  %i.akv = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.akt
  store i8 %.sroa.04.0.us.i334, ptr %i.akv, align 1
  %.not168.us.i335 = icmp eq i64 %i.aiv, 0
  br i1 %.not168.us.i335, label %..loopexit66_crit_edge.split.us.i336, label %.lr.ph.split.us.i322

.loopexit.split-lp.loopexit.split.us.i325:        ; preds = %bb.fs
  %lpad.loopexit67.us.i326 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i169

..loopexit66_crit_edge.split.us.i336:             ; preds = %bb.gb
  %.not.i337 = icmp eq i64 %i.yh, 0
  br i1 %.not.i337, label %.lr.ph718.i198, label %.lr.ph694.split.i306

.lr.ph.split.i314:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit256.thread.i312
  %i.akw = and i64 %i.jw, 1023
  %i.akx = icmp ne i64 %i.akw, 1
  %brmerge48.i315 = or i1 %.not.i98, %i.akx
  br i1 %brmerge48.i315, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.split.i314
  %i.aky = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc315.i318 unwind label %.loopexit.split-lp.loopexit.split.i316 ; 2 uses

.noexc315.i318:                                   ; preds = %bb.gc
  %i.akz = extractvalue { i64, i32 } %i.aky, 0    ; 2 uses
  %i.ala = icmp eq i64 %i.akz, %9
  br i1 %i.ala, label %.split42.i321, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319

.split42.i321:                                    ; preds = %.noexc315.i318
  %i.alb = extractvalue { i64, i32 } %i.aky, 1    ; 2 uses
  %i.alc = icmp ult i32 %i.alb, 1000000000
  tail call void @llvm.assume(i1 %i.alc)
  %i.ald = icmp samesign ugt i32 %i.alb, %10
  br i1 %i.ald, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319: ; preds = %.noexc315.i318
  %i.ale = icmp sgt i64 %i.akz, %9
  br i1 %i.ale, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319, %.split42.i321, %.lr.ph.split.i314
  %i.alf = add i64 %i.cb, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.alg = icmp ult i64 %i.alf, %.val63
  br i1 %i.alg, label %bb.gd, label %.invoke1759.i213

bb.gd:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1759.i213

.split680.us.invoke.i222:                         ; preds = %bb.ga, %bb.fw, %bb.ek, %bb.ei, %bb.fh, %bb.ff, %bb.es, %bb.eu, %bb.fp
  %i.alh = phi i64 [ %i.aat, %bb.ei ], [ %i.afz, %bb.fh ], [ %i.aie, %bb.fp ], [ %i.adg, %bb.es ], [ %i.yb, %bb.eu ], [ %i.afr, %bb.ff ], [ %i.abg, %bb.ek ], [ %i.aki, %bb.fw ], [ %i.akt, %bb.ga ]
  %i.ali = phi ptr [ @77, %bb.ei ], [ @89, %bb.fh ], [ @93, %bb.fp ], [ @82, %bb.es ], [ @84, %bb.eu ], [ @87, %bb.ff ], [ @79, %bb.ek ], [ @97, %bb.fw ], [ @99, %bb.ga ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alh, i64 noundef %i.yb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ali) #38
          to label %.split680.us.cont.i225 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i223

.split680.us.cont.i225:                           ; preds = %.split680.us.invoke.i222
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread506: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit289.i234, %.split34.i254, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i, %.split32.i275, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit309.i294, %.split36.i302, %.loopexit62.i303
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yg, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i195, %bb.ea, %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yg, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit145.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i155, %.loopexit62.i303, %.split.i341, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit62.i, %.split.i, %.split495, %bb.bb, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit145, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit258.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread506
  %.val68 = load ptr, ptr %i.ce, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cf, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cc, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cd, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  %i.alj = sub nuw i64 %i.ca, %.sroa.0.0          ; 8 uses
  %i.alk = sub nuw i64 %i.cb, %.sroa.0426.0       ; 5 uses
  %i.all = sub i64 %i.alj, %i.alk                 ; 3 uses
  %i.alm = and i64 %i.all, 1
  %.not.i342 = icmp eq i64 %i.alm, 0              ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.alo = load i64, ptr %i.aln, align 8, !alias.scope !6392, !noalias !6394, !noundef !5 ; 4 uses
  %i.alp = add i64 %i.alo, 1                      ; 5 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.alr = load i64, ptr %i.alq, align 8, !alias.scope !6392, !noalias !6394, !noundef !5 ; 16 uses
  %i.als = icmp ult i64 %i.alp, %i.alr
  br i1 %i.als, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.alt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !alias.scope !6392, !noalias !6394, !nonnull !5, !noundef !5 ; 7 uses
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.alp
  store i64 0, ptr %i.alv, align 8, !noalias !6395
  %i.alw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.alx = load i64, ptr %i.alw, align 8, !alias.scope !6393, !noalias !6396, !noundef !5 ; 4 uses
  %i.aly = add i64 %i.alx, 1                      ; 5 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ama = load i64, ptr %i.alz, align 8, !alias.scope !6393, !noalias !6396, !noundef !5 ; 16 uses
  %i.amb = icmp ult i64 %i.aly, %i.ama
  br i1 %i.amb, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alp, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !6395
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.amc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8, !alias.scope !6393, !noalias !6396, !nonnull !5, !noundef !5 ; 7 uses
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.aly
  store i64 0, ptr %i.ame, align 8, !noalias !6395
  %i.amf = add i64 %i.alj, %i.alk                 ; 2 uses
  %i.amg = lshr i64 %i.amf, 1                     ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.amf, %i.amg     ; 2 uses
  %i.amh = icmp ult i64 %i.alr, 1152921504606846976
  tail call void @llvm.assume(i1 %i.amh)
  %.not128.not.i = icmp ugt i64 %i.alr, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gj, label %bb.gi, !prof !11

bb.gh:                                            ; preds = %bb.ge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aly, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !6395
  unreachable

bb.gi:                                            ; preds = %bb.gg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !6395
  unreachable

bb.gj:                                            ; preds = %bb.gg
  %i.ami = icmp ult i64 %i.ama, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ami)
  %.not129.not.i = icmp samesign ugt i64 %i.ama, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph134.i, label %bb.gk, !prof !11

.lr.ph134.i:                                      ; preds = %bb.gj
  %i.amj = add i64 %i.alo, -1
  %i.amk = add i64 %i.alx, -1
  %.neg = add i64 %i.ca, 1
  %.neg517 = add i64 %.neg, %i.cb
  %11 = add i64 %.sroa.0426.0, %.sroa.0.0
  %12 = add i64 %11, %i.amg
  %13 = sub i64 %.neg517, %12
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !noalias !6395
  unreachable

bb.gl:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, %.lr.ph134.i
  %.sroa.048.0133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.aml, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i ] ; 10 uses
  %i.aml = add nuw i64 %.sroa.048.0133.i, 1       ; 2 uses
  br i1 %.not.i98, label %.lr.ph122.preheader.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amm = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !6395 ; 2 uses
  %i.amn = extractvalue { i64, i32 } %i.amm, 0    ; 2 uses
  %i.amo = icmp eq i64 %i.amn, %9
  br i1 %i.amo, label %.split.i356, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344

.split.i356:                                      ; preds = %bb.gm
  %i.amp = extractvalue { i64, i32 } %i.amm, 1    ; 2 uses
  %i.amq = icmp ult i32 %i.amp, 1000000000
  tail call void @llvm.assume(i1 %i.amq)
  %i.amr = icmp samesign ugt i32 %i.amp, %10
  br i1 %i.amr, label %bb.ir, label %.lr.ph122.preheader.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344: ; preds = %bb.gm
  %i.ams = icmp sgt i64 %i.amn, %9
  br i1 %i.ams, label %bb.ir, label %.lr.ph122.preheader.i

.lr.ph122.preheader.i:                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344, %.split.i356, %bb.gl
  %i.amt = sub nsw i64 0, %.sroa.048.0133.i       ; 6 uses
  %.pre221.i = sub i64 %i.alp, %.sroa.048.0133.i
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.il, %.lr.ph122.preheader.i
  %.sroa.7.0121.i = phi i64 [ %i.amy, %bb.il ], [ %.sroa.048.0133.i, %.lr.ph122.preheader.i ]
  %not..sroa.1118.0120.i = phi i64 [ 1, %bb.il ], [ 0, %.lr.ph122.preheader.i ]
  %i.amu = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0121.i, i64 %not..sroa.1118.0120.i) ; 2 uses
  %i.amv = extractvalue { i64, i1 } %i.amu, 1     ; 2 uses
  %i.amw = extractvalue { i64, i1 } %i.amu, 0     ; 9 uses
  %i.amx = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amw, i64 -1) ; 2 uses
  %i.amy = extractvalue { i64, i1 } %i.amx, 0     ; 2 uses
  %i.amz = extractvalue { i64, i1 } %i.amx, 1
  %i.ana = or i1 %i.amv, %i.amz
  %.not3.i.not.i = icmp slt i64 %i.amw, %i.amt
  %or.cond44.i = select i1 %i.amv, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond44.i, label %.lr.ph131.preheader.i, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph122.i
  %i.anb = icmp eq i64 %i.amw, %i.amt
  br i1 %i.anb, label %._crit_edge216.i, label %bb.hq

.lr.ph131.preheader.i:                            ; preds = %bb.il, %.lr.ph122.i
  %.pre.i349 = sub i64 %i.aly, %.sroa.048.0133.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.hl, %.lr.ph131.preheader.i
  %not..sroa.1427.0130.i = phi i64 [ 1, %bb.hl ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0129.i = phi i64 [ %i.ang, %bb.hl ], [ %.sroa.048.0133.i, %.lr.ph131.preheader.i ]
  %i.anc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0129.i, i64 %not..sroa.1427.0130.i) ; 2 uses
  %i.and = extractvalue { i64, i1 } %i.anc, 1     ; 2 uses
  %i.ane = extractvalue { i64, i1 } %i.anc, 0     ; 9 uses
  %i.anf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ane, i64 -1) ; 2 uses
  %i.ang = extractvalue { i64, i1 } %i.anf, 0     ; 2 uses
  %i.anh = extractvalue { i64, i1 } %i.anf, 1
  %i.ani = or i1 %i.and, %i.anh
  %.not3.i153.not.i = icmp slt i64 %i.ane, %i.amt
  %or.cond46.i = select i1 %i.and, i1 true, i1 %.not3.i153.not.i
  br i1 %or.cond46.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, label %bb.go

bb.go:                                            ; preds = %.lr.ph131.i
  %i.anj = icmp eq i64 %i.ane, %i.amt
  br i1 %i.anj, label %._crit_edge218.i.a, label %bb.gp

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i: ; preds = %bb.hl, %.lr.ph131.i
  %exitcond215.not.i = icmp eq i64 %i.aml, %13
  br i1 %exitcond215.not.i, label %bb.ir, label %bb.gl

bb.gp:                                            ; preds = %bb.go
  %.not130.i = icmp eq i64 %i.ane, %.sroa.048.0133.i
  %.pre219.i = add i64 %i.amk, %i.ane             ; 6 uses
  br i1 %.not130.i, label %._crit_edge217.i.a, label %bb.gq

._crit_edge218.i.a:                               ; preds = %bb.go, %bb.gt
  %.pre-phi.i = phi i64 [ %i.ann, %bb.gt ], [ %.pre.i349, %bb.go ] ; 3 uses
  %i.ank = icmp ult i64 %.pre-phi.i, %i.ama
  br i1 %i.ank, label %bb.gy, label %bb.gz

._crit_edge217.i.a:                               ; preds = %bb.gt, %bb.gp
  %i.anl = icmp ult i64 %.pre219.i, %i.ama
  br i1 %i.anl, label %bb.gv, label %bb.gw

bb.gq:                                            ; preds = %bb.gp
  %i.anm = icmp ult i64 %.pre219.i, %i.ama
  br i1 %i.anm, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ann = add i64 %i.ane, %i.aly                 ; 4 uses
  %i.ano = icmp ult i64 %i.ann, %i.ama
  br i1 %i.ano, label %bb.gt, label %bb.gu

bb.gs:                                            ; preds = %bb.gq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37, !noalias !6395
  unreachable

bb.gt:                                            ; preds = %bb.gr
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %.pre219.i
  %i.anq = load i64, ptr %i.anp, align 8, !noalias !6395, !noundef !5
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.ann
  %i.ans = load i64, ptr %i.anr, align 8, !noalias !6395, !noundef !5
  %i.ant = icmp ult i64 %i.anq, %i.ans
  br i1 %i.ant, label %._crit_edge218.i.a, label %._crit_edge217.i.a

bb.gu:                                            ; preds = %bb.gr
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ann, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37, !noalias !6395
  unreachable

bb.gv:                                            ; preds = %._crit_edge217.i.a
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %.pre219.i
  %i.anv = load i64, ptr %i.anu, align 8, !noalias !6395, !noundef !5
  %i.anw = add i64 %i.anv, 1
  br label %bb.gx

bb.gw:                                            ; preds = %._crit_edge217.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37, !noalias !6395
  unreachable

bb.gx:                                            ; preds = %bb.gy, %bb.gv
  %.sroa.014.0.i = phi i64 [ %i.aob, %bb.gy ], [ %i.anw, %bb.gv ] ; 5 uses
  %i.anx = sub i64 %.sroa.014.0.i, %i.ane         ; 4 uses
  %i.any = icmp ult i64 %.sroa.014.0.i, %i.alj
  %i.anz = icmp ult i64 %i.anx, %i.alk
  %or.cond.i347 = select i1 %i.any, i1 %i.anz, i1 false
  br i1 %or.cond.i347, label %bb.hb, label %bb.ha

bb.gy:                                            ; preds = %._crit_edge218.i.a
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %.pre-phi.i
  %i.aob = load i64, ptr %i.aoa, align 8, !noalias !6395, !noundef !5
  br label %bb.gx

bb.gz:                                            ; preds = %._crit_edge218.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37, !noalias !6395
  unreachable

bb.ha:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.gx
  %.sroa.020.0.i = phi i64 [ %i.apq, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %i.anx, %bb.gx ]
  %.sroa.014.1.i = phi i64 [ %i.app, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.gx ] ; 3 uses
  %i.aoc = add i64 %i.ane, %i.alx                 ; 3 uses
  %i.aod = icmp ult i64 %i.aoc, %i.ama
  br i1 %i.aod, label %bb.hi, label %bb.hj

bb.hb:                                            ; preds = %bb.gx
  %i.aoe = sub i64 %i.ca, %.sroa.014.0.i          ; 2 uses
  %i.aof = sub i64 %i.cb, %i.anx                  ; 2 uses
  %i.aog = sub i64 %i.aoe, %.sroa.0.0
  %i.aoh = sub i64 %i.aof, %.sroa.0426.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aoh, i64 %i.aog) ; 3 uses
  %.not137.i = icmp eq i64 %..i.i, 0
  br i1 %.not137.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %bb.hb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hh, %.lr.ph125.i
  %.sroa.0.0.i136124.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.apo, %bb.hh ] ; 3 uses
  %i.aoi = xor i64 %.sroa.0.0.i136124.i, -1       ; 2 uses
  %i.aoj = add i64 %i.aof, %i.aoi                 ; 3 uses
  %i.aok = icmp ult i64 %i.aoj, %.val71
  br i1 %i.aok, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aoj, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !6397
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i: ; preds = %bb.hc
  %i.aol = add i64 %i.aoe, %i.aoi                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aom = icmp ult i64 %i.aol, %.val69
  br i1 %i.aom, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i, label %bb.he

bb.he:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aol, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !6398
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aoj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6400)
  %i.aoo = load ptr, ptr %i.aon, align 8, !alias.scope !6399, !noalias !6401, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  %i.aoq = load i64, ptr %i.aop, align 8, !alias.scope !6399, !noalias !6401, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoo, i64 24
  %i.aos = load i64, ptr %i.aor, align 8, !alias.scope !6402, !noalias !6403, !noundef !5
  %i.aot = sub i64 %i.aoq, %i.aos                 ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16
  %i.aov = load i64, ptr %i.aou, align 8, !alias.scope !6402, !noalias !6403, !noundef !5 ; 2 uses
  %i.aow = icmp ult i64 %i.aot, %i.aov
  br i1 %i.aow, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i, label %bb.hf

bb.hf:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aot, i64 noundef %i.aov, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6404
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i
  %i.aox = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aol ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !alias.scope !6402, !noalias !6403, !nonnull !5, !noundef !5
  %i.apa = load ptr, ptr %i.aox, align 8, !alias.scope !6400, !noalias !6405, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.apc = load i64, ptr %i.apb, align 8, !alias.scope !6400, !noalias !6405, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6406)
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apa, i64 24
  %i.ape = load i64, ptr %i.apd, align 8, !alias.scope !6406, !noalias !6407, !noundef !5
  %i.apf = sub i64 %i.apc, %i.ape                 ; 3 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apa, i64 16
  %i.aph = load i64, ptr %i.apg, align 8, !alias.scope !6406, !noalias !6407, !noundef !5 ; 2 uses
  %i.api = icmp ult i64 %i.apf, %i.aph
  br i1 %i.api, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i, label %bb.hg

bb.hg:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.apf, i64 noundef %i.aph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6408
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.aot
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.apl = load ptr, ptr %i.apk, align 8, !alias.scope !6406, !noalias !6407, !nonnull !5, !noundef !5
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.apl, i64 %i.apf
  %.val141.i = load i32, ptr %i.apj, align 4, !noalias !6395, !noundef !5
  %.val142.i = load i32, ptr %i.apm, align 4, !noalias !6395, !noundef !5
  %i.apn = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.apn, label %bb.hh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i

bb.hh:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i
  %i.apo = add nuw i64 %.sroa.0.0.i136124.i, 1    ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.apo, %..i.i
  br i1 %exitcond214.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.hc

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.hh, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i, %bb.hb
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.hb ], [ %.sroa.0.0.i136124.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i ], [ %..i.i, %bb.hh ] ; 2 uses
  %i.app = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.apq = add i64 %.sroa.0.0.i136.lcssa.i, %i.anx
  br label %bb.ha

bb.hi:                                            ; preds = %bb.ha
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.aoc
  store i64 %.sroa.014.1.i, ptr %i.apr, align 8, !noalias !6395
  br i1 %.not.i342, label %bb.hk, label %bb.hl

bb.hj:                                            ; preds = %bb.ha
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aoc, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37, !noalias !6395
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.aps = sub i64 %i.ane, %i.all                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.aps, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0133.i
  br i1 %.not131.i, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hn, %bb.hk, %bb.hi
  %.not.i152.i = icmp slt i64 %i.ang, %i.amt
  %or.cond45.i = select i1 %i.ani, i1 true, i1 %.not.i152.i
  br i1 %or.cond45.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, label %.lr.ph131.i

bb.hm:                                            ; preds = %bb.hk
  %i.apt = sub i64 %i.alo, %i.aps                 ; 3 uses
  %i.apu = icmp ult i64 %i.apt, %i.alr
  br i1 %i.apu, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.apt
  %i.apw = load i64, ptr %i.apv, align 8, !noalias !6395, !noundef !5
  %i.apx = add i64 %i.apw, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.apx, %i.alj
end_hunk_3
begin_hunk_4_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !6823, !noalias !6824, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ac ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i

bb.o:                                             ; preds = %bb.l, %bb.k
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6825
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.5.1.i.in.i10.i.i.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %i.al, %bb.m ]
  %.sroa.0.1.i.in.i11.i.i.i.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.5.1.i.i13.i.i.i.i.i = load i64, ptr %.sroa.5.1.i.in.i10.i.i.i.i.i, align 8, !noalias !6826, !noundef !5
  %i.ar = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.i, %.sroa.5.1.i.i13.i.i.i.i.i
  br i1 %i.ar, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i
  %.sroa.0.1.i.i12.i.i.i.i.i = load ptr, ptr %.sroa.0.1.i.in.i11.i.i.i.i.i, align 8, !noalias !6826, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i12.i.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i.i.i), !alias.scope !6827, !noalias !6828
  %i.as = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.as, label %bb.p, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

bb.p:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.i, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread538, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.041.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread538

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread: ; preds = %bb.b, %bb.a, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread538, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit
  %.sroa.0.0.i74537 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit ], [ %.sroa.0.0.i74541, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread538 ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.at = add i64 %.sroa.0.0.i74537, %2           ; 3 uses
  %i.au = add i64 %.sroa.0.0.i74537, %5           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6830)
  %i.av = icmp uge i64 %i.at, %3
  %i.aw = icmp uge i64 %i.au, %6
  %or.cond.i75 = or i1 %i.av, %i.aw
  br i1 %or.cond.i75, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge, label %.lr.ph.i.i.i.i76

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val50.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1571 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51.pre = load i64, ptr %.phi.trans.insert1571, align 8
  %.phi.trans.insert1573 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48.pre = load ptr, ptr %.phi.trans.insert1573, align 8
  %.phi.trans.insert1575 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49.pre = load i64, ptr %.phi.trans.insert1575, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

.lr.ph.i.i.i.i76:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = sub nuw i64 %3, %i.at                   ; 2 uses
  %i.bc = sub nuw i64 %6, %i.au                   ; 2 uses
  %.val8.i.i.i.i.i77 = load i64, ptr %i.ax, align 8, !alias.scope !6830, !noalias !6829 ; 6 uses
  %.val6.i.i.i.i.i78 = load i64, ptr %i.ay, align 8, !alias.scope !6829, !noalias !6830 ; 6 uses
  %.val.i.i.i.i.i79 = load ptr, ptr %i.az, align 8, !alias.scope !6829, !noalias !6830 ; 5 uses
  %.val7.i.i.i.i.i80 = load ptr, ptr %i.ba, align 8, !alias.scope !6830, !noalias !6829 ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.ae, %.lr.ph.i.i.i.i76
  %i.bd = phi i64 [ %3, %.lr.ph.i.i.i.i76 ], [ %i.bg, %bb.ae ]
  %.sroa.01.039.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i76 ], [ %i.cv, %bb.ae ] ; 4 uses
  %i.be = phi i64 [ %6, %.lr.ph.i.i.i.i76 ], [ %i.bf, %bb.ae ]
  %i.bf = add i64 %i.be, -1                       ; 4 uses
  %exitcond.not.i.i.i.i81 = icmp eq i64 %.sroa.01.039.i.i.i.i, %i.bb
  br i1 %exitcond.not.i.i.i.i81, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = add i64 %i.bd, -1                       ; 4 uses
  %i.bh = icmp ult i64 %i.bf, %.val8.i.i.i.i.i77
  br i1 %i.bh, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef range(i64 0, 576460752303423488) %.val8.i.i.i.i.i77, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #37, !noalias !6831
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82: ; preds = %bb.r
  %i.bi = icmp ult i64 %i.bg, %.val6.i.i.i.i.i78
  br i1 %i.bi, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i83, label %bb.t

bb.t:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef range(i64 0, 576460752303423488) %.val6.i.i.i.i.i78, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #37, !noalias !6832
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i83: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i82
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.val7.i.i.i.i.i80, i64 %i.bf ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i79, i64 %i.bg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6834)
  %i.bl = load ptr, ptr %i.bj, align 8, !alias.scope !6833, !noalias !6835, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !6833, !noalias !6835, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6837), !noalias !6838
  %i.bo = load i64, ptr %i.bl, align 8, !range !7, !alias.scope !6839, !noalias !6840, !noundef !5
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !6839, !noalias !6840, !noundef !5
  %i.bs = icmp ult i64 %i.bn, %i.br               ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i83
  br i1 %i.bs, label %bb.x, label %bb.y

bb.v:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i83
  br i1 %i.bs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !6839, !noalias !6840, !nonnull !5, !noundef !5
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bn ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i84

bb.x:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !6839, !noalias !6840, !nonnull !5, !noundef !5
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bn ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i84

bb.y:                                             ; preds = %bb.v, %bb.u
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6841
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i84: ; preds = %bb.x, %bb.w
  %.sroa.5.1.i.in.i.i.i.i.i.i85 = phi ptr [ %i.cb, %bb.x ], [ %i.bw, %bb.w ]
  %.sroa.0.1.i.in.i.i.i.i.i.i86 = phi ptr [ %i.ca, %bb.x ], [ %i.bv, %bb.w ]
  %.sroa.0.1.i.i.i.i.i.i.i87 = load ptr, ptr %.sroa.0.1.i.in.i.i.i.i.i.i86, align 8, !noalias !6842, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.i.i88 = load i64, ptr %.sroa.5.1.i.in.i.i.i.i.i.i85, align 8, !noalias !6842, !noundef !5 ; 2 uses
  %i.cc = load ptr, ptr %i.bk, align 8, !alias.scope !6834, !noalias !6843, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !6834, !noalias !6843, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6845), !noalias !6838
  %i.cf = load i64, ptr %i.cc, align 8, !range !7, !alias.scope !6846, !noalias !6847, !noundef !5
  %i.cg = trunc nuw i64 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !6846, !noalias !6847, !noundef !5
  %i.cj = icmp ult i64 %i.ce, %i.ci               ; 2 uses
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i84
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.aa:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i84
  br i1 %i.cj, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !6846, !noalias !6847, !nonnull !5, !noundef !5
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ce ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89

bb.ac:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !6846, !noalias !6847, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.ce ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89

bb.ad:                                            ; preds = %bb.aa, %bb.z
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6848
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89: ; preds = %bb.ac, %bb.ab
  %.sroa.5.1.i.in.i10.i.i.i.i.i90 = phi ptr [ %i.cs, %bb.ac ], [ %i.cn, %bb.ab ]
  %.sroa.0.1.i.in.i11.i.i.i.i.i91 = phi ptr [ %i.cr, %bb.ac ], [ %i.cm, %bb.ab ]
  %.sroa.5.1.i.i13.i.i.i.i.i92 = load i64, ptr %.sroa.5.1.i.in.i10.i.i.i.i.i90, align 8, !noalias !6849, !noundef !5
  %i.ct = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.i88, %.sroa.5.1.i.i13.i.i.i.i.i92
  br i1 %i.ct, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89
  %.sroa.0.1.i.i12.i.i.i.i.i95 = load ptr, ptr %.sroa.0.1.i.in.i11.i.i.i.i.i91, align 8, !noalias !6849, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i96 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.i87, ptr nonnull readonly %.sroa.0.1.i.i12.i.i.i.i.i95, i64 %.sroa.5.1.i.i.i.i.i.i.i88), !alias.scope !6850, !noalias !6851
  %i.cu = icmp eq i32 %bcmp.i.i.i.i.i.i96, 0
  br i1 %i.cu, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94
  %i.cv = add nuw i64 %.sroa.01.039.i.i.i.i, 1    ; 2 uses
  %exitcond78.not.i.i.i.i = icmp eq i64 %i.cv, %i.bc
  br i1 %exitcond78.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit, label %bb.q

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit: ; preds = %bb.q, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94, %bb.ae, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge
  %.val61 = phi i64 [ %.val49.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge ], [ %.val6.i.i.i.i.i78, %bb.ae ], [ %.val6.i.i.i.i.i78, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val6.i.i.i.i.i78, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89 ], [ %.val6.i.i.i.i.i78, %bb.q ] ; 20 uses
  %.val60 = phi ptr [ %.val48.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge ], [ %.val.i.i.i.i.i79, %bb.ae ], [ %.val.i.i.i.i.i79, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val.i.i.i.i.i79, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89 ], [ %.val.i.i.i.i.i79, %bb.q ] ; 13 uses
  %.val63 = phi i64 [ %.val51.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge ], [ %.val8.i.i.i.i.i77, %bb.ae ], [ %.val8.i.i.i.i.i77, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val8.i.i.i.i.i77, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89 ], [ %.val8.i.i.i.i.i77, %bb.q ] ; 24 uses
  %.val62 = phi ptr [ %.val50.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge ], [ %.val7.i.i.i.i.i80, %bb.ae ], [ %.val7.i.i.i.i.i80, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %.val7.i.i.i.i.i80, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89 ], [ %.val7.i.i.i.i.i80, %bb.q ] ; 14 uses
  %.sroa.0.0.i93 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit_crit_edge ], [ %i.bb, %bb.q ], [ %.sroa.01.039.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit14.i.i.i.i.i89 ], [ %.sroa.01.039.i.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i94 ], [ %i.bc, %bb.ae ] ; 4 uses
  %i.cw = sub i64 %3, %.sroa.0.0.i93              ; 12 uses
  %i.cx = sub i64 %6, %.sroa.0.0.i93              ; 14 uses
  %.not.i106 = icmp eq i32 %10, -1                ; 19 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %.sroa.7.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %.sroa.52.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.sroa.6.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.sroa.7.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.sroa.52.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.sroa.6.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %.sroa.7.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.af

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread538: ; preds = %bb.p, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit
  %.sroa.0.0.i74541 = phi i64 [ %.sroa.01.041.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit ], [ %..i.i.i.i, %bb.p ] ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !6852
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.de, align 8, !alias.scope !6852
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.df, align 8, !alias.scope !6853
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6853
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6853
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !6853
  %i.dg = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.dg, i64 %.sroa.52.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.dg, i64 %.sroa.6.0.copyload.i, i64 %5
  %i.dh = select i1 %i.dg, i64 %.sroa.7.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.dh, %.sroa.0.0.i74541
  store i64 1, ptr %i.df, align 8, !alias.scope !6853
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6853
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6853
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !6853
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread

bb.af:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit
  %.sroa.0490.0 = phi i64 [ %i.au, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit ], [ %.sroa.0490.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 60 uses
  %.sroa.0.0 = phi i64 [ %i.at, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 58 uses
  %i.di = icmp ult i64 %.sroa.0.0, %i.cw          ; 2 uses
  %i.dj = icmp ult i64 %.sroa.0490.0, %i.cx       ; 3 uses
  %or.cond578 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond578, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.af
  br i1 %i.di, label %bb.bz, label %bb.ca

bb.ah:                                            ; preds = %bb.af
  %i.dk = sub nuw i64 %i.cw, %.sroa.0.0           ; 6 uses
  %i.dl = sub nuw i64 %i.cx, %.sroa.0490.0        ; 5 uses
  %i.dm = icmp ult i64 %i.dk, 97
  %i.dn = icmp ult i64 %i.dl, 97
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dk) ; 2 uses
  %..i97 = tail call noundef i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dk)
  %i.do = shl nuw i64 %..i, 1
  %i.dp = icmp slt i64 %..i, 0
  br i1 %i.dp, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.052.0.i = phi i64 [ -1, %bb.aj ], [ %i.do, %bb.ai ]
  %i.dq = icmp ult i64 %..i97, %.sroa.052.0.i
  br i1 %i.dq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i = icmp ule i64 %i.dl, %i.dk
  %.not.i.fr = freeze i1 %.not.i                  ; 3 uses
  %i.dr = icmp ule i64 %i.dk, %i.dl               ; 3 uses
  br label %bb.am

.loopexit:                                        ; preds = %.outer.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us, %.split.us1098.4, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1097.4, %.lr.ph.split.split.us.split, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us1079.us, %.split.4, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4
  %.sroa.525.2.i.ph.lcssa841 = phi i64 [ %.sroa.525.0.i1233, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us1079.us ], [ %.sroa.525.0.i1233, %.split.4 ], [ %.sroa.525.0.i1233, %.split.us1098.4 ], [ %.sroa.525.0.i1233, %.lr.ph.split.split.us.split ], [ %.sroa.525.2.i.ph1202.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.525.0.i1233, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.525.0.i1233, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1097.4 ], [ %.sroa.525.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa830 = phi i64 [ %.sroa.023.0.i1234, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us1079.us ], [ %.sroa.023.0.i1234, %.split.4 ], [ %.sroa.023.0.i1234, %.split.us1098.4 ], [ %.sroa.023.0.i1234, %.lr.ph.split.split.us.split ], [ %.sroa.023.1.i.ph1203.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.023.0.i1234, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.023.0.i1234, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1097.4 ], [ %.sroa.023.2.i.us, %.outer.us ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa819 = phi i64 [ %.sroa.9.0.i1235, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us1079.us ], [ %.sroa.9.0.i1235, %.split.4 ], [ %.sroa.9.0.i1235, %.split.us1098.4 ], [ %.sroa.9.0.i1235, %.lr.ph.split.split.us.split ], [ %.sroa.9.2.i.ph1204.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.9.0.i1235, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.9.0.i1235, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1097.4 ], [ %.sroa.9.3.i.us, %.outer.us ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa808 = phi i64 [ %.sroa.12.0.i1236, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us1079.us ], [ %.sroa.12.0.i1236, %.split.4 ], [ %.sroa.12.0.i1236, %.split.us1098.4 ], [ %.sroa.12.0.i1236, %.lr.ph.split.split.us.split ], [ %.sroa.12.2.i.ph1205.us, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.12.0.i1236, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.4 ], [ %.sroa.12.0.i1236, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us1097.4 ], [ %.sroa.12.3.i.us, %.outer.us ] ; 2 uses
  %indvars.iv.next1560 = add i64 %indvars.iv1559, -1
  %exitcond1569 = icmp eq i64 %i.ds, 5
  br i1 %exitcond1569, label %bb.br, label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit
  %indvars.iv1559 = phi i64 [ %i.dk, %bb.al ], [ %indvars.iv.next1560, %.loopexit ] ; 2 uses
  %.sroa.12.0.i1236 = phi i64 [ undef, %bb.al ], [ %.sroa.12.2.i.ph.lcssa808, %.loopexit ] ; 7 uses
  %.sroa.9.0.i1235 = phi i64 [ undef, %bb.al ], [ %.sroa.9.2.i.ph.lcssa819, %.loopexit ] ; 7 uses
  %.sroa.023.0.i1234 = phi i64 [ 0, %bb.al ], [ %.sroa.023.1.i.ph.lcssa830, %.loopexit ] ; 7 uses
  %.sroa.525.0.i1233 = phi i64 [ undef, %bb.al ], [ %.sroa.525.2.i.ph.lcssa841, %.loopexit ] ; 7 uses
  %.sroa.0524.01232 = phi i64 [ 0, %bb.al ], [ %i.ds, %.loopexit ] ; 10 uses
  %i.ds = add nuw nsw i64 %.sroa.0524.01232, 1    ; 2 uses
  %i.dt = icmp eq i64 %.sroa.0524.01232, 0        ; 3 uses
  %i.du = add i64 %.sroa.0524.01232, %.sroa.0.0   ; 5 uses
  %i.dv = icmp ult i64 %i.du, %.val61
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.du ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %.fr = freeze i1 %i.dv
  %i.dy = sub i64 %i.cw, %i.du
  br i1 %.fr, label %.lr.ph.us, label %.split1206

.lr.ph.us:                                        ; preds = %bb.am, %.outer.us
  %.sroa.12.2.i.ph1205.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i1236, %bb.am ] ; 7 uses
  %.sroa.9.2.i.ph1204.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i1235, %bb.am ] ; 7 uses
  %.sroa.023.1.i.ph1203.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i1234, %bb.am ] ; 4 uses
  %.sroa.525.2.i.ph1202.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i1233, %bb.am ] ; 7 uses
  %.sroa.0526.0.ph1201.us = phi i64 [ %i.eb, %.outer.us ], [ 0, %bb.am ] ; 2 uses
  %i.dz = add i64 %.sroa.0490.0, %.sroa.0526.0.ph1201.us ; 2 uses
  %i.ea = sub i64 %i.cx, %i.dz
  br label %bb.an

bb.an:                                            ; preds = %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us, %.lr.ph.us
  %indvars.iv1561 = phi i64 [ %indvars.iv.next1562, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %i.ea, %.lr.ph.us ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %i.dz, %.lr.ph.us ] ; 2 uses
  %.sroa.0526.0912.us.us = phi i64 [ %i.eb, %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.0526.0.ph1201.us, %.lr.ph.us ] ; 10 uses
  %i.eb = add i64 %.sroa.0526.0912.us.us, 1       ; 2 uses
  br i1 %.not.i106, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !6854 ; 2 uses
  %i.ed = extractvalue { i64, i32 } %i.ec, 0      ; 2 uses
  %i.ee = icmp eq i64 %i.ed, %9
  br i1 %i.ee, label %.split.us.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.us: ; preds = %bb.ao
  %i.ef = icmp sgt i64 %i.ed, %9
  br i1 %i.ef, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us

.split.us.us:                                     ; preds = %bb.ao
  %i.eg = extractvalue { i64, i32 } %i.ec, 1      ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 1000000000
  tail call void @llvm.assume(i1 %i.eh), !noalias !6854
  %i.ei = icmp samesign ugt i32 %i.eg, %10
  br i1 %i.ei, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB24_B24_INtNtB4_7compact7CompactB24_B24_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us: ; preds = %.split.us.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us.us, %bb.an
  %i.ej = icmp eq i64 %.sroa.0526.0912.us.us, 0   ; 2 uses
  %i.ek = or i64 %.sroa.0526.0912.us.us, %.sroa.0524.01232
  %or.cond2.i.us.us = icmp eq i64 %i.ek, 0
  br i1 %or.cond2.i.us.us, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us, label %bb.ap

bb.ap:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us
  br i1 %i.dt, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.ej
  br i1 %brmerge.i.not.us.us, label %bb.as, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us

bb.ar:                                            ; preds = %bb.ap
  %or.cond3.old.i.us.us = or i1 %i.dr, %i.ej
  br i1 %or.cond3.old.i.us.us, label %bb.as, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.el = add i64 %.sroa.0526.0912.us.us, %.sroa.0490.0 ; 5 uses
  %i.em = icmp ult i64 %i.el, %.val63
  br i1 %i.em, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us, label %.split921

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us: ; preds = %bb.as
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.el ; 2 uses
  %.val56.us.us = load ptr, ptr %i.en, align 8, !alias.scope !6855, !noalias !6856, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %.val57.us.us = load i64, ptr %i.eo, align 8, !alias.scope !6855, !noalias !6856, !noundef !5 ; 3 uses
  %.val58.us.us = load ptr, ptr %i.dw, align 8    ; 5 uses
  %.val59.us.us = load i64, ptr %i.dx, align 8    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6858), !noalias !6859
  %i.ep = load i64, ptr %.val56.us.us, align 8, !range !7, !alias.scope !6860, !noalias !6861, !noundef !5
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 24
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !6860, !noalias !6861, !noundef !5
  %i.et = icmp ult i64 %.val57.us.us, %i.es       ; 2 uses
  br i1 %i.eq, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us
  br i1 %i.et, label %bb.au, label %.split924.us

bb.au:                                            ; preds = %bb.at
  %i.eu = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !6860, !noalias !6861, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %.val57.us.us ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.us

bb.av:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.us.us
  br i1 %i.et, label %bb.aw, label %.split924.us

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !6860, !noalias !6861, !nonnull !5, !noundef !5
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %.val57.us.us ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.us: ; preds = %bb.aw, %bb.au
  %.sroa.5.1.i.in.i.i.us.us = phi ptr [ %i.fc, %bb.aw ], [ %i.ex, %bb.au ]
  %.sroa.0.1.i.in.i.i.us.us = phi ptr [ %i.fb, %bb.aw ], [ %i.ew, %bb.au ]
  %.sroa.0.1.i.i.i.us.us = load ptr, ptr %.sroa.0.1.i.in.i.i.us.us, align 8, !noalias !6862, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.us.us = load i64, ptr %.sroa.5.1.i.in.i.i.us.us, align 8, !noalias !6862, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6864), !noalias !6859
  %i.fd = load i64, ptr %.val58.us.us, align 8, !range !7, !alias.scope !6865, !noalias !6866, !noundef !5
  %i.fe = trunc nuw i64 %i.fd to i1
  %i.ff = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !6865, !noalias !6866, !noundef !5
  %i.fh = icmp ult i64 %.val59.us.us, %i.fg       ; 2 uses
  br i1 %i.fe, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.us
  br i1 %i.fh, label %bb.ay, label %.split926.us

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !6865, !noalias !6866, !nonnull !5, !noundef !5
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %.val59.us.us ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.us.us

bb.az:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.us.us
  br i1 %i.fh, label %bb.ba, label %.split926.us

bb.ba:                                            ; preds = %bb.az
  %i.fm = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !6865, !noalias !6866, !nonnull !5, !noundef !5
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.val59.us.us ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.us.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.us.us: ; preds = %bb.ba, %bb.ay
  %.sroa.5.1.i.in.i1.i.us.us = phi ptr [ %i.fq, %bb.ba ], [ %i.fl, %bb.ay ]
  %.sroa.0.1.i.in.i2.i.us.us = phi ptr [ %i.fp, %bb.ba ], [ %i.fk, %bb.ay ]
  %.sroa.5.1.i.i4.i.us.us = load i64, ptr %.sroa.5.1.i.in.i1.i.us.us, align 8, !noalias !6867, !noundef !5
  %i.fr = icmp eq i64 %.sroa.5.1.i.i.i.us.us, %.sroa.5.1.i.i4.i.us.us
  br i1 %i.fr, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.us.us, label %_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.thread.us.us

_RNvYINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB9_.exit.us.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit5.i.us.us
end_hunk_4
begin_hunk_5_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  br label %.noexc.us.i380

.noexc.us.i380:                                   ; preds = %bb.jk, %bb.ji
  %.sroa.5.1.i.in.i344.us.i381 = phi ptr [ %i.apt, %bb.jk ], [ %i.apo, %bb.ji ]
  %.sroa.0.1.i.in.i345.us.i382 = phi ptr [ %i.aps, %bb.jk ], [ %i.apn, %bb.ji ]
  %.sroa.0.1.i.i346.us.i383 = load ptr, ptr %.sroa.0.1.i.in.i345.us.i382, align 8, !noalias !7054, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i347.us.i384 = load i64, ptr %.sroa.5.1.i.in.i344.us.i381, align 8, !noalias !7054, !noundef !5 ; 2 uses
  %i.apu = load ptr, ptr %i.aoo, align 8, !alias.scope !7048, !noalias !7055, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.apv = load i64, ptr %i.aop, align 8, !alias.scope !7048, !noalias !7055, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7057)
  %i.apw = load i64, ptr %i.apu, align 8, !range !7, !alias.scope !7058, !noalias !7059, !noundef !5
  %i.apx = trunc nuw i64 %i.apw to i1
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apu, i64 24
  %i.apz = load i64, ptr %i.apy, align 8, !alias.scope !7058, !noalias !7059, !noundef !5
  %i.aqa = icmp ult i64 %i.apv, %i.apz            ; 2 uses
  br i1 %i.apx, label %bb.jn, label %bb.jl

bb.jl:                                            ; preds = %.noexc.us.i380
  br i1 %i.aqa, label %bb.jm, label %.invoke1092.i236

bb.jm:                                            ; preds = %bb.jl
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.aqc = load ptr, ptr %i.aqb, align 8, !alias.scope !7058, !noalias !7059, !nonnull !5, !noundef !5
  %i.aqd = getelementptr inbounds nuw [16 x i8], ptr %i.aqc, i64 %i.apv ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  br label %.noexc181.us.i385

bb.jn:                                            ; preds = %.noexc.us.i380
  br i1 %i.aqa, label %bb.jo, label %.invoke1092.i236

bb.jo:                                            ; preds = %bb.jn
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.aqg = load ptr, ptr %i.aqf, align 8, !alias.scope !7058, !noalias !7059, !nonnull !5, !noundef !5
  %i.aqh = getelementptr inbounds nuw [24 x i8], ptr %i.aqg, i64 %i.apv ; 2 uses
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 8
  %i.aqj = getelementptr i8, ptr %i.aqh, i64 16
  br label %.noexc181.us.i385

.noexc181.us.i385:                                ; preds = %bb.jo, %bb.jm
  %.sroa.5.1.i.in.i350.us.i386 = phi ptr [ %i.aqj, %bb.jo ], [ %i.aqe, %bb.jm ]
  %.sroa.0.1.i.in.i351.us.i387 = phi ptr [ %i.aqi, %bb.jo ], [ %i.aqd, %bb.jm ]
  %.sroa.5.1.i.i353.us.i388 = load i64, ptr %.sroa.5.1.i.in.i350.us.i386, align 8, !noalias !7060, !noundef !5
  %i.aqk = icmp eq i64 %.sroa.5.1.i.i347.us.i384, %.sroa.5.1.i.i353.us.i388
  br i1 %i.aqk, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395: ; preds = %.noexc181.us.i385
  %.sroa.0.1.i.i352.us.i396 = load ptr, ptr %.sroa.0.1.i.in.i351.us.i387, align 8, !noalias !7060, !nonnull !5, !noundef !5
  %bcmp.i357.us.i397 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i346.us.i383, ptr nonnull readonly %.sroa.0.1.i.i352.us.i396, i64 %.sroa.5.1.i.i347.us.i384), !alias.scope !7061
  %i.aql = icmp eq i32 %bcmp.i357.us.i397, 0
  br i1 %i.aql, label %bb.jr, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395, %.noexc181.us.i385
  %i.aqm = add i64 %i.aoq, %i.aol                 ; 3 uses
  %i.aqn = icmp ult i64 %i.aqm, %i.aca
  br i1 %i.aqn, label %bb.jp, label %.invoke1088.i248

bb.jp:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389
  %i.aqo = add i64 %.sroa.0105.0459.us.i373, %i.aok ; 3 uses
  %i.aqp = icmp ult i64 %i.aqo, %i.aca
  br i1 %i.aqp, label %bb.jq, label %.split477.us.invoke.i250

bb.jq:                                            ; preds = %bb.jp
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqm
  %i.aqr = load i8, ptr %i.aqq, align 1, !noundef !5
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqo
  %i.aqt = load i8, ptr %i.aqs, align 1, !noundef !5
  %..i.us.i390 = tail call noundef i8 @llvm.umax.i8(i8 %i.aqt, i8 %i.aqr)
  br label %bb.jt

bb.jr:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395
  %i.aqu = add i64 %.sroa.0105.0459.us.i373, %i.aol ; 3 uses
  %i.aqv = icmp ult i64 %i.aqu, %i.aca
  br i1 %i.aqv, label %bb.js, label %.invoke1088.i248

bb.js:                                            ; preds = %bb.jr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqu
  %i.aqx = load i8, ptr %i.aqw, align 1, !noundef !5
  %i.aqy = add i8 %i.aqx, 1
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jq
  %.sroa.04.0.us.i391 = phi i8 [ %i.aqy, %bb.js ], [ %..i.us.i390, %bb.jq ]
  %i.aqz = add i64 %i.aoq, %i.aok                 ; 3 uses
  %i.ara = icmp ult i64 %i.aqz, %i.aca
  br i1 %i.ara, label %bb.ju, label %.split477.us.invoke.i250

bb.ju:                                            ; preds = %bb.jt
  %i.arb = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqz
  store i8 %.sroa.04.0.us.i391, ptr %i.arb, align 1
  %.not168.us.i392 = icmp eq i64 %i.aoq, 0
  br i1 %.not168.us.i392, label %..loopexit77_crit_edge.split.us.i393, label %.lr.ph.split.us.i372

.loopexit.split-lp.loopexit.split.us.i375:        ; preds = %bb.jf
  %lpad.loopexit78.us.i376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i190

..loopexit77_crit_edge.split.us.i393:             ; preds = %bb.ju
  %.not.i394 = icmp eq i64 %i.acg, 0
  br i1 %.not.i394, label %.lr.ph515.i219, label %.lr.ph491.split.i356

.lr.ph.split.i364:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit227.thread.i362
  %i.arc = and i64 %i.lo, 1023
  %i.ard = icmp ne i64 %i.arc, 1
  %brmerge59.i365 = or i1 %.not.i106, %i.ard
  br i1 %brmerge59.i365, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph.split.i364
  %i.are = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc338.i368 unwind label %.loopexit.split-lp.loopexit.split.i366 ; 2 uses

.noexc338.i368:                                   ; preds = %bb.jv
  %i.arf = extractvalue { i64, i32 } %i.are, 0    ; 2 uses
  %i.arg = icmp eq i64 %i.arf, %9
  br i1 %i.arg, label %.split46.i371, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369

.split46.i371:                                    ; preds = %.noexc338.i368
  %i.arh = extractvalue { i64, i32 } %i.are, 1    ; 2 uses
  %i.ari = icmp ult i32 %i.arh, 1000000000
  tail call void @llvm.assume(i1 %i.ari)
  %i.arj = icmp samesign ugt i32 %i.arh, %10
  br i1 %i.arj, label %.loopexit73.i353, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369: ; preds = %.noexc338.i368
  %i.ark = icmp sgt i64 %i.arf, %9
  br i1 %i.ark, label %.loopexit73.i353, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369, %.split46.i371, %.lr.ph.split.i364
  %i.arl = add i64 %i.cx, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.arm = icmp ult i64 %i.arl, %.val63
  br i1 %i.arm, label %bb.jw, label %.invoke1090.i234

bb.jw:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1090.i234

.split477.us.invoke.i250:                         ; preds = %bb.jt, %bb.jp, %bb.hd, %bb.ha, %bb.im, %bb.ik, %bb.hr, %bb.ht, %bb.jb
  %i.arn = phi i64 [ %i.aff, %bb.ha ], [ %i.alh, %bb.im ], [ %i.anz, %bb.jb ], [ %i.aid, %bb.hr ], [ %i.aca, %bb.ht ], [ %i.akz, %bb.ik ], [ %i.afs, %bb.hd ], [ %i.aqo, %bb.jp ], [ %i.aqz, %bb.jt ]
  %i.aro = phi ptr [ @77, %bb.ha ], [ @89, %bb.im ], [ @93, %bb.jb ], [ @82, %bb.hr ], [ @84, %bb.ht ], [ @87, %bb.ik ], [ @79, %bb.hd ], [ @97, %bb.jp ], [ @99, %bb.jt ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.arn, i64 noundef %i.aca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aro) #38
          to label %.split477.us.cont.i253 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i251

.split477.us.cont.i253:                           ; preds = %.split477.us.invoke.i250
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread572: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit282.i262, %.split36.i287, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit251.i, %.split33.i309, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit317.i331, %.split39.i352, %.loopexit73.i353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acf) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acf, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i216, %bb.gm, %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acf) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acf, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit161.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i176, %.loopexit73.i353, %.split.i401, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit73.i, %.split.i, %.split561, %bb.cg, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit161, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit229.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread572
  %.val68 = load ptr, ptr %i.da, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.db, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cy, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cz, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7063)
  %i.arp = sub nuw i64 %i.cw, %.sroa.0.0          ; 8 uses
  %i.arq = sub nuw i64 %i.cx, %.sroa.0490.0       ; 5 uses
  %i.arr = sub i64 %i.arp, %i.arq                 ; 3 uses
  %i.ars = and i64 %i.arr, 1
  %.not.i402 = icmp eq i64 %i.ars, 0              ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aru = load i64, ptr %i.art, align 8, !alias.scope !7062, !noalias !7064, !noundef !5 ; 4 uses
  %i.arv = add i64 %i.aru, 1                      ; 5 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.arx = load i64, ptr %i.arw, align 8, !alias.scope !7062, !noalias !7064, !noundef !5 ; 16 uses
  %i.ary = icmp ult i64 %i.arv, %i.arx
  br i1 %i.ary, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.arz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8, !alias.scope !7062, !noalias !7064, !nonnull !5, !noundef !5 ; 7 uses
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.arv
  store i64 0, ptr %i.asb, align 8, !noalias !7065
  %i.asc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.asd = load i64, ptr %i.asc, align 8, !alias.scope !7063, !noalias !7066, !noundef !5 ; 4 uses
  %i.ase = add i64 %i.asd, 1                      ; 5 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.asg = load i64, ptr %i.asf, align 8, !alias.scope !7063, !noalias !7066, !noundef !5 ; 16 uses
  %i.ash = icmp ult i64 %i.ase, %i.asg
  br i1 %i.ash, label %bb.jz, label %bb.ka

bb.jy:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.arv, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7065
  unreachable

bb.jz:                                            ; preds = %bb.jx
  %i.asi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.asj = load ptr, ptr %i.asi, align 8, !alias.scope !7063, !noalias !7066, !nonnull !5, !noundef !5 ; 7 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.ase
  store i64 0, ptr %i.ask, align 8, !noalias !7065
  %i.asl = add i64 %i.arp, %i.arq                 ; 2 uses
  %i.asm = lshr i64 %i.asl, 1                     ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.asl, %i.asm     ; 2 uses
  %i.asn = icmp ult i64 %i.arx, 1152921504606846976
  tail call void @llvm.assume(i1 %i.asn)
  %.not128.not.i = icmp ugt i64 %i.arx, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.kc, label %bb.kb, !prof !11

bb.ka:                                            ; preds = %bb.jx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ase, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !7065
  unreachable

bb.kb:                                            ; preds = %bb.jz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !7065
  unreachable

bb.kc:                                            ; preds = %bb.jz
  %i.aso = icmp ult i64 %i.asg, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aso)
  %.not129.not.i = icmp samesign ugt i64 %i.asg, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph126.i, label %bb.kd, !prof !11

.lr.ph126.i:                                      ; preds = %bb.kc
  %i.asp = add i64 %i.aru, -1
  %i.asq = add i64 %i.asd, -1
  %.neg = add i64 %i.cw, 1
  %.neg583 = add i64 %.neg, %i.cx
  %11 = add i64 %.sroa.0490.0, %.sroa.0.0
  %12 = add i64 %11, %i.asm
  %13 = sub i64 %.neg583, %12
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !noalias !7065
  unreachable

bb.ke:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, %.lr.ph126.i
  %.sroa.048.0125.i = phi i64 [ 0, %.lr.ph126.i ], [ %i.asr, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i ] ; 10 uses
  %i.asr = add nuw i64 %.sroa.048.0125.i, 1       ; 2 uses
  br i1 %.not.i106, label %.lr.ph113.preheader.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.ass = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !7065 ; 2 uses
  %i.ast = extractvalue { i64, i32 } %i.ass, 0    ; 2 uses
  %i.asu = icmp eq i64 %i.ast, %9
  br i1 %i.asu, label %.split.i420, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404

.split.i420:                                      ; preds = %bb.kf
  %i.asv = extractvalue { i64, i32 } %i.ass, 1    ; 2 uses
  %i.asw = icmp ult i32 %i.asv, 1000000000
  tail call void @llvm.assume(i1 %i.asw)
  %i.asx = icmp samesign ugt i32 %i.asv, %10
  br i1 %i.asx, label %bb.na, label %.lr.ph113.preheader.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404: ; preds = %bb.kf
  %i.asy = icmp sgt i64 %i.ast, %9
  br i1 %i.asy, label %bb.na, label %.lr.ph113.preheader.i

.lr.ph113.preheader.i:                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404, %.split.i420, %bb.ke
  %i.asz = sub nsw i64 0, %.sroa.048.0125.i       ; 6 uses
  %.pre192.i = sub i64 %i.arv, %.sroa.048.0125.i
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %bb.mu, %.lr.ph113.preheader.i
  %.sroa.7.0112.i = phi i64 [ %i.ate, %bb.mu ], [ %.sroa.048.0125.i, %.lr.ph113.preheader.i ]
  %not..sroa.1118.0111.i = phi i64 [ 1, %bb.mu ], [ 0, %.lr.ph113.preheader.i ]
  %i.ata = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0112.i, i64 %not..sroa.1118.0111.i) ; 2 uses
  %i.atb = extractvalue { i64, i1 } %i.ata, 1     ; 2 uses
  %i.atc = extractvalue { i64, i1 } %i.ata, 0     ; 9 uses
  %i.atd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.atc, i64 -1) ; 2 uses
  %i.ate = extractvalue { i64, i1 } %i.atd, 0     ; 2 uses
  %i.atf = extractvalue { i64, i1 } %i.atd, 1
  %i.atg = or i1 %i.atb, %i.atf
  %.not3.i.not.i = icmp slt i64 %i.atc, %i.asz
  %or.cond46.i = select i1 %i.atb, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond46.i, label %.lr.ph123.preheader.i, label %bb.kg

bb.kg:                                            ; preds = %.lr.ph113.i
  %i.ath = icmp eq i64 %i.atc, %i.asz
  br i1 %i.ath, label %._crit_edge187.i, label %bb.lr

.lr.ph123.preheader.i:                            ; preds = %bb.mu, %.lr.ph113.i
  %.pre.i = sub i64 %i.ase, %.sroa.048.0125.i
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.lm, %.lr.ph123.preheader.i
  %not..sroa.1427.0122.i = phi i64 [ 1, %bb.lm ], [ 0, %.lr.ph123.preheader.i ]
  %.sroa.726.0121.i = phi i64 [ %i.atm, %bb.lm ], [ %.sroa.048.0125.i, %.lr.ph123.preheader.i ]
  %i.ati = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0121.i, i64 %not..sroa.1427.0122.i) ; 2 uses
  %i.atj = extractvalue { i64, i1 } %i.ati, 1     ; 2 uses
  %i.atk = extractvalue { i64, i1 } %i.ati, 0     ; 9 uses
  %i.atl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.atk, i64 -1) ; 2 uses
  %i.atm = extractvalue { i64, i1 } %i.atl, 0     ; 2 uses
  %i.atn = extractvalue { i64, i1 } %i.atl, 1
  %i.ato = or i1 %i.atj, %i.atn
  %.not3.i146.not.i = icmp slt i64 %i.atk, %i.asz
  %or.cond48.i = select i1 %i.atj, i1 true, i1 %.not3.i146.not.i
  br i1 %or.cond48.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, label %bb.kh

bb.kh:                                            ; preds = %.lr.ph123.i
  %i.atp = icmp eq i64 %i.atk, %i.asz
  br i1 %i.atp, label %._crit_edge189.i.a, label %bb.ki

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i: ; preds = %bb.lm, %.lr.ph123.i
  %exitcond186.not.i = icmp eq i64 %i.asr, %13
  br i1 %exitcond186.not.i, label %bb.na, label %bb.ke

bb.ki:                                            ; preds = %bb.kh
  %.not130.i = icmp eq i64 %i.atk, %.sroa.048.0125.i
  %.pre190.i = add i64 %i.asq, %i.atk             ; 6 uses
  br i1 %.not130.i, label %._crit_edge188.i.a, label %bb.kj

._crit_edge189.i.a:                               ; preds = %bb.kh, %bb.km
  %.pre-phi.i = phi i64 [ %i.att, %bb.km ], [ %.pre.i, %bb.kh ] ; 3 uses
  %i.atq = icmp ult i64 %.pre-phi.i, %i.asg
  br i1 %i.atq, label %bb.kr, label %bb.ks

._crit_edge188.i.a:                               ; preds = %bb.km, %bb.ki
  %i.atr = icmp ult i64 %.pre190.i, %i.asg
  br i1 %i.atr, label %bb.ko, label %bb.kp

bb.kj:                                            ; preds = %bb.ki
  %i.ats = icmp ult i64 %.pre190.i, %i.asg
  br i1 %i.ats, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.att = add i64 %i.atk, %i.ase                 ; 4 uses
  %i.atu = icmp ult i64 %i.att, %i.asg
  br i1 %i.atu, label %bb.km, label %bb.kn

bb.kl:                                            ; preds = %bb.kj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre190.i, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37, !noalias !7065
  unreachable

bb.km:                                            ; preds = %bb.kk
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.pre190.i
  %i.atw = load i64, ptr %i.atv, align 8, !noalias !7065, !noundef !5
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.att
  %i.aty = load i64, ptr %i.atx, align 8, !noalias !7065, !noundef !5
  %i.atz = icmp ult i64 %i.atw, %i.aty
  br i1 %i.atz, label %._crit_edge189.i.a, label %._crit_edge188.i.a

bb.kn:                                            ; preds = %bb.kk
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.att, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37, !noalias !7065
  unreachable

bb.ko:                                            ; preds = %._crit_edge188.i.a
  %i.aua = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.pre190.i
  %i.aub = load i64, ptr %i.aua, align 8, !noalias !7065, !noundef !5
  %i.auc = add i64 %i.aub, 1
  br label %bb.kq

bb.kp:                                            ; preds = %._crit_edge188.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre190.i, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37, !noalias !7065
  unreachable

bb.kq:                                            ; preds = %bb.kr, %bb.ko
  %.sroa.014.0.i = phi i64 [ %i.auh, %bb.kr ], [ %i.auc, %bb.ko ] ; 5 uses
  %i.aud = sub i64 %.sroa.014.0.i, %i.atk         ; 4 uses
  %i.aue = icmp ult i64 %.sroa.014.0.i, %i.arp
  %i.auf = icmp ult i64 %i.aud, %i.arq
  %or.cond.i407 = select i1 %i.aue, i1 %i.auf, i1 false
  br i1 %or.cond.i407, label %bb.ku, label %bb.kt

bb.kr:                                            ; preds = %._crit_edge189.i.a
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.pre-phi.i
  %i.auh = load i64, ptr %i.aug, align 8, !noalias !7065, !noundef !5
  br label %bb.kq

bb.ks:                                            ; preds = %._crit_edge189.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37, !noalias !7065
  unreachable

bb.kt:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.kq
  %.sroa.020.0.i = phi i64 [ %i.awh, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %i.aud, %bb.kq ]
  %.sroa.014.1.i = phi i64 [ %i.awg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.kq ] ; 3 uses
  %i.aui = add i64 %i.atk, %i.asd                 ; 3 uses
  %i.auj = icmp ult i64 %i.aui, %i.asg
  br i1 %i.auj, label %bb.lj, label %bb.lk

bb.ku:                                            ; preds = %bb.kq
  %i.auk = sub i64 %i.cw, %.sroa.014.0.i          ; 2 uses
  %i.aul = sub i64 %i.cx, %i.aud                  ; 2 uses
  %i.aum = sub i64 %i.auk, %.sroa.0.0
  %i.aun = sub i64 %i.aul, %.sroa.0490.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aun, i64 %i.aum) ; 3 uses
  %.not128.i = icmp eq i64 %..i.i, 0
  br i1 %.not128.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.ku
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.kv

bb.kv:                                            ; preds = %bb.li, %.lr.ph116.i
  %.sroa.0.0.i136115.i = phi i64 [ 0, %.lr.ph116.i ], [ %i.awf, %bb.li ] ; 4 uses
  %i.auo = xor i64 %.sroa.0.0.i136115.i, -1       ; 2 uses
  %i.aup = add i64 %i.aul, %i.auo                 ; 3 uses
  %i.auq = icmp ult i64 %i.aup, %.val71
  br i1 %i.auq, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aup, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !7067
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i: ; preds = %bb.kv
  %i.aur = add i64 %i.auk, %i.auo                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aus = icmp ult i64 %i.aur, %.val69
  br i1 %i.aus, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i, label %bb.kx

bb.kx:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aur, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !7068
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  %i.aut = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aup ; 2 uses
  %i.auu = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aur ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7070)
  %i.auv = load ptr, ptr %i.aut, align 8, !alias.scope !7069, !noalias !7071, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !alias.scope !7069, !noalias !7071, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7073), !noalias !7074
  %i.auy = load i64, ptr %i.auv, align 8, !range !7, !alias.scope !7075, !noalias !7076, !noundef !5
  %i.auz = trunc nuw i64 %i.auy to i1
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auv, i64 24
  %i.avb = load i64, ptr %i.ava, align 8, !alias.scope !7075, !noalias !7076, !noundef !5
  %i.avc = icmp ult i64 %i.aux, %i.avb            ; 2 uses
  br i1 %i.auz, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i
  br i1 %i.avc, label %bb.lb, label %bb.lc

bb.kz:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i
  br i1 %i.avc, label %bb.la, label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auv, i64 16
  %i.ave = load ptr, ptr %i.avd, align 8, !alias.scope !7075, !noalias !7076, !nonnull !5, !noundef !5
  %i.avf = getelementptr inbounds nuw [16 x i8], ptr %i.ave, i64 %i.aux ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409

bb.lb:                                            ; preds = %bb.ky
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auv, i64 16
  %i.avi = load ptr, ptr %i.avh, align 8, !alias.scope !7075, !noalias !7076, !nonnull !5, !noundef !5
  %i.avj = getelementptr inbounds nuw [24 x i8], ptr %i.avi, i64 %i.aux ; 2 uses
  %i.avk = getelementptr i8, ptr %i.avj, i64 8
  %i.avl = getelementptr i8, ptr %i.avj, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409

bb.lc:                                            ; preds = %bb.kz, %bb.ky
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7077
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409: ; preds = %bb.lb, %bb.la
  %.sroa.5.1.i.in.i.i410 = phi ptr [ %i.avl, %bb.lb ], [ %i.avg, %bb.la ]
  %.sroa.0.1.i.in.i.i411 = phi ptr [ %i.avk, %bb.lb ], [ %i.avf, %bb.la ]
  %.sroa.0.1.i.i.i412 = load ptr, ptr %.sroa.0.1.i.in.i.i411, align 8, !noalias !7078, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i413 = load i64, ptr %.sroa.5.1.i.in.i.i410, align 8, !noalias !7078, !noundef !5 ; 2 uses
  %i.avm = load ptr, ptr %i.auu, align 8, !alias.scope !7070, !noalias !7079, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.auu, i64 8
  %i.avo = load i64, ptr %i.avn, align 8, !alias.scope !7070, !noalias !7079, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7081), !noalias !7074
  %i.avp = load i64, ptr %i.avm, align 8, !range !7, !alias.scope !7082, !noalias !7083, !noundef !5
  %i.avq = trunc nuw i64 %i.avp to i1
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avm, i64 24
  %i.avs = load i64, ptr %i.avr, align 8, !alias.scope !7082, !noalias !7083, !noundef !5
  %i.avt = icmp ult i64 %i.avo, %i.avs            ; 2 uses
  br i1 %i.avq, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409
  br i1 %i.avt, label %bb.lg, label %bb.lh

bb.le:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409
  br i1 %i.avt, label %bb.lf, label %bb.lh

bb.lf:                                            ; preds = %bb.le
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  %i.avv = load ptr, ptr %i.avu, align 8, !alias.scope !7082, !noalias !7083, !nonnull !5, !noundef !5
  %i.avw = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %i.avo ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i

bb.lg:                                            ; preds = %bb.ld
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  %i.avz = load ptr, ptr %i.avy, align 8, !alias.scope !7082, !noalias !7083, !nonnull !5, !noundef !5
  %i.awa = getelementptr inbounds nuw [24 x i8], ptr %i.avz, i64 %i.avo ; 2 uses
  %i.awb = getelementptr i8, ptr %i.awa, i64 8
  %i.awc = getelementptr i8, ptr %i.awa, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i

bb.lh:                                            ; preds = %bb.le, %bb.ld
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7084
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i: ; preds = %bb.lg, %bb.lf
  %.sroa.5.1.i.in.i152.i = phi ptr [ %i.awc, %bb.lg ], [ %i.avx, %bb.lf ]
  %.sroa.0.1.i.in.i153.i = phi ptr [ %i.awb, %bb.lg ], [ %i.avw, %bb.lf ]
  %.sroa.5.1.i.i155.i = load i64, ptr %.sroa.5.1.i.in.i152.i, align 8, !noalias !7085, !noundef !5
  %i.awd = icmp eq i64 %.sroa.5.1.i.i.i413, %.sroa.5.1.i.i155.i
  br i1 %i.awd, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

end_hunk_5
