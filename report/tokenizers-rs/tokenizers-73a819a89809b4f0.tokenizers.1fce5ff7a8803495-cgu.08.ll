inline.NumInlined: 1233
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE12contains_keyeECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %.val4.i.i = load i64, ptr %i.v, align 8, !alias.scope !121, !noalias !124, !noundef !4
  %i.w = icmp eq i64 %2, %.val4.i.i
  br i1 %i.w, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.thread.i, !prof !44

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %i.u, i64 -16
  %.val3.i.i = load ptr, ptr %i.x, align 8, !noalias !128, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i, i64 %2), !alias.scope !129, !noalias !133
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs2JiOgHzbbc7_10tokenizers.exit, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.thread.i, !prof !53

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.thread.i, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs2JiOgHzbbc7_10tokenizers.exit, !prof !23

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.thread.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i, %.lr.ph.i
  %i.ac = add i16 %.sroa.06.0.i34.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ae = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i, %i.ae
  br label %bb.c

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyeBS_uE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6removeeECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = tail call { ptr, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTReuEE12remove_entryNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %.not = icmp ne ptr %i.d, null
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder17build_with_valuesINtNtCscdodAO9FK5_5alloc3vec3VecTRemEEB2e_mECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  %i.k = alloca [24 x i8], align 8                ; 18 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.5.i.sroa.10 = alloca [20 x i8], align 4  ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 23 uses
  %i.o = alloca [1 x i8], align 1                 ; 3 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 11 uses
  %i.s = alloca [72 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [1 x i8], align 1                 ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [72 x i8], align 8                ; 11 uses
  %i.x = alloca [72 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %i.z = alloca [1 x i8], align 1                 ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 10 uses
  %i.ag = alloca [64 x i8], align 8               ; 18 uses
  %.sroa.026 = alloca [48 x i8], align 8          ; 5 uses
  %.sroa.12 = alloca [20 x i8], align 4           ; 6 uses
  %i.ah = alloca [64 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.val = load i8, ptr %i.ai, align 4, !range !3, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !144
  %i.aj = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 97) 96, i64 noundef range(i64 4, 9) 8) #25, !noalias !144 ; 9 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #24
          to label %.noexc53.i unwind label %bb.ee, !noalias !139

.noexc53.i:                                       ; preds = %bb.b
  unreachable

.thread88.i:                                      ; preds = %.loopexit.i, %bb.au, %.invoke.i, %bb.g, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread78.i

bb.c:                                             ; preds = %bb.a
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 0, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store i64 0, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  store i32 0, ptr %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx4.sroa_idx.i.i, align 4, !noalias !144
  %.sroa.53.sroa.9.0..sroa.53.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i32 0, ptr %.sroa.53.sroa.9.0..sroa.53.0..sroa_idx4.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.53.sroa.10.0..sroa.53.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  store i32 0, ptr %.sroa.53.sroa.10.0..sroa.53.0..sroa_idx4.sroa_idx.i.i, align 4, !noalias !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !noalias !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.i.i, i8 0, i64 28, i1 false), !noalias !144
  store i64 2, ptr %i.ag, align 8, !alias.scope !141, !noalias !139
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 11 uses
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !139
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 12 uses
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !139
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 4 uses
  store i64 0, ptr %i.al, align 8, !alias.scope !141, !noalias !139
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !139
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !141, !noalias !139
  store i8 %.val, ptr %i.am, align 8, !alias.scope !141, !noalias !139
  %.sroa.01.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !136, !noalias !145
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !136, !noalias !145, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.53.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !136, !noalias !145 ; 3 uses
  %i.an = icmp ult i64 %.sroa.53.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.an)
  %.idx.i = mul nuw nsw i64 %.sroa.53.0.copyload.i, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !139
  store ptr %.sroa.4.0.copyload.i, ptr %i.af, align 8, !noalias !139
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !139
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !139
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  store ptr %i.ao, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !139
  %i.ap = icmp eq i64 %.sroa.53.0.copyload.i, 0
  br i1 %i.ap, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.7128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %.sroa.8129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.9130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i

.body.i:                                          ; preds = %bb.ed, %bb.dy, %bb.dw, %bb.dp, %bb.dh
  %.pn.i = phi { ptr, i32 } [ %i.oe, %bb.dw ], [ %i.om, %bb.dy ], [ %i.nk, %bb.dp ], [ %i.me, %bb.dh ], [ %i.pg, %bb.ed ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %.thread78.i unwind label %bb.dg, !noalias !139

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc20.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i
  %i.at = phi ptr [ %.sroa.4.0.copyload.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i ], [ %i.pm, %.noexc20.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !146, !noalias !149
  %.sroa.04.0.copyload.i = load ptr, ptr %i.at, align 8, !noalias !151 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !151
  %.not.i = icmp eq ptr %.sroa.04.0.copyload.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i, label %.noexc.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i: ; preds = %.noexc20.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.c
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i unwind label %.thread88.i, !noalias !139

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !139
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !139, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i
  %i.ay = icmp ugt i64 %i.aw, 16777215
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i
  %.sroa.20.0 = phi ptr [ %.sroa.20.0.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i ], [ @4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i ], [ inttoptr (i64 16777215 to ptr), %bb.d ]
  %.sroa.25.0 = phi i32 [ %.sroa.25.1.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i ], [ undef, %bb.d ]
  %.sroa.17.0 = phi i64 [ %.sroa.17.0.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i ], [ 13, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i ], [ 13, %bb.d ]
  %.sroa.14.0 = phi ptr [ %.sroa.11.0.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i ], [ @3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i ], [ @3, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.08.0.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit56.i ], [ 2, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7oYvdc6j6uT_9daachorse11nfa_builder10NfaBuilderhmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64) %i.ag)
          to label %.thread210 unwind label %.thread207

.thread210:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !139
  br label %bb.eg

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !139
  %i.az = icmp eq i8 %.val, 0
  %.val47.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !139 ; 24 uses
  %.val48.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !139, !noundef !4 ; 17 uses
  %i.ba = icmp ult i64 %.val48.i, 192153584101141163 ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.au

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !152
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !152
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %.val48.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc60.i unwind label %.thread88.i, !noalias !139

.noexc60.i:                                       ; preds = %bb.g
  %i.bb = load i64, ptr %i.v, align 8, !range !155, !noalias !152, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !156, !noalias !152, !noundef !4 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %.noexc60.i
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !152
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.av, %bb.h
  %i.bh = phi i64 [ %i.be, %bb.h ], [ %i.fk, %bb.av ]
  %i.bi = phi i64 [ %i.bg, %bb.h ], [ %i.fm, %bb.av ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bi) #24
          to label %.cont.i unwind label %.thread88.i, !noalias !139

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %.noexc60.i
  %i.bj = load ptr, ptr %i.bf, align 8, !noalias !152, !nonnull !4, !noundef !4
  %i.bk = icmp samesign ule i64 %.val48.i, %i.be
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !152
  store i64 %i.be, ptr %i.y, align 8, !noalias !152
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr %i.bj, ptr %i.bl, align 8, !noalias !152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 7 uses
  store i64 0, ptr %i.bm, align 8, !noalias !152
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i) ]
  %.not.i57.i = icmp eq i64 %.val48.i, 0
  br i1 %.not.i57.i, label %.invoke126.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %.val47.i, align 8, !noalias !157, !noundef !4 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 9223372036854775807
  br i1 %i.bo, label %bb.q, label %.invoke.i.i, !prof !22

bb.k:                                             ; preds = %.body.i.i, %bb.u, %bb.o
  %.pn.i58.i = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.o ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.m unwind label %bb.l, !noalias !152

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body109.i.i unwind label %bb.n, !noalias !152

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread78.i unwind label %bb.at, !noalias !152

bb.n:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !152
  unreachable

bb.o:                                             ; preds = %.invoke126.i.i, %.invoke.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.p:                                             ; preds = %bb.aq
  unreachable

bb.q:                                             ; preds = %bb.j
  %i.bs = add nuw nsw i64 %i.bn, 1
  store i64 %i.bs, ptr %.val47.i, align 8, !noalias !157
  %i.bt = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !152, !noundef !4 ; 3 uses
  %.not93.i.i = icmp eq ptr %i.bu, null
  br i1 %.not93.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !noalias !152
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.sroa.0.0.i.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.bx = phi <2 x i64> [ %i.bw, %bb.r ], [ <i64 undef, i64 0>, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !152
  store i64 %.sroa.015.sroa.0.0.i.i, ptr %i.x, align 8, !noalias !152
  %.sroa.017.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %.sroa.017.sroa.2.0..sroa_idx.i.i, align 8, !noalias !152
  %.sroa.017.sroa.2.sroa.2.0..sroa.017.sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.bu, ptr %.sroa.017.sroa.2.sroa.2.0..sroa.017.sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !152
  %.sroa.017.sroa.2.sroa.3.0..sroa.017.sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.by = extractelement <2 x i64> %i.bx, i64 0
  store i64 %i.by, ptr %.sroa.017.sroa.2.sroa.3.0..sroa.017.sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !152
  %.sroa.017.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %.sroa.015.sroa.0.0.i.i, ptr %.sroa.017.sroa.3.0..sroa_idx.i.i, align 8, !noalias !152
  %.sroa.017.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr null, ptr %.sroa.017.sroa.4.0..sroa_idx.i.i, align 8, !noalias !152
  %.sroa.017.sroa.4.sroa.2.0..sroa.017.sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.bu, ptr %.sroa.017.sroa.4.sroa.2.0..sroa.017.sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !152
  %.sroa.017.sroa.4.sroa.3.0..sroa.017.sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store <2 x i64> %i.bx, ptr %.sroa.017.sroa.4.sroa.3.0..sroa.017.sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !152
  br label %bb.t

bb.t:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.s
  %i.bz = invoke { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterhmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x)
          to label %bb.v unwind label %bb.u, !noalias !152 ; 2 uses

bb.u:                                             ; preds = %bb.x, %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load i64, ptr %.val47.i, align 8, !noalias !152, !noundef !4
  %i.cc = add i64 %i.cb, -1
  store i64 %i.cc, ptr %.val47.i, align 8, !noalias !152
  br label %bb.k

bb.v:                                             ; preds = %bb.t
  %i.cd = extractvalue { ptr, ptr } %i.bz, 0
  %.not94.i.i = icmp eq ptr %i.cd, null
  br i1 %.not94.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = extractvalue { ptr, ptr } %i.bz, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !152, !noundef !4
  %i.cg = load i64, ptr %i.bm, align 8, !alias.scope !160, !noalias !152, !noundef !4 ; 3 uses
  %i.ch = load i64, ptr %i.y, align 8, !range !163, !alias.scope !160, !noalias !152, !noundef !4
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.x, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.u, !noalias !152

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cj = load ptr, ptr %i.bl, align 8, !alias.scope !160, !noalias !152, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cg
  store i32 %i.cf, ptr %i.ck, align 4, !noalias !152
  %i.cl = add i64 %i.cg, 1
  store i64 %i.cl, ptr %i.bm, align 8, !alias.scope !160, !noalias !152
  br label %bb.t

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !152
  %i.cm = load i64, ptr %.val47.i, align 8, !noalias !152, !noundef !4
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %.val47.i, align 8, !noalias !152
  %i.co = load i64, ptr %i.bm, align 8, !noalias !152, !noundef !4 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 2305843009213693952
  call void @llvm.assume(i1 %i.cp)
  %.not45.i.i = icmp eq i64 %i.co, 0
  br i1 %.not45.i.i, label %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE11build_failsCs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y
  %.sroa.04.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.04.sroa.5.sroa.6.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.04.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.04.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.04.sroa.7.sroa.5.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.04.sroa.7.sroa.6.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  br label %bb.z

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i.i
  %.sroa.01.044.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cu, %bb.ah ] ; 2 uses
  %i.cq = load ptr, ptr %i.bl, align 8, !noalias !152, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.sroa.01.044.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !152, !noundef !4
  %i.ct = zext i32 %i.cs to i64                   ; 3 uses
  %i.cu = add nuw nsw i64 %.sroa.01.044.i.i, 1    ; 2 uses
  %i.cv = icmp samesign ugt i64 %.val48.i, %i.ct
  br i1 %i.cv, label %bb.aa, label %.invoke126.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %.val47.i, i64 %i.ct ; 9 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !164, !noundef !4 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, 9223372036854775807
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder17build_with_valuesINtNtCscdodAO9FK5_5alloc3vec3VecTRemEEB2e_mECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.hv = load i32, ptr %i.ht, align 4, !noalias !176, !noundef !4 ; 2 uses
  %i.hw = load i32, ptr %i.ho, align 8, !noalias !176, !noundef !4 ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %.loopexit.i93.i, label %.preheader.i.i

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !176
  %i.hy = load i64, ptr %i.ha, align 8, !noalias !176, !noundef !4
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %i.ha, align 8, !noalias !176
  %i.ia = load i64, ptr %i.fq, align 8, !noalias !176, !noundef !4 ; 2 uses
  %i.ib = icmp ult i64 %i.ia, 2305843009213693952
  call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp samesign ult i64 %i.gy, %i.ia
  br i1 %i.ic, label %bb.bo, label %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE20build_fails_leftmostCs2JiOgHzbbc7_10tokenizers.exit.i

