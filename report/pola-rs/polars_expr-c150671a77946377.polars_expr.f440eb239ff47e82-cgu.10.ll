Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.10?download=true
inline.NumInlined: 10796
inline.NumDeleted: 4618
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs2_NtCslFlrwjHoTci_14polars_compute6momentNtB5_13KurtosisState7combine:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !90918 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !90919
  %i.o = fmul double %i.a, %i.a, !dbg !90920
  store double %i.e, ptr %0, align 8, !dbg !90921
  %i.p = fdiv double %i.j, %i.e, !dbg !90922      ; 2 uses
  %i.q = fmul double %i.a, %i.p, !dbg !90923
  %i.r = fadd double %i.i, %i.q, !dbg !90924      ; 2 uses
  %i.s = fsub double %i.c, %i.a, !dbg !90925      ; 2 uses
  %i.t = fsub double %i.g, %i.r, !dbg !90926
  %i.u = fmul double %i.a, %i.t, !dbg !90927
  %i.v = fmul double %i.j, %i.u, !dbg !90927      ; 3 uses
  %i.w = load <2 x double>, ptr %i.l, align 8, !dbg !90917 ; 2 uses
  %i.x = load <2 x double>, ptr %i.k, align 8, !dbg !90916 ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.x, %i.w, !dbg !90928
  %i.y = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !90928
  %i.z = fadd double %i.y, %i.v, !dbg !90928
  %i.aa = load <2 x double>, ptr %i.m, align 8, !dbg !90918
  %i.ab = load <2 x double>, ptr %i.n, align 8, !dbg !90919
  %i.ac = fadd <2 x double> %i.aa, %i.ab, !dbg !90918
  %i.ad = fmul double %i.c, %i.s, !dbg !90929
  %i.ae = fadd double %i.o, %i.ad, !dbg !90930
  %i.af = fmul double %i.ae, %i.v, !dbg !90931
  %i.ag = insertelement <2 x double> poison, double %i.c, i64 0, !dbg !90932
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !90932
  %i.ai = fmul <2 x double> %i.ah, %i.x, !dbg !90932 ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0, !dbg !90933
  %i.ak = fmul double %i.c, %i.aj, !dbg !90933
  %i.al = insertelement <2 x double> poison, double %i.a, i64 0, !dbg !90934
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !90934
  %i.an = fmul <2 x double> %i.am, %i.w, !dbg !90934 ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0, !dbg !90935
  %i.ap = fmul double %i.a, %i.ao, !dbg !90935
  %i.aq = fadd double %i.ak, %i.ap, !dbg !90936
  %i.ar = fmul double %i.aq, 6.000000e+00, !dbg !90937
  %i.as = fadd double %i.ar, %i.af, !dbg !90938
  %i.at = insertelement <2 x double> poison, double %i.s, i64 0, !dbg !90939
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1, !dbg !90939
  %i.av = insertelement <2 x double> poison, double %i.v, i64 0, !dbg !90939
  %i.aw = insertelement <2 x double> %i.av, double %i.p, i64 1, !dbg !90939 ; 2 uses
  %i.ax = fmul <2 x double> %i.au, %i.aw, !dbg !90939
  %i.ay = fsub <2 x double> %i.ai, %i.an, !dbg !90940
  %i.az = fmul <2 x double> %i.ay, <double 3.000000e+00, double 4.000000e+00>, !dbg !90941
  %i.ba = fadd <2 x double> %i.az, %i.ax, !dbg !90942
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !90943
  %i.bc = fmul <2 x double> %i.bb, %i.ba, !dbg !90943
  %i.bd = fadd <2 x double> %i.ac, %i.bc, !dbg !90918
  store double %i.r, ptr %i.h, align 8, !dbg !90944
  store double %i.z, ptr %i.l, align 8, !dbg !90945
  store <2 x double> %i.bd, ptr %i.m, align 8, !dbg !90946
  %i.be = fcmp oeq double %i.e, 0.000000e+00, !dbg !90947
  br i1 %i.be, label %bb.e, label %bb.f, !dbg !90947

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !90948
  br label %bb.f, !dbg !90949

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false), !dbg !90950
  br label %bb.f, !dbg !90951

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  ret void, !dbg !90952
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !90953 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !91175 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !dbg !91176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91177 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !91177, !alias.scope !91137, !noalias !91138, !noundef !2618
  %i.f = icmp eq i64 %i.e, 0, !dbg !91178
  br i1 %i.f, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !91179, !prof !2671

bb.b:                                             ; preds = %bb.a
  %i.g = call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i1 noundef zeroext true), !dbg !91180, !noalias !91141 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !91181

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !dbg !91182, !alias.scope !91142, !noalias !91143, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91182 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !dbg !91182, !alias.scope !91142, !noalias !91143, !noundef !2618 ; 3 uses
  %i.i = lshr i64 %i.c, 57, !dbg !91183
  %i.j = trunc nuw nsw i64 %i.i to i8, !dbg !91184 ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !91185

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i ], [ %i.al, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.4.124.i.i, %bb.f ], !dbg !91186
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.01.126.i.i, %bb.f ], !dbg !91186
  %i.m = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit.i ], [ %i.ak, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !91187 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i, !dbg !91188
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.n, align 1, !dbg !91189, !noalias !91145 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.l, !dbg !91190
  %i.p = bitcast <16 x i1> %i.o to i16, !dbg !91191 ; 2 uses
  %.not32.i.i = icmp eq i16 %i.p, 0, !dbg !91192
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !91193

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.033.i.i = phi i16 [ %i.aa, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.033.i.i, i1 true), !dbg !91194
  %i.r = zext nneg i16 %i.q to i64, !dbg !91195
  %i.s = add i64 %.sroa.0.021.i.i, %i.r, !dbg !91196
  %i.t = and i64 %i.s, %.val7.i, !dbg !91196
  %i.u = load ptr, ptr %0, align 8, !dbg !91197, !alias.scope !91142, !noalias !91162, !nonnull !2618, !noundef !2618
  %i.v = sub nsw i64 0, %i.t, !dbg !91198
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v, !dbg !91199
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8, !dbg !91200
  %.val2.i.i.i = load ptr, ptr %i.x, align 8, !dbg !91201, !noalias !91164, !nonnull !2618, !align !2672, !noundef !2618
  %i.y = call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val2.i.i.i) #46, !dbg !91202, !noalias !91164
  br i1 %i.y, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2l_11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !91203, !prof !2645

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !91204
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !dbg !91205, !prof !2671

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = add i16 %.sroa.05.033.i.i, -1, !dbg !91206
  %i.aa = and i16 %i.z, %.sroa.05.033.i.i, !dbg !91207 ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0, !dbg !91192
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !91193

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer, !dbg !91208
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !91208 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0, !dbg !91209
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !dbg !91210, !prof !2671

.thread28.i.i:                                    ; preds = %bb.e
  %i.ad = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true), !dbg !91211
  %i.ae = zext nneg i16 %i.ad to i64, !dbg !91212
  %i.af = add i64 %.sroa.0.021.i.i, %i.ae, !dbg !91213
  %i.ag = and i64 %i.af, %.val7.i, !dbg !91213
  br label %.thread.i.i, !dbg !91214

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ag, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1), !dbg !91215
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !91216
  %i.aj = icmp eq i16 %i.ai, 0, !dbg !91217
  br i1 %i.aj, label %bb.f, label %bb.g, !dbg !91217, !prof !2671

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ak = add i64 %i.m, 16, !dbg !91218           ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.021.i.i, !dbg !91219
  br label %bb.c, !dbg !91185

