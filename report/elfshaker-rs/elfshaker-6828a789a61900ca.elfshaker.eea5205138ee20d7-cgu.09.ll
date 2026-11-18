Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.09?download=true
inline.NumInlined: 486
inline.NumDeleted: 240
begin_hunk_0_@_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex15handle_to_entry:bb.a
  %i.ad = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE3getmEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.n, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %common.resume unwind label %bb.p

bb.l:                                             ; preds = %bb.j
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.n, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load <2 x i64>, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store <2 x i64> %i.ah, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ag, ptr %.sroa.9.0..sroa_idx, align 4
  br label %bb.h

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #24
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex15object_metadata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !524, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = tail call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRAhj14_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !527, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !527, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.k      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !528 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -24
  %i.y = tail call noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownAhj14_INtB2_10EquivalentBq_E10equivalentCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !529
  br i1 %i.y, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapAhj14_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_ECskuiImRAV2ip_9elfshaker.exit, label %bb.d, !prof !12

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %select.unfold, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapAhj14_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_ECskuiImRAV2ip_9elfshaker.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !4
  store i32 %i.ah, ptr %i.a, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aj = call noundef align 8 ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE3getmEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %.not5 = icmp eq ptr %i.aj, null
  br i1 %.not5, label %bb.g, label %bb.f, !prof !9

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21
  unreachable

bb.f:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapAhj14_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_ECskuiImRAV2ip_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.aj

bb.g:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapAhj14_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getBO_ECskuiImRAV2ip_9elfshaker.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex16resolve_snapshot(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call noundef i64 @_RNvNtCsjdYVxJKtkyg_8foldhash4seed19gen_per_hasher_seed(), !noalias !614
  %i.e = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjdYVxJKtkyg_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !614
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtCs3oUPovFnLWP_4core7default7Default7defaultBR_.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsjdYVxJKtkyg_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #25, !noalias !614
  br label %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtCs3oUPovFnLWP_4core7default7Default7defaultBR_.exit

_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtCs3oUPovFnLWP_4core7default7Default7defaultBR_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @41, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 6 uses
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.o
  invoke void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E3newB28_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p)
          to label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEEB2e_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEEB2e_.exit: ; preds = %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtCs3oUPovFnLWP_4core7default7Default7defaultBR_.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.59.0.copyload = load ptr, ptr %.sroa.59.0..sroa_idx, align 8 ; 2 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.610.0.copyload = load i64, ptr %.sroa.610.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.q = icmp ult i64 %.sroa.610.0.copyload, %.sroa.8.0.copyload
  br i1 %i.q, label %.lr.ph, label %.thread27

.lr.ph:                                           ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEEB2e_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.59.0.copyload) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.610.033 = phi i64 [ %.sroa.610.0.copyload, %.lr.ph ], [ %i.u, %bb.t ] ; 3 uses
  %i.u = add i64 %.sroa.610.033, 1                ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.610.033 ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.sroa.59.0.copyload, i64 %.sroa.610.033 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !616, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !616, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.aa, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !617, !noundef !4
  %i.ad = load i64, ptr %i.r, align 8, !alias.scope !618, !noundef !4 ; 3 uses
  %i.ae = load ptr, ptr %i.c, align 8, !alias.scope !618, !nonnull !4, !noundef !4 ; 4 uses
  %.promoted.i = load i64, ptr %i.s, align 8, !alias.scope !615
  %.promoted19.i = load i64, ptr %i.t, align 8, !alias.scope !615
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %4 = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cm, %bb.i ]
  %5 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %6, %bb.i ] ; 2 uses
  %.sroa.03.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.cn, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.af = load i64, ptr @_RNvNtNtCsjdYVxJKtkyg_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !622, !noundef !4
  %i.ag = load i64, ptr %.sroa.03.018.i, align 4, !alias.scope !623, !noalias !624 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.018.i, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !623, !noalias !624, !noundef !4 ; 2 uses
  %i.aj = xor i64 %i.ag, %.val.i.i
  %i.ak = zext i64 %i.aj to i128
  %i.al = zext i32 %i.ai to i64
  %i.am = xor i64 %i.af, %i.al
  %i.an = zext i64 %i.am to i128
  %i.ao = mul nuw i128 %i.an, %i.ak               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = xor i128 %i.ap, %i.ao
  %i.ar = trunc i128 %i.aq to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.as = lshr i64 %i.ar, 57
  %i.at = trunc nuw nsw i64 %i.as to i8
  %i.au = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.av = shufflevector <16 x i8> %i.au, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aw = trunc i64 %i.ag to i32
  %i.ax = lshr i64 %i.ag, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bw, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.bx, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.ad ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.az, align 1, !noalias !627 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.av
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.backedge.i.i.i
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.bf, %.backedge.i.i.i ], [ %i.bb, %bb.e ] ; 3 uses
  %i.bc = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %i.bg = add i64 %.sroa.01.0.i.i.i.i, %i.be
  %i.bh = and i64 %i.bg, %i.ad                    ; 2 uses
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -12
  %i.bl = load i32, ptr %i.bk, align 4, !alias.scope !628, !noalias !629, !noundef !4
  %i.bm = icmp eq i32 %i.bl, %i.aw
  br i1 %i.bm, label %bb.f, label %.backedge.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !628, !noalias !629, !noundef !4
  %i.bp = icmp eq i32 %i.bo, %i.ay
  br i1 %i.bp, label %.split.i.i.i, label %.backedge.i.i.i