.loopexit.i93.i:                                  ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.by
  %.sroa.015.0.i.i = phi i32 [ 1, %bb.by ], [ %i.iq, %bb.cd ], [ 0, %bb.cg ], [ 1, %bb.cf ]
  %i.id = zext i32 %i.hv to i64                   ; 3 uses
  %i.ie = icmp samesign ugt i64 %.val48.i, %i.id
  br i1 %i.ie, label %bb.ch, label %.invoke2346

.preheader.i.i:                                   ; preds = %bb.by, %bb.cg
  %.sroa.08.0.i87.i = phi i32 [ %i.iy, %bb.cg ], [ %i.hw, %bb.by ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !176
  store i8 %i.hu, ptr %i.p, align 1, !noalias !185
  %i.if = zext i32 %.sroa.08.0.i87.i to i64       ; 3 uses
  %i.ig = icmp samesign ugt i64 %.val48.i, %i.if
  br i1 %i.ig, label %bb.ca, label %.invoke2346

bb.ca:                                            ; preds = %.preheader.i.i
  %i.ih = getelementptr inbounds nuw [48 x i8], ptr %.val47.i, i64 %i.if ; 11 uses
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !188, !noundef !4 ; 2 uses
  %i.ij = icmp ult i64 %i.ii, 9223372036854775807
  br i1 %i.ij, label %.noexc.i91.i, label %.invoke2348, !prof !22

.noexc.i91.i:                                     ; preds = %bb.ca
  %i.ik = add nuw nsw i64 %i.ii, 1
  store i64 %i.ik, ptr %i.ih, align 8, !noalias !188
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.im = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMaphmE3gethECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p)
          to label %bb.cb unwind label %bb.cc, !noalias !185 ; 2 uses

bb.cb:                                            ; preds = %.noexc.i91.i
  %.not.i.i92.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i92.i, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %.noexc.i91.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load i64, ptr %i.ih, align 8, !noalias !176, !noundef !4
  %i.ip = add i64 %i.io, -1
  store i64 %i.ip, ptr %i.ih, align 8, !noalias !176
  br label %.body.i85.i

bb.cd:                                            ; preds = %bb.cb
  %i.iq = load i32, ptr %i.im, align 4, !noalias !185, !noundef !4
  %i.ir = load i64, ptr %i.ih, align 8, !noalias !176, !noundef !4
  %i.is = add i64 %i.ir, -1
  store i64 %i.is, ptr %i.ih, align 8, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !176
  br label %.loopexit.i93.i

bb.ce:                                            ; preds = %bb.cb
  %i.it = load i64, ptr %i.ih, align 8, !noalias !176, !noundef !4 ; 2 uses
  %i.iu = add i64 %i.it, -1                       ; 2 uses
  store i64 %i.iu, ptr %i.ih, align 8, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !176
  %i.iv = icmp sgt i64 %i.it, 0
  br i1 %i.iv, label %bb.cf, label %.invoke2348, !prof !22

.invoke2348:                                      ; preds = %bb.ce, %bb.ca
  %i.iw = phi ptr [ @108, %bb.ca ], [ @93, %bb.ce ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iw) #24
          to label %.cont2349 unwind label %.loopexit.split-lp.i88.i, !noalias !176

.cont2349:                                        ; preds = %.invoke2348
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.iy = load i32, ptr %i.ix, align 8, !noalias !176, !noundef !4 ; 3 uses
  store i64 %i.iu, ptr %i.ih, align 8, !noalias !176
  %i.iz = icmp eq i32 %i.iy, 1
  br i1 %i.iz, label %.loopexit.i93.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ja = or i32 %i.iy, %.sroa.08.0.i87.i
  %or.cond.i94.i = icmp eq i32 %i.ja, 0
  br i1 %or.cond.i94.i, label %.loopexit.i93.i, label %.preheader.i.i

bb.ch:                                            ; preds = %.loopexit.i93.i
  %i.jb = getelementptr inbounds nuw [48 x i8], ptr %.val47.i, i64 %i.id ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !176, !noundef !4
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %bb.cj, label %bb.ci, !prof !22

.invoke2346:                                      ; preds = %.loopexit.i93.i, %.preheader.i.i
  %i.je = phi i64 [ %i.if, %.preheader.i.i ], [ %i.id, %.loopexit.i93.i ]
  %i.jf = phi ptr [ @107, %.preheader.i.i ], [ @94, %.loopexit.i93.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.je, i64 noundef %.val48.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jf) #24
          to label %.cont2347 unwind label %.loopexit.split-lp.i88.i, !noalias !176

.cont2347:                                        ; preds = %.invoke2346
  unreachable

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #24
          to label %bb.be unwind label %.loopexit.split-lp.i88.i, !noalias !176

bb.cj:                                            ; preds = %bb.ch
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  store i32 %.sroa.015.0.i.i, ptr %i.jg, align 8, !noalias !176
  %i.jh = load i64, ptr %i.fq, align 8, !alias.scope !191, !noalias !176, !noundef !4 ; 3 uses
  %i.ji = load i64, ptr %i.t, align 8, !range !163, !alias.scope !191, !noalias !176, !noundef !4
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.ck, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit121.i.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit121.i.i unwind label %.loopexit12.i.i, !noalias !176

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE8push_mutCs2JiOgHzbbc7_10tokenizers.exit121.i.i: ; preds = %bb.ck, %bb.cj
  %i.jk = load ptr, ptr %i.fp, align 8, !alias.scope !191, !noalias !176, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jh
  store i32 %i.hv, ptr %i.jl, align 4, !noalias !176
  %i.jm = add i64 %i.jh, 1
  store i64 %i.jm, ptr %i.fq, align 8, !alias.scope !191, !noalias !176
  br label %bb.bw

bb.cl:                                            ; preds = %bb.bb
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body113.i.i

.body113.i.i:                                     ; preds = %bb.cl, %bb.ba
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !176
  unreachable

_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE20build_fails_leftmostCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bz, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !176
  br label %bb.cm

bb.cm:                                            ; preds = %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE20build_fails_leftmostCs2JiOgHzbbc7_10tokenizers.exit.i, %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE11build_failsCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !139, !nonnull !4, !noundef !4 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !139, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %.idx.i.i = shl nuw nsw i64 %i.jr, 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.idx.i.i
  %i.jt = icmp eq i64 %i.jr, 0
  br i1 %i.jt, label %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE13build_outputsCs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i100.i

.lr.ph.i100.i:                                    ; preds = %bb.cm, %bb.cz
  %.sroa.0.064.i.i = phi ptr [ %i.ju, %bb.cz ], [ %i.jp, %bb.cm ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.064.i.i, i64 4 ; 2 uses
  %i.jv = load i32, ptr %.sroa.0.064.i.i, align 4, !alias.scope !197, !noalias !199, !noundef !4
  %i.jw = zext i32 %i.jv to i64                   ; 3 uses
  %i.jx = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !noundef !4 ; 2 uses
  %i.jy = icmp ugt i64 %i.jx, %i.jw
  br i1 %i.jy, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i100.i
  %i.jz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !nonnull !4, !noundef !4
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jz, i64 %i.jw ; 12 uses
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !200, !noundef !4
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.cp, label %bb.cq, !prof !22

bb.co:                                            ; preds = %.lr.ph.i100.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jw, i64 noundef %i.jx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #24
          to label %.noexc109.i unwind label %bb.dd, !noalias !139

.noexc109.i:                                      ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.cn
  store i64 -1, ptr %i.ka, align 8, !noalias !200
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 36
  %i.ke = load i32, ptr %i.kd, align 4, !noalias !200, !noundef !4 ; 2 uses
  %.not.i101.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i101.i, label %bb.ct, label %bb.cr

bb.cq:                                            ; preds = %bb.cn
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
          to label %.noexc110.i unwind label %bb.dd, !noalias !139

.noexc110.i:                                      ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kg = load i32, ptr %i.kf, align 8, !noalias !200, !noundef !4
  %i.kh = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !noundef !4 ; 3 uses
  %i.ki = icmp ult i64 %i.kh, 768614336404564651
  call void @llvm.assume(i1 %i.ki)
  %i.kj = icmp samesign ugt i64 %i.kh, 4294967294
  %3 = shl nuw i64 %i.kh, 32
  %4 = add i64 %3, 4294967808
  %.sroa.04.0.insert.insert.i.i = select i1 %i.kj, i64 513, i64 %4 ; 2 uses
  %5 = trunc i64 %.sroa.04.0.insert.insert.i.i to i1
  br i1 %5, label %bb.cs, label %bb.cu, !prof !23

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !201
  store i8 2, ptr %i.o, align 1, !noalias !201
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 43, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #24
          to label %.noexc.i108.i unwind label %.loopexit.split-lp.i102.i, !noalias !200

.noexc.i108.i:                                    ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cp
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kl = load i32, ptr %i.kk, align 8, !noalias !200, !noundef !4
  %i.km = zext i32 %i.kl to i64                   ; 3 uses
  %i.kn = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !noundef !4 ; 2 uses
  %i.ko = icmp ugt i64 %i.kn, %i.km
  br i1 %i.ko, label %bb.da, label %.invoke2350

bb.cu:                                            ; preds = %bb.cr
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.04.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ka, i64 44
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %i.kp, align 4, !noalias !200
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kr = load i32, ptr %i.kq, align 8, !noalias !200, !noundef !4
  %i.ks = zext i32 %i.kr to i64                   ; 3 uses
  %i.kt = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !noundef !4 ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, %i.ks
  br i1 %i.ku, label %bb.cv, label %.invoke2350

bb.cv:                                            ; preds = %bb.cu
  %i.kv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !nonnull !4, !noundef !4
  %i.kw = getelementptr inbounds nuw [48 x i8], ptr %i.kv, i64 %i.ks ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !204, !noundef !4
  %i.ky = icmp ult i64 %i.kx, 9223372036854775807
  br i1 %i.ky, label %bb.cw, label %.invoke2352, !prof !22

bb.cw:                                            ; preds = %bb.cv
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 44
  %i.la = load i32, ptr %i.kz, align 4, !noalias !200, !noundef !4
  %i.lb = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !207, !noalias !210, !noundef !4 ; 3 uses
  %i.lc = load i64, ptr %i.al, align 8, !range !163, !alias.scope !207, !noalias !210, !noundef !4
  %i.ld = icmp eq i64 %i.lb, %i.lc
  br i1 %i.ld, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs7oYvdc6j6uT_9daachorse6OutputmEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.cy unwind label %.loopexit.i106.i, !noalias !200

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.le = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !207, !noalias !210, !nonnull !4, !noundef !4
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.le, i64 %i.lb ; 3 uses
  store i32 %i.kg, ptr %i.lf, align 4, !noalias !200
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store i32 %i.ke, ptr %.sroa.4.0..sroa_idx.i104.i, align 4, !noalias !200
  %.sroa.5.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i32 %i.la, ptr %.sroa.5.0..sroa_idx.i105.i, align 4, !noalias !200
  %i.lg = add i64 %i.lb, 1
  store i64 %i.lg, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !207, !noalias !210
  br label %bb.cz

bb.cz:                                            ; preds = %bb.db, %bb.cy
  %i.lh = load i64, ptr %i.ka, align 8, !noalias !200, !noundef !4
  %i.li = add i64 %i.lh, 1
  store i64 %i.li, ptr %i.ka, align 8, !noalias !200
  %i.lj = icmp eq ptr %i.ju, %i.js
  br i1 %i.lj, label %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE13build_outputsCs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i100.i

bb.da:                                            ; preds = %bb.ct
  %i.lk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !194, !noalias !200, !nonnull !4, !noundef !4
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %i.lk, i64 %i.km ; 5 uses
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !212, !noundef !4 ; 2 uses
  %i.ln = icmp ult i64 %i.lm, 9223372036854775807
  br i1 %i.ln, label %bb.db, label %.invoke2352, !prof !22

.invoke2352:                                      ; preds = %bb.da, %bb.cv
  %i.lo = phi ptr [ @86, %bb.cv ], [ @88, %bb.da ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lo) #24
          to label %.cont2353 unwind label %.loopexit.split-lp.i102.i, !noalias !200

.cont2353:                                        ; preds = %.invoke2352
  unreachable

.invoke2350:                                      ; preds = %bb.ct, %bb.cu
  %i.lp = phi i64 [ %i.ks, %bb.cu ], [ %i.km, %bb.ct ]
  %i.lq = phi i64 [ %i.kt, %bb.cu ], [ %i.kn, %bb.ct ]
  %i.lr = phi ptr [ @85, %bb.cu ], [ @87, %bb.ct ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lp, i64 noundef %i.lq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lr) #24
          to label %.cont2351 unwind label %.loopexit.split-lp.i102.i, !noalias !200

.cont2351:                                        ; preds = %.invoke2350
  unreachable

bb.db:                                            ; preds = %bb.da
  %i.ls = add nuw nsw i64 %i.lm, 1
  store i64 %i.ls, ptr %i.ll, align 8, !noalias !212
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 44
  %i.lu = load i32, ptr %i.lt, align 4, !noalias !200, !noundef !4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ka, i64 44
  store i32 %i.lu, ptr %i.lv, align 4, !noalias !200
  %i.lw = load i64, ptr %i.ll, align 8, !noalias !200, !noundef !4
  %i.lx = add i64 %i.lw, -1
  store i64 %i.lx, ptr %i.ll, align 8, !noalias !200
  br label %bb.cz

.loopexit.i106.i:                                 ; preds = %bb.cx
  %lpad.loopexit.i107.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp.i102.i:                        ; preds = %.invoke2352, %.invoke2350, %bb.cs
  %lpad.loopexit.split-lp.i103.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit.split-lp.i102.i, %.loopexit.i106.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i107.i, %.loopexit.i106.i ], [ %lpad.loopexit.split-lp.i103.i, %.loopexit.split-lp.i102.i ]
  %i.ly = load i64, ptr %i.ka, align 8, !noalias !200, !noundef !4
  %i.lz = add i64 %i.ly, 1
  store i64 %i.lz, ptr %i.ka, align 8, !noalias !200
  br label %.body111.i