bb.g:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i, !dbg !91220
  %i.an = load i8, ptr %i.am, align 1, !dbg !91221, !noalias !91141, !noundef !2618
  %i.ao = icmp sgt i8 %i.an, -1, !dbg !91222
  br i1 %i.ao, label %bb.h, label %bb.i, !dbg !91222, !prof !2671

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !91223, !noalias !91141
  %i.ap = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !91224
  %i.aq = bitcast <16 x i1> %i.ap to i16, !dbg !91224 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aq, 0, !dbg !91225
  %i.ar = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true), !dbg !91226
  %i.as = zext nneg i16 %i.ar to i64, !dbg !91226
  call void @llvm.assume(i1 %.not.i23.i.i), !dbg !91227
  br label %bb.i, !dbg !91228

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.h ], [ %.sroa.4.125.i.i, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91170), !dbg !91229
  %i.at = load ptr, ptr %0, align 8, !dbg !91230, !alias.scope !91170, !noalias !91172, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.3.0.i.ph.i, !dbg !91231 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !dbg !91232, !noalias !91173, !noundef !2618
  %i.aw = and i8 %i.av, 1, !dbg !91233
  %i.ax = zext nneg i8 %i.aw to i64, !dbg !91233
  %i.ay = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !91234
  %i.az = load i64, ptr %i.h, align 8, !dbg !91235, !alias.scope !91170, !noalias !91172, !noundef !2618
  %i.ba = and i64 %i.az, %i.ay, !dbg !91236
  store i8 %i.j, ptr %i.au, align 1, !dbg !91237, !noalias !91173
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.ba, !dbg !91238
  %i.bc = getelementptr i8, ptr %i.bb, i64 16, !dbg !91238
  store i8 %i.j, ptr %i.bc, align 1, !dbg !91239, !noalias !91173
  %i.bd = load <2 x i64>, ptr %i.d, align 8, !dbg !91240, !alias.scope !91170, !noalias !91172
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ax, i64 0, !dbg !91240
  %i.bf = sub <2 x i64> %i.bd, %i.be, !dbg !91240
  store <2 x i64> %i.bf, ptr %i.d, align 8, !dbg !91240, !alias.scope !91170, !noalias !91172
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !91241
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bg, !dbg !91242
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8, !dbg !91243
  store ptr %1, ptr %i.bi, align 8, !dbg !91244, !noalias !91173
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2l_11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !91245

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2l_11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph.i.i, %bb.i
  ret void, !dbg !91246
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1, i16 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !91247 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 10 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %.sroa.082 = alloca [23 x i8], align 8          ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.677 = alloca [32 x i8], align 8          ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.468 = alloca [31 x i8], align 1          ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 3 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %3 = alloca [32 x i8], align 8                  ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.537.sroa.0 = alloca [29 x i8], align 2   ; 4 uses
  %i.r = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %2, ptr %i.r, align 2
  %i.s = load i8, ptr %1, align 16, !dbg !91460, !range !2696, !noundef !2618 ; 2 uses
  switch i8 %i.s, label %default.unreachable128 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %switch.lookup
    i8 20, label %switch.lookup129
    i8 21, label %bb.u
    i8 22, label %bb.v
    i8 23, label %bb.z
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.af
    i8 28, label %bb.ak
    i8 29, label %bb.al
    i8 30, label %bb.am
  ], !dbg !91461, !prof !91397

default.unreachable128:                           ; preds = %bb.am, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91462
  store i8 1, ptr %i.t, align 8, !dbg !91462
  store i64 18, ptr %0, align 8, !dbg !91462
  br label %bb.an, !dbg !91463

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91464
  store i8 7, ptr %i.u, align 8, !dbg !91464
  store i64 18, ptr %0, align 8, !dbg !91464
  br label %bb.an, !dbg !91465

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91466
  store i8 8, ptr %i.v, align 8, !dbg !91466
  store i64 18, ptr %0, align 8, !dbg !91466
  br label %bb.an, !dbg !91467

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91468
  store i8 9, ptr %i.w, align 8, !dbg !91468
  store i64 18, ptr %0, align 8, !dbg !91468
  br label %bb.an, !dbg !91469

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91470
  store i8 10, ptr %i.x, align 8, !dbg !91470
  store i64 18, ptr %0, align 8, !dbg !91470
  br label %bb.an, !dbg !91471

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91472
  store i8 11, ptr %i.y, align 8, !dbg !91472
  store i64 18, ptr %0, align 8, !dbg !91472
  br label %bb.an, !dbg !91473

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91474
  store i8 2, ptr %i.z, align 8, !dbg !91474
  store i64 18, ptr %0, align 8, !dbg !91474
  br label %bb.an, !dbg !91475

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91476
  store i8 3, ptr %i.aa, align 8, !dbg !91476
  store i64 18, ptr %0, align 8, !dbg !91476
  br label %bb.an, !dbg !91477

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91478
  store i8 4, ptr %i.ab, align 8, !dbg !91478
  store i64 18, ptr %0, align 8, !dbg !91478
  br label %bb.an, !dbg !91479

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91480
  store i8 5, ptr %i.ac, align 8, !dbg !91480
  store i64 18, ptr %0, align 8, !dbg !91480
  br label %bb.an, !dbg !91481

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91482
  store i8 6, ptr %i.ad, align 8, !dbg !91482
  store i64 18, ptr %0, align 8, !dbg !91482
  br label %bb.an, !dbg !91483

bb.m:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91484
  store i8 12, ptr %i.ae, align 8, !dbg !91484
  store i64 18, ptr %0, align 8, !dbg !91484
  br label %bb.an, !dbg !91485

bb.n:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91486
  store i8 13, ptr %i.af, align 8, !dbg !91486
  store i64 18, ptr %0, align 8, !dbg !91486
  br label %bb.an, !dbg !91487

bb.o:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91488
  store i8 14, ptr %i.ag, align 8, !dbg !91488
  store i64 18, ptr %0, align 8, !dbg !91488
  br label %bb.an, !dbg !91489

bb.p:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91490
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !91490, !noundef !2618 ; 2 uses
  %i.aj = add i64 %i.ai, -1, !dbg !91490
  %or.cond = icmp ult i64 %i.aj, 38, !dbg !91490
  br i1 %or.cond, label %bb.ap, label %bb.ao, !dbg !91490, !prof !2843

bb.q:                                             ; preds = %bb.a
  %.not111 = icmp eq i16 %2, 0, !dbg !91491
  %. = select i1 %.not111, i8 26, i8 39, !dbg !91492
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91493
  store i8 %., ptr %i.ak, align 8, !dbg !91493
  store i64 18, ptr %0, align 8, !dbg !91493
  br label %bb.an, !dbg !91494

bb.r:                                             ; preds = %bb.a
  %.not110 = icmp eq i16 %2, 0, !dbg !91495
  %.112 = select i1 %.not110, i8 24, i8 38, !dbg !91496
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91497
  store i8 %.112, ptr %i.al, align 8, !dbg !91497
  store i64 18, ptr %0, align 8, !dbg !91497
  br label %bb.an, !dbg !91498

bb.s:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91499
  store i8 24, ptr %i.am, align 8, !dbg !91499
  store i64 18, ptr %0, align 8, !dbg !91499
  br label %bb.an, !dbg !91500

bb.t:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91501
  store i8 16, ptr %i.an, align 8, !dbg !91501
  store i64 18, ptr %0, align 8, !dbg !91501
  br label %bb.an, !dbg !91502

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537.sroa.0), !dbg !91503
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !91504
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !91504, !range !2701, !noundef !2618
  %switch.offset = xor i8 %i.ap, 3, !dbg !91505
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91506 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !91506
  %i.as = load i8, ptr %i.ar, align 1, !dbg !91506, !range !2890, !noundef !2618 ; 2 uses
  switch i8 %i.as, label %bb.as [
    i8 -38, label %bb.aq
    i8 -40, label %bb.ar
  ], !dbg !91507

switch.lookup129:                                 ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !91508
  %i.au = load i8, ptr %i.at, align 1, !dbg !91508, !range !2701, !noundef !2618
  %switch.offset131 = xor i8 %i.au, 3, !dbg !91509
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91510
  store i8 20, ptr %i.av, align 8, !dbg !91510
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !91510
  store i8 %switch.offset131, ptr %.sroa.444.0..sroa_idx, align 1, !dbg !91510
  store i64 18, ptr %0, align 8, !dbg !91510
  br label %bb.an, !dbg !91511