.split.i.i.i:                                     ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !628, !noalias !629, !noundef !4
  %i.bs = icmp eq i32 %i.ai, %i.br
  br i1 %i.bs, label %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBU_.exit.i.i, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %bb.f, %.lr.ph.i.i.i
  %.not.i.not.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.backedge.i.i.i, %bb.e
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %.invoke

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.bx = add i64 %.sroa.01.0.i.i.i.i, %i.bw
  br label %bb.e

_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBU_.exit.i.i: ; preds = %.split.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %.idx.neg.i.i = mul i64 %i.bh, 12
  %i.by = sdiv exact i64 %.idx.neg.i.i, 12        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.bz = add nsw i64 %i.by, -16
  %i.ca = and i64 %i.bz, %i.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ca ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !633
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !634
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i, splat (i8 -1)
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cd, i1 false)
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cg, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.ci, %i.ch
  %i.cj = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBU_.exit.i.i
  %i.ck = add i64 %5, 1                           ; 2 uses
  store i64 %i.ck, ptr %i.s, align 8, !alias.scope !635
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBU_.exit.i.i
  %6 = phi i64 [ %i.ck, %bb.h ], [ %5, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBU_.exit.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.h ], [ -128, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0EBU_.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.ce, align 1, !noalias !636
  %i.cl = getelementptr i8, ptr %i.cb, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.cl, align 1, !noalias !636
  %i.cm = add i64 %4, -1                          ; 2 uses
  store i64 %i.cm, ptr %i.t, align 8, !alias.scope !635
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.03.018.i, i64 12 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ab
  br i1 %i.co, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.i, %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !616, !nonnull !4, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !616, !noundef !4 ; 2 uses
  %.idx23.i = mul nuw nsw i64 %i.cs, 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx23.i
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %bb.q
  %.sroa.08.019.i = phi ptr [ %i.ft, %bb.q ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.08.019.i, align 4, !alias.scope !637, !noalias !616 ; 4 uses
  %.sroa.6.0..sroa.08.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa.08.0.sroa_idx.i, align 4, !alias.scope !637, !noalias !616 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %.val.i10.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !639, !noundef !4
  %i.cv = load i64, ptr @_RNvNtNtCsjdYVxJKtkyg_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !640, !noundef !4
  %i.cw = xor i64 %.val.i10.i, %.sroa.0.0.copyload.i
  %i.cx = zext i64 %i.cw to i128
  %i.cy = zext i32 %.sroa.6.0.copyload.i to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = zext i64 %i.cz to i128
  %i.db = mul nuw i128 %i.da, %i.cx               ; 2 uses
  %i.dc = lshr i128 %i.db, 64
  %i.dd = xor i128 %i.dc, %i.db
  %i.de = trunc i128 %i.dd to i64                 ; 2 uses
  %i.df = load i64, ptr %i.s, align 8, !alias.scope !641, !noundef !4
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.di = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.dj = trunc nuw i64 %i.di to i32
  br i1 %i.dg, label %bb.j, label %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i, !prof !9

bb.j:                                             ; preds = %.lr.ph21.i
  %i.dk = invoke { i64, i64 } @_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx, i1 noundef zeroext true) #25
          to label %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i: ; preds = %bb.j, %.lr.ph21.i
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !642, !nonnull !4, !noundef !4 ; 8 uses
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !642, !noundef !4 ; 4 uses
  %i.dl = lshr i64 %i.de, 57
  %i.dm = trunc nuw nsw i64 %i.dl to i8           ; 3 uses
  %i.dn = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.de, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %i.eu, %bb.n ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %.sroa.4.124.i.i.i.i, %bb.n ]
  %.sroa.01.0.i.i.i11.i = phi i64 [ 0, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %.sroa.01.126.i.i.i.i, %bb.n ]
  %i.dp = phi i64 [ 0, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %i.et, %bb.n ]
  %.sroa.0.021.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.021.i.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i.i = load <16 x i8>, ptr %i.dq, align 1, !noalias !643 ; 3 uses
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, %i.do
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %.not32.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.backedge.i.i.i.i
  %.sroa.05.033.i.i.i.i = phi i16 [ %i.dw, %.backedge.i.i.i.i ], [ %i.ds, %bb.k ] ; 3 uses
  %i.dt = add i16 %.sroa.05.033.i.i.i.i, -1
  %i.du = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.033.i.i.i.i, i1 true)
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = and i16 %i.dt, %.sroa.05.033.i.i.i.i    ; 2 uses
  %i.dx = add i64 %.sroa.0.021.i.i.i.i, %i.dv
  %i.dy = and i64 %i.dx, %.val5.i.i.i
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [12 x i8], ptr %.val.i.i.i, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -12
  %i.ec = load i32, ptr %i.eb, align 4, !alias.scope !644, !noalias !645, !noundef !4
  %i.ed = icmp eq i32 %i.ec, %i.dh
  br i1 %i.ed, label %bb.l, label %.backedge.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.ef = load i32, ptr %i.ee, align 4, !alias.scope !644, !noalias !645, !noundef !4
  %i.eg = icmp eq i32 %i.ef, %i.dj
  br i1 %i.eg, label %.split.i.i.i.i, label %.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !644, !noalias !645, !noundef !4
  %i.ej = icmp eq i32 %.sroa.6.0.copyload.i, %i.ei
  br i1 %i.ej, label %.invoke, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.split.i.i.i.i, %bb.l, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %bb.k
  %.not11.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i11.i, 1
  br i1 %.not11.i.i.i.i, label %.thread.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ek = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %.thread28.i.i.i.i

