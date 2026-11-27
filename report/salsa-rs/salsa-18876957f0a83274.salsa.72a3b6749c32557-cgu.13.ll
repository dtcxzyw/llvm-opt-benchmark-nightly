Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.13?download=true
inline.NumInlined: 216
inline.NumDeleted: 148
begin_hunk_0_@_RNvMNtNtCsC8CapfvpQ1_5salsa8database12memory_usageDNtB4_8DatabaseEL_12memory_usage:bb.a

bb.ai:                                            ; preds = %bb.ae
  %i.gl = load i64, ptr %i.gh, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.ai
  %.sroa.028.0 = phi i64 [ %i.gl, %bb.ai ], [ 0, %bb.ae ]
  %i.gm = add i64 %.sroa.028.0, %i.gf
  store i64 1, ptr %.sroa.0.0.i, align 8
  store i64 %i.gm, ptr %i.gh, align 8
  br label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit76: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.791)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.791)
  %i.gn = load ptr, ptr %.sroa.627.0..sroa_idx, align 8, !alias.scope !166, !nonnull !21, !noundef !21
  %i.go = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !166, !nonnull !21, !noundef !21 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gn
  br i1 %i.gp, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit

bb.ak:                                            ; preds = %bb.ao, %bb.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit.i, %.body73, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1u_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.al, %bb.ak, %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit, %.thread120
  %.pn59118 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread120 ], [ %.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEEB1u_.exit ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %.thread
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.an

bb.am:                                            ; preds = %.thread
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ao unwind label %bb.ak

bb.an:                                            ; preds = %bb.al
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.critedge:                                        ; preds = %bb.ao
  resume { ptr, i32 } %.pn59118

bb.ao:                                            ; preds = %bb.am
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 144, i64 noundef 16)
          to label %.critedge unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !181 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !21  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !184, !noundef !21
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE14reserve_rehashNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i1 noundef zeroext true), !noalias !183 ; 0 uses
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !182, !nonnull !21, !noundef !21 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.f, align 8, !alias.scope !182, !noundef !21 ; 4 uses
  %i.g = lshr i64 %i.a, 57
  %i.h = trunc nuw nsw i64 %i.g to i8             ; 3 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.k, align 8, !alias.scope !183
  %i.n = load i32, ptr %i.l, align 4, !alias.scope !183
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i
  %.pn.i.i = phi i64 [ %i.a, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %i.at, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %.sroa.4.125.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %.sroa.01.127.i.i, %bb.f ]
  %i.o = phi i64 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE7reserveNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_.exit.i ], [ %i.as, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !185 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.j
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not33.i.i = icmp eq i16 %i.r, 0
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i
  %.sroa.05.034.i.i = phi i16 [ %i.ai, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.0.021.i.i, %i.t
  %i.v = and i64 %i.u, %.val7.i
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !186, !noalias !187, !noundef !21
  %i.aa = icmp eq i64 %i.z, %i.a
  br i1 %i.aa, label %bb.d, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, !prof !25

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ac = load i32, ptr %i.ab, align 8, !alias.scope !186, !noalias !187, !noundef !21
  %i.ad = icmp eq i32 %i.ac, %i.m
  br i1 %i.ad, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, !prof !25

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !186, !noalias !187, !noundef !21
  %i.ag = icmp eq i32 %i.af, %i.n
  br i1 %i.ag, label %bb.j, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, !prof !26

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !27

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i, %bb.d, %.lr.ph.i.i
  %i.ah = add i16 %.sroa.05.034.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.034.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread29.i.i, !prof !27

.thread29.i.i:                                    ; preds = %bb.e
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.0.021.i.i, %i.am
  %i.ao = and i64 %i.an, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread29.i.i, %._crit_edge.i.i
  %.sroa.4.126.i.i = phi i64 [ %i.ao, %.thread29.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.as = add i64 %i.o, 16                        ; 2 uses
  %i.at = add i64 %i.as, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.av = load i8, ptr %i.au, align 1, !noalias !183, !noundef !21 ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !27

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !183
  %i.ax = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ay, 0
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true)
  %i.ba = zext nneg i16 %i.az to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ba
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !188
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bb = phi i8 [ %.pre, %bb.h ], [ %i.av, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ba, %bb.h ], [ %.sroa.4.126.i.i, %bb.g ] ; 3 uses
  %i.bc = zext i1 %4 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.be = and i8 %i.bb, 1
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bh = and i64 %i.bg, %.val7.i
  store i8 %i.h, ptr %i.bd, align 1, !noalias !188
  %i.bi = getelementptr i8, ptr %.val.i, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  store i8 %i.h, ptr %i.bj, align 1, !noalias !188
  %i.bk = load <2 x i64>, ptr %i.b, align 8, !alias.scope !189
  %i.bl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bf, i64 0
  %i.bm = sub <2 x i64> %i.bk, %i.bl
  store <2 x i64> %i.bm, ptr %i.b, align 8, !alias.scope !189
  %i.bn = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bo = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -32
  store i32 %2, ptr %i.bp, align 8, !noalias !189
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -28
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !189
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !189
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bo, i64 -8
  store i8 %i.bc, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !189
  br label %bb.k

bb.j:                                             ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE25find_or_find_insert_indexNCNvMs1_BT_NtBT_11IdentityMap12insert_entry0NCB2c_s_0E0BV_.exit.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.x, i64 -32 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.bs = zext i1 %4 to i8
  store i8 %i.bs, ptr %i.br, align 8
  %i.bt = load i32, ptr %i.bq, align 8, !range !31, !noundef !21
  %i.bu = getelementptr inbounds i8, ptr %i.x, i64 -28 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !21
  store i32 %2, ptr %i.bq, align 8
  store i32 %3, ptr %i.bu, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.3.0 = phi i32 [ undef, %bb.i ], [ %i.bv, %bb.j ]
  %.sroa.0.0 = phi i32 [ 0, %bb.i ], [ %i.bt, %bb.j ]
  %i.bw = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bx = insertvalue { i32, i32 } %i.bw, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.bx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap4seed(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 !guid !190 {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !31, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 20
  %i.g = load i32, ptr %i.f, align 4, !noundef !21
  %i.h = tail call fastcc { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %.sroa.0.03, i32 noundef %i.e, i32 noundef %i.g, i1 noundef zeroext false) ; 0 uses
  %i.i = icmp eq ptr %i.c, %i.a
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap5clear(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !193 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !194, !noundef !21
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !194, !noundef !21 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !194, !nonnull !21, !noundef !21
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !194
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.j = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.k = add i64 %.pre.fr.i.i.i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i.i = select i1 %i.j, i64 %.pre.fr.i.i.i.i, i64 %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !194, !noundef !21 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !194, !nonnull !21, !noundef !21
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !194
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !194
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !194
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !194
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !194
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE5clearBS_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENCNvMs6_B1w_B1t_5clear0EEB1S_.exit5.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap5drain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !213 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !21 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13with_capacityBL_(i64 noundef 0)
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = invoke noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE13with_capacityBL_(i64 noundef %i.i)
          to label %bb.i unwind label %bb.e

bb.d:                                             ; preds = %bb.t, %bb.b
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn, %bb.g ], [ %.pn, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdEEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %bb.aa unwind label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit

bb.f:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.s, %bb.h ] ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !214, !nonnull !21, !noundef !21
  %i.r = icmp eq ptr %i.q, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBO_2id2IdEEBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit unwind label %bb.z

bb.h:                                             ; preds = %bb.s, %bb.r, %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !215, !nonnull !21, !noundef !21 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !215, !noundef !21
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %.val24.i = load <16 x i8>, ptr %i.t, align 16, !noalias !216
  %i.y = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  store ptr %i.t, ptr %i.e, align 8
  %.sroa.07.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %.sroa.07.sroa.2.0..sroa_idx, align 8
  %.sroa.07.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.x, ptr %.sroa.07.sroa.3.0..sroa_idx, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <16 x i1> %i.y, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.i, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  invoke void @_RNvXsZ_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.v, %bb.w, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table5DrainNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEEB1k_(ptr noalias noundef align 8 dereferenceable(80) %i.e) #24
          to label %bb.f unwind label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.af = load i8, ptr %i.aa, align 8, !range !217, !noundef !21 ; 2 uses
  %.not = icmp eq i8 %i.af, 2
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %i.c, align 8, !range !31, !noundef !21 ; 2 uses
  %i.ah = load i32, ptr %i.ac, align 4, !noundef !21 ; 2 uses
  %i.ai = trunc nuw i8 %i.af to i1
  br i1 %i.ai, label %bb.w, label %bb.u

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvMsn_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_7RawIterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE13drop_elementsBR_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !218, !noundef !21 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc13
  %i.am = load ptr, ptr %.sroa.07.sroa.7.0..sroa_idx, align 8, !alias.scope !218, !nonnull !21, !noundef !21
  %i.an = add i64 %i.ak, 17
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 -1, i64 %i.an, i1 false)
  %.pre.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !218
  %.pre.fr.i.i.i = freeze i64 %.pre.i.i.i         ; 3 uses
  %i.ao = icmp ult i64 %.pre.fr.i.i.i, 8
  %i.ap = add i64 %.pre.fr.i.i.i, 1
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = mul nuw i64 %i.aq, 7
  %spec.select.i.i.i = select i1 %i.ao, i64 %.pre.fr.i.i.i, i64 %i.ar
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc13
  %i.as = phi i64 [ %spec.select.i.i.i, %bb.o ], [ 0, %.noexc13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 0, ptr %i.at, align 8, !alias.scope !218
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.as, ptr %i.au, align 8, !alias.scope !218
  %i.av = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !218, !nonnull !21, !noundef !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = load ptr, ptr %i.m, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.ax = load i64, ptr %i.n, align 8, !noundef !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !219
  store ptr %i.a, ptr %i.b, align 8, !noalias !219
  %i.ay = icmp samesign ult i64 %i.ax, 2
  br i1 %i.ay, label %bb.t, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  %i.az = icmp samesign ult i64 %i.ax, 21
  br i1 %i.az, label %bb.s, label %bb.r, !prof !22

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBY_2id2IdENCINvMB6_SBT_16sort_unstable_byNCNvMs1_BW_NtBW_11IdentityMap5drain0E0EBY_(ptr noalias noundef nonnull align 8 %i.aw, i64 noundef range(i64 0, 384307168202282326) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.t unwind label %bb.h

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1r_2id2IdENCINvMB8_SB1m_16sort_unstable_byNCNvMs1_B1p_NtB1p_11IdentityMap5drain0E0EB1r_(ptr noalias noundef nonnull align 8 %i.aw, i64 noundef range(i64 0, 384307168202282326) %i.ax, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.t unwind label %bb.h

bb.t:                                             ; preds = %bb.p, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !219
  %.sroa.03.0.copyload = load i64, ptr %i.f, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 %.sroa.03.0.copyload, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.u:                                             ; preds = %bb.m
  %i.bb = load i64, ptr %i.n, align 8, !alias.scope !220, !noundef !21 ; 3 uses
  %i.bc = load i64, ptr %i.g, align 8, !range !24, !alias.scope !220, !noundef !21
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.x unwind label %bb.k, !noalias !221

bb.w:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store i32 %i.ag, ptr %i.ad, align 8
  store i32 %i.ah, ptr %2, align 4
  invoke void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE4pushBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.y unwind label %bb.k

bb.x:                                             ; preds = %bb.u, %bb.v
  %i.be = load ptr, ptr %i.m, align 8, !alias.scope !220, !nonnull !21, !noundef !21
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bb ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %.sroa.4.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx17, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i32 %i.ah, ptr %.sroa.5.0..sroa_idx18, align 4
  %i.bg = add i64 %i.bb, 1
  store i64 %i.bg, ptr %i.n, align 8, !alias.scope !220
  br label %.backedge

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.y, %bb.x
  br label %bb.j

bb.z:                                             ; preds = %bb.g, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdEEEB1e_.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap5reuse(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !234 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !21  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.b = lshr i64 %i.a, 57
  %i.c = trunc nuw nsw i64 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !237, !noundef !21 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !237, !nonnull !21, !noundef !21 ; 2 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.i, align 8
  %i.l = load i32, ptr %i.j, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.d ]
  %.pn.i.i = phi i64 [ %i.a, %bb.a ], [ %i.ak, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.e        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !noalias !238 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.h
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.ai, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.e
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.t ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !239, !noalias !240, !noundef !21
  %i.x = icmp eq i64 %i.a, %i.w
  br i1 %i.x, label %bb.c, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, !prof !25

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !239, !noalias !240, !noundef !21
  %i.aa = icmp eq i32 %i.k, %i.z
  br i1 %i.aa, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, !prof !25

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !239, !noalias !240, !noundef !21
  %i.ad = icmp eq i32 %i.l, %i.ac
  br i1 %i.ad, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, !prof !26

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i, %bb.b
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit.thread, !prof !27

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.thread.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i, %bb.c, %.lr.ph.i
  %i.ah = add i16 %.sroa.05.0.i34.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = add i64 %.sroa.011.0.i.i, 16            ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i.i, %i.aj
  br label %bb.b

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BT_NtBT_11IdentityMap5reuse0E0BV_.exit.i
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -32
  %i.am = getelementptr inbounds i8, ptr %i.u, i64 -8
  store i8 1, ptr %i.am, align 8
  %i.an = load i32, ptr %i.al, align 8, !range !31, !noundef !21
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 -28
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !21
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit.thread

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit.thread: ; preds = %._crit_edge.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit
  %.sroa.3.0 = phi i32 [ %i.ap, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi i32 [ %i.an, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE4findNCNvMs1_BR_NtBR_11IdentityMap5reuse0EBT_.exit ], [ 0, %._crit_edge.i ]
  %i.aq = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ar = insertvalue { i32, i32 } %i.aq, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap6insert(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 !guid !241 {
bb.a:
  %i.a = tail call fastcc { i32, i32 } @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_11IdentityMap9is_active(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !249 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !250, !nonnull !21, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !250, !noundef !21
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 1
  %.val24.i = load <16 x i8>, ptr %i.b, align 16, !noalias !251
  %i.g = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !250, !noundef !21
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.j, ptr %.sroa.74.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.k = call noundef align 8 ptr @_RNvXsh_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !252 ; 2 uses
  %.not9.i = icmp eq ptr %i.k, null
  br i1 %.not9.i, label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !252, !noalias !253, !noundef !21
  %i.n = load i32, ptr %1, align 4, !range !31, !alias.scope !252
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !252
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i, %.lr.ph.i
  %i.q = phi ptr [ %i.k, %.lr.ph.i ], [ %i.z, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !253, !noalias !252, !noundef !21
  %i.t = icmp eq i32 %i.s, %i.m
  br i1 %i.t, label %bb.c, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.q, align 8, !range !31, !alias.scope !253, !noalias !252, !noundef !21
  %i.v = icmp eq i32 %i.u, %i.n
  br i1 %i.v, label %_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i

_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load i32, ptr %i.w, align 8, !alias.scope !253, !noalias !252, !noundef !21
  %i.y = icmp eq i32 %i.x, %i.p
  br i1 %i.y, label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i: ; preds = %_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i, %bb.c, %bb.b
  %i.z = call noundef align 8 ptr @_RNvXsh_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !252 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread, label %bb.b

_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit: ; preds = %_RNCNvMs1_NtCsC8CapfvpQ1_5salsa14tracked_structNtB7_11IdentityMap9is_active0B9_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !254, !noundef !21
  %i.ac = trunc nuw i8 %i.ab to i1
  br label %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread

_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i, %bb.a, %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit
  %.sroa.0.0 = phi i1 [ %i.ac, %_RINvYINtNtCsgMW4BsFgQdt_9hashbrown5table4IterNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_4find5checkRBH_NCNvMs1_BJ_NtBJ_11IdentityMap9is_active0E0INtNtNtB1H_3ops12control_flow11ControlFlowB30_EEBL_.exit ], [ false, %bb.a ], [ false, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNCNvMs1_B1f_NtB1f_11IdentityMap9is_active0E0B1h_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs2_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_16DisambiguatorMap12disambiguate(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !280 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.b = lshr i64 %1, 57
  %i.c = trunc nuw nsw i64 %i.b to i8             ; 3 uses
end_hunk_0