bb.dd:                                            ; preds = %bb.cq, %bb.co
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i

.body111.i:                                       ; preds = %bb.dd, %bb.dc
  %eh.lpad-body112.i = phi { ptr, i32 } [ %i.ma, %bb.dd ], [ %lpad.phi.i.i, %bb.dc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #27
          to label %.thread78.i unwind label %bb.dg, !noalias !139

_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE13build_outputsCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.cz, %bb.cm
  %.sroa.0.0.copyload = load i64, ptr %i.ag, align 8, !noalias !136 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !136 ; 3 uses
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !136 ; 5 uses
  %.sroa.17.0.copyload = load i64, ptr %i.al, align 8, !noalias !136 ; 2 uses
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !136 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !136 ; 2 uses
  %.sroa.25.0.copyload = load i32, ptr %i.av, align 8, !noalias !136 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4, !noalias !136 ; 2 uses
  %.sroa.2795.0.copyload = load i64, ptr %i.am, align 8, !noalias !136
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.de, !noalias !139

bb.de:                                            ; preds = %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE13build_outputsCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.thread unwind label %bb.df, !noalias !139

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RNvMs1_NtCs7oYvdc6j6uT_9daachorse11nfa_builderINtB5_10NfaBuilderhmE13build_outputsCs2JiOgHzbbc7_10tokenizers.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.ef unwind label %.thread207

bb.df:                                            ; preds = %bb.de
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !139
  unreachable

bb.dg:                                            ; preds = %bb.ee, %.thread78.i, %.body111.i, %.body.i
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !145
  unreachable

bb.dh:                                            ; preds = %.invoke660.i, %.invoke658.i, %.invoke656.i
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc.i:                                         ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !151 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !139
  store ptr %.sroa.04.0.copyload.i, ptr %i.ad, align 8, !noalias !218
  store i64 %.sroa.8.0.copyload.i, ptr %i.aq, align 8, !noalias !218
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 %.sroa.8.0.copyload.i
  %i.mg = icmp ugt i64 %.sroa.8.0.copyload.i, 4294967295
  br i1 %i.mg, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.noexc.i
  %i.mh = trunc nuw i64 %.sroa.8.0.copyload.i to i32
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %.not.i.i, label %bb.dk, label %.lr.ph.i

bb.dj:                                            ; preds = %.noexc.i
  %.sroa.060.4.extract.shift.i.i = and i64 ptrtoint (ptr @97 to i64), -4294967296
  %.sroa.11.0.insert.ext11.i = zext i32 ptrtoint (ptr @97 to i32) to i64
  %.sroa.11.4.insert.insert18.i = or disjoint i64 %.sroa.060.4.extract.shift.i.i, %.sroa.11.0.insert.ext11.i
  %i.mi = inttoptr i64 %.sroa.11.4.insert.insert18.i to ptr
  br label %.loopexit.i

bb.dk:                                            ; preds = %bb.di
  %.sroa.088.4.extract.shift.i.i = and i64 ptrtoint (ptr @97 to i64), -4294967296
  %.sroa.11.0.insert.ext.i = zext i32 ptrtoint (ptr @97 to i32) to i64
  %.sroa.11.4.insert.insert.i = or disjoint i64 %.sroa.088.4.extract.shift.i.i, %.sroa.11.0.insert.ext.i
  %i.mj = inttoptr i64 %.sroa.11.4.insert.insert.i to ptr
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.di, %bb.ds
  %.sroa.0119.0.i280.i = phi ptr [ %i.mk, %bb.ds ], [ %.sroa.04.0.copyload.i, %bb.di ] ; 2 uses
  %.sroa.039.0.i279.i = phi i32 [ %.sroa.039.1.i.i, %bb.ds ], [ 0, %bb.di ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i280.i, i64 1 ; 2 uses
  %i.ml = load i8, ptr %.sroa.0119.0.i280.i, align 1, !noalias !221, !noundef !4 ; 2 uses
  %i.mm = load i8, ptr %i.am, align 8, !range !3, !alias.scope !215, !noalias !222, !noundef !4
  %i.mn = icmp eq i8 %i.mm, 2
  %.pre438.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !139 ; 3 uses
  %i.mo = zext i32 %.sroa.039.0.i279.i to i64     ; 9 uses
  br i1 %i.mn, label %bb.dl, label %.lr.ph._crit_edge.i

bb.dl:                                            ; preds = %.lr.ph.i
  %i.mp = icmp ugt i64 %.pre438.i, %i.mo
  br i1 %i.mp, label %bb.dm, label %.invoke658.i

bb.dm:                                            ; preds = %bb.dl
  %i.mq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !215, !noalias !222, !nonnull !4, !noundef !4
  %i.mr = getelementptr inbounds nuw [48 x i8], ptr %i.mq, i64 %i.mo ; 4 uses
  %i.ms = load i64, ptr %i.mr, align 8, !noalias !223, !noundef !4 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder17build_with_valuesINtNtCscdodAO9FK5_5alloc3vec3VecTRemEEB2e_mECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.nb = load i64, ptr %i.na, align 8, !noalias !230, !noundef !4 ; 2 uses
  %i.nc = icmp ult i64 %i.nb, 9223372036854775807
  br i1 %i.nc, label %.noexc32.i, label %.invoke656.i, !prof !22

.invoke656.i:                                     ; preds = %bb.dn, %bb.dm
  %i.nd = phi ptr [ @99, %bb.dm ], [ @108, %bb.dn ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nd) #24
          to label %.cont657.i unwind label %bb.dh, !noalias !139

.cont657.i:                                       ; preds = %.invoke656.i
  unreachable

.noexc32.i:                                       ; preds = %bb.dn
  %i.ne = add nuw nsw i64 %i.nb, 1
  store i64 %i.ne, ptr %i.na, align 8, !noalias !230
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.ng = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMaphmE3gethECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nf, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.z)
          to label %bb.do unwind label %bb.dp, !noalias !229 ; 2 uses

.invoke658.i:                                     ; preds = %._crit_edge.i, %bb.dt, %.lr.ph._crit_edge.i, %bb.dl
  %i.nh = phi i64 [ %i.mo, %bb.dt ], [ %i.mo, %bb.dl ], [ %i.mo, %.lr.ph._crit_edge.i ], [ %i.or, %._crit_edge.i ]
  %i.ni = phi i64 [ %i.ns, %bb.dt ], [ %i.mx, %.lr.ph._crit_edge.i ], [ %.pre438.i, %bb.dl ], [ %i.os, %._crit_edge.i ]
  %i.nj = phi ptr [ @100, %bb.dt ], [ @107, %.lr.ph._crit_edge.i ], [ @98, %bb.dl ], [ @103, %._crit_edge.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nh, i64 noundef %i.ni, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nj) #24
          to label %.cont659.i unwind label %bb.dh, !noalias !139

.cont659.i:                                       ; preds = %.invoke658.i
  unreachable

bb.do:                                            ; preds = %.noexc32.i
  %.not.i31.i = icmp eq ptr %i.ng, null
  br i1 %.not.i31.i, label %bb.dr, label %bb.dq

bb.dp:                                            ; preds = %.noexc32.i
  %i.nk = landingpad { ptr, i32 }
          cleanup
  %i.nl = load i64, ptr %i.na, align 8, !noalias !139, !noundef !4
  %i.nm = add i64 %i.nl, -1
  store i64 %i.nm, ptr %i.na, align 8, !noalias !139
  br label %.body.i

bb.dq:                                            ; preds = %bb.do
  %i.nn = load i32, ptr %i.ng, align 4, !noalias !229, !noundef !4
  %i.no = load i64, ptr %i.na, align 8, !noalias !139, !noundef !4
  %i.np = add i64 %i.no, -1
  store i64 %i.np, ptr %i.na, align 8, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !139
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  %i.nq = load i64, ptr %i.na, align 8, !noalias !139, !noundef !4
  %i.nr = add i64 %i.nq, -1
  store i64 %i.nr, ptr %i.na, align 8, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !139
  %i.ns = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !215, !noalias !222, !noundef !4 ; 5 uses
  %i.nt = icmp ult i64 %i.ns, 192153584101141163
  call void @llvm.assume(i1 %i.nt)
  %i.nu = icmp samesign ugt i64 %i.ns, 4294967295
  br i1 %i.nu, label %.loopexit.i, label %bb.dt

bb.ds:                                            ; preds = %.noexc26.i, %bb.dq
  %.sroa.039.1.i.i = phi i32 [ %i.nn, %bb.dq ], [ %i.nw, %.noexc26.i ] ; 2 uses
  %i.nv = icmp eq ptr %i.mk, %i.mf
  br i1 %i.nv, label %._crit_edge.i, label %.lr.ph.i

bb.dt:                                            ; preds = %bb.dr
  %i.nw = trunc nuw i64 %i.ns to i32              ; 2 uses
  %i.nx = icmp samesign ugt i64 %i.ns, %i.mo
  br i1 %i.nx, label %bb.du, label %.invoke658.i

bb.du:                                            ; preds = %bb.dt
  %i.ny = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !215, !noalias !222, !nonnull !4, !noundef !4
  %i.nz = getelementptr inbounds nuw [48 x i8], ptr %i.ny, i64 %i.mo ; 7 uses
  %i.oa = load i64, ptr %i.nz, align 8, !noalias !221, !noundef !4
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %bb.dv, label %.invoke660.i, !prof !22

bb.dv:                                            ; preds = %bb.du
  store i64 -1, ptr %i.nz, align 8, !noalias !221
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.od = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMaphmE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oc, i8 noundef %i.ml, i32 noundef %i.nw)
          to label %.noexc25.i unwind label %bb.dw, !noalias !221 ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.oe = landingpad { ptr, i32 }
          cleanup
  %i.of = load i64, ptr %i.nz, align 8, !noalias !139, !noundef !4
  %i.og = add i64 %i.of, 1
  store i64 %i.og, ptr %i.nz, align 8, !noalias !139
  br label %.body.i

