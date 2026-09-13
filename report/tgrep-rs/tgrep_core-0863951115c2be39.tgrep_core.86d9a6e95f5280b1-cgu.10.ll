Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.10?download=true
inline.NumInlined: 666
inline.NumDeleted: 340
begin_hunk_0_@_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapRemNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbzNSmZPCnTx_10tgrep_core:bb.a
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ah = add i64 %i.j, 16                        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.am = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.an, 0
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !878, !noalias !879, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !880, !noundef !4
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !878, !noalias !879, !noundef !4
  %i.ay = and i64 %i.ax, %i.aw
  store i8 %i.g, ptr %i.ar, align 1, !noalias !880
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.g, ptr %i.ba, align 1, !noalias !880
  %i.bb = load <2 x i64>, ptr %i.av, align 8, !alias.scope !878, !noalias !879
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.av, align 8, !alias.scope !878, !noalias !879
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bf = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store ptr %1, ptr %i.bg, align 8, !noalias !878
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !878
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !878
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !875, !nonnull !4
  %i.bi = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.s
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !4
  store i32 %3, ptr %i.bj, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.3.0 = phi i32 [ undef, %bb.h ], [ %i.bk, %bb.i ]
  %.sroa.0.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.i ]
  %i.bl = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bm = insertvalue { i32, i32 } %i.bl, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.bm
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapReuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  call void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull align 8 %i.c)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !890, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !890, !noundef !4 ; 3 uses
  %i.f = lshr i64 %i.d, 57
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 3 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i.i = phi i64 [ %i.d, %bb.a ], [ %i.ai, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.4.120.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.04.122.i.i, %bb.e ]
  %i.j = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.k, align 1, !noalias !891 ; 3 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.i
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.m, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.029.i.i = phi i16 [ %i.x, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = add i64 %.sroa.0.017.i.i, %i.o
  %i.q = and i64 %i.p, %.val5.i
  %i.r = load ptr, ptr %0, align 8, !alias.scope !890, !noalias !892, !nonnull !4, !noundef !4
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.v = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownReINtB2_10EquivalentBq_E10equivalentCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u), !noalias !892
  br i1 %i.v, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1r_11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.c, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !prof !6

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = add i16 %.sroa.01.029.i.i, -1
  %i.x = and i16 %i.w, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !6

.thread24.i.i:                                    ; preds = %bb.d
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.z, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.0.017.i.i, %i.ab
  %i.ad = and i64 %i.ac, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ad, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ah = add i64 %i.j, 16                        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.am = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.an, 0
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !893, !noalias !894, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !895, !noundef !4
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !893, !noalias !894, !noundef !4
  %i.ay = and i64 %i.ax, %i.aw
  store i8 %i.g, ptr %i.ar, align 1, !noalias !895
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.g, ptr %i.ba, align 1, !noalias !895
  %i.bb = load <2 x i64>, ptr %i.av, align 8, !alias.scope !893, !noalias !894
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.av, align 8, !alias.scope !893, !noalias !894
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store ptr %1, ptr %i.bg, align 8, !noalias !895
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i64 %2, ptr %i.bh, align 8, !noalias !893
  br label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1r_11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core.exit

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1r_11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden range(i24 0, -254) i24 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertBV_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRTmmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull align 8 %i.c)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !905, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !905, !noundef !4 ; 3 uses
  %i.f = lshr i64 %i.d, 57
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 3 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i.i = phi i64 [ %i.d, %bb.a ], [ %i.ai, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.4.120.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.04.122.i.i, %bb.e ]
  %i.j = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.k, align 1, !noalias !906 ; 3 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.i
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.m, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.029.i.i = phi i16 [ %i.x, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = add i64 %.sroa.0.017.i.i, %i.o
  %i.q = and i64 %i.p, %.val5.i
  %i.r = load ptr, ptr %0, align 8, !alias.scope !905, !noalias !907, !nonnull !4, !noundef !4
  %i.s = sub nsw i64 0, %i.q                      ; 2 uses
  %i.t = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.v = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.u), !noalias !907
  br i1 %i.v, label %bb.i, label %bb.c, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !prof !6

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = add i16 %.sroa.01.029.i.i, -1
  %i.x = and i16 %i.w, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !6

.thread24.i.i:                                    ; preds = %bb.d
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.z, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.0.017.i.i, %i.ab
  %i.ad = and i64 %i.ac, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ad, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ah = add i64 %i.j, 16                        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.am = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.an, 0
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !908, !noalias !909, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !910, !noundef !4
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !908, !noalias !909, !noundef !4
  %i.ay = and i64 %i.ax, %i.aw
  store i8 %i.g, ptr %i.ar, align 1, !noalias !910
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.g, ptr %i.ba, align 1, !noalias !910
  %i.bb = load <2 x i64>, ptr %i.av, align 8, !alias.scope !908, !noalias !909
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.av, align 8, !alias.scope !908, !noalias !909
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bf = getelementptr inbounds [12 x i8], ptr %i.aq, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -12
  store i32 %1, ptr %i.bg, align 4, !noalias !908
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !908
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !908
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -3
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !908
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !905, !nonnull !4
  %i.bi = getelementptr inbounds [12 x i8], ptr %i.bh, i64 %i.s ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !noundef !4
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 -3 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !4
  store i8 %3, ptr %i.bj, align 4
  store i8 %4, ptr %i.bl, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.4.0 = phi i8 [ undef, %bb.h ], [ %i.bm, %bb.i ]
  %.sroa.3.0 = phi i8 [ undef, %bb.h ], [ %i.bk, %bb.i ]
  %.sroa.0.0 = phi i8 [ 0, %bb.h ], [ 1, %bb.i ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i32 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [28 x i8], align 4            ; 4 uses
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE7reserveNCINvNtB8_3map11make_hashermBR_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noundef nonnull align 8 %i.b)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !920, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !920, !noundef !4 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !921 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !920, !noalias !922, !nonnull !4, !noundef !4
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
end_hunk_0