bb.u:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91512
  store i8 19, ptr %i.aw, align 8, !dbg !91512
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !91512
  store i8 3, ptr %.sroa.448.0..sroa_idx, align 1, !dbg !91512
  store i64 18, ptr %0, align 8, !dbg !91512
  br label %bb.an, !dbg !91513

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !91514
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91514
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !91514, !nonnull !2618, !noundef !2618
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType14to_arrow_field(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @195, i16 noundef %2), !dbg !91515
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !91516, !noalias !91403
  %i.az = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 321) 72, i64 noundef range(i64 8, 17) 8) #44, !dbg !91517, !noalias !91403 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null, !dbg !91518
  br i1 %i.ba, label %bb.w, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit114, !dbg !91519, !prof !2671

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc unwind label %bb.x, !dbg !91520

.noexc:                                           ; preds = %bb.w
  unreachable, !dbg !91520

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q) #42
          to label %common.resume unwind label %bb.y, !dbg !91521

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !91522
  unreachable, !dbg !91522

common.resume:                                    ; preds = %bb.bw, %bb.ay, %bb.ax, %bb.bm, %bb.bl, %bb.bh, %bb.av, %bb.ah, %bb.ab, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.bh ], [ %i.bb, %bb.x ], [ %i.bk, %bb.ab ], [ %i.bq, %bb.ah ], [ %i.co, %bb.av ], [ %i.ct, %bb.ax ], [ %.pn, %bb.bw ], [ %i.ct, %bb.ay ], [ %i.dc, %bb.bm ], [ %i.dc, %bb.bl ]
  resume { ptr, i32 } %common.resume.op, !dbg !91523

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit114: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !91524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !91525
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91526
  %i.be = load i64, ptr %i.bd, align 8, !dbg !91526, !noundef !2618
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91527
  store i8 28, ptr %i.bf, align 8, !dbg !91527
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91527
  store i64 %i.be, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !91527
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !91527
  store ptr %i.az, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !91527
  store i64 18, ptr %0, align 8, !dbg !91527
  br label %bb.an, !dbg !91528

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !91529
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91529
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !91529, !nonnull !2618, !noundef !2618
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType14to_arrow_field(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @195, i16 noundef %2), !dbg !91530
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !91531, !noalias !91404
  %i.bi = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 321) 72, i64 noundef range(i64 8, 17) 8) #44, !dbg !91532, !noalias !91404 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !91533
  br i1 %i.bj, label %bb.aa, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !91534, !prof !2671

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc115 unwind label %bb.ab, !dbg !91535

.noexc115:                                        ; preds = %bb.aa
  unreachable, !dbg !91535

bb.ab:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p) #42
          to label %common.resume unwind label %bb.ac, !dbg !91536

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !91537
  unreachable, !dbg !91537

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !91538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !91539
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91540
  store i8 29, ptr %i.bm, align 8, !dbg !91540
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91540
  store ptr %i.bi, ptr %.sroa.457.0..sroa_idx, align 8, !dbg !91540
  store i64 18, ptr %0, align 8, !dbg !91540
  br label %bb.an, !dbg !91541

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !dbg !91542
  call void @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object8registry24get_object_physical_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %3), !dbg !91542
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !91543
  store i64 18, ptr %0, align 8, !dbg !91543
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !dbg !91544
  br label %bb.an, !dbg !91544

bb.ae:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91545
  store i8 0, ptr %i.bo, align 8, !dbg !91545
  store i64 18, ptr %0, align 8, !dbg !91545
  br label %bb.an, !dbg !91546

bb.af:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !91547
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12cat_physical(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !91548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91405), !dbg !91549
  %i.bp = load i64, ptr %i.o, align 8, !dbg !91550, !range !2697, !alias.scope !91405, !noalias !91406, !noundef !2618
  %.not.i = icmp eq i64 %i.bp, 18, !dbg !91550
  br i1 %.not.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit, label %bb.ag, !dbg !91551, !prof !2645

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !91552, !noalias !91407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !91552, !noalias !91406
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #45
          to label %bb.ai unwind label %bb.ah, !dbg !91553, !noalias !91405

bb.ah:                                            ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #42
          to label %common.resume unwind label %bb.aj, !dbg !91554, !noalias !91405

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !91555, !noalias !91405
  unreachable, !dbg !91555

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !91556
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !91556, !range !2701, !alias.scope !91405, !noalias !91406, !noundef !2618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !91557
  %.not108 = icmp eq i16 %2, 0, !dbg !91558
  %.113 = select i1 %.not108, i8 26, i8 39, !dbg !91559
  store i8 %.113, ptr %i.n, align 8, !dbg !91560
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !91561, !noalias !91408
  %i.bu = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 321) 32, i64 noundef range(i64 8, 17) 8) #44, !dbg !91562, !noalias !91408 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null, !dbg !91563
  br i1 %i.bv, label %bb.au, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !91564, !prof !2671

bb.ak:                                            ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91565
  %i.bx = load ptr, ptr %i.bw, align 16, !dbg !91565, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !91566
  %i.bz = load i64, ptr %i.by, align 8, !dbg !91566, !noundef !2618
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.bx, i64 %i.bz, !dbg !91567
  store ptr %i.bx, ptr %i.l, align 8, !dbg !91568
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !91568
  store ptr %i.ca, ptr %i.cb, align 8, !dbg !91568
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !91568
  store ptr %i.r, ptr %i.cc, align 8, !dbg !91568
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs4_NtB3L_5dtypeNtB4J_8DataType12try_to_arrow0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l), !dbg !91569
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.468), !dbg !91570
  %.sroa.468.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.468, i64 7, !dbg !91570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.468.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !91570
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91571
  store i8 30, ptr %i.cd, align 8, !dbg !91571
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !91571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.468, i64 31, i1 false), !dbg !91571
  store i64 18, ptr %0, align 8, !dbg !91571
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.468), !dbg !91572
  br label %bb.an, !dbg !91573

bb.al:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !91574 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !91575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !91576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !91576
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB5_21ExtensionTypeInstance4name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce), !dbg !91577
  call void @_RNvXss_Cs7VARH73bmU_11compact_strNtB5_13CompactStringINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i), !dbg !91578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !91579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !91437
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.677), !dbg !91437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !91437
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !91437
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !91437, !nonnull !2618, !noundef !2618
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, i16 noundef %2)
          to label %bb.az unwind label %bb.ax, !dbg !91580

bb.am:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91581
  %i.ci = load i128, ptr %i.ch, align 16, !dbg !91581, !range !2892, !noundef !2618
  %i.cj = trunc nuw nsw i128 %i.ci to i64, !dbg !91581
  switch i64 %i.cj, label %default.unreachable128 [
    i64 0, label %bb.bn
    i64 1, label %bb.cc
    i64 2, label %bb.bu
    i64 3, label %bb.bv
  ], !dbg !91582

bb.an:                                            ; preds = %bb.cc, %bb.cb, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit120, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCskY9G75ZWc4U_11polars_expr.exit, %switch.lookup129, %bb.aq, %bb.r, %bb.q, %bb.ap, %bb.ak, %bb.ae, %bb.ad, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit114, %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !91583

bb.ao:                                            ; preds = %bb.p
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #48, !dbg !91584
  unreachable, !dbg !91584

bb.ap:                                            ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !91585
  %i.cl = load i64, ptr %i.ck, align 16, !dbg !91585, !noundef !2618
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91586
  store i8 33, ptr %i.cm, align 8, !dbg !91586
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91586
  store i64 %i.ai, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !91586
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !91586
  store i64 %i.cl, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !91586
  store i64 18, ptr %0, align 8, !dbg !91586
  br label %bb.an, !dbg !91587

bb.aq:                                            ; preds = %switch.lookup, %bb.at
  %.sroa.440.0 = phi i8 [ %.sroa.491.0.copyload, %bb.at ], [ %i.as, %switch.lookup ], !dbg !91588
  %.sroa.537.sroa.0.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.537.sroa.0, i64 6, !dbg !91503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(23) %.sroa.537.sroa.0.6..sroa_idx, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !91503
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91589
  store i8 15, ptr %i.cn, align 8, !dbg !91589
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !91589
  store i8 %switch.offset, ptr %.sroa.436.0..sroa_idx, align 1, !dbg !91589
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !91589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(29) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(29) %.sroa.537.sroa.0, i64 29, i1 false), !dbg !91589
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39, !dbg !91589
  store i8 %.sroa.440.0, ptr %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, align 1, !dbg !91589
  store i64 18, ptr %0, align 8, !dbg !91589
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537.sroa.0), !dbg !91590
  br label %bb.an, !dbg !91591