.noexc25.i:                                       ; preds = %bb.dv
  %i.oh = load i64, ptr %i.nz, align 8, !noalias !139, !noundef !4
  %i.oi = add i64 %i.oh, 1
  store i64 %i.oi, ptr %i.nz, align 8, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !218
  store i64 0, ptr %.sroa.5126.0..sroa_idx.i.i, align 8, !noalias !218
  store i32 0, ptr %.sroa.7128.0..sroa_idx.i.i, align 4, !noalias !218
  store i32 0, ptr %.sroa.8129.0..sroa_idx.i.i, align 8, !noalias !218
  store i32 0, ptr %.sroa.9130.0..sroa_idx.i.i, align 4, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !noalias !139
  %i.oj = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !233, !noalias !236, !noundef !4 ; 3 uses
  %i.ok = load i64, ptr %i.ag, align 8, !range !163, !alias.scope !233, !noalias !236, !noundef !4
  %i.ol = icmp eq i64 %i.oj, %i.ok
  br i1 %i.ol, label %bb.dx, label %.noexc26.i

bb.dx:                                            ; preds = %.noexc25.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCs7oYvdc6j6uT_9daachorse11nfa_builder15NfaBuilderStatehmEEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc26.i unwind label %bb.dy, !noalias !236

bb.dy:                                            ; preds = %bb.dx
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMaphmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ar)
          to label %.body.i unwind label %bb.dz, !noalias !139

bb.dz:                                            ; preds = %bb.dy
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !139
  unreachable

.noexc26.i:                                       ; preds = %bb.dx, %.noexc25.i
  %i.oo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !233, !noalias !236, !nonnull !4, !noundef !4
  %i.op = getelementptr inbounds nuw [48 x i8], ptr %i.oo, i64 %i.oj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.op, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !noalias !139
  %i.oq = add i64 %i.oj, 1
  store i64 %i.oq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !233, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !218
  br label %bb.ds

._crit_edge.i:                                    ; preds = %bb.ds
  %i.or = zext i32 %.sroa.039.1.i.i to i64        ; 3 uses
  %i.os = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !215, !noalias !222, !noundef !4 ; 2 uses
  %i.ot = icmp ugt i64 %i.os, %i.or
  br i1 %i.ot, label %bb.ea, label %.invoke658.i

bb.ea:                                            ; preds = %._crit_edge.i
  %i.ou = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !215, !noalias !222, !nonnull !4, !noundef !4
  %i.ov = getelementptr inbounds nuw [48 x i8], ptr %i.ou, i64 %i.or ; 10 uses
  %i.ow = load i64, ptr %i.ov, align 8, !noalias !221, !noundef !4
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %bb.eb, label %.invoke660.i, !prof !22

bb.eb:                                            ; preds = %bb.ea
  store i64 -1, ptr %i.ov, align 8, !noalias !221
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 36 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !noalias !221, !noundef !4
  store i32 %.sroa.9.0.copyload.i, ptr %i.oy, align 8, !noalias !221
  store i32 %i.mh, ptr %i.oz, align 4, !noalias !221
  %.not154.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not154.i.i, label %.noexc29.i, label %bb.ec

.invoke660.i:                                     ; preds = %bb.ea, %bb.du
  %i.pb = phi ptr [ @101, %bb.du ], [ @105, %bb.ea ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pb) #24
          to label %.cont661.i unwind label %bb.dh, !noalias !139

.cont661.i:                                       ; preds = %.invoke660.i
  unreachable

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !218
  store ptr %i.ad, ptr %i.aa, align 8, !noalias !218
  %.sroa.4138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRShNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.4138.0..sroa_idx.i.i, align 8, !noalias !218
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @104, ptr noundef nonnull %i.aa)
          to label %.noexc30.i unwind label %bb.ed, !noalias !139

.noexc29.i:                                       ; preds = %bb.eb
  %i.pc = load i64, ptr %i.as, align 8, !alias.scope !215, !noalias !222, !noundef !4
  %i.pd = add i64 %i.pc, 1
  store i64 %i.pd, ptr %i.as, align 8, !alias.scope !215, !noalias !222
  %i.pe = load i64, ptr %i.ov, align 8, !noalias !139, !noundef !4
  %i.pf = add i64 %i.pe, 1
  store i64 %i.pf, ptr %i.ov, align 8, !noalias !139
  br label %.noexc20.i

bb.ed:                                            ; preds = %bb.ec
  %i.pg = landingpad { ptr, i32 }
          cleanup
  %i.ph = load i64, ptr %i.ov, align 8, !noalias !139, !noundef !4
  %i.pi = add i64 %i.ph, 1
  store i64 %i.pi, ptr %i.ov, align 8, !noalias !139
  br label %.body.i

.noexc30.i:                                       ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !218
  %.sroa.061.0.copyload.i = load ptr, ptr %i.ab, align 8, !noalias !218
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.462.0.copyload.i = load i64, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !218
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.563.0.copyload.i = load ptr, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !218
  %i.pj = load i64, ptr %i.ov, align 8, !noalias !139, !noundef !4
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.ov, align 8, !noalias !139
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.dr, %.noexc30.i, %bb.dk, %bb.dj
  %.sroa.11.0.ph.i = phi ptr [ %i.mi, %bb.dj ], [ %.sroa.061.0.copyload.i, %.noexc30.i ], [ %i.mj, %bb.dk ], [ @102, %bb.dr ]
  %.sroa.20.0.ph.i = phi ptr [ @106, %bb.dj ], [ %.sroa.563.0.copyload.i, %.noexc30.i ], [ @4, %bb.dk ], [ inttoptr (i64 4294967295 to ptr), %bb.dr ]
  %.sroa.25.1.ph.i = phi i32 [ -1, %bb.dj ], [ undef, %.noexc30.i ], [ 1, %bb.dk ], [ undef, %bb.dr ]
  %.sroa.17.0.ph.i = phi i64 [ 13, %bb.dj ], [ %.sroa.462.0.copyload.i, %.noexc30.i ], [ 13, %bb.dk ], [ 8, %bb.dr ]
  %.sroa.08.0.ph.i = phi i64 [ 0, %bb.dj ], [ 1, %.noexc30.i ], [ 0, %bb.dk ], [ 2, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !139
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i unwind label %.thread88.i, !noalias !139

.noexc20.i:                                       ; preds = %.noexc18.i, %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !139
  %i.pl = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !238, !noalias !149, !nonnull !4, !noundef !4
  %i.pm = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !238, !noalias !149, !nonnull !4, !noundef !4 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.pl
  br i1 %i.pn, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRemEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRemEEECs2JiOgHzbbc7_10tokenizers.exit126.i: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !139
  br label %bb.e

.thread78.i:                                      ; preds = %.body111.i, %bb.bb, %bb.m, %.body.i, %.thread88.i
  %.pn1477.i = phi { ptr, i32 } [ %.pn.i65.i, %bb.bb ], [ %lpad.thr_comm.i, %.thread88.i ], [ %.pn.i58.i, %bb.m ], [ %eh.lpad-body112.i, %.body111.i ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7oYvdc6j6uT_9daachorse11nfa_builder10NfaBuilderhmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64) %i.ag) #27
          to label %.thread unwind label %bb.dg, !noalias !139

bb.ee:                                            ; preds = %bb.b
  %i.po = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRemEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #27
          to label %.thread unwind label %bb.dg, !noalias !145

.thread207:                                       ; preds = %bb.in, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ef:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !139
  %i.pp = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.pp, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.thread210, %bb.ef
  %.sroa.9.1226 = phi i64 [ %.sroa.9.0, %.thread210 ], [ %.sroa.9.0.copyload, %bb.ef ]
  %.sroa.14.1225 = phi ptr [ %.sroa.14.0, %.thread210 ], [ %.sroa.14.0.copyload, %bb.ef ]
  %.sroa.17.1224 = phi i64 [ %.sroa.17.0, %.thread210 ], [ %.sroa.17.0.copyload, %bb.ef ]
  %.sroa.23.1223 = phi i64 [ 2, %.thread210 ], [ %.sroa.23.0.copyload, %bb.ef ]
  %.sroa.25.1222 = phi i32 [ %.sroa.25.0, %.thread210 ], [ %.sroa.25.0.copyload, %bb.ef ]
  %.sroa.27.0221 = phi i32 [ undef, %.thread210 ], [ %.sroa.27.0.copyload, %bb.ef ]
  %.sroa.20.1220 = phi ptr [ %.sroa.20.0, %.thread210 ], [ %.sroa.20.0.copyload, %bb.ef ]
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.1226, ptr %i.pq, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.1225, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.17.1224, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.20.1220, ptr %.sroa.6151.0..sroa_idx, align 8
  %.sroa.7152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.23.1223, ptr %.sroa.7152.0..sroa_idx, align 8
  %.sroa.8153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.25.1222, ptr %.sroa.8153.0..sroa_idx, align 8
  %.sroa.9154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.27.0221, ptr %.sroa.9154.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.io

bb.eh:                                            ; preds = %bb.ef
  store i64 %.sroa.0.0.copyload, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.9.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %.sroa.14.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store i64 %.sroa.17.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %.sroa.20.0.copyload, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %.sroa.23.0.copyload, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i32 %.sroa.25.0.copyload, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  store i32 %.sroa.27.0.copyload, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %.sroa.2795.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.pr = inttoptr i64 %.sroa.9.0.copyload to ptr ; 15 uses
  %i.ps = ptrtoint ptr %.sroa.14.0.copyload to i64 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !243
  invoke void @_RNvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB4_29DoubleArrayAhoCorasickBuilder10init_array(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc79 unwind label %bb.ie

.noexc79:                                         ; preds = %bb.eh
  %i.pt = load i64, ptr %i.m, align 8, !range !155, !noalias !243, !noundef !4
  %i.pu = trunc nuw i64 %i.pt to i1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.i.sroa.0.0.copyload181 = load i64, ptr %i.pv, align 8, !noalias !243 ; 3 uses
  %.sroa.5.i.sroa.7.0..sroa_idx184.a = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5.i.sroa.7.0.copyload185 = load ptr, ptr %.sroa.5.i.sroa.7.0..sroa_idx184.a, align 8, !noalias !243 ; 2 uses
  %.sroa.5.i.sroa.8.0..sroa_idx188.a = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.i.sroa.8.0.copyload189 = load i64, ptr %.sroa.5.i.sroa.8.0..sroa_idx188.a, align 8, !noalias !243 ; 2 uses
  %.sroa.5.i.sroa.9.0..sroa_idx192.a = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.5.i.sroa.9.0.copyload193 = load i32, ptr %.sroa.5.i.sroa.9.0..sroa_idx192.a, align 8, !noalias !243 ; 2 uses
  %.sroa.5.i.sroa.10.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.sroa.10.0..sroa_idx195, i64 20, i1 false), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !243
  br i1 %i.pu, label %bb.if, label %bb.ei