.thread28.i.i.i.i:                                ; preds = %bb.m
  %i.em = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = add i64 %.sroa.0.021.i.i.i.i, %i.en
  %i.ep = and i64 %i.eo, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread28.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.125.i.i.i.i = phi i64 [ %i.ep, %.thread28.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread.i.i.i.i, %bb.m
  %.sroa.01.126.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.m ]
  %.sroa.4.124.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.m ]
  %i.et = add i64 %i.dp, 16                       ; 2 uses
  %i.eu = add i64 %i.et, %.sroa.0.021.i.i.i.i
  br label %bb.k

bb.o:                                             ; preds = %.thread.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.125.i.i.i.i
  %i.ew = load i8, ptr %i.ev, align 1, !noalias !646, !noundef !4 ; 2 uses
  %i.ex = icmp sgt i8 %i.ew, -1
  br i1 %i.ex, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !646
  %i.ey = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.ez = bitcast <16 x i1> %i.ey to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.ez, 0
  %i.fa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ez, i1 true)
  %i.fb = zext nneg i16 %i.fa to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fb
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !647
  br label %bb.q

.invoke:                                          ; preds = %._crit_edge.i.i.i, %.split.i.i.i.i
  %i.fc = phi ptr [ @8, %.split.i.i.i.i ], [ @5, %._crit_edge.i.i.i ]
  %i.fd = phi i64 [ 43, %.split.i.i.i.i ], [ 37, %._crit_edge.i.i.i ]
  %i.fe = phi ptr [ @9, %.split.i.i.i.i ], [ @7, %._crit_edge.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ff = phi i8 [ %.pre.i.i, %bb.p ], [ %i.ew, %bb.o ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.fb, %bb.p ], [ %.sroa.4.125.i.i.i.i, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.fh = and i8 %i.ff, 1
  %i.fi = zext nneg i8 %i.fh to i64
  %i.fj = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.fk = and i64 %i.fj, %.val5.i.i.i
  store i8 %i.dm, ptr %i.fg, align 1, !noalias !647
  %i.fl = getelementptr i8, ptr %.val.i.i.i, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store i8 %i.dm, ptr %i.fm, align 1, !noalias !647
  %i.fn = load <2 x i64>, ptr %i.s, align 8, !alias.scope !649
  %i.fo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.fi, i64 0
  %i.fp = sub <2 x i64> %i.fn, %i.fo
  store <2 x i64> %i.fp, ptr %i.s, align 8, !alias.scope !649
  %i.fq = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.fr = getelementptr inbounds [12 x i8], ptr %.val.i.i.i, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -12
  store i64 %.sroa.0.0.copyload.i, ptr %i.fs, align 4, !noalias !650
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fr, i64 -4
  store i32 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !650
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 12 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ct
  br i1 %i.fu, label %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit, label %.lr.ph21.i

.thread27:                                        ; preds = %bb.t, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEEB2e_.exit
  store i64 -1, ptr %0, align 8
  call void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx, i64 noundef 12, i64 noundef 16)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.thread27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit: ; preds = %bb.q, %._crit_edge.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !4
  %i.fx = icmp eq i64 %i.fw, %3
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !nonnull !4, !noundef !4
end_hunk_0