bb.ar:                                            ; preds = %switch.lookup
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #47, !dbg !91592
  br label %bb.at, !dbg !91592

bb.as:                                            ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !91593
  br label %bb.at, !dbg !91594

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !91595
  %.sroa.491.0.copyload = load i8, ptr %.sroa.491.0..sroa_idx, align 1, !dbg !91595
  br label %bb.aq, !dbg !91596

bb.au:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #45
          to label %.noexc117 unwind label %bb.av, !dbg !91597

.noexc117:                                        ; preds = %bb.au
  unreachable, !dbg !91597

bb.av:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n) #42
          to label %common.resume unwind label %bb.aw, !dbg !91598

bb.aw:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !91599
  unreachable, !dbg !91599

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit
  %switch.offset133 = add nuw nsw i8 %i.bt, 5, !dbg !91600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !91601
  %i.cq = icmp eq i8 %i.s, 27, !dbg !91602
  %i.cr = zext i1 %i.cq to i8, !dbg !91603
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !91604
  store i8 32, ptr %i.cs, align 8, !dbg !91604
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !91604
  store i8 %switch.offset133, ptr %.sroa.463.0..sroa_idx, align 1, !dbg !91604
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !91604
  store i8 %i.cr, ptr %.sroa.564.0..sroa_idx, align 2, !dbg !91604
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !91604
  store ptr %i.bu, ptr %.sroa.666.0..sroa_idx, align 8, !dbg !91604
  store i64 18, ptr %0, align 8, !dbg !91604
  br label %bb.an, !dbg !91605

bb.ax:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !91606
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !91606, !range !2670, !alias.scope !91436, !noundef !2618
  %i.cw = icmp eq i8 %i.cv, -40, !dbg !91607
  br i1 %i.cw, label %bb.ay, label %common.resume, !dbg !91607, !prof !2671

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bk, !dbg !91608