bb.ei:                                            ; preds = %.noexc79
  store i64 %.sroa.5.i.sroa.0.0.copyload181, ptr %i.n, align 8, !noalias !243
  %.sroa.5.i.sroa.7.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %.sroa.5.i.sroa.7.0.copyload185, ptr %.sroa.5.i.sroa.7.0..sroa_idx182, align 8, !noalias !243
  %.sroa.5.i.sroa.8.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 %.sroa.5.i.sroa.8.0.copyload189, ptr %.sroa.5.i.sroa.8.0..sroa_idx186, align 8, !noalias !243
  %.sroa.5.i.sroa.9.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  store i32 %.sroa.5.i.sroa.9.0.copyload193, ptr %.sroa.5.i.sroa.9.0..sroa_idx190, align 8, !noalias !243
  %.sroa.5.i.sroa.10.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.sroa.10.0..sroa_idx194, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.sroa.10, i64 20, i1 false), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !243
  %i.pw = icmp ult ptr %.sroa.14.0.copyload, inttoptr (i64 192153584101141163 to ptr)
  call void @llvm.assume(i1 %i.pw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !245
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.ps, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc213.i unwind label %bb.eo, !noalias !248

.noexc213.i:                                      ; preds = %bb.ei
  %i.px = load i64, ptr %i.a, align 8, !range !155, !noalias !245, !noundef !4
  %i.py = trunc nuw i64 %i.px to i1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !range !156, !noalias !245, !noundef !4 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.py, label %bb.ej, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !23

bb.ej:                                            ; preds = %.noexc213.i
  %i.qc = load i64, ptr %i.qb, align 8, !noalias !245
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.qa, i64 %i.qc) #24
          to label %.noexc214.i unwind label %bb.eo, !noalias !248

.noexc214.i:                                      ; preds = %bb.ej
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.noexc213.i
  %i.qd = load ptr, ptr %i.qb, align 8, !noalias !245, !nonnull !4, !noundef !4
  %i.qe = icmp uge i64 %i.qa, %i.ps
  call void @llvm.assume(i1 %i.qe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !245
  store i64 %i.qa, ptr %i.b, align 8, !noalias !245
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.qd, ptr %i.qf, align 8, !noalias !245
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.qg, align 8, !noalias !245
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE11extend_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.ps, i32 noundef 1)
          to label %bb.ep unwind label %bb.ek, !noalias !249

bb.ek:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %.body.i65 unwind label %bb.el, !noalias !249

bb.el:                                            ; preds = %bb.ek
  %i.qi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !249
  unreachable