bb.az:                                            ; preds = %bb.al
  %i.cx = load i64, ptr %i.g, align 8, !dbg !91609, !range !2697, !noundef !2618 ; 2 uses
  %.not = icmp eq i64 %i.cx, 18, !dbg !91609
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !91610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !dbg !91610
  br i1 %.not, label %bb.bc, label %bb.ba, !dbg !91611
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!91342 = distinct !DILocation(line: 810, column: 1, scope: !10, inlinedAt: !91341)
!91343 = distinct !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !91342)
!91344 = distinct !DILocation(line: 779, column: 17, scope: !8, inlinedAt: !91343)
!91345 = distinct !DILocation(line: 447, column: 30, scope: !7, inlinedAt: !91344)
!91346 = distinct !{!91346, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr"}
!91347 = distinct !{!91347, !91346, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr: argument 0"}
!91348 = distinct !{!91348, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr"}
!91349 = distinct !{!91349, !91348, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr: argument 0"}
!91350 = distinct !{!91350, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr"}
!91351 = distinct !{!91351, !91350, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr: argument 0"}
!91352 = distinct !{!91352, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!91353 = distinct !{!91353, !91352, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!91354 = distinct !DISubprogram(name: "map<alloc::borrow::Cow<str>, polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::{impl#6}::try_to_arrow::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEE3mapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB2m_8DataType12try_to_arrows_0ECskY9G75ZWc4U_11polars_expr", scope: !2706, file: !2659, line: 1160, type: !2625, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91355 = distinct !DILexicalBlock(scope: !91354, file: !2659, line: 1165, column: 13)
!91356 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB7_8DataType12try_to_arrows_0CskY9G75ZWc4U_11polars_expr", scope: !91449, file: !3158, line: 1058, type: !2625, scopeLine: 1058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91357 = distinct !{!91357, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr"}
!91358 = distinct !{!91358, !91357, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr: argument 0"}
!91359 = distinct !DISubprogram(name: "new<polars_arrow::datatypes::ExtensionType>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr", scope: !2681, file: !2679, line: 284, type: !2625, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91360 = distinct !DILocation(line: 1054, column: 66, scope: !91307)
!91361 = distinct !DILexicalBlock(scope: !91359, file: !2679, line: 286, column: 9)
!91362 = distinct !DILocation(line: 1059, column: 17, scope: !91307)
!91363 = distinct !DILocation(line: 810, column: 1, scope: !11, inlinedAt: !91362)
!91364 = distinct !DILocation(line: 810, column: 1, scope: !10, inlinedAt: !91363)
!91365 = distinct !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !91364)
!91366 = distinct !DILocation(line: 779, column: 17, scope: !8, inlinedAt: !91365)
!91367 = distinct !DILocation(line: 447, column: 30, scope: !7, inlinedAt: !91366)
!91368 = distinct !{!91368, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr"}
!91369 = distinct !{!91369, !91368, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr: argument 0"}
!91370 = distinct !{!91370, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr"}
!91371 = distinct !{!91371, !91370, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr: argument 0"}
!91372 = distinct !{!91372, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr"}
!91373 = distinct !{!91373, !91372, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr: argument 0"}
!91374 = distinct !{!91374, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!91375 = distinct !{!91375, !91374, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!91376 = distinct !DILexicalBlock(scope: !91310, file: !3158, line: 1066, column: 21)
!91377 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs2u_NtNtCscgRAwXFJnXP_4core7convert3numlINtB8_7TryFromnE8try_from", scope: !91452, file: !3321, line: 317, type: !2625, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91378 = distinct !DILexicalBlock(scope: !91377, file: !3321, line: 318, column: 17)
!91379 = distinct !DILexicalBlock(scope: !91378, file: !3321, line: 319, column: 17)
!91380 = distinct !DISubprogram(name: "materialize_dyn_int", linkageName: "_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int", scope: !91455, file: !91453, line: 617, type: !2625, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91381 = distinct !DILexicalBlock(scope: !91380, file: !91453, line: 620, column: 37)
!91382 = distinct !DILocation(line: 1067, column: 32, scope: !91376)
!91383 = distinct !DILocation(line: 620, column: 20, scope: !91381, inlinedAt: !91382)
!91384 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs2v_NtNtCscgRAwXFJnXP_4core7convert3numxINtB8_7TryFromnE8try_from", scope: !91456, file: !3321, line: 317, type: !2625, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91385 = distinct !DILexicalBlock(scope: !91384, file: !3321, line: 318, column: 17)
!91386 = distinct !DILexicalBlock(scope: !91385, file: !3321, line: 319, column: 17)
!91387 = distinct !DILexicalBlock(scope: !91380, file: !91453, line: 623, column: 37)
!91388 = distinct !DILocation(line: 623, column: 20, scope: !91387, inlinedAt: !91382)
!91389 = distinct !{!91389, !"_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int"}
!91390 = distinct !{!91390, !91389, !"_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int: argument 0"}
!91391 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs38_NtNtCscgRAwXFJnXP_4core7convert3numyINtB8_7TryFromnE8try_from", scope: !91459, file: !3321, line: 317, type: !2625, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91392 = distinct !DILexicalBlock(scope: !91391, file: !3321, line: 318, column: 17)
!91393 = distinct !DILexicalBlock(scope: !91392, file: !3321, line: 319, column: 17)
!91394 = distinct !DILexicalBlock(scope: !91380, file: !91453, line: 626, column: 37)
!91395 = distinct !DILocation(line: 626, column: 20, scope: !91394, inlinedAt: !91382)
!91396 = distinct !DILexicalBlock(scope: !91310, file: !3158, line: 1062, column: 17)
!91397 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!91398 = !DINamespace(name: "TimeUnit", scope: !3338)
!91399 = !DILocation(line: 1008, column: 22, scope: !91251)
!91400 = !DILocation(line: 1009, column: 20, scope: !91251)
!91401 = !DILocation(line: 1394, column: 14, scope: !91254, inlinedAt: !91400)
!91402 = !DILocation(line: 1011, column: 63, scope: !91255)
!91403 = !{!91258}
!91404 = !{!91267}
!91405 = !{!91275}
!91406 = !{!91276}
!91407 = !{!91275, !91276}
!91408 = !{!91280}
!91409 = !DILocation(line: 1046, column: 30, scope: !91290)
!91410 = !DILocation(line: 3756, column: 14, scope: !91291, inlinedAt: !91409)
!91411 = !DILocation(line: 1841, column: 76, scope: !91292, inlinedAt: !91410)
!91412 = !DILocation(line: 1942, column: 18, scope: !91293, inlinedAt: !91411)
!91413 = !DILocation(line: 296, column: 20, scope: !91294, inlinedAt: !91412)
!91414 = !DILocation(line: 609, column: 14, scope: !91295, inlinedAt: !91413)
!91415 = !DILocation(line: 1047, column: 22, scope: !91290)
!91416 = !DILocation(line: 1041, column: 9, scope: !91297, inlinedAt: !91415)
!91417 = !DILocation(line: 102, column: 78, scope: !91300, inlinedAt: !91416)
!91418 = !DILocation(line: 1048, column: 22, scope: !91290)
!91419 = !DILocation(line: 836, column: 9, scope: !91302, inlinedAt: !91418)
!91420 = !DILocation(line: 1049, column: 22, scope: !91290)
!91421 = !DILocation(line: 2104, column: 9, scope: !91304, inlinedAt: !91420)
!91422 = !DILocation(line: 3892, column: 9, scope: !91305, inlinedAt: !91421)
!91423 = !DINamespace(name: "{impl#12}", scope: !2794)
!91424 = !DILocation(line: 1056, column: 38, scope: !91307)
!91425 = !DILocation(line: 778, column: 9, scope: !91309, inlinedAt: !91424)
!91426 = !DILocation(line: 1009, column: 31, scope: !91251)
!91427 = !DILocation(line: 2164, column: 14, scope: !91312, inlinedAt: !91426)
!91428 = !DILexicalBlockFile(scope: !91315, file: !2816, discriminator: 2)
!91429 = !DILexicalBlockFile(scope: !91314, file: !2659, discriminator: 2)
!91430 = !DILocation(line: 1165, column: 29, scope: !91429, inlinedAt: !91427)
!91431 = !DILocation(line: 250, column: 5, scope: !91428, inlinedAt: !91430)
!91432 = !DILocation(line: 20, column: 10, scope: !91316, inlinedAt: !91431)
!91433 = !DILocation(line: 1955, column: 21, scope: !91317, inlinedAt: !91432)
!91434 = !DILocation(line: 749, column: 22, scope: !91313, inlinedAt: !91433)
!91435 = !DILexicalBlockFile(scope: !91320, file: !3158, discriminator: 0)
!91436 = !{!91334, !91332, !91330, !91328}
!91437 = !DILocation(line: 1057, column: 28, scope: !91307)
!91438 = !DILexicalBlockFile(scope: !91339, file: !3158, discriminator: 2)
!91439 = !DILocation(line: 1057, column: 28, scope: !91438)
!91440 = !{!91353, !91351, !91349, !91347}
!91441 = !DILexicalBlockFile(scope: !91247, file: !2786, discriminator: 0)
!91442 = !DILocation(line: 1058, column: 56, scope: !91307)
!91443 = !DILexicalBlockFile(scope: !91309, file: !2718, discriminator: 2)
!91444 = !DILexicalBlockFile(scope: !91355, file: !2659, discriminator: 4)
!91445 = !DILocation(line: 1165, column: 29, scope: !91444, inlinedAt: !91442)
!91446 = !DILocation(line: 1058, column: 66, scope: !91356, inlinedAt: !91445)
!91447 = !DILocation(line: 778, column: 9, scope: !91443, inlinedAt: !91446)
!91448 = !DINamespace(name: "{impl#6}", scope: !3159)
!91449 = !DINamespace(name: "try_to_arrow", scope: !91448)
!91450 = !{!91358}
!91451 = !{!91375, !91373, !91371, !91369}
!91452 = !DINamespace(name: "{impl#156}", scope: !3322)
!91453 = !DIFile(filename: "crates/polars-core/src/utils/supertype.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "ee8b0a4d297a90caded07ce0d5b1a72e")
!91454 = !DINamespace(name: "utils", scope: !2615)
!91455 = !DINamespace(name: "supertype", scope: !91454)
!91456 = !DINamespace(name: "{impl#157}", scope: !3322)
!91457 = !{!91390}
!91458 = !DILexicalBlockFile(scope: !91380, file: !2786, discriminator: 0)
!91459 = !DINamespace(name: "{impl#196}", scope: !3322)
!91460 = !DILocation(line: 970, column: 15, scope: !91247)
!91461 = !DILocation(line: 970, column: 9, scope: !91247)
!91462 = !DILocation(line: 971, column: 24, scope: !91247)
!91463 = !DILocation(line: 971, column: 49, scope: !91247)
!91464 = !DILocation(line: 972, column: 22, scope: !91247)
!91465 = !DILocation(line: 972, column: 45, scope: !91247)
!91466 = !DILocation(line: 973, column: 23, scope: !91247)
!91467 = !DILocation(line: 973, column: 47, scope: !91247)
!91468 = !DILocation(line: 974, column: 23, scope: !91247)
!91469 = !DILocation(line: 974, column: 47, scope: !91247)
!91470 = !DILocation(line: 975, column: 23, scope: !91247)
!91471 = !DILocation(line: 975, column: 47, scope: !91247)
!91472 = !DILocation(line: 976, column: 24, scope: !91247)
!91473 = !DILocation(line: 976, column: 49, scope: !91247)
!91474 = !DILocation(line: 977, column: 21, scope: !91247)
!91475 = !DILocation(line: 977, column: 43, scope: !91247)
!91476 = !DILocation(line: 978, column: 22, scope: !91247)
!91477 = !DILocation(line: 978, column: 45, scope: !91247)
!91478 = !DILocation(line: 979, column: 22, scope: !91247)
!91479 = !DILocation(line: 979, column: 45, scope: !91247)
!91480 = !DILocation(line: 980, column: 22, scope: !91247)
!91481 = !DILocation(line: 980, column: 45, scope: !91247)
!91482 = !DILocation(line: 981, column: 23, scope: !91247)
!91483 = !DILocation(line: 981, column: 47, scope: !91247)
!91484 = !DILocation(line: 982, column: 24, scope: !91247)
!91485 = !DILocation(line: 982, column: 49, scope: !91247)
!91486 = !DILocation(line: 983, column: 24, scope: !91247)
!91487 = !DILocation(line: 983, column: 49, scope: !91247)
!91488 = !DILocation(line: 984, column: 24, scope: !91247)
!91489 = !DILocation(line: 984, column: 49, scope: !91247)
!91490 = !DILocation(line: 987, column: 25, scope: !91248)
!91491 = !DILocation(line: 991, column: 29, scope: !91247)
!91492 = !DILocation(line: 991, column: 26, scope: !91247)
!91493 = !DILocation(line: 996, column: 17, scope: !91249)
!91494 = !DILocation(line: 997, column: 13, scope: !91247)
!91495 = !DILocation(line: 999, column: 29, scope: !91247)
!91496 = !DILocation(line: 999, column: 26, scope: !91247)
!91497 = !DILocation(line: 1004, column: 17, scope: !91250)
!91498 = !DILocation(line: 1005, column: 13, scope: !91247)
!91499 = !DILocation(line: 1052, column: 29, scope: !91247)
!91500 = !DILocation(line: 1052, column: 58, scope: !91247)
!91501 = !DILocation(line: 1006, column: 21, scope: !91247)
!91502 = !DILocation(line: 1006, column: 45, scope: !91247)
!91503 = !DILocation(line: 1007, column: 38, scope: !91251)
!91504 = !DILocation(line: 1008, column: 17, scope: !91251)
!91505 = !DILocation(line: 54, column: 9, scope: !91252, inlinedAt: !91399)
!91506 = !DILocation(line: 745, column: 15, scope: !91253, inlinedAt: !91401)
!91507 = !DILocation(line: 745, column: 9, scope: !91253, inlinedAt: !91401)
!91508 = !DILocation(line: 1011, column: 58, scope: !91255)
!91509 = !DILocation(line: 54, column: 9, scope: !91252, inlinedAt: !91402)
!91510 = !DILocation(line: 1011, column: 31, scope: !91255)
!91511 = !DILocation(line: 1011, column: 74, scope: !91247)
!91512 = !DILocation(line: 1012, column: 21, scope: !91247)
!91513 = !DILocation(line: 1012, column: 72, scope: !91247)
!91514 = !DILocation(line: 1015, column: 26, scope: !91256)
!91515 = !DILocation(line: 1015, column: 29, scope: !91256)
!91516 = !DILocation(line: 99, column: 9, scope: !12, inlinedAt: !91264)
!91517 = !DILocation(line: 101, column: 9, scope: !12, inlinedAt: !91264)
!91518 = !DILocation(line: 248, column: 11, scope: !17, inlinedAt: !91260)
!91519 = !DILocation(line: 248, column: 5, scope: !17, inlinedAt: !91260)
!91520 = !DILocation(line: 250, column: 19, scope: !17, inlinedAt: !91260)
!91521 = !DILocation(line: 292, column: 5, scope: !1050, inlinedAt: !91259)
!91522 = !DILocation(line: 284, column: 5, scope: !1050, inlinedAt: !91259)
!91523 = !DILocation(line: 0, scope: !91247)
!91524 = !DILocation(line: 289, column: 56, scope: !1051, inlinedAt: !91259)
!91525 = !DILocation(line: 1015, column: 75, scope: !91256)
!91526 = !DILocation(line: 1016, column: 17, scope: !91256)
!91527 = !DILocation(line: 1014, column: 33, scope: !91256)
!91528 = !DILocation(line: 1017, column: 14, scope: !91247)
!91529 = !DILocation(line: 1019, column: 17, scope: !91265)
!91530 = !DILocation(line: 1019, column: 20, scope: !91265)
!91531 = !DILocation(line: 99, column: 9, scope: !12, inlinedAt: !91273)
!91532 = !DILocation(line: 101, column: 9, scope: !12, inlinedAt: !91273)
!91533 = !DILocation(line: 248, column: 11, scope: !17, inlinedAt: !91269)
!91534 = !DILocation(line: 248, column: 5, scope: !17, inlinedAt: !91269)
!91535 = !DILocation(line: 250, column: 19, scope: !17, inlinedAt: !91269)
!91536 = !DILocation(line: 292, column: 5, scope: !1050, inlinedAt: !91268)
!91537 = !DILocation(line: 284, column: 5, scope: !1050, inlinedAt: !91268)
!91538 = !DILocation(line: 289, column: 56, scope: !1051, inlinedAt: !91268)
!91539 = !DILocation(line: 1020, column: 13, scope: !91265)
!91540 = !DILocation(line: 1018, column: 25, scope: !91265)
!91541 = !DILocation(line: 1020, column: 15, scope: !91247)
!91542 = !DILocation(line: 1023, column: 29, scope: !91247)
!91543 = !DILocation(line: 1023, column: 26, scope: !91247)
!91544 = !DILocation(line: 1023, column: 55, scope: !91247)
!91545 = !DILocation(line: 1021, column: 21, scope: !91247)
!91546 = !DILocation(line: 1021, column: 43, scope: !91247)
!91547 = !DILocation(line: 1026, column: 40, scope: !91247)
!91548 = !DILocation(line: 1026, column: 45, scope: !91247)
!91549 = !DILocation(line: 1026, column: 60, scope: !91247)
!91550 = !DILocation(line: 1231, column: 15, scope: !28, inlinedAt: !91277)
!91551 = !DILocation(line: 1231, column: 9, scope: !28, inlinedAt: !91277)
!91552 = !DILocation(line: 1233, column: 17, scope: !28, inlinedAt: !91277)
!91553 = !DILocation(line: 1233, column: 23, scope: !29, inlinedAt: !91277)
!91554 = !DILocation(line: 1233, column: 86, scope: !28, inlinedAt: !91277)
!91555 = !DILocation(line: 1227, column: 5, scope: !28, inlinedAt: !91277)
!91556 = !DILocation(line: 1232, column: 16, scope: !28, inlinedAt: !91277)
!91557 = !DILocation(line: 1026, column: 67, scope: !91247)
!91558 = !DILocation(line: 1032, column: 33, scope: !91278)
!91559 = !DILocation(line: 1032, column: 30, scope: !91278)
!91560 = !DILocation(line: 0, scope: !91278)
!91561 = !DILocation(line: 99, column: 9, scope: !12, inlinedAt: !91288)
!91562 = !DILocation(line: 101, column: 9, scope: !12, inlinedAt: !91288)
!91563 = !DILocation(line: 248, column: 11, scope: !17, inlinedAt: !91284)
!91564 = !DILocation(line: 248, column: 5, scope: !17, inlinedAt: !91284)
!91565 = !DILocation(line: 614, column: 9, scope: !91289, inlinedAt: !91414)
!91566 = !DILocation(line: 1841, column: 86, scope: !91292, inlinedAt: !91410)
!91567 = !DILocation(line: 961, column: 18, scope: !91296, inlinedAt: !91417)
!91568 = !DILocation(line: 69, column: 9, scope: !91301, inlinedAt: !91419)
!91569 = !DILocation(line: 33, column: 9, scope: !91303, inlinedAt: !91422)
!91570 = !DILocation(line: 1050, column: 20, scope: !91306)
!91571 = !DILocation(line: 1050, column: 17, scope: !91306)
!91572 = !DILocation(line: 1050, column: 49, scope: !91306)
!91573 = !DILocation(line: 1051, column: 13, scope: !91247)
!91574 = !DILocation(line: 1054, column: 23, scope: !91247)
!91575 = !DILocation(line: 1055, column: 17, scope: !91307)
!91576 = !DILocation(line: 1056, column: 27, scope: !91307)
!91577 = !DILocation(line: 1056, column: 31, scope: !91307)
!91578 = !DILocation(line: 175, column: 14, scope: !91308, inlinedAt: !91425)
!91579 = !DILocation(line: 1056, column: 43, scope: !91307)
!91580 = !DILocation(line: 1057, column: 34, scope: !91307)
!91581 = !DILocation(line: 1062, column: 32, scope: !91310)
!91582 = !DILocation(line: 1062, column: 26, scope: !91310)
!91583 = !DILocation(line: 1073, column: 6, scope: !91247)
!91584 = !DILocation(line: 987, column: 17, scope: !91248)
!91585 = !DILocation(line: 988, column: 55, scope: !91248)
!91586 = !DILocation(line: 988, column: 17, scope: !91248)
!91587 = !DILocation(line: 989, column: 13, scope: !91247)
!91588 = !DILocation(line: 0, scope: !91311, inlinedAt: !91427)
!91589 = !DILocation(line: 1007, column: 35, scope: !91251)
!91590 = !DILocation(line: 1010, column: 14, scope: !91251)
!91591 = !DILocation(line: 1010, column: 14, scope: !91247)
!91592 = !DILocation(line: 745, column: 13, scope: !91313, inlinedAt: !91433)
!91593 = !DILocation(line: 1721, column: 9, scope: !91318, inlinedAt: !91434)
!91594 = !DILocation(line: 744, column: 9, scope: !91313, inlinedAt: !91433)
!91595 = !DILocation(line: 1955, column: 9, scope: !91317, inlinedAt: !91432)
!91596 = !DILocation(line: 1165, column: 33, scope: !91311, inlinedAt: !91427)
!91597 = !DILocation(line: 250, column: 19, scope: !17, inlinedAt: !91284)
!91598 = !DILocation(line: 292, column: 5, scope: !91281, inlinedAt: !91283)
!91599 = !DILocation(line: 284, column: 5, scope: !91281, inlinedAt: !91283)
!91600 = !DILocation(line: 1026, column: 34, scope: !91247)
!91601 = !DILocation(line: 289, column: 56, scope: !91319, inlinedAt: !91283)
!91602 = !DILocation(line: 1041, column: 21, scope: !91435)
!91603 = !DILocation(line: 1038, column: 20, scope: !91282)
!91604 = !DILocation(line: 1038, column: 17, scope: !91282)
!91605 = !DILocation(line: 1043, column: 13, scope: !91247)
!91606 = !DILocation(line: 612, column: 33, scope: !6, inlinedAt: !91326)
!91607 = !DILocation(line: 779, column: 12, scope: !8, inlinedAt: !91324)
!91608 = !DILocation(line: 780, column: 13, scope: !8, inlinedAt: !91324)
!91609 = !DILocation(line: 2173, column: 15, scope: !91335, inlinedAt: !91437)
!91610 = !DILocation(line: 0, scope: !91335, inlinedAt: !91437)
!91611 = !DILocation(line: 2173, column: 9, scope: !91335, inlinedAt: !91437)
!91612 = !DILocation(line: 2175, column: 17, scope: !91335, inlinedAt: !91437)
!91613 = !DILocation(line: 2189, column: 23, scope: !91337, inlinedAt: !91439)
!91614 = !DILocation(line: 1057, column: 60, scope: !91307)
!91615 = !DILocation(line: 1059, column: 17, scope: !91307)
!91616 = !DILocation(line: 612, column: 33, scope: !6, inlinedAt: !91345)
!91617 = !DILocation(line: 779, column: 12, scope: !8, inlinedAt: !91343)
!91618 = !DILocation(line: 780, column: 13, scope: !8, inlinedAt: !91343)
!91619 = !DILocation(line: 1060, column: 13, scope: !91307)
!91620 = !DILocation(line: 1060, column: 15, scope: !91247)
!91621 = !DILocation(line: 0, scope: !91441)
!91622 = !DILocation(line: 1058, column: 31, scope: !91307)
!91623 = !DILocation(line: 1058, column: 35, scope: !91307)
!91624 = !DILocation(line: 1164, column: 15, scope: !91354, inlinedAt: !91442)
!91625 = !DILocation(line: 1164, column: 9, scope: !91354, inlinedAt: !91442)
!91626 = !DILocation(line: 175, column: 14, scope: !91308, inlinedAt: !91447)
!91627 = !DILocation(line: 0, scope: !91354, inlinedAt: !91442)
!91628 = !DILocation(line: 286, column: 19, scope: !91359, inlinedAt: !91360)
!91629 = !DILocation(line: 292, column: 5, scope: !91359, inlinedAt: !91360)
!91630 = !DILocation(line: 284, column: 5, scope: !91359, inlinedAt: !91360)
!91631 = !DILocation(line: 289, column: 56, scope: !91361, inlinedAt: !91360)
!91632 = !DILocation(line: 1054, column: 38, scope: !91307)
!91633 = !DILocation(line: 175, column: 9, scope: !91308, inlinedAt: !91447)
!91634 = !DILocation(line: 175, column: 32, scope: !91308, inlinedAt: !91447)
!91635 = !DILocation(line: 1165, column: 33, scope: !91354, inlinedAt: !91442)
!91636 = !DILocation(line: 968, column: 5, scope: !91247)
!91637 = !DILocation(line: 612, column: 33, scope: !6, inlinedAt: !91367)
!91638 = !DILocation(line: 779, column: 12, scope: !8, inlinedAt: !91365)
!91639 = !DILocation(line: 780, column: 13, scope: !8, inlinedAt: !91365)
!91640 = !DILocation(line: 1067, column: 32, scope: !91376)
!91641 = !DILocation(line: 1067, column: 52, scope: !91376)
!91642 = !DILocation(line: 320, column: 20, scope: !91379, inlinedAt: !91383)
!91643 = !DILocation(line: 320, column: 20, scope: !91386, inlinedAt: !91388)
!91644 = !DILocation(line: 323, column: 24, scope: !91379, inlinedAt: !91383)
!91645 = !DILocation(line: 621, column: 16, scope: !91381, inlinedAt: !91382)
!91646 = !DILocation(line: 0, scope: !91458, inlinedAt: !91382)
!91647 = !DILocation(line: 320, column: 20, scope: !91393, inlinedAt: !91395)
!91648 = !DILocation(line: 323, column: 24, scope: !91386, inlinedAt: !91388)
!91649 = !DILocation(line: 624, column: 16, scope: !91387, inlinedAt: !91382)
!91650 = !DILocation(line: 631, column: 9, scope: !91380, inlinedAt: !91382)
!91651 = !DILocation(line: 636, column: 2, scope: !91380, inlinedAt: !91382)
!91652 = !DILocation(line: 323, column: 24, scope: !91393, inlinedAt: !91395)
!91653 = !DILocation(line: 627, column: 16, scope: !91394, inlinedAt: !91382)
!91654 = !DILocation(line: 0, scope: !91380, inlinedAt: !91382)
!91655 = !DILocation(line: 1067, column: 56, scope: !91376)
!91656 = !DILocation(line: 1065, column: 41, scope: !91310)
!91657 = !DILocation(line: 1063, column: 41, scope: !91310)
!91658 = !DILocation(line: 1067, column: 90, scope: !91376)
!91659 = !DILocation(line: 1067, column: 64, scope: !91376)
!91660 = !DILocation(line: 0, scope: !91310)
!91661 = !DILocation(line: 1070, column: 17, scope: !91396)
!91662 = !DILocation(line: 1071, column: 13, scope: !91247)
!91663 = distinct !DISubprogram(name: "push_back_mut<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs6_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE13push_back_mutCskY9G75ZWc4U_11polars_expr", scope: !2875, file: !2871, line: 938, type: !2625, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91664 = distinct !DISubprogram(name: "new<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RNvMs2_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_4NodeINtNtB9_3vec3VecIB15_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE3newCskY9G75ZWc4U_11polars_expr", scope: !3339, file: !2871, line: 156, type: !2625, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91665 = distinct !{!91665, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE6new_inCskY9G75ZWc4U_11polars_expr"}
!91666 = distinct !{!91666, !91665, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE6new_inCskY9G75ZWc4U_11polars_expr: argument 1"}
!91667 = distinct !{!91667, !91665, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE6new_inCskY9G75ZWc4U_11polars_expr: argument 0"}
!91668 = distinct !{!91668, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE13new_uninit_inCskY9G75ZWc4U_11polars_expr"}
!91669 = distinct !{!91669, !91668, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE13new_uninit_inCskY9G75ZWc4U_11polars_expr: argument 0"}
!91670 = distinct !{!91670, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE17try_new_uninit_inCskY9G75ZWc4U_11polars_expr"}
!91671 = distinct !{!91671, !91670, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE17try_new_uninit_inCskY9G75ZWc4U_11polars_expr: argument 0"}
!91672 = distinct !DISubprogram(name: "try_new_uninit_in<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE17try_new_uninit_inCskY9G75ZWc4U_11polars_expr", scope: !3340, file: !2679, line: 606, type: !2625, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91673 = distinct !DILexicalBlock(scope: !91672, file: !2679, line: 613, column: 13)
!91674 = distinct !DISubprogram(name: "new_uninit_in<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE13new_uninit_inCskY9G75ZWc4U_11polars_expr", scope: !3340, file: !2679, line: 574, type: !2625, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91675 = distinct !DILexicalBlock(scope: !91674, file: !2679, line: 578, column: 9)
!91676 = distinct !DISubprogram(name: "new_in<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecIB1m_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtB6_5alloc6GlobalE6new_inCskY9G75ZWc4U_11polars_expr", scope: !3340, file: !2679, line: 520, type: !2625, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91677 = distinct !DILocation(line: 940, column: 47, scope: !91663)
!91678 = distinct !DILocation(line: 524, column: 25, scope: !91676, inlinedAt: !91677)
!91679 = distinct !DILocation(line: 581, column: 15, scope: !91675, inlinedAt: !91678)
!91680 = distinct !DILocation(line: 614, column: 19, scope: !91673, inlinedAt: !91679)
!91681 = distinct !DILocation(line: 386, column: 18, scope: !2262, inlinedAt: !91680)
!91682 = distinct !DILocation(line: 449, column: 14, scope: !2261, inlinedAt: !91681)
!91683 = distinct !DILocation(line: 332, column: 9, scope: !2260, inlinedAt: !91682)
!91684 = distinct !DILocation(line: 210, column: 73, scope: !14, inlinedAt: !91683)
!91685 = distinct !DILexicalBlock(scope: !91676, file: !2679, line: 524, column: 9)
!91686 = distinct !DISubprogram(name: "push_back_node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE14push_back_nodeCskY9G75ZWc4U_11polars_expr", scope: !2875, file: !2871, line: 218, type: !2625, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91687 = distinct !DILexicalBlock(scope: !91663, file: !2871, line: 939, column: 9)
!91688 = distinct !DILexicalBlock(scope: !91686, file: !2871, line: 224, column: 13)
!91689 = distinct !DILexicalBlock(scope: !91688, file: !2871, line: 229, column: 17)
!91690 = !DILocation(line: 940, column: 59, scope: !91663)
!91691 = !{!91671, !91669, !91667, !91666}
!91692 = !{!91667, !91666}
!91693 = !{!91666}
!91694 = !DILocation(line: 943, column: 18, scope: !91687)
!91695 = !DILocation(line: 157, column: 9, scope: !91664, inlinedAt: !91690)
!91696 = !DILocation(line: 99, column: 9, scope: !12, inlinedAt: !91684)
!91697 = !DILocation(line: 101, column: 9, scope: !12, inlinedAt: !91684)
!91698 = !DILocation(line: 581, column: 15, scope: !91675, inlinedAt: !91678)
!91699 = !DILocation(line: 581, column: 9, scope: !91675, inlinedAt: !91678)
!91700 = !DILocation(line: 583, column: 23, scope: !91675, inlinedAt: !91678)
!91701 = !DILocation(line: 527, column: 5, scope: !91676, inlinedAt: !91677)
!91702 = !DILocation(line: 520, column: 5, scope: !91676, inlinedAt: !91677)
!91703 = !DILocation(line: 525, column: 21, scope: !91685, inlinedAt: !91677)
!91704 = !DILocation(line: 940, column: 86, scope: !91663)
!91705 = !DILocation(line: 222, column: 13, scope: !91686, inlinedAt: !91694)
!91706 = !DILocation(line: 223, column: 37, scope: !91686, inlinedAt: !91694)
!91707 = !DILocation(line: 223, column: 13, scope: !91686, inlinedAt: !91694)
!91708 = !DILocation(line: 226, column: 19, scope: !91688, inlinedAt: !91694)
!91709 = !DILocation(line: 226, column: 13, scope: !91688, inlinedAt: !91694)
!91710 = !DILocation(line: 229, column: 31, scope: !91689, inlinedAt: !91694)
!91711 = !DILocation(line: 229, column: 58, scope: !91688, inlinedAt: !91694)
!91712 = !DILocation(line: 227, column: 25, scope: !91688, inlinedAt: !91694)
!91713 = !DILocation(line: 227, column: 40, scope: !91688, inlinedAt: !91694)
!91714 = !DILocation(line: 232, column: 13, scope: !91688, inlinedAt: !91694)
!91715 = !DILocation(line: 233, column: 13, scope: !91688, inlinedAt: !91694)
!91716 = !DILocation(line: 946, column: 6, scope: !91663)
!91717 = distinct !DISubprogram(name: "pop_front<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs6_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE9pop_frontCskY9G75ZWc4U_11polars_expr", scope: !2875, file: !2871, line: 897, type: !2625, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91718 = distinct !DISubprogram(name: "pop_front_node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1c_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE14pop_front_nodeCskY9G75ZWc4U_11polars_expr", scope: !2875, file: !2871, line: 194, type: !2625, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91719 = distinct !DISubprogram(name: "map<core::ptr::non_null::NonNull<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>>, alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>, alloc::collections::linked_list::{impl#5}::pop_front_node::{closure_env#0}<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullINtNtNtCsgZ49sUHp3tW_5alloc11collections11linked_list4NodeINtNtB1k_3vec3VecIB2a_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEEEE3mapINtNtB1k_5boxed3BoxB1d_RNtNtB1k_5alloc6GlobalENCNvMs3_B1g_INtB1g_10LinkedListB29_E14pop_front_node0ECskY9G75ZWc4U_11polars_expr", scope: !2706, file: !2659, line: 1160, type: !2625, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91720 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNCNvMs3_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB7_10LinkedListINtNtBb_3vec3VecIB1e_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE14pop_front_node0CskY9G75ZWc4U_11polars_expr", scope: !2877, file: !2871, line: 197, type: !2625, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91721 = distinct !DILexicalBlock(scope: !91720, file: !2871, line: 198, column: 13)
!91722 = distinct !DILexicalBlock(scope: !91719, file: !2659, line: 1165, column: 13)
!91723 = distinct !DISubprogram(name: "map<alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>, alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, fn(alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>) -> alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtBN_11collections11linked_list4NodeINtNtBN_3vec3VecIB1X_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEERNtNtBN_5alloc6GlobalEE3mapB1W_INvMs2_B1k_B1h_12into_elementB38_EECskY9G75ZWc4U_11polars_expr", scope: !2706, file: !2659, line: 1160, type: !2625, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91724 = distinct !DILexicalBlock(scope: !91721, file: !2871, line: 204, column: 17)
!91725 = distinct !DISubprogram(name: "into_element<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, &alloc::alloc::Global>", linkageName: "_RINvMs2_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB6_4NodeINtNtBa_3vec3VecIB16_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE12into_elementRNtNtBa_5alloc6GlobalECskY9G75ZWc4U_11polars_expr", scope: !3339, file: !2871, line: 160, type: !2625, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91726 = distinct !DISubprogram(name: "call_once<fn(alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>) -> alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>, (alloc::boxed::Box<alloc::collections::linked_list::Node<alloc::vec::Vec<alloc::vec::Vec<polars_utils::hashing::BytesHash, alloc::alloc::Global>, alloc::alloc::Global>>, &alloc::alloc::Global>)>", linkageName: "_RNvYINvMs2_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB9_4NodeINtNtBd_3vec3VecIB19_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE12into_elementRNtNtBd_5alloc6GlobalEINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtBd_5boxed3BoxBX_B2y_EEE9call_onceCskY9G75ZWc4U_11polars_expr", scope: !2819, file: !2816, line: 250, type: !2625, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2618)
!91727 = distinct !DILexicalBlock(scope: !91723, file: !2659, line: 1165, column: 13)
!91728 = distinct !DILocation(line: 250, column: 5, scope: !91726, inlinedAt: !91742)
!91729 = distinct !{!91729, !"_RINvMs2_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB6_4NodeINtNtBa_3vec3VecIB16_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE12into_elementRNtNtBa_5alloc6GlobalECskY9G75ZWc4U_11polars_expr"}
!91730 = distinct !{!91730, !91729, !"_RINvMs2_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB6_4NodeINtNtBa_3vec3VecIB16_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEEE12into_elementRNtNtBa_5alloc6GlobalECskY9G75ZWc4U_11polars_expr: argument 0"}
!91731 = distinct !DILocation(line: 162, column: 5, scope: !91725, inlinedAt: !91728)
!91732 = distinct !DILocation(line: 1921, column: 24, scope: !837, inlinedAt: !91731)
!91733 = distinct !DILocation(line: 397, column: 27, scope: !103, inlinedAt: !91732)
!91734 = distinct !DILocation(line: 462, column: 23, scope: !22, inlinedAt: !91733)
!91735 = distinct !DILocation(line: 344, column: 9, scope: !21, inlinedAt: !91734)
!91736 = distinct !DILocation(line: 229, column: 22, scope: !20, inlinedAt: !91735)
!91737 = !DILocation(line: 898, column: 14, scope: !91717)
!91738 = !DILocation(line: 197, column: 19, scope: !91718, inlinedAt: !91737)
!91739 = !DILocation(line: 1165, column: 29, scope: !91722, inlinedAt: !91738)
!91740 = !DILocation(line: 898, column: 31, scope: !91717)
!91741 = !DILexicalBlockFile(scope: !91727, file: !2659, discriminator: 2)
!91742 = !DILocation(line: 1165, column: 29, scope: !91741, inlinedAt: !91740)
!91743 = !{!91730}
end_hunk_1