.body.i65:                                        ; preds = %bb.hz, %bb.fy, %bb.eu, %bb.eo, %bb.ek
  %.pn129.i = phi { ptr, i32 } [ %i.tv, %bb.fy ], [ %i.qh, %bb.ek ], [ %.pn127.i, %bb.eu ], [ %i.ql, %bb.eo ], [ %i.adp, %bb.hz ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7oYvdc6j6uT_9daachorse12build_helper8ListItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse12build_helper8ListItemEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.em, !noalias !248

bb.em:                                            ; preds = %.body.i65
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7oYvdc6j6uT_9daachorse12build_helper8ListItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body215.i unwind label %bb.en, !noalias !248

bb.en:                                            ; preds = %bb.em
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !248
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse12build_helper8ListItemEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.body.i65
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7oYvdc6j6uT_9daachorse12build_helper8ListItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body80 unwind label %bb.gq, !noalias !248

bb.eo:                                            ; preds = %bb.ia, %bb.fz, %bb.ej, %bb.ei
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body.i65

bb.ep:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !245
  %i.qm = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 7 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 7 uses
  %i.qo = load i64, ptr %i.qn, align 8, !noalias !243, !noundef !4
end_hunk_2
begin_hunk_3_@_RINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB5_29DoubleArrayAhoCorasickBuilder17build_with_valuesINtNtCscdodAO9FK5_5alloc3vec3VecTRemEEB2e_mECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.uk = phi ptr [ @9, %bb.ez ], [ @9, %bb.ge ], [ @16, %bb.gs ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uk) #24
          to label %.cont3042.i unwind label %.loopexit.split-lp.i, !noalias !248

.cont3042.i:                                      ; preds = %.invoke3041.i
  unreachable

.invoke.i69:                                      ; preds = %bb.gr, %bb.fg, %.peel.next1213, %bb.ey
  %i.ul = phi i64 [ %.sroa.8.02002.i, %.peel.next1213 ], [ 0, %bb.ey ], [ %i.ta, %bb.fg ], [ %i.ta, %bb.gr ]
  %i.um = phi i64 [ %i.uc, %.peel.next1213 ], [ 0, %bb.ey ], [ %i.ps, %bb.fg ], [ %i.vz, %bb.gr ]
  %i.un = phi ptr [ @8, %.peel.next1213 ], [ @8, %bb.ey ], [ @14, %bb.fg ], [ @15, %bb.gr ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ul, i64 noundef %i.um, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.un) #24
          to label %.cont.i71 unwind label %.loopexit.split-lp.i, !noalias !248

.cont.i71:                                        ; preds = %.invoke.i69
  unreachable

bb.gf:                                            ; preds = %bb.ge
  %i.uo = add nuw nsw i64 %i.ui, 1
  store i64 %i.uo, ptr %.sroa.02.02003.i, align 8, !noalias !250
  %i.up = load i64, ptr %i.rc, align 8, !alias.scope !240, !noalias !248, !noundef !4 ; 2 uses
  %i.uq = icmp ugt i64 %i.up, %i.uh
  br i1 %i.uq, label %.noexc161.i, label %.loopexit

.noexc161.i:                                      ; preds = %bb.gf
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.02.02003.i, i64 44
  %i.us = load i32, ptr %i.ur, align 4, !noalias !243, !noundef !4 ; 2 uses
  %i.ut = icmp ult i32 %i.us, 16777216
  br i1 %i.ut, label %bb.gh, label %.loopexit1219

.loopexit:                                        ; preds = %bb.gf, %bb.fa
  %.sroa.02.02003.i.lcssa773 = phi ptr [ %i.pr, %bb.fa ], [ %.sroa.02.02003.i, %bb.gf ]
  %.lcssa759.a = phi i64 [ %i.rm, %bb.fa ], [ %i.up, %bb.gf ]
  %.lcssa754 = phi i64 [ %i.ri, %bb.fa ], [ %i.uh, %bb.gf ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa754, i64 noundef %.lcssa759.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.ex unwind label %bb.gg, !noalias !248

bb.gg:                                            ; preds = %.loopexit1221.a, %.loopexit1220, %.loopexit1222.a, %.loopexit
  %.sroa.02.02003.i779 = phi ptr [ %.sroa.02.02003.i.lcssa776.a, %.loopexit1221.a ], [ %.sroa.02.02003.i.lcssa775, %.loopexit1220 ], [ %.sroa.02.02003.i.lcssa777.a, %.loopexit1222.a ], [ %.sroa.02.02003.i.lcssa773, %.loopexit ] ; 2 uses
  %i.uu = landingpad { ptr, i32 }
          cleanup
  %i.uv = load i64, ptr %.sroa.02.02003.i779, align 8, !noalias !243, !noundef !4
  %i.uw = add i64 %i.uv, -1
  store i64 %i.uw, ptr %.sroa.02.02003.i779, align 8, !noalias !243
  br label %bb.fh

bb.gh:                                            ; preds = %.noexc161.i
  %i.ux = load ptr, ptr %i.rd, align 8, !alias.scope !240, !noalias !248, !nonnull !4, !noundef !4
  %i.uy = getelementptr inbounds nuw [12 x i8], ptr %i.ux, i64 %i.uh
  %i.uz = shl nuw i32 %i.us, 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !alias.scope !253, !noalias !256, !noundef !4
  %i.vc = and i32 %i.vb, 255
  %i.vd = or disjoint i32 %i.vc, %i.uz
  store i32 %i.vd, ptr %i.va, align 4, !alias.scope !253, !noalias !256
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.02.02003.i, i64 40
  %i.vf = load i32, ptr %i.ve, align 8, !noalias !243, !noundef !4 ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 1
  br i1 %i.vg, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.vh = load i64, ptr %i.rc, align 8, !alias.scope !240, !noalias !248, !noundef !4 ; 2 uses
  %i.vi = icmp ugt i64 %i.vh, %i.uh
  br i1 %i.vi, label %.backedge.i, label %.loopexit1222.a

bb.gj:                                            ; preds = %bb.gh
  %i.vj = zext i32 %i.vf to i64                   ; 3 uses
  %i.vk = load i64, ptr %i.qn, align 8, !noalias !243, !noundef !4 ; 2 uses
  %i.vl = icmp ugt i64 %i.vk, %i.vj
  br i1 %i.vl, label %bb.gk, label %.loopexit1220

.loopexit1222.a:                                  ; preds = %bb.gi, %bb.ff
  %.sroa.02.02003.i.lcssa777.a = phi ptr [ %i.pr, %bb.ff ], [ %.sroa.02.02003.i, %bb.gi ]
  %.lcssa764 = phi i64 [ %i.sj, %bb.ff ], [ %i.vh, %bb.gi ]
  %.lcssa758 = phi i64 [ %i.ri, %bb.ff ], [ %i.uh, %bb.gi ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa758, i64 noundef %.lcssa764, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.ex unwind label %bb.gg, !noalias !248

bb.gk:                                            ; preds = %bb.gj
  %i.vm = load i64, ptr %i.rc, align 8, !alias.scope !240, !noalias !248, !noundef !4 ; 2 uses
  %i.vn = icmp ugt i64 %i.vm, %i.uh
  br i1 %i.vn, label %bb.gl, label %.loopexit1221.a

.loopexit1220:                                    ; preds = %bb.gj, %bb.fc
  %.sroa.02.02003.i.lcssa775 = phi ptr [ %i.pr, %bb.fc ], [ %.sroa.02.02003.i, %bb.gj ]
  %.lcssa737 = phi i64 [ %i.sb, %bb.fc ], [ %i.vj, %bb.gj ]
  %.lcssa = phi i64 [ %i.sc, %bb.fc ], [ %i.vk, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa737, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
          to label %bb.ex unwind label %bb.gg, !noalias !248

bb.gl:                                            ; preds = %bb.gk
  %i.vo = load ptr, ptr %i.qm, align 8, !noalias !243, !nonnull !4, !noundef !4
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vj
  %i.vq = load i32, ptr %i.vp, align 4, !noalias !248, !noundef !4
  br label %.backedge.i

.loopexit1221.a:                                  ; preds = %bb.gk, %bb.fd
  %.sroa.02.02003.i.lcssa776.a = phi ptr [ %i.pr, %bb.fd ], [ %.sroa.02.02003.i, %bb.gk ]
  %.lcssa757 = phi i64 [ %i.ri, %bb.fd ], [ %i.uh, %bb.gk ]
  %.lcssa739 = phi i64 [ %i.se, %bb.fd ], [ %i.vm, %bb.gk ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa757, i64 noundef %.lcssa739, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #24
          to label %bb.ex unwind label %bb.gg, !noalias !248

.backedge.i:                                      ; preds = %bb.gl, %bb.gi
  %.sink.i = phi i32 [ %i.vq, %bb.gl ], [ 1, %bb.gi ]
  %.sink3045.i = load ptr, ptr %i.rd, align 8, !alias.scope !240, !noalias !248, !nonnull !4, !noundef !4
  %i.vr = getelementptr inbounds nuw [12 x i8], ptr %.sink3045.i, i64 %i.uh
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  store i32 %.sink.i, ptr %i.vs, align 4, !noalias !248
  %i.vt = load i64, ptr %.sroa.02.02003.i, align 8, !noalias !243, !noundef !4
  %i.vu = add i64 %i.vt, -1
  store i64 %i.vu, ptr %.sroa.02.02003.i, align 8, !noalias !243
  %i.vv = icmp eq ptr %i.ua, %i.re
  br i1 %i.vv, label %.thread.i77, label %.peel.next1213, !llvm.loop !258

.loopexit1219:                                    ; preds = %.noexc161.i, %.noexc161.i.peel
  %.sroa.02.02003.i.lcssa774 = phi ptr [ %i.pr, %.noexc161.i.peel ], [ %.sroa.02.02003.i, %.noexc161.i ]
  %.lcssa749 = phi i64 [ %i.rj, %.noexc161.i.peel ], [ %i.ui, %.noexc161.i ]
  store i64 %.lcssa749, ptr %.sroa.02.02003.i.lcssa774, align 8, !noalias !243
  br label %bb.gm

bb.gm:                                            ; preds = %bb.hv, %.loopexit1219
  %.sroa.11.0 = phi i32 [ 16777215, %.loopexit1219 ], [ %.sroa.11.0.copyload107, %bb.hv ]
  %.sroa.10.0 = phi i64 [ 10, %.loopexit1219 ], [ %.sroa.10.0.copyload104, %bb.hv ]
  %.sroa.999.0 = phi ptr [ @116, %.loopexit1219 ], [ %.sroa.999.0.copyload101, %bb.hv ]
  %.sroa.096.0 = phi i64 [ 2, %.loopexit1219 ], [ %i.zq, %bb.hv ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.go unwind label %bb.gn, !noalias !248

bb.gn:                                            ; preds = %bb.gm
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.gp, !noalias !248

bb.go:                                            ; preds = %bb.gm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit257.i unwind label %bb.fu, !noalias !248

bb.gp:                                            ; preds = %bb.gn
  %i.vx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !248
  unreachable

bb.gq:                                            ; preds = %bb.fs, %bb.fj, %bb.eu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse12build_helper8ListItemEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body215.i

.body215.i:                                       ; preds = %bb.gq, %bb.fr, %bb.fi, %bb.et, %bb.em
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !248
  unreachable

bb.gr:                                            ; preds = %bb.fg
  %i.vz = load i64, ptr %i.qn, align 8, !noalias !243, !noundef !4 ; 2 uses
  %i.wa = icmp ugt i64 %i.vz, %i.ta
  br i1 %i.wa, label %bb.gs, label %.invoke.i69

bb.gs:                                            ; preds = %bb.gr
  %i.wb = load ptr, ptr %i.qm, align 8, !noalias !243, !nonnull !4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pr) ]
  %i.wc = getelementptr inbounds nuw [48 x i8], ptr %i.pr, i64 %i.ta ; 12 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.ta
  %i.we = load i32, ptr %i.wd, align 4, !noalias !248, !noundef !4
  %i.wf = zext i32 %i.we to i64                   ; 3 uses
  %i.wg = load i64, ptr %i.wc, align 8, !noalias !260, !noundef !4 ; 3 uses
  %i.wh = icmp ult i64 %i.wg, 9223372036854775807
  br i1 %i.wh, label %bb.gt, label %.invoke3041.i, !prof !22

bb.gt:                                            ; preds = %bb.gs
  %i.wi = add nuw nsw i64 %i.wg, 1
  store i64 %i.wi, ptr %i.wc, align 8, !noalias !260
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 8 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.wl = load i64, ptr %i.wk, align 8, !noalias !243, !noundef !4 ; 2 uses
  %i.wm = icmp eq i64 %i.wl, 0
  br i1 %i.wm, label %.backedge90.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  store i64 0, ptr %i.qy, align 8, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !243
  %i.wn = load ptr, ptr %i.wj, align 8, !noalias !243, !noundef !4 ; 3 uses
  %.not116.i = icmp eq ptr %i.wn, null
  br i1 %.not116.i, label %bb.gw, label %bb.gv

.backedge90.i:                                    ; preds = %bb.hr, %bb.gt
  %i.wo = phi i64 [ %.pre2570.i, %bb.hr ], [ %i.su, %bb.gt ] ; 2 uses
  %i.wp = phi i64 [ %.pre.i75, %bb.hr ], [ %i.ss, %bb.gt ]
  %storemerge.i = phi i64 [ %i.acn, %bb.hr ], [ %i.wg, %bb.gt ]
  store i64 %storemerge.i, ptr %i.wc, align 8, !noalias !243
  %i.wq = icmp eq i64 %i.wo, 0
  br i1 %i.wq, label %bb.ey, label %bb.fg

bb.gv:                                            ; preds = %bb.gu
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.ws = load i64, ptr %i.wr, align 8, !noalias !243, !noundef !4
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.sroa.013.sroa.0.0.i.a = phi i64 [ %i.ws, %bb.gv ], [ undef, %bb.gu ] ; 2 uses
  %.sroa.013.sroa.5.sroa.6.0.i = phi i64 [ 1, %bb.gv ], [ 0, %bb.gu ] ; 2 uses
  %.sroa.514.0.i = phi i64 [ %i.wl, %bb.gv ], [ 0, %bb.gu ]
  store i64 %.sroa.013.sroa.5.sroa.6.0.i, ptr %i.i, align 8, !noalias !243
  store ptr null, ptr %.sroa.013.sroa.5.0..sroa_idx.i, align 8, !noalias !243
  store ptr %i.wn, ptr %.sroa.013.sroa.5.sroa.5.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !243
  store i64 %.sroa.013.sroa.0.0.i.a, ptr %.sroa.013.sroa.5.sroa.6.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !243
  store i64 %.sroa.013.sroa.5.sroa.6.0.i, ptr %.sroa.013.sroa.6.0..sroa_idx.i, align 8, !noalias !243
  store ptr null, ptr %.sroa.013.sroa.7.0..sroa_idx.i, align 8, !noalias !243
  store ptr %i.wn, ptr %.sroa.013.sroa.7.sroa.5.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !243
  store i64 %.sroa.013.sroa.0.0.i.a, ptr %.sroa.013.sroa.7.sroa.6.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !243
  store i64 %.sroa.514.0.i, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !243
  %i.wt = invoke noundef ptr @_RNvXsF_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc261.i unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.i, !noalias !248 ; 2 uses

.noexc261.i:                                      ; preds = %bb.gw
  %.not5.i.i = icmp eq ptr %i.wt, null
  br i1 %.not5.i.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %.noexc261.i, %.noexc263.i
  %i.wu = phi ptr [ %i.xb, %.noexc263.i ], [ %i.wt, %.noexc261.i ]
  %.val4.i.i = load i8, ptr %i.wu, align 1, !noalias !248, !noundef !4
  %i.wv = load i64, ptr %i.qy, align 8, !alias.scope !263, !noalias !268, !noundef !4 ; 3 uses
  %i.ww = load i64, ptr %i.j, align 8, !range !163, !alias.scope !263, !noalias !268, !noundef !4
  %i.wx = icmp eq i64 %i.wv, %i.ww
  br i1 %i.wx, label %bb.gx, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB1p_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.gx:                                            ; preds = %.lr.ph.i.i72
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB1p_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.loopexit.split-lp80.loopexit.i, !noalias !248

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB1p_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.gx, %.lr.ph.i.i72
  %i.wy = load ptr, ptr %i.qx, align 8, !alias.scope !263, !noalias !268, !nonnull !4, !noundef !4
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wv
  store i8 %.val4.i.i, ptr %i.wz, align 1, !noalias !248
  %i.xa = add i64 %i.wv, 1
  store i64 %i.xa, ptr %i.qy, align 8, !alias.scope !263, !noalias !268
  %i.xb = invoke noundef ptr @_RNvXsF_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc263.i unwind label %.loopexit.split-lp80.loopexit.i, !noalias !248 ; 2 uses

.noexc263.i:                                      ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB1p_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i
  %.not.i260.i = icmp eq ptr %i.xb, null
  br i1 %.not.i260.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i.i72

.loopexit79.i:                                    ; preds = %bb.hu, %bb.hh
  %lpad.loopexit81.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp80.i

.loopexit.split-lp80.loopexit.i:                  ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB1p_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.gx
  %lpad.loopexit84.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp80.i

.loopexit.split-lp80.loopexit.split-lp.loopexit.i: ; preds = %bb.hb, %bb.gw
  %lpad.loopexit87.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp80.i

.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke2362, %.invoke2360, %.invoke2358, %.invoke2356, %.invoke2354
  %lpad.loopexit.split-lp88.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp80.i

.loopexit.split-lp80.i:                           ; preds = %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp80.loopexit.split-lp.loopexit.i, %.loopexit.split-lp80.loopexit.i, %.loopexit79.i
  %lpad.phi83.i = phi { ptr, i32 } [ %lpad.loopexit81.i, %.loopexit79.i ], [ %lpad.loopexit84.i, %.loopexit.split-lp80.loopexit.i ], [ %lpad.loopexit87.i, %.loopexit.split-lp80.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp88.i, %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.i ]
  %i.xc = load i64, ptr %i.wc, align 8, !noalias !243, !noundef !4
  %i.xd = add i64 %i.xc, -1
  store i64 %i.xd, ptr %i.wc, align 8, !noalias !243
  br label %bb.fh

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc263.i, %.noexc261.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !243
  %i.xe = load ptr, ptr %i.qx, align 8, !noalias !243, !nonnull !4, !noundef !4 ; 3 uses
  %i.xf = load i64, ptr %i.qy, align 8, !noalias !243, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.xg = load i32, ptr %.sroa.5.i.sroa.9.0..sroa_idx190, align 8, !range !277, !alias.scope !275, !noalias !278, !noundef !4
  %i.xh = load i32, ptr %.sroa.5.i.sroa.10.0..sroa_idx194, align 4, !alias.scope !275, !noalias !278 ; 9 uses
  %i.xi = trunc nuw i32 %i.xg to i1               ; 3 uses
  %i.xj = load i32, ptr %i.qz, align 8, !noalias !243 ; 2 uses
  %i.xk = load i32, ptr %i.ra, align 4, !noalias !243
  %i.xl = call i32 @llvm.usub.sat.i32(i32 %i.xj, i32 %i.xk)
  %i.xm = load i32, ptr %i.rb, align 8, !noalias !243 ; 2 uses
  %i.xn = mul i32 %i.xl, %i.xm                    ; 6 uses
  %i.xo = mul i32 %i.xm, %i.xj                    ; 6 uses
  %i.xp = load i64, ptr %.sroa.5.i.sroa.8.0..sroa_idx186, align 8, !noalias !243 ; 10 uses
  %i.xq = icmp samesign ugt i64 %i.xp, 4294967295
  %i.xr = shl nuw i64 %i.xp, 32
  %i.xs = or disjoint i64 %i.xr, 512
  %.sroa.03.0.insert.insert.i.i182.i = select i1 %i.xq, i64 513, i64 %i.xs
  %.sroa.03.0.insert.insert.i.i182.fr.i = freeze i64 %.sroa.03.0.insert.insert.i.i182.i ; 2 uses
  %i.xt = trunc i64 %.sroa.03.0.insert.insert.i.i182.fr.i to i1
  %.sroa.6.0.extract.shift.i.i.i184.i = lshr i64 %.sroa.03.0.insert.insert.i.i182.fr.i, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i185.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i184.i to i32 ; 4 uses
  %i.xu = load ptr, ptr %.sroa.5.i.sroa.7.0..sroa_idx182, align 8, !noalias !243, !nonnull !4 ; 3 uses
  %.not15.i.i = icmp eq i64 %i.xf, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xf
  br i1 %i.xt, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.us.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.i, !prof !23

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.us.i: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i
  br i1 %i.xi, label %.noexc189.us.i, label %.split.us.i

.noexc189.us.i:                                   ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.us.i
  %.not.i264.us.i = icmp ule i32 %i.xn, %i.xh
  %i.xw = icmp ult i32 %i.xh, %i.xo
  %.sroa.0.0.i265.us.i = and i1 %.not.i264.us.i, %i.xw
  br i1 %.sroa.0.0.i265.us.i, label %.split351.us.i, label %.invoke2360, !prof !22

.split351.us.i:                                   ; preds = %.noexc189.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !279
  br label %.invoke2358

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.i: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.xx = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i184.i, 0
  br i1 %i.xx, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.us.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.i

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.us.i: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.i
  br i1 %i.xi, label %.noexc189.us486.i, label %.split.us.i

.noexc189.us486.i:                                ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.us.i
  %.not.i264.us487.i = icmp ule i32 %i.xn, %i.xh
  %i.xy = icmp ult i32 %i.xh, %i.xo
  %.sroa.0.0.i265.us488.i = and i1 %.not.i264.us487.i, %i.xy
  br i1 %.sroa.0.0.i265.us488.i, label %.invoke2356, label %.invoke2360, !prof !22

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.i: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.i
  br i1 %i.xi, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.i, label %.split.us.i, !prof !22

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.i: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.i
  br i1 %.not15.i.i, label %.noexc189.us628.us.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.split.split.split.i

.noexc189.us628.us.i:                             ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.i
  %.not.i264.us629.us.i = icmp ule i32 %i.xn, %i.xh
  %i.xz = icmp ult i32 %i.xh, %i.xo
  %.sroa.0.0.i265.us630.us.i = and i1 %.not.i264.us629.us.i, %i.xz
  br i1 %.sroa.0.0.i265.us630.us.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i.i183.us631.us.i, label %.invoke2360, !prof !22

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i.i183.us631.us.i: ; preds = %.noexc189.us628.us.i
  %i.ya = urem i32 %i.xh, %.sroa.6.0.extract.trunc.i.i.i185.i
  %i.yb = zext i32 %i.ya to i64                   ; 2 uses
  %i.yc = icmp samesign ugt i64 %i.xp, %i.yb
  br i1 %i.yc, label %.invoke2354, label %.split635.us.i

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.split.split.split.i: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.i, %_RNvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB4_29DoubleArrayAhoCorasickBuilder16check_valid_base.exit.i.us.i
  %.sroa.052.0.us626.i = phi i1 [ %.not.i266.us.i, %_RNvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB4_29DoubleArrayAhoCorasickBuilder16check_valid_base.exit.i.us.i ], [ true, %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.i ]
  %.sroa.653.0.us627.i = phi i32 [ %i.yi, %_RNvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB4_29DoubleArrayAhoCorasickBuilder16check_valid_base.exit.i.us.i ], [ %i.xh, %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.i ] ; 4 uses
  br i1 %.sroa.052.0.us626.i, label %.noexc189.us628.i, label %.split.us.i

.noexc189.us628.i:                                ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callRhNCINvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB2A_29DoubleArrayAhoCorasickBuilder18build_double_arraymE0E0ECs2JiOgHzbbc7_10tokenizers.exit.split.split.split.us.split.split.split.i
  %.not.i264.us629.i = icmp ule i32 %i.xn, %.sroa.653.0.us627.i
  %i.yd = icmp ult i32 %.sroa.653.0.us627.i, %i.xo
  %.sroa.0.0.i265.us630.i = and i1 %.not.i264.us629.i, %i.yd
  br i1 %.sroa.0.0.i265.us630.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i.i183.us631.i, label %.invoke2360, !prof !22

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i.i183.us631.i: ; preds = %.noexc189.us628.i
  %i.ye = urem i32 %.sroa.653.0.us627.i, %.sroa.6.0.extract.trunc.i.i.i185.i
  %i.yf = zext i32 %i.ye to i64                   ; 3 uses
  %i.yg = icmp samesign ugt i64 %i.xp, %i.yf
  br i1 %i.yg, label %.noexc170.us.i, label %.invoke2354

.noexc170.us.i:                                   ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i.i183.us631.i
  %i.yh = getelementptr inbounds nuw [12 x i8], ptr %i.xu, i64 %i.yf
  %i.yi = load i32, ptr %i.yh, align 4, !noalias !286, !noundef !4 ; 2 uses
  %.not.i266.us.i = icmp ne i32 %i.yi, %i.xh
  %i.yj = load i8, ptr %i.xe, align 1, !alias.scope !273, !noalias !287, !noundef !4
  %i.yk = zext i8 %i.yj to i32
  %i.yl = xor i32 %.sroa.653.0.us627.i, %i.yk     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %.not.i268.us.i = icmp ule i32 %i.xn, %i.yl
  %i.ym = icmp ult i32 %i.yl, %i.xo
  %.sroa.0.0.i269.us.i = and i1 %.not.i268.us.i, %i.ym
  br i1 %.sroa.0.0.i269.us.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i7.i.i.us.i, label %.invoke2360, !prof !22

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i7.i.i.us.i: ; preds = %.noexc170.us.i
  %i.yn = urem i32 %i.yl, %.sroa.6.0.extract.trunc.i.i.i185.i
  %i.yo = zext i32 %i.yn to i64                   ; 3 uses
  %i.yp = icmp samesign ugt i64 %i.xp, %i.yo
  br i1 %i.yp, label %bb.gy, label %.invoke2354

bb.gy:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i7.i.i.us.i
  %i.yq = getelementptr inbounds nuw [12 x i8], ptr %i.xu, i64 %i.yo
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = load i8, ptr %i.yr, align 4, !range !291, !noalias !292, !noundef !4
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %_RNvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB4_29DoubleArrayAhoCorasickBuilder16check_valid_base.exit.i.us.i, label %.noexc175.us.i

.preheader.i:                                     ; preds = %bb.gz
  %i.yu = icmp eq ptr %i.yv, %i.xv
  br i1 %i.yu, label %_RNvMs_NtNtCs7oYvdc6j6uT_9daachorse8bytewise7builderNtB4_29DoubleArrayAhoCorasickBuilder16check_valid_base.exit.i.us.i, label %.noexc175.us.i

.noexc175.us.i:                                   ; preds = %bb.gy, %.preheader.i
  %.sroa.01.0.i.i.us.i2342 = phi ptr [ %i.yv, %.preheader.i ], [ %i.xe, %bb.gy ] ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.us.i2342, i64 1 ; 2 uses
  %i.yw = load i8, ptr %.sroa.01.0.i.i.us.i2342, align 1, !alias.scope !294, !noalias !295, !noundef !4
  %i.yx = zext i8 %i.yw to i32
  %i.yy = xor i32 %i.yl, %i.yx                    ; 3 uses
  %.not.i270.us.i = icmp ule i32 %i.xn, %i.yy
  %i.yz = icmp ult i32 %i.yy, %i.xo
  %.sroa.0.0.i271.us.i = and i1 %.not.i270.us.i, %i.yz
  br i1 %.sroa.0.0.i271.us.i, label %_RNvMNtCs7oYvdc6j6uT_9daachorse12build_helperNtB2_11BuildHelper6offset.exit.i.i.us.i, label %.invoke2360, !prof !22

_RNvMNtCs7oYvdc6j6uT_9daachorse12build_helperNtB2_11BuildHelper6offset.exit.i.i.us.i: ; preds = %.noexc175.us.i
  %i.za = urem i32 %i.yy, %.sroa.6.0.extract.trunc.i.i.i185.i
  %i.zb = zext i32 %i.za to i64                   ; 3 uses
  %i.zc = icmp samesign ugt i64 %i.xp, %i.zb
  br i1 %i.zc, label %bb.gz, label %.invoke2354

bb.gz:                                            ; preds = %_RNvMNtCs7oYvdc6j6uT_9daachorse12build_helperNtB2_11BuildHelper6offset.exit.i.i.us.i
  %i.zd = getelementptr inbounds nuw [12 x i8], ptr %i.xu, i64 %i.zb
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtCscdodAO9FK5_5alloc6string6StringNtB5_7Pattern12find_matches:bb.a
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !align !337, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  store ptr %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8
  call void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternReNtB4_7Pattern12find_matches(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1e_6string6StringEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.h = load i64, ptr %1, align 8, !range !357, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.h, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  store i64 -1, ptr %1, align 8
  %.not17 = icmp eq i64 %i.h, -1
  br i1 %.not17, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1655, !noalias !1658, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1655, !noalias !1658, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.n, ptr %i.k, align 8, !alias.scope !1655, !noalias !1658
  %.sroa.0.0.copyload19 = load i64, ptr %i.l, align 8, !noalias !1655 ; 2 uses
  %.not16 = icmp eq i64 %.sroa.0.0.copyload19, -1
  br i1 %.not16, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.720.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.0..sroa_idx21, i64 16, i1 false)
  br label %bb.e

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.0.copyload19, %bb.d ]
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 %.sroa.0.0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldBW_NCNvXs0_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB2x_10CoalesceByBH_INtB2x_22DedupPred2CoalescePredNtB2x_7DedupEqENtB2x_7NoCountEB1i_4next0INtNtB1q_6result6ResultBW_BW_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs0_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1e_6string6StringEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val9 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = ptrtoint ptr %.val9 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !357, !noundef !4
  %narrow = icmp ult i64 %i.g, -2
  %.sroa.0.0 = zext i1 %narrow to i64             ; 2 uses
  %i.h = add nuw nsw i64 %i.f, %.sroa.0.0
  %i.i = or i64 %i.f, %.sroa.0.0
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serializationNtB5_16WordLevelVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !337, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 16)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3i_14UnigramTrainer14required_chars0EINtNtB7_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEENCB3d_s_0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6q_7HashSetB29_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB9_6traits7collect6ExtendB29_E6extendBW_E0ENtNtB88_8iterator8Iterator9size_hintB3o_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.b = load i64, ptr %1, align 8, !range !155, !alias.scope !1670, !noalias !1671, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1670, !noalias !1671, !noundef !4
  %.not8.i.i = icmp eq ptr %i.e, null             ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not8.i.i, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not8.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3e_14UnigramTrainer14required_chars0EINtNtB7_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEENCB39_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1671, !noalias !1670
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1671, !noalias !1670
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !1671, !noalias !1670
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3e_14UnigramTrainer14required_chars0EINtNtB7_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEENCB39_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1672, !noalias !1677, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1680, !noalias !1685, !nonnull !4, !noundef !4
  %i.l = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub nuw i64 %i.l, %i.m                   ; 3 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = and i64 %i.n, 3
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.p, 0
  %i.q = zext i1 %.not.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.o, %i.q
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.g ], [ 0, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1672, !noalias !1677, !noundef !4 ; 2 uses
  %.not55.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not55.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i65.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1688, !noalias !1693, !nonnull !4, !noundef !4
  %i.u = ptrtoint ptr %.val4.i65.i.i.i.i to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub nuw i64 %i.u, %i.v                   ; 3 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = and i64 %i.w, 3
  %.not.i.i.i66.i.i.i.i = icmp ne i64 %i.y, 0
  %i.z = zext i1 %.not.i.i.i66.i.i.i.i to i64
  %.sroa.0.0.i.i.i67.i.i.i.i = add nuw nsw i64 %i.x, %i.z
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i.i.i: ; preds = %bb.h, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %.sroa.075.0.i.i.i.i.a = phi i64 [ %i.w, %bb.h ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i67.i.i.i.i, %bb.h ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i ]
  %i.aa = load ptr, ptr %i.f, align 8, !alias.scope !1672, !noalias !1677, !noundef !4 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val63.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1672, !noalias !1677, !nonnull !4
  %i.ac = icmp eq ptr %.val63.i.i.i.i, %i.aa
  %or.cond.i.i.i.i = select i1 %.not56.i.i.i.i, i1 true, i1 %i.ac ; 2 uses
  %i.ad = add i64 %.sroa.075.0.i.i.i.i.a, %.sroa.7.0.i.i.i.i ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %.sroa.7.0.i.i.i.i
  %.sroa.6.0.i.i = select i1 %or.cond.i.i.i.i, i64 %i.ad, i64 undef ; 2 uses
  %narrow.i.i = select i1 %or.cond.i.i.i.i, i1 %i.ae, i1 false
  %i.af = add nuw i64 %.sroa.8.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1696
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d), !noalias !1671
  %i.ag = load i64, ptr %i.a, align 8, !noalias !1696, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !155, !noalias !1696, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1696
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %i.af, i64 %i.ag)
  %i.am = trunc nuw i64 %i.ai to i1
  %or.cond.i.i = and i1 %narrow.i.i, %i.am        ; 2 uses
  %i.an = add i64 %i.ak, %.sroa.6.0.i.i           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %.sroa.6.0.i.i
  %.sroa.46.0.i.i = select i1 %or.cond.i.i, i64 %i.an, i64 undef
  %narrow30.i.i = select i1 %or.cond.i.i, i1 %i.ao, i1 false
  %.sroa.05.0.i.i = zext i1 %narrow30.i.i to i64
  store i64 %i.al, ptr %0, align 8, !alias.scope !1671, !noalias !1670
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i.i, ptr %i.ap, align 8, !alias.scope !1671, !noalias !1670
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0.i.i, ptr %i.aq, align 8, !alias.scope !1671, !noalias !1670
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3e_14UnigramTrainer14required_chars0EINtNtB7_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEENCB39_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1707, !noalias !1708, !noundef !4 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i10.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i.i.i11.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1709, !noalias !1714, !nonnull !4, !noundef !4
  %i.au = ptrtoint ptr %.val4.i.i.i11.i.i to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub nuw i64 %i.au, %i.av                ; 3 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = and i64 %i.aw, 3
  %.not.i.i.i.i.i12.i.i = icmp ne i64 %i.ay, 0
  %i.az = zext i1 %.not.i.i.i.i.i12.i.i to i64
  %.sroa.0.0.i.i.i.i.i13.i.i = add nuw nsw i64 %i.ax, %i.az
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i: ; preds = %bb.j, %bb.i
  %.sroa.7.0.i.i15.i.i = phi i64 [ %i.aw, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i16.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i13.i.i, %bb.j ], [ 0, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1707, !noalias !1708, !noundef !4 ; 2 uses
  %.not55.i.i17.i.i = icmp eq ptr %i.bb, null
  br i1 %.not55.i.i17.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i21.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i65.i.i18.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !1717, !noalias !1722, !nonnull !4, !noundef !4
  %i.bd = ptrtoint ptr %.val4.i65.i.i18.i.i to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub nuw i64 %i.bd, %i.be                ; 3 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = and i64 %i.bf, 3
  %.not.i.i.i66.i.i19.i.i = icmp ne i64 %i.bh, 0
  %i.bi = zext i1 %.not.i.i.i66.i.i19.i.i to i64
  %.sroa.0.0.i.i.i67.i.i20.i.i = add nuw nsw i64 %i.bg, %i.bi
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i21.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i21.i.i: ; preds = %bb.k, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i
  %.sroa.075.0.i.i22.i.i = phi i64 [ %i.bf, %bb.k ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i ]
  %.sroa.8.0.i.i23.i.i = phi i64 [ %.sroa.0.0.i.i.i67.i.i20.i.i, %bb.k ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit.i.i14.i.i ]
  %i.bj = load ptr, ptr %i.f, align 8, !alias.scope !1707, !noalias !1708, !noundef !4 ; 2 uses
  %.not56.i.i24.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val63.i.i25.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1707, !noalias !1708, !nonnull !4
  %i.bl = icmp eq ptr %.val63.i.i25.i.i, %i.bj
  %or.cond.i.i26.i.i = select i1 %.not56.i.i24.i.i, i1 true, i1 %i.bl
  br i1 %or.cond.i.i26.i.i, label %bb.l, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer14required_chars0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2K_.exit29.i.i

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i21.i.i
  %i.bm = add i64 %.sroa.075.0.i.i22.i.i, %.sroa.7.0.i.i15.i.i ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %.sroa.7.0.i.i15.i.i
  %.58.i.i28.i.i = zext i1 %i.bn to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !alias.scope !1708, !noalias !1707
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer14required_chars0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2K_.exit29.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer14required_chars0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2K_.exit29.i.i: ; preds = %bb.l, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i21.i.i
  %.sink.i.i27.i.i = phi i64 [ %.58.i.i28.i.i, %bb.l ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i21.i.i ]
  %i.bp = add nuw i64 %.sroa.8.0.i.i23.i.i, %.sroa.0.0.i.i16.i.i
  store i64 %i.bp, ptr %0, align 8, !alias.scope !1708, !noalias !1707
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i27.i.i, ptr %i.bq, align 8, !alias.scope !1708, !noalias !1707
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3e_14UnigramTrainer14required_chars0EINtNtB7_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEENCB39_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3e_14UnigramTrainer14required_chars0EINtNtB7_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEENCB39_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit: ; preds = %bb.d, %bb.e, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtB5_3str4iter5CharsE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs2JiOgHzbbc7_10tokenizers.exit68.i.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtBb_3str4iter5CharsNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer14required_chars0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2K_.exit29.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors4berts_1__NtBa_14BertProcessingNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1n_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors7robertas_1__NtBa_17RobertaProcessingNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1t_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 24)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates1_1__NtBa_5PieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1i_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates3_1__NtBa_12SpecialTokenNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1q_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates_1__NtBa_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1k_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templatesa_1__NtBa_30TemplateProcessingDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 37)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders13byte_fallback1__NtBa_12ByteFallbackNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1q_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates1_1__NtBg_5PieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_9___VisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 30)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1G_NtCs4NRVxsYgnAr_4core3fmtTjjENtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138) ; 0 uses
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138) ; 0 uses
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_12SpecialTokenINtNtCs4NRVxsYgnAr_4core7convert4FromTNtNtCscdodAO9FK5_5alloc6string6StringmEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.c, %bb.c ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #27
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.d = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 97) 4, i64 noundef range(i64 4, 9) 4) #25 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #24
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.f, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #27
          to label %bb.b unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noundef !4
  store i32 %i.h, ptr %i.d, align 4
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.j, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 97) 24, i64 noundef range(i64 4, 9) 8) #25 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit5, !prof !23

bb.h:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.f unwind label %bb.j

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit5: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates1_1__NtBg_5PieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s_14___FieldVisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !337, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1725, !noalias !1728, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1725, !noalias !1728, !noundef !4
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1725
  ret i1 %i.f
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB4_5PieceINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCscdodAO9FK5_5alloc6string6StringE8try_from:bb.a
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.j, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.bc = mul nuw nsw i32 %i.av, 10
  %i.bd = add nuw nsw i32 %i.ba, %i.bc            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !1848, !noundef !4
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.k, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.k:                                             ; preds = %.lr.ph.i.2
  %i.bj = mul nuw nsw i32 %i.bd, 10
  %i.bk = add nuw nsw i32 %i.bh, %i.bj            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !1848, !noundef !4
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.l, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.l:                                             ; preds = %.lr.ph.i.3
  %i.bq = mul nuw nsw i32 %i.bk, 10
  %i.br = add nuw nsw i32 %i.bo, %i.bq            ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !1848, !noundef !4
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.m, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.4
  %i.bx = mul i32 %i.br, 10
  %i.by = add i32 %i.bv, %i.bx                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !1848, !noundef !4
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.n, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.5
  %i.ce = mul i32 %i.by, 10
  %i.cf = add i32 %i.cc, %i.ce                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !1848, !noundef !4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.o, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.cl = mul i32 %i.cf, 10
  %i.cm = add i32 %i.cj, %i.cl                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !1848, !noundef !4
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.p, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.7
  %i.cs = mul i32 %i.cm, 10
  %i.ct = add i32 %i.cq, %i.cs
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.an, %bb.ak, %bb.u, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, %bb.aj, %bb.r
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.l) #27
          to label %.body unwind label %bb.at

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %bb.h, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.h ], [ %i.ag, %.loopexit.i ] ; 2 uses
  %.sroa.591.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.591.0.extract.trunc = trunc nuw i64 %.sroa.591.0.extract.shift to i32 ; 2 uses
  %i.cv = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cv, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.r

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread: ; preds = %bb.g, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.d, %bb.e, %bb.e, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1851
  store ptr %1, ptr %i.d, align 8, !noalias !1851
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1851
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @63, ptr noundef nonnull %i.d)
          to label %bb.ag unwind label %bb.q

bb.r:                                             ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cw = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !4
  invoke fastcc void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB2_5Piece10extract_id(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cy)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.cz = load i64, ptr %i.j, align 8, !range !357, !noundef !4 ; 3 uses
  %.not92 = icmp eq i64 %i.cz, -2
  br i1 %.not92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.463.sroa.0.0.copyload = load i32, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.463.sroa.4.0.copyload = load i8, ptr %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx, align 4
  %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.526, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.not93 = icmp eq i64 %i.cz, -1
  br i1 %.not93, label %bb.ab, label %bb.aa

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1854
  store ptr %1, ptr %i.c, align 8, !noalias !1854
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1854
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @63, ptr noundef nonnull %i.c)
          to label %bb.v unwind label %bb.q

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1854
  %.sroa.622.sroa.0.0.copyload = load i32, ptr %i.f, align 8
  %.sroa.622.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.622.sroa.7.0.copyload = load i8, ptr %.sroa.622.sroa.7.0..sroa_idx, align 4
  %.sroa.622.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.sroa.8)
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.586.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, i64 19, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.622.sroa.0.0.copyload, ptr %i.da, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.622.sroa.7.0.copyload, ptr %.sroa.485.0..sroa_idx, align 4
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.sroa.8)
  br label %bb.w

bb.w:                                             ; preds = %bb.ag, %bb.v
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.z:                                             ; preds = %bb.x
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.526, i64 11, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %bb.aa
  %.sroa.538.0.a = phi i32 [ %.sroa.591.0.extract.trunc, %bb.aa ], [ undef, %bb.t ]
  %.sroa.745.0 = phi i32 [ %.sroa.463.sroa.0.0.copyload, %bb.aa ], [ %.sroa.591.0.extract.trunc, %bb.t ]
  store i64 %i.cz, ptr %0, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.745.0, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.463.sroa.4.0.copyload, ptr %.sroa.641.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.7, i64 11, i1 false)
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.538.0.a, ptr %.sroa.745.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aq, %bb.ap, %bb.ab
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit99 unwind label %bb.b

bb.af:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ag:                                            ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1851
  %.sroa.05.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.67.0.copyload = load i32, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.561.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.810.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.copyload, ptr %i.df, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.67.0.copyload, ptr %.sroa.460.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit105 unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body, %bb.ar, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.ar ], [ %i.dg, %bb.ah ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit105: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit99
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.di = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !4
  invoke fastcc void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB2_5Piece10extract_id(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk)
          to label %bb.al unwind label %bb.q

bb.ak:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1860
  store ptr %1, ptr %i.b, align 8, !noalias !1860
  %.sroa.42.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i100, align 8, !noalias !1860
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @63, ptr noundef nonnull %i.b)
          to label %bb.aq unwind label %bb.q

bb.al:                                            ; preds = %bb.aj
  %i.dl = load i64, ptr %i.i, align 8, !range !357, !noundef !4
  %.not = icmp eq i64 %i.dl, -2
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1863
  store ptr %1, ptr %i.a, align 8, !noalias !1863
  %.sroa.42.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i102, align 8, !noalias !1863
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @63, ptr noundef nonnull %i.a)
          to label %bb.ao unwind label %bb.q

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1863
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ac

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1860
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit99: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit105 unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers.exit99
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.at:                                            ; preds = %bb.q, %.body
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders13byte_fallbackNtB4_12ByteFallbackNtNtB8_9tokenizer7Decoder12decode_chain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 14 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [24 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 11 uses
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 8 uses
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = load i64, ptr %2, align 8, !range !163, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  %.idx = mul nuw nsw i64 %i.ac, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.z, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.ae, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph

end_hunk_5
