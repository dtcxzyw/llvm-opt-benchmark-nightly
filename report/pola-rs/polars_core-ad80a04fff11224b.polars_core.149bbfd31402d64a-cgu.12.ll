Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.12?download=true
inline.NumInlined: 14058
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder6stringINtB5_21BinViewChunkedBuildereE12append_valueReEBb_:bb.a

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0), !dbg !18860, !noalias !18829
  br label %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE10push_valueReECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18860

_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE10push_valueReECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.e, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18861
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !18861, !alias.scope !18827, !noalias !18828, !nonnull !4867, !noundef !4867
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.af, !dbg !18862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !18863
  %i.al = add i64 %i.af, 1, !dbg !18864
  store i64 %i.al, ptr %i.ae, align 8, !dbg !18864, !alias.scope !18827, !noalias !18828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18865, !noalias !18824
  ret void, !dbg !18866
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCsgZ49sUHp3tW_5alloc6string6StringEB4_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18867 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 17 uses
  %i.b = icmp eq i64 %1, 0, !dbg !19095
  br i1 %i.b, label %bb.b, label %switch.lookup, !dbg !19095

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19096 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19097 ; 3 uses
  switch i8 %2, label %default.unreachable108 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !dbg !19098

default.unreachable108:                           ; preds = %.loopexit92, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3), !dbg !19099, !noalias !19074
  %i.e = load i64, ptr %i.c, align 8, !dbg !19100, !alias.scope !19075, !noalias !19074, !noundef !4867 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !19101
  tail call void @llvm.assume(i1 %i.f), !dbg !19102
  %i.g = load ptr, ptr %i.d, align 8, !dbg !19103, !alias.scope !19075, !noalias !19074, !nonnull !4867, !noundef !4867
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e, !dbg !19104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(3) @130, i64 3, i1 false), !dbg !19105
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !dbg !19106, !alias.scope !19075, !noalias !19074
  %i.i = add i64 %.pre.i.i.i, 3, !dbg !19106
  store i64 %i.i, ptr %i.c, align 8, !dbg !19106, !alias.scope !19075, !noalias !19074
  br label %bb.f, !dbg !19107

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !19108, !noalias !19076
  %i.j = load i64, ptr %i.c, align 8, !dbg !19109, !alias.scope !19077, !noalias !19076, !noundef !4867 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1, !dbg !19110
  tail call void @llvm.assume(i1 %i.k), !dbg !19111
  %i.l = load ptr, ptr %i.d, align 8, !dbg !19112, !alias.scope !19077, !noalias !19076, !nonnull !4867, !noundef !4867
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j, !dbg !19113
  store i32 1941291568, ptr %i.m, align 1, !dbg !19114
  %.pre.i.i.i28 = load i64, ptr %i.c, align 8, !dbg !19115, !alias.scope !19077, !noalias !19076
  %i.n = add i64 %.pre.i.i.i28, 4, !dbg !19115
  store i64 %i.n, ptr %i.c, align 8, !dbg !19115, !alias.scope !19077, !noalias !19076
  br label %bb.f, !dbg !19116

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3), !dbg !19117, !noalias !19078
  %i.o = load i64, ptr %i.c, align 8, !dbg !19118, !alias.scope !19079, !noalias !19078, !noundef !4867 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !19119
  tail call void @llvm.assume(i1 %i.p), !dbg !19120
  %i.q = load ptr, ptr %i.d, align 8, !dbg !19121, !alias.scope !19079, !noalias !19078, !nonnull !4867, !noundef !4867
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o, !dbg !19122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(3) @132, i64 3, i1 false), !dbg !19123
  %.pre.i.i.i29 = load i64, ptr %i.c, align 8, !dbg !19124, !alias.scope !19079, !noalias !19078
  %i.s = add i64 %.pre.i.i.i29, 3, !dbg !19124
  store i64 %i.s, ptr %i.c, align 8, !dbg !19124, !alias.scope !19079, !noalias !19078
  br label %bb.f, !dbg !19125

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.s
  ret i1 false, !dbg !19126

switch.lookup:                                    ; preds = %bb.a
  %i.t = zext nneg i8 %2 to i64, !dbg !19127
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs9_NtCs1LHh8CLbVkQ_11polars_core3fmtNtNtNtB7_9datatypes9any_value8AnyValueNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, i64 %i.t, !dbg !19127
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !19127 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19128
  %i.u = icmp eq i64 %1, -9223372036854775808     ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.x = load i64, ptr %switch.load, align 8, !dbg !19129, !noundef !4867 ; 5 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !19130
  br i1 %i.y, label %bb.ad, label %bb.g, !dbg !19130

bb.g:                                             ; preds = %switch.lookup
  %i.z = icmp eq i64 %i.x, -1, !dbg !19130
  %i.aa = and i1 %i.u, %i.z, !dbg !19130
  br i1 %i.aa, label %bb.ae, label %bb.h, !dbg !19130

bb.h:                                             ; preds = %bb.g
  %.sroa.010.0.peel = sdiv i64 %1, %i.x, !dbg !19131 ; 3 uses
  %i.ab = srem i64 %1, %i.x, !dbg !19132
  %i.ac = icmp eq i64 %.sroa.010.0.peel, 0, !dbg !19133
  br i1 %i.ac, label %.peel.next, label %bb.i, !dbg !19133

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i64 %.sroa.010.0.peel, 0, !dbg !19134
  %.sroa.07.0.i35.peel = tail call i64 @llvm.abs.i64(i64 %.sroa.010.0.peel, i1 false), !dbg !19135
  %i.ae = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i35.peel, ptr noalias noundef nonnull dereferenceable(20) %i.a), !dbg !19136 ; 2 uses
  br i1 %i.ad, label %bb.j, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.peel, !dbg !19137

bb.j:                                             ; preds = %bb.i
  %i.af = add i64 %i.ae, -1, !dbg !19138          ; 4 uses
  %i.ag = icmp ult i64 %i.af, 20, !dbg !19139
  br i1 %i.ag, label %bb.k, label %.loopexit89, !dbg !19139

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af, !dbg !19139
  store i8 45, ptr %i.ah, align 1, !dbg !19140, !alias.scope !19081
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.peel, !dbg !19141

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.peel: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i36.peel = phi i64 [ %i.af, %bb.k ], [ %i.ae, %bb.i ], !dbg !19142 ; 3 uses
  %i.ai = sub nuw i64 20, %.sroa.0.0.i36.peel, !dbg !19143 ; 3 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ai), !dbg !19144, !noalias !19082
  %i.aj = load i64, ptr %i.v, align 8, !dbg !19145, !alias.scope !19083, !noalias !19082, !noundef !4867 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !19146
  call void @llvm.assume(i1 %i.ak), !dbg !19147
  %.not.i.i.i38.peel = icmp eq i64 %.sroa.0.0.i36.peel, 20, !dbg !19148
  br i1 %.not.i.i.i38.peel, label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit43.peel, label %bb.l, !dbg !19148

bb.l:                                             ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.peel
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i36.peel, !dbg !19149
  %i.am = load ptr, ptr %i.w, align 8, !dbg !19150, !alias.scope !19083, !noalias !19082, !nonnull !4867, !noundef !4867
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj, !dbg !19151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.al, i64 %i.ai, i1 false), !dbg !19152
  %.pre.i.i.i39.peel = load i64, ptr %i.v, align 8, !dbg !19153, !alias.scope !19083, !noalias !19082
  br label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit43.peel, !dbg !19154

_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit43.peel: ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.peel, %bb.l
  %i.ao = phi i64 [ %.pre.i.i.i39.peel, %bb.l ], [ %i.aj, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.peel ], !dbg !19153
  %i.ap = add i64 %i.ao, %i.ai, !dbg !19153
  store i64 %i.ap, ptr %i.v, align 8, !dbg !19153, !alias.scope !19083, !noalias !19082
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1), !dbg !19155, !noalias !19084
  %i.aq = load i64, ptr %i.v, align 8, !dbg !19156, !alias.scope !19085, !noalias !19084, !noundef !4867 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1, !dbg !19157
  call void @llvm.assume(i1 %i.ar), !dbg !19158
  %i.as = load ptr, ptr %i.w, align 8, !dbg !19159, !alias.scope !19085, !noalias !19084, !nonnull !4867, !noundef !4867
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq, !dbg !19160
  store i8 100, ptr %i.at, align 1, !dbg !19161
  %.pre.i.i.i42.peel = load i64, ptr %i.v, align 8, !dbg !19162, !alias.scope !19085, !noalias !19084 ; 2 uses
  %i.au = add i64 %.pre.i.i.i42.peel, 1, !dbg !19162 ; 2 uses
  store i64 %i.au, ptr %i.v, align 8, !dbg !19162, !alias.scope !19085, !noalias !19084
  %i.av = icmp eq i64 %i.x, -1, !dbg !19132
  %i.aw = and i1 %i.u, %i.av, !dbg !19132
  br i1 %i.aw, label %.loopexit91, label %bb.m, !dbg !19132

bb.m:                                             ; preds = %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit43.peel
  %i.ax = icmp eq i64 %i.ab, 0, !dbg !19132
  br i1 %i.ax, label %.peel.next, label %bb.n, !dbg !19132

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp sgt i64 %i.au, -1, !dbg !19163
  call void @llvm.assume(i1 %i.ay), !dbg !19164
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1), !dbg !19165
  %i.az = load ptr, ptr %i.w, align 8, !dbg !19166, !alias.scope !19086, !nonnull !4867, !noundef !4867
  %i.ba = load i64, ptr %i.v, align 8, !dbg !19167, !alias.scope !19086, !noundef !4867 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, -1, !dbg !19168
  call void @llvm.assume(i1 %i.bb), !dbg !19169
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba, !dbg !19170
  store i8 32, ptr %i.bc, align 1, !dbg !19171
  %i.bd = add i64 %.pre.i.i.i42.peel, 2, !dbg !19172
  store i64 %i.bd, ptr %i.v, align 8, !dbg !19173, !alias.scope !19086
  br label %.peel.next, !dbg !19174

bb.o:                                             ; preds = %.loopexit92
  %i.be = srem i64 %1, 1000000000, !dbg !19175
  br label %bb.r, !dbg !19176

bb.p:                                             ; preds = %.loopexit92
  %i.bf = srem i64 %1, 1000000, !dbg !19177
  br label %bb.r, !dbg !19178

bb.q:                                             ; preds = %.loopexit92
  %i.bg = srem i64 %1, 1000, !dbg !19179
  br label %bb.r, !dbg !19180

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.16.0 = phi ptr [ @138, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.q ], !dbg !19181
  %.sroa.12.0 = phi i64 [ 3, %bb.o ], [ 2, %bb.p ], [ 0, %bb.q ], !dbg !19181
  %.sroa.8.0 = phi ptr [ @137, %bb.o ], [ @138, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.q ], !dbg !19181
  %.sroa.4.0 = phi i64 [ 2, %bb.o ], [ 3, %bb.p ], [ 2, %bb.q ], !dbg !19181
  %.sroa.018.0 = phi ptr [ @136, %bb.o ], [ @137, %bb.p ], [ @138, %bb.q ], !dbg !19181
  %.sroa.012.0 = phi i64 [ %i.be, %bb.o ], [ %i.bf, %bb.p ], [ %i.bg, %bb.q ], !dbg !19181 ; 3 uses
  %.sroa.20.0 = phi i64 [ 2, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], !dbg !19181
  %i.bh = icmp eq i64 %.sroa.012.0, 0, !dbg !19182
  br i1 %i.bh, label %bb.s, label %bb.t, !dbg !19182

bb.s:                                             ; preds = %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit34, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19183
  br label %bb.f, !dbg !19126

bb.t:                                             ; preds = %bb.r
  %.lhs.trunc = trunc nsw i64 %.sroa.012.0 to i32, !dbg !19184 ; 4 uses
  %i.bi = srem i32 %.lhs.trunc, 1000, !dbg !19184
  %i.bj = sdiv i32 %.lhs.trunc, 1000, !dbg !19185
  %i.bk = icmp eq i32 %i.bi, 0, !dbg !19184
  br i1 %i.bk, label %bb.u, label %bb.x, !dbg !19184

bb.u:                                             ; preds = %bb.t
  %i.bl = srem i32 %.lhs.trunc, 1000000, !dbg !19186
  %i.bm = sdiv i32 %.lhs.trunc, 1000000, !dbg !19187
  %i.bn = icmp eq i32 %i.bl, 0, !dbg !19186
  br i1 %i.bn, label %bb.v, label %bb.w, !dbg !19186

bb.v:                                             ; preds = %bb.u
  %.sext52 = sext i32 %i.bm to i64, !dbg !19187
  br label %bb.x, !dbg !19188

bb.w:                                             ; preds = %bb.u
  %.sext54 = sext i32 %i.bj to i64, !dbg !19185
  br label %bb.x, !dbg !19188

bb.x:                                             ; preds = %bb.t, %bb.v, %bb.w
  %.sroa.012.1 = phi i64 [ %.sext52, %bb.v ], [ %.sext54, %bb.w ], [ %.sroa.012.0, %bb.t ], !dbg !19181 ; 2 uses
  %.sroa.019.0 = phi ptr [ %.sroa.16.0, %bb.v ], [ %.sroa.8.0, %bb.w ], [ %.sroa.018.0, %bb.t ], !dbg !19189
  %.sroa.420.0 = phi i64 [ %.sroa.20.0, %bb.v ], [ %.sroa.12.0, %bb.w ], [ %.sroa.4.0, %bb.t ], !dbg !19189 ; 4 uses
  %i.bo = icmp slt i64 %.sroa.012.1, 0, !dbg !19190
  %.sroa.07.0.i = call i64 @llvm.abs.i64(i64 %.sroa.012.1, i1 true), !dbg !19191
  %i.bp = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i, ptr noalias noundef nonnull dereferenceable(20) %i.a), !dbg !19192 ; 2 uses
  br i1 %i.bo, label %bb.y, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit, !dbg !19193

bb.y:                                             ; preds = %bb.x
  %i.bq = add i64 %i.bp, -1, !dbg !19194          ; 4 uses
  %i.br = icmp ult i64 %i.bq, 20, !dbg !19195
  br i1 %i.br, label %bb.z, label %bb.aa, !dbg !19195

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq, !dbg !19195
  store i8 45, ptr %i.bs, align 1, !dbg !19196, !alias.scope !19089
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit, !dbg !19197

bb.aa:                                            ; preds = %bb.y
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1454) #57, !dbg !19195
  unreachable, !dbg !19195

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit: ; preds = %bb.x, %bb.z
  %.sroa.0.0.i30 = phi i64 [ %i.bq, %bb.z ], [ %i.bp, %bb.x ], !dbg !19198 ; 3 uses
  %i.bt = sub nuw i64 20, %.sroa.0.0.i30, !dbg !19199 ; 3 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bt), !dbg !19200, !noalias !19090
  %i.bu = load i64, ptr %i.v, align 8, !dbg !19201, !alias.scope !19091, !noalias !19090, !noundef !4867 ; 3 uses
  %i.bv = icmp sgt i64 %i.bu, -1, !dbg !19202
  call void @llvm.assume(i1 %i.bv), !dbg !19203
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i30, 20, !dbg !19204
  br i1 %.not.i.i.i, label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit, label %bb.ab, !dbg !19204

bb.ab:                                            ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i30, !dbg !19205
  %i.bx = load ptr, ptr %i.w, align 8, !dbg !19206, !alias.scope !19091, !noalias !19090, !nonnull !4867, !noundef !4867
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu, !dbg !19207
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %i.bw, i64 %i.bt, i1 false), !dbg !19208
  %.pre.i.i.i31 = load i64, ptr %i.v, align 8, !dbg !19209, !alias.scope !19091, !noalias !19090
  br label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit, !dbg !19210

_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit: ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit, %bb.ab
  %i.bz = phi i64 [ %.pre.i.i.i31, %bb.ab ], [ %i.bu, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit ], !dbg !19209
  %i.ca = add i64 %i.bz, %i.bt, !dbg !19209
  store i64 %i.ca, ptr %i.v, align 8, !dbg !19209, !alias.scope !19091, !noalias !19090
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.420.0), !dbg !19211, !noalias !19092
  %i.cb = load i64, ptr %i.v, align 8, !dbg !19212, !alias.scope !19093, !noalias !19092, !noundef !4867 ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, -1, !dbg !19213
  call void @llvm.assume(i1 %i.cc), !dbg !19214
  %.not.i.i.i32 = icmp eq i64 %.sroa.420.0, 0, !dbg !19215
  br i1 %.not.i.i.i32, label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit34, label %bb.ac, !dbg !19215

bb.ac:                                            ; preds = %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit
  %i.cd = load ptr, ptr %i.w, align 8, !dbg !19216, !alias.scope !19093, !noalias !19092, !nonnull !4867, !noundef !4867
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb, !dbg !19217
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %.sroa.019.0, i64 %.sroa.420.0, i1 false), !dbg !19218
  %.pre.i.i.i33 = load i64, ptr %i.v, align 8, !dbg !19219, !alias.scope !19093, !noalias !19092
  br label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit34, !dbg !19220

_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit34: ; preds = %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit, %bb.ac
  %i.cf = phi i64 [ %.pre.i.i.i33, %bb.ac ], [ %i.cb, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit ], !dbg !19219
  %i.cg = add i64 %i.cf, %.sroa.420.0, !dbg !19219
  store i64 %i.cg, ptr %i.v, align 8, !dbg !19219, !alias.scope !19093, !noalias !19092
  br label %bb.s, !dbg !19221

bb.ad:                                            ; preds = %switch.lookup
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #57, !dbg !19130
  unreachable, !dbg !19130

bb.ae:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_div_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #57, !dbg !19130
  unreachable, !dbg !19130

bb.af:                                            ; preds = %bb.ah
  %i.ch = srem i64 %1, %i.ck, !dbg !19222
  %.sroa.010.0 = sdiv i64 %i.ch, %i.cj, !dbg !19131 ; 3 uses
  %i.ci = icmp eq i64 %.sroa.010.0, 0, !dbg !19133
  br i1 %i.ci, label %.peel.next.1, label %bb.ai, !dbg !19133

.peel.next:                                       ; preds = %bb.n, %bb.m, %bb.h
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %switch.load, i64 8, !dbg !19223
  %i.cj = load i64, ptr %.sroa.0.0.ptr, align 8, !dbg !19129, !noundef !4867 ; 4 uses
  %i.ck = load i64, ptr %switch.load, align 8, !dbg !19224, !noundef !4867 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 0, !dbg !19222
  br i1 %i.cl, label %.loopexit84, label %bb.ag, !dbg !19222

bb.ag:                                            ; preds = %.peel.next
  %i.cm = icmp eq i64 %i.ck, -1, !dbg !19222
  %i.cn = and i1 %i.u, %i.cm, !dbg !19222
  br i1 %i.cn, label %.loopexit85, label %bb.ah, !dbg !19222

.loopexit84:                                      ; preds = %.peel.next.2, %.peel.next.1, %.peel.next
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #57, !dbg !19222
  unreachable, !dbg !19222

bb.ah:                                            ; preds = %bb.ag
  %i.co = icmp eq i64 %i.cj, 0, !dbg !19222
  br i1 %i.co, label %.loopexit86, label %bb.af, !dbg !19222

.loopexit85:                                      ; preds = %bb.av, %bb.am, %bb.ag
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #57, !dbg !19222
  unreachable, !dbg !19222

.loopexit86:                                      ; preds = %bb.aw, %bb.an, %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #57, !dbg !19222
  unreachable, !dbg !19222

bb.ai:                                            ; preds = %bb.af
  %i.cp = icmp slt i64 %.sroa.010.0, 0, !dbg !19134
  %.sroa.07.0.i35 = call i64 @llvm.abs.i64(i64 %.sroa.010.0, i1 true), !dbg !19135
  %i.cq = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i35, ptr noalias noundef nonnull dereferenceable(20) %i.a), !dbg !19136 ; 2 uses
  br i1 %i.cp, label %bb.aj, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37, !dbg !19137

bb.aj:                                            ; preds = %bb.ai
  %i.cr = add i64 %i.cq, -1, !dbg !19138          ; 4 uses
  %i.cs = icmp ult i64 %i.cr, 20, !dbg !19139
  br i1 %i.cs, label %bb.ak, label %.loopexit89, !dbg !19139

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr, !dbg !19139
  store i8 45, ptr %i.ct, align 1, !dbg !19140, !alias.scope !19081
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37, !dbg !19141

.loopexit89:                                      ; preds = %bb.aj, %bb.aq, %bb.az, %bb.j
  %.lcssa73 = phi i64 [ %i.af, %bb.j ], [ %i.cr, %bb.aj ], [ %i.dl, %bb.aq ], [ %i.ew, %bb.az ], !dbg !19138
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa73, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1454) #57, !dbg !19139
  unreachable, !dbg !19139

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37: ; preds = %bb.ai, %bb.ak
  %.sroa.0.0.i36 = phi i64 [ %i.cr, %bb.ak ], [ %i.cq, %bb.ai ], !dbg !19142 ; 3 uses
  %i.cu = sub nuw i64 20, %.sroa.0.0.i36, !dbg !19143 ; 3 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cu), !dbg !19144, !noalias !19082
  %i.cv = load i64, ptr %i.v, align 8, !dbg !19145, !alias.scope !19083, !noalias !19082, !noundef !4867 ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, -1, !dbg !19146
  call void @llvm.assume(i1 %i.cw), !dbg !19147
  %.not.i.i.i38 = icmp eq i64 %.sroa.0.0.i36, 20, !dbg !19148
  br i1 %.not.i.i.i38, label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit43, label %bb.al, !dbg !19148

bb.al:                                            ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i36, !dbg !19149
  %i.cy = load ptr, ptr %i.w, align 8, !dbg !19150, !alias.scope !19083, !noalias !19082, !nonnull !4867, !noundef !4867
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv, !dbg !19151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %i.cx, i64 %i.cu, i1 false), !dbg !19152
  %.pre.i.i.i39 = load i64, ptr %i.v, align 8, !dbg !19153, !alias.scope !19083, !noalias !19082
  br label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit43, !dbg !19154

.peel.next.1:                                     ; preds = %bb.bf, %bb.be, %bb.af
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %switch.load, i64 16, !dbg !19223
  %i.da = load i64, ptr %.sroa.0.0.ptr.1, align 8, !dbg !19129, !noundef !4867 ; 4 uses
  %i.db = getelementptr i8, ptr %switch.load, i64 8, !dbg !19224
  %i.dc = load i64, ptr %i.db, align 8, !dbg !19224, !noundef !4867 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !19222
  br i1 %i.dd, label %.loopexit84, label %bb.am, !dbg !19222

bb.am:                                            ; preds = %.peel.next.1
  %i.de = icmp eq i64 %i.dc, -1, !dbg !19222
  %i.df = and i1 %i.u, %i.de, !dbg !19222
  br i1 %i.df, label %.loopexit85, label %bb.an, !dbg !19222

bb.an:                                            ; preds = %bb.am
  %i.dg = icmp eq i64 %i.da, 0, !dbg !19222
  br i1 %i.dg, label %.loopexit86, label %bb.ao, !dbg !19222

bb.ao:                                            ; preds = %bb.an
  %i.dh = srem i64 %1, %i.dc, !dbg !19222
  %.sroa.010.0.1 = sdiv i64 %i.dh, %i.da, !dbg !19131 ; 3 uses
  %i.di = icmp eq i64 %.sroa.010.0.1, 0, !dbg !19133
  br i1 %i.di, label %.peel.next.2, label %bb.ap, !dbg !19133

bb.ap:                                            ; preds = %bb.ao
  %i.dj = icmp slt i64 %.sroa.010.0.1, 0, !dbg !19134
  %.sroa.07.0.i35.1 = call i64 @llvm.abs.i64(i64 %.sroa.010.0.1, i1 true), !dbg !19135
  %i.dk = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i35.1, ptr noalias noundef nonnull dereferenceable(20) %i.a), !dbg !19136 ; 2 uses
  br i1 %i.dj, label %bb.aq, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.1, !dbg !19137

bb.aq:                                            ; preds = %bb.ap
  %i.dl = add i64 %i.dk, -1, !dbg !19138          ; 4 uses
  %i.dm = icmp ult i64 %i.dl, 20, !dbg !19139
  br i1 %i.dm, label %bb.ar, label %.loopexit89, !dbg !19139

bb.ar:                                            ; preds = %bb.aq
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dl, !dbg !19139
  store i8 45, ptr %i.dn, align 1, !dbg !19140, !alias.scope !19081
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.1, !dbg !19141

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit37.1: ; preds = %bb.ar, %bb.ap
  %.sroa.0.0.i36.1 = phi i64 [ %i.dl, %bb.ar ], [ %i.dk, %bb.ap ], !dbg !19142 ; 3 uses
  %i.do = sub nuw i64 20, %.sroa.0.0.i36.1, !dbg !19143 ; 3 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.do), !dbg !19144, !noalias !19082
end_hunk_0
begin_hunk_1_@_RNvXs9_NtCs1LHh8CLbVkQ_11polars_core3fmtNtNtNtB7_9datatypes9any_value8AnyValueNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt:bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit404.i511 unwind label %bb.pv, !dbg !242207

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit404.i511: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i401.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !242204
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i406.i512 unwind label %bb.qb, !dbg !242208

bb.qb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit404.i511
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body390.i487 unwind label %bb.qc, !dbg !242209

bb.qc:                                            ; preds = %bb.qb
  %i.aqi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !242208
  unreachable, !dbg !242208

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i406.i512: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit404.i511
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit409.i513 unwind label %.loopexit.split-lp.i485, !dbg !242210

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit409.i513: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i406.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !242201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !242211
  br label %bb.pc, !dbg !242160

bb.qd:                                            ; preds = %bb.pj, %bb.ph
  store ptr %i.aov, ptr %i.ad, align 8, !dbg !242212
  br label %bb.pf, !dbg !242145

.split.i.i521:                                    ; preds = %bb.pj, %bb.pi
  invoke void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aov, i64 noundef %i.apl, i64 noundef 0, i64 noundef %.sroa.05.0.i501, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #53
          to label %bb.pu unwind label %.loopexit.split-lp.i485, !dbg !242213

.body412.i531:                                    ; preds = %bb.qi, %bb.qg, %bb.qe
  %.pn323.i532 = phi { ptr, i32 } [ %i.aql, %bb.qg ], [ %i.aqj, %bb.qe ], [ %i.aqm, %bb.qi ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar) #52
          to label %common.resume unwind label %bb.nl, !dbg !242214

bb.qe:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i411.i534, %.split307.i528
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  br label %.body412.i531

bb.qf:                                            ; preds = %.split307.i528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !242215
  store ptr %i.ap, ptr %i.ao, align 8, !dbg !242215
  %.sroa.4117.0..sroa_idx.i533 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !242215
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.4117.0..sroa_idx.i533, align 8, !dbg !242215
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val204) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val205) ]
  %i.aqk = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %.val204, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val205, ptr noundef nonnull @86, ptr noundef nonnull %i.ao)
          to label %bb.qh unwind label %bb.qg, !dbg !242216

bb.qg:                                            ; preds = %bb.qf
  %i.aql = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap) #52
          to label %.body412.i531 unwind label %bb.nl, !dbg !242217

bb.qh:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !242217
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i411.i534 unwind label %bb.qi, !dbg !242218

bb.qi:                                            ; preds = %bb.qh
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body412.i531 unwind label %bb.qj, !dbg !242219

bb.qj:                                            ; preds = %bb.qi
  %i.aqn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !242218
  unreachable, !dbg !242218

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i411.i534: ; preds = %bb.qh
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit414.i535 unwind label %bb.qe, !dbg !242220

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit414.i535: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit.i411.i534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !242217
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit417.i536 unwind label %bb.qk, !dbg !242221

bb.qk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit414.i535
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ql, !dbg !242222

bb.ql:                                            ; preds = %bb.qk
  %i.aqp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !242221
  unreachable, !dbg !242221

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit417.i536: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit414.i535
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar), !dbg !242223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !242214
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt9fmt_floatdEB4_.exit, !dbg !242224

_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt9fmt_floatdEB4_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit354.i560, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit359.i559, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit367.i545, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit381.i476, %bb.op, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit395.i500, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit417.i536
  %.sroa.0.4.in.i477 = phi i1 [ %i.amo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit367.i545 ], [ %i.alu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit354.i560 ], [ %i.alw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit359.i559 ], [ %i.aqk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit417.i536 ], [ %i.aom, %bb.op ], [ %.sroa.0.8.in.i499, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit395.i500 ], [ %i.anw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit381.i476 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !242225
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242226

bb.qm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho), !dbg !240867
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !242227
  %i.aqr = load i32, ptr %i.aqq, align 4, !dbg !242227, !noundef !4867
  %i.aqs = add i32 %i.aqr, 719163, !dbg !242228
  %i.aqt = tail call noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.aqs), !dbg !242229 ; 2 uses
  %.not182 = icmp eq i32 %i.aqt, 0, !dbg !242230
  br i1 %.not182, label %bb.tw, label %bb.tv, !dbg !242231, !prof !4879

bb.qn:                                            ; preds = %bb.a
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !242232
  %i.aqv = load i64, ptr %i.aqu, align 8, !dbg !242232, !noundef !4867
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !242233
  %i.aqx = load i8, ptr %i.aqw, align 1, !dbg !242233, !range !5060, !noundef !4867
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !242234
  %i.aqz = load ptr, ptr %i.aqy, align 16, !dbg !242234, !align !5034, !noundef !4867
  %i.ara = tail call fastcc noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt12fmt_datetime(ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %i.aqv, i8 noundef %i.aqx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.aqz), !dbg !242235
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242236

bb.qo:                                            ; preds = %bb.a
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !242237
  %i.arc = load i64, ptr %i.arb, align 8, !dbg !242237, !noundef !4867
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !242238
  %i.are = load i8, ptr %i.ard, align 1, !dbg !242238, !range !5060, !noundef !4867
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !242239
  %i.arg = load ptr, ptr %i.arf, align 16, !dbg !242239, !noundef !4867 ; 2 uses
  %.not181 = icmp eq ptr %i.arg, null, !dbg !242239
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 16
  %spec.select = select i1 %.not181, ptr null, ptr %i.arh, !dbg !242240
  %i.ari = tail call fastcc noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core3fmt12fmt_datetime(ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %i.arc, i8 noundef %i.are, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %spec.select), !dbg !242241
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242242

bb.qp:                                            ; preds = %bb.a
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !242243
  %i.ark = load i64, ptr %i.arj, align 8, !dbg !242243, !noundef !4867 ; 13 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !242244
  %i.arm = load i8, ptr %i.arl, align 1, !dbg !242244, !range !5060, !noundef !4867 ; 3 uses
  %i.arn = icmp eq i64 %i.ark, 0, !dbg !242245
  br i1 %i.arn, label %bb.qq, label %switch.lookup, !dbg !242245

bb.qq:                                            ; preds = %bb.qp
  switch i8 %i.arm, label %default.unreachable662 [
    i8 0, label %bb.qr
    i8 1, label %bb.qs
    i8 2, label %bb.qt
  ], !dbg !242246

bb.qr:                                            ; preds = %bb.qq
  %i.aro = tail call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 3), !dbg !242247
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242247

bb.qs:                                            ; preds = %bb.qq
  %i.arp = tail call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 4), !dbg !242248
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242248

bb.qt:                                            ; preds = %bb.qq
  %i.arq = tail call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 3), !dbg !242249
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242249

bb.qu:                                            ; preds = %bb.st
  %i.arr = srem i64 %i.ark, 1000000000, !dbg !242250
  br label %bb.qx, !dbg !242251

bb.qv:                                            ; preds = %bb.st
  %i.ars = srem i64 %i.ark, 1000000, !dbg !242252
  br label %bb.qx, !dbg !242253

bb.qw:                                            ; preds = %bb.st
  %i.art = srem i64 %i.ark, 1000, !dbg !242254
  br label %bb.qx, !dbg !242255

bb.qx:                                            ; preds = %bb.qw, %bb.qv, %bb.qu
  %.sroa.16.0.i = phi ptr [ @138, %bb.qu ], [ inttoptr (i64 1 to ptr), %bb.qv ], [ inttoptr (i64 1 to ptr), %bb.qw ], !dbg !242256
  %.sroa.12.0.i = phi i64 [ 3, %bb.qu ], [ 2, %bb.qv ], [ 0, %bb.qw ], !dbg !242256
  %.sroa.8.0.i = phi ptr [ @137, %bb.qu ], [ @138, %bb.qv ], [ inttoptr (i64 1 to ptr), %bb.qw ], !dbg !242256
  %.sroa.4.0.i = phi i64 [ 2, %bb.qu ], [ 3, %bb.qv ], [ 2, %bb.qw ], !dbg !242256
  %.sroa.018.0.i = phi ptr [ @136, %bb.qu ], [ @137, %bb.qv ], [ @138, %bb.qw ], !dbg !242256
  %.sroa.012.0.i = phi i64 [ %i.arr, %bb.qu ], [ %i.ars, %bb.qv ], [ %i.art, %bb.qw ], !dbg !242256 ; 3 uses
  %.sroa.20.0.i = phi i64 [ 2, %bb.qu ], [ 0, %bb.qv ], [ 0, %bb.qw ], !dbg !242256
  %i.aru = icmp eq i64 %.sroa.012.0.i, 0, !dbg !242257
  br i1 %i.aru, label %bb.qy, label %bb.qz, !dbg !242257

bb.qy:                                            ; preds = %bb.rh, %bb.qx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !242258, !noalias !240871
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242259

bb.qz:                                            ; preds = %bb.qx
  %.lhs.trunc.i = trunc nsw i64 %.sroa.012.0.i to i32, !dbg !242260 ; 4 uses
  %i.arv = srem i32 %.lhs.trunc.i, 1000, !dbg !242260
  %i.arw = sdiv i32 %.lhs.trunc.i, 1000, !dbg !242261
  %i.arx = icmp eq i32 %i.arv, 0, !dbg !242260
  br i1 %i.arx, label %bb.ra, label %bb.rd, !dbg !242260

bb.ra:                                            ; preds = %bb.qz
  %i.ary = srem i32 %.lhs.trunc.i, 1000000, !dbg !242262
  %i.arz = sdiv i32 %.lhs.trunc.i, 1000000, !dbg !242263
  %i.asa = icmp eq i32 %i.ary, 0, !dbg !242262
  br i1 %i.asa, label %bb.rb, label %bb.rc, !dbg !242262

bb.rb:                                            ; preds = %bb.ra
  %.sext41.i = sext i32 %i.arz to i64, !dbg !242263
  br label %bb.rd, !dbg !242264

bb.rc:                                            ; preds = %bb.ra
  %.sext43.i = sext i32 %i.arw to i64, !dbg !242261
  br label %bb.rd, !dbg !242264

bb.rd:                                            ; preds = %bb.rc, %bb.rb, %bb.qz
  %.sroa.012.1.i = phi i64 [ %.sext41.i, %bb.rb ], [ %.sext43.i, %bb.rc ], [ %.sroa.012.0.i, %bb.qz ], !dbg !242256 ; 2 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.16.0.i, %bb.rb ], [ %.sroa.8.0.i, %bb.rc ], [ %.sroa.018.0.i, %bb.qz ], !dbg !242265
  %.sroa.420.0.i = phi i64 [ %.sroa.20.0.i, %bb.rb ], [ %.sroa.12.0.i, %bb.rc ], [ %.sroa.4.0.i, %bb.qz ], !dbg !242265
  %i.asb = icmp slt i64 %.sroa.012.1.i, 0, !dbg !242266
  %.sroa.07.0.i.i = call i64 @llvm.abs.i64(i64 %.sroa.012.1.i, i1 true), !dbg !242267
  %i.asc = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.j), !dbg !242268 ; 2 uses
  br i1 %i.asb, label %bb.re, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit.i, !dbg !242269

bb.re:                                            ; preds = %bb.rd
  %i.asd = add i64 %i.asc, -1, !dbg !242270       ; 4 uses
  %i.ase = icmp ult i64 %i.asd, 20, !dbg !242271
  br i1 %i.ase, label %bb.rf, label %bb.rg, !dbg !242271

bb.rf:                                            ; preds = %bb.re
  %i.asf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.asd, !dbg !242271
  store i8 45, ptr %i.asf, align 1, !dbg !242272, !alias.scope !240872, !noalias !240871
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit.i, !dbg !242273

bb.rg:                                            ; preds = %bb.re
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.asd, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1454) #57, !dbg !242271
  unreachable, !dbg !242271

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit.i: ; preds = %bb.rf, %bb.rd
  %.sroa.0.0.i28.i = phi i64 [ %i.asd, %bb.rf ], [ %i.asc, %bb.rd ], !dbg !242274 ; 2 uses
  %i.asg = sub nuw i64 20, %.sroa.0.0.i28.i, !dbg !242275
  %i.ash = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.i28.i, !dbg !242276
  %i.asi = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ash, i64 noundef %i.asg), !dbg !242277
  br i1 %i.asi, label %.loopexit.i564, label %bb.rh, !dbg !242278

bb.rh:                                            ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit.i
  %i.asj = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i, i64 noundef %.sroa.420.0.i), !dbg !242279
  br i1 %i.asj, label %.loopexit.i564, label %bb.qy, !dbg !242280

.loopexit.i564:                                   ; preds = %bb.sx, %bb.su, %bb.ss, %bb.sp, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.3.i, %bb.sj, %bb.sg, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.2.i, %bb.sa, %bb.rx, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.1.i, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.i, %bb.rh, %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !242258, !noalias !240871
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core3fmt19fmt_duration_stringNtNtCscgRAwXFJnXP_4core3fmt9FormatterEB4_.exit, !dbg !242281

switch.lookup:                                    ; preds = %bb.qp
  %i.ask = zext nneg i8 %i.arm to i64, !dbg !242282
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs9_NtCs1LHh8CLbVkQ_11polars_core3fmtNtNtNtB7_9datatypes9any_value8AnyValueNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, i64 %i.ask, !dbg !242282
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !242282 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !242283, !noalias !240871
  %i.asl = icmp eq i64 %i.ark, -9223372036854775808 ; 6 uses
  %i.asm = load i64, ptr %switch.load, align 8, !dbg !242284, !noalias !240871, !noundef !4867 ; 5 uses
  %i.asn = icmp eq i64 %i.asm, 0, !dbg !242285
  br i1 %i.asn, label %bb.rj, label %bb.ri, !dbg !242285

bb.ri:                                            ; preds = %switch.lookup
  %i.aso = icmp eq i64 %i.asm, -1, !dbg !242285
  %i.asp = and i1 %i.asl, %i.aso, !dbg !242285
  br i1 %i.asp, label %bb.rk, label %bb.rl, !dbg !242285

bb.rj:                                            ; preds = %switch.lookup
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #57, !dbg !242285
  unreachable, !dbg !242285

bb.rk:                                            ; preds = %bb.ri
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_div_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #57, !dbg !242285
  unreachable, !dbg !242285

bb.rl:                                            ; preds = %bb.ri
  %.sroa.010.0.i = sdiv i64 %i.ark, %i.asm, !dbg !242286 ; 3 uses
  %i.asq = srem i64 %i.ark, %i.asm, !dbg !242287
  %i.asr = icmp eq i64 %.sroa.010.0.i, 0, !dbg !242288
  br i1 %i.asr, label %bb.rs, label %bb.ro, !dbg !242288

bb.rm:                                            ; preds = %._crit_edge, %._crit_edge608
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #57, !dbg !242289
  unreachable, !dbg !242289

bb.rn:                                            ; preds = %bb.sk, %bb.sb, %bb.rs
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #57, !dbg !242289
  unreachable, !dbg !242289

bb.ro:                                            ; preds = %bb.rl
  %i.ass = icmp slt i64 %.sroa.010.0.i, 0, !dbg !242290
  %.sroa.07.0.i29.i = tail call i64 @llvm.abs.i64(i64 %.sroa.010.0.i, i1 false), !dbg !242291
  %i.ast = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i29.i, ptr noalias noundef nonnull dereferenceable(20) %i.j), !dbg !242292 ; 2 uses
  br i1 %i.ass, label %bb.rp, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.i, !dbg !242293

bb.rp:                                            ; preds = %bb.ro
  %i.asu = add i64 %i.ast, -1, !dbg !242294       ; 4 uses
  %i.asv = icmp ult i64 %i.asu, 20, !dbg !242295
  br i1 %i.asv, label %bb.rq, label %bb.rr, !dbg !242295

bb.rq:                                            ; preds = %bb.rp
  %i.asw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.asu, !dbg !242295
  store i8 45, ptr %i.asw, align 1, !dbg !242296, !alias.scope !240874, !noalias !240871
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.i, !dbg !242297

bb.rr:                                            ; preds = %bb.sn, %bb.se, %bb.rv, %bb.rp
  %.lcssa63.i = phi i64 [ %i.asu, %bb.rp ], [ %i.atg, %bb.rv ], [ %i.aua, %bb.se ], [ %i.auu, %bb.sn ], !dbg !242294
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa63.i, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1454) #57, !dbg !242295
  unreachable, !dbg !242295

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.i: ; preds = %bb.rq, %bb.ro
  %.sroa.0.0.i30.i = phi i64 [ %i.asu, %bb.rq ], [ %i.ast, %bb.ro ], !dbg !242298 ; 2 uses
  %i.asx = sub nuw i64 20, %.sroa.0.0.i30.i, !dbg !242299
  %i.asy = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.i30.i, !dbg !242300
  %i.asz = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.asy, i64 noundef %i.asx), !dbg !242301
  br i1 %i.asz, label %.loopexit.i564, label %bb.su, !dbg !242302

bb.rs:                                            ; preds = %bb.rl, %bb.sv, %bb.sx
  %.sroa.0.0.ptr.1.i = getelementptr inbounds nuw i8, ptr %switch.load, i64 8, !dbg !242303
  %i.ata = load i64, ptr %.sroa.0.0.ptr.1.i, align 8, !dbg !242284, !noalias !240871, !noundef !4867 ; 6 uses
  %i.atb = icmp eq i64 %i.ata, 0, !dbg !242289
  br i1 %i.atb, label %bb.rn, label %bb.rt, !dbg !242289

bb.rt:                                            ; preds = %bb.rs
  %i.atc = srem i64 %i.ark, %i.asm, !dbg !242289
  %.sroa.010.0.1.i = sdiv i64 %i.atc, %i.ata, !dbg !242286 ; 3 uses
  %i.atd = icmp eq i64 %.sroa.010.0.1.i, 0, !dbg !242288
  br i1 %i.atd, label %._crit_edge608, label %bb.ru, !dbg !242288

bb.ru:                                            ; preds = %bb.rt
  %i.ate = icmp slt i64 %.sroa.010.0.1.i, 0, !dbg !242290
  %.sroa.07.0.i29.1.i = call i64 @llvm.abs.i64(i64 %.sroa.010.0.1.i, i1 true), !dbg !242291
  %i.atf = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i29.1.i, ptr noalias noundef nonnull dereferenceable(20) %i.j), !dbg !242292 ; 2 uses
  br i1 %i.ate, label %bb.rv, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.1.i, !dbg !242293

bb.rv:                                            ; preds = %bb.ru
  %i.atg = add i64 %i.atf, -1, !dbg !242294       ; 4 uses
  %i.ath = icmp ult i64 %i.atg, 20, !dbg !242295
  br i1 %i.ath, label %bb.rw, label %bb.rr, !dbg !242295

bb.rw:                                            ; preds = %bb.rv
  %i.ati = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.atg, !dbg !242295
  store i8 45, ptr %i.ati, align 1, !dbg !242296, !alias.scope !240874, !noalias !240871
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.1.i, !dbg !242297

_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.1.i: ; preds = %bb.rw, %bb.ru
  %.sroa.0.0.i30.1.i = phi i64 [ %i.atg, %bb.rw ], [ %i.atf, %bb.ru ], !dbg !242298 ; 2 uses
  %i.atj = sub nuw i64 20, %.sroa.0.0.i30.1.i, !dbg !242299
  %i.atk = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.i30.1.i, !dbg !242300
  %i.atl = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.atk, i64 noundef %i.atj), !dbg !242301
  br i1 %i.atl, label %.loopexit.i564, label %bb.rx, !dbg !242302

bb.rx:                                            ; preds = %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.1.i
  %i.atm = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 1), !dbg !242304
  br i1 %i.atm, label %.loopexit.i564, label %bb.ry, !dbg !242305

bb.ry:                                            ; preds = %bb.rx
  %i.atn = icmp eq i64 %i.ata, -1, !dbg !242287
  %i.ato = and i1 %i.asl, %i.atn, !dbg !242287
  br i1 %i.ato, label %bb.sw, label %bb.rz, !dbg !242287

bb.rz:                                            ; preds = %bb.ry
  %i.atp = srem i64 %i.ark, %i.ata, !dbg !242287
  %i.atq = icmp eq i64 %i.atp, 0, !dbg !242287
  br i1 %i.atq, label %._crit_edge608, label %bb.sa, !dbg !242287

bb.sa:                                            ; preds = %bb.rz
  %i.atr = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32), !dbg !242306
  br i1 %i.atr, label %.loopexit.i564, label %._crit_edge608, !dbg !242307

._crit_edge608:                                   ; preds = %bb.rt, %bb.sa, %bb.rz
  %.sroa.0.0.ptr.2.i = getelementptr inbounds nuw i8, ptr %switch.load, i64 16, !dbg !242303
  %i.ats = load i64, ptr %.sroa.0.0.ptr.2.i, align 8, !dbg !242284, !noalias !240871, !noundef !4867 ; 6 uses
  %i.att = icmp eq i64 %i.ata, -1, !dbg !242289
  %i.atu = and i1 %i.asl, %i.att, !dbg !242289
  br i1 %i.atu, label %bb.rm, label %bb.sb, !dbg !242289

bb.sb:                                            ; preds = %._crit_edge608
  %i.atv = icmp eq i64 %i.ats, 0, !dbg !242289
  br i1 %i.atv, label %bb.rn, label %bb.sc, !dbg !242289

bb.sc:                                            ; preds = %bb.sb
  %i.atw = srem i64 %i.ark, %i.ata, !dbg !242289
  %.sroa.010.0.2.i = sdiv i64 %i.atw, %i.ats, !dbg !242286 ; 3 uses
  %i.atx = icmp eq i64 %.sroa.010.0.2.i, 0, !dbg !242288
  br i1 %i.atx, label %._crit_edge, label %bb.sd, !dbg !242288

bb.sd:                                            ; preds = %bb.sc
  %i.aty = icmp slt i64 %.sroa.010.0.2.i, 0, !dbg !242290
  %.sroa.07.0.i29.2.i = call i64 @llvm.abs.i64(i64 %.sroa.010.0.2.i, i1 true), !dbg !242291
  %i.atz = call noundef i64 @_RNvXsu_CsgHtAh0uHj3K_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i29.2.i, ptr noalias noundef nonnull dereferenceable(20) %i.j), !dbg !242292 ; 2 uses
  br i1 %i.aty, label %bb.se, label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.2.i, !dbg !242293

bb.se:                                            ; preds = %bb.sd
  %i.aua = add i64 %i.atz, -1, !dbg !242294       ; 4 uses
  %i.aub = icmp ult i64 %i.aua, 20, !dbg !242295
  br i1 %i.aub, label %bb.sf, label %bb.rr, !dbg !242295

bb.sf:                                            ; preds = %bb.se
  %i.auc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aua, !dbg !242295
  store i8 45, ptr %i.auc, align 1, !dbg !242296, !alias.scope !240874, !noalias !240871
  br label %_RNvXsi_CsgHtAh0uHj3K_4itoaxNtNtB5_7private6Sealed5write.exit31.2.i, !dbg !242297

end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArraynENtB6_5Array8to_boxedCs1LHh8CLbVkQ_11polars_core:bb.a

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.l, align 8, !dbg !252917, !range !5517, !noalias !252902, !noundef !4867
  %i.p = icmp eq i64 %i.o, 3, !dbg !252918
  br i1 %i.p, label %bb.f, label %bb.e, !dbg !252918

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !252919
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !252920, !noalias !252902 ; 0 uses
  br label %bb.f, !dbg !252921

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !252922
  %i.t = load <2 x i64>, ptr %i.s, align 8, !dbg !252922, !noalias !252902
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !252923
  %i.v = load atomic i64, ptr %i.u monotonic, align 8, !dbg !252924, !noalias !252902
  br label %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraynENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit, !dbg !252925

_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraynENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.f
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.b ], [ %i.v, %bb.f ], !dbg !252926
  %i.w = phi <2 x i64> [ undef, %bb.b ], [ %i.t, %bb.f ], !dbg !252926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !252927
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !252927
  store ptr %i.d, ptr %i.x, align 8, !dbg !252927, !alias.scope !252901
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !252927
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !252927, !alias.scope !252901
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !252927
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !252927, !alias.scope !252901
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !252927
  store ptr %i.l, ptr %i.y, align 8, !dbg !252927, !alias.scope !252901
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !252927
  store <2 x i64> %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !252927, !alias.scope !252901
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !252927
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !252927, !alias.scope !252901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !252928, !noalias !252901
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #58, !dbg !252929, !noalias !252903
  %i.z = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1401) 88, i64 noundef range(i64 1, 17) 8) #58, !dbg !252930, !noalias !252903 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null, !dbg !252931
  br i1 %i.aa, label %bb.g, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEE3newCs1LHh8CLbVkQ_11polars_core.exit, !dbg !252932, !prof !4879

bb.g:                                             ; preds = %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraynENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #53
          to label %.noexc unwind label %bb.h, !dbg !252933

.noexc:                                           ; preds = %bb.g
  unreachable, !dbg !252933

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #52
          to label %bb.j unwind label %bb.i, !dbg !252934

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !252935
  unreachable, !dbg !252935

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab, !dbg !252935

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEE3newCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraynENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !252936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !252937
  %i.ad = insertvalue { ptr, ptr } poison, ptr %i.z, 0, !dbg !252938
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr @527, 1, !dbg !252938
  ret { ptr, ptr } %i.ae, !dbg !252938
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArraynENtB6_5Array8validityCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #5 !dbg !4572 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !252940 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !252940, !noundef !4867
  %.not = icmp eq ptr %i.b, null, !dbg !252940
  %. = select i1 %.not, ptr null, ptr %i.a, !dbg !252941
  ret ptr %., !dbg !252942
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArraynENtB6_5Array9dtype_mutCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(88) %0) unnamed_addr #7 !dbg !252943 {
bb.a:
  ret ptr %0, !dbg !252944
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !252945 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [12 x i8], align 8                ; 8 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 1                 ; 8 uses
  %i.u = alloca [4 x i8], align 1                 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [4 x i8], align 4                ; 21 uses
  %i.ap = alloca [96 x i8], align 8               ; 14 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 11 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [40 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 145 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !255467
  store i64 0, ptr %i.bf, align 8, !dbg !255468
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !255468 ; 101 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !255468
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !255468 ; 261 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !255468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255227), !dbg !255469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255228), !dbg !255469
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !255470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !255470, !noalias !255229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !dbg !255471, !noalias !255228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !255472, !noalias !255229
  invoke void @_RNvXs_NtNtCs9o5SvTbM2BP_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !255472

.noexc:                                           ; preds = %bb.a
  %i.bh = load i8, ptr %i.bd, align 8, !dbg !255472, !range !255233, !noalias !255229, !noundef !4867
  %.not244.not.i = icmp eq i8 %i.bh, 7, !dbg !255472
  br i1 %.not244.not.i, label %.loopexit23, label %.lr.ph.i, !dbg !255472

.lr.ph.i:                                         ; preds = %.noexc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !255227, !noalias !255228 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bl, align 8, !alias.scope !255227, !noalias !255228
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !255227, !noalias !255228 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !255227, !noalias !255228 ; 7 uses
  %i.bm = load i64, ptr %0, align 8, !range !5020, !alias.scope !255227, !noalias !255228
  %.not.i66.i = icmp eq i64 %i.bm, -9223372036854775808 ; 4 uses
  %i.bn = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bo = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bp = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bq = urem i32 %i.bp, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.br = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.br to i16
  %i.bs = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bs to i32       ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.498.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bt = icmp eq i32 %i.bo, 0
  %i.bu = urem i32 %i.bo, 1000000
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = urem i32 %i.bo, 1000
  %i.bx = icmp eq i32 %i.bw, 0
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.by = udiv i32 %i.bo, 1000
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bz = udiv i32 %i.bo, 1000000
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ca = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 3 uses
  %.146.i.i = select i1 %i.ca, ptr @82, ptr @81
  %i.cb = select i1 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @82, i64 2), ptr getelementptr inbounds nuw (i8, ptr @81, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.not140.i.i = icmp eq i32 %i.bk, 0             ; 19 uses
  %i.cg = lshr i32 %i.bk, 4
  %i.ch = and i32 %i.cg, 511                      ; 9 uses
  %i.ci = and i32 %i.bk, 7
  %i.cj = add nuw nsw i32 %i.ch, %i.ci
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.cj to i16
  %i.ck = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.cl = icmp samesign ult i16 %i.ck, 6          ; 2 uses
  %narrow42.i.i = add nuw nsw i16 %i.ck, 1
  %narrow43.i.i = select i1 %i.cl, i16 %narrow42.i.i, i16 0
  %i.cm = zext nneg i16 %narrow43.i.i to i64      ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr @80, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr @72, i64 %i.cm ; 2 uses
  %i.cq = lshr i32 %i.bk, 3                       ; 3 uses
  %i.cr = and i32 %i.cq, 1023                     ; 8 uses
  %i.cs = zext nneg i32 %i.cr to i64              ; 8 uses
  %i.ct = icmp samesign ult i32 %i.cr, 733        ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr @47, i64 %i.cs ; 7 uses
  %i.cv = icmp ne i32 %i.bk, 0
  %or.cond5.i.i = select i1 %i.cv, i1 %i.bn, i1 false ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !alias.scope !255227, !noalias !255228 ; 7 uses
  %i.cy = ashr i32 %i.bk, 13                      ; 13 uses
  %or.cond.i121.i = icmp ult i32 %i.cy, 10000     ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.lhs.trunc.i124.i = trunc nuw nsw i32 %i.cy to i16 ; 2 uses
  %i.cz = udiv i16 %.lhs.trunc.i124.i, 100
  %i.da = trunc nuw nsw i16 %i.cz to i8           ; 2 uses
  %i.db = udiv i8 %i.da, 10
  %i.dc = or disjoint i8 %i.db, 48                ; 2 uses
  %i.dd = urem i8 %i.da, 10
  %i.de = or disjoint i8 %i.dd, 48                ; 2 uses
  %i.df = urem i16 %.lhs.trunc.i124.i, 100
  %i.dg = trunc nuw nsw i16 %i.df to i8           ; 2 uses
  %i.dh = udiv i8 %i.dg, 10
  %i.di = or disjoint i8 %i.dh, 48                ; 2 uses
  %i.dj = urem i8 %i.dg, 10
  %i.dk = or disjoint i8 %i.dj, 48                ; 2 uses
  %i.dl = trunc i32 %i.cq to i8                   ; 2 uses
  %i.dm = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.dn = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.do = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.dn, i32 %i.do, i32 %.sroa.21.0.copyload.i.i
  %i.dp = trunc i32 %i.dm to i8                   ; 4 uses
  %i.dq = icmp ugt i8 %i.dp, 99                   ; 2 uses
  %i.dr = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %i.ds = zext i1 %i.dn to i32
  %.sroa.04.0.i.i = add nuw nsw i32 %i.dr, %i.ds
  %i.dt = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.du = urem i32 %i.dt, 60                      ; 2 uses
  %i.dv = udiv i8 %i.dp, 10                       ; 2 uses
  %i.dw = or disjoint i8 %i.dv, 48                ; 2 uses
  %i.dx = urem i8 %i.dp, 10
  %i.dy = or disjoint i8 %i.dx, 48                ; 3 uses
  %i.dz = trunc nuw nsw i32 %i.du to i8           ; 2 uses
  %i.ea = udiv i8 %i.dz, 10
  %i.eb = or disjoint i8 %i.ea, 48                ; 3 uses
  %i.ec = urem i8 %i.dz, 10
  %i.ed = or disjoint i8 %i.ec, 48                ; 3 uses
  %i.ee = trunc nuw nsw i32 %.sroa.04.0.i.i to i8 ; 2 uses
  %i.ef = udiv i8 %i.ee, 10
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = urem i8 %i.ee, 10
  %i.ei = or disjoint i8 %i.eh, 48
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ej = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.ek = add nuw nsw i32 %i.ej, %i.dr            ; 2 uses
  %i.el = trunc nuw nsw i32 %i.ek to i8           ; 2 uses
  %i.em = udiv i8 %i.el, 10
  %i.en = or disjoint i8 %i.em, 48                ; 2 uses
  %i.eo = urem i8 %i.el, 10
  %i.ep = or disjoint i8 %i.eo, 48                ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.ex = sext i32 %i.cx to i64
  %.sroa.057.0.i.i = select i1 %.not.i66.i, i64 0, i64 %i.ex
  %i.ey = add nsw i32 %i.cy, -1
  %i.ez = icmp slt i32 %i.cy, 1                   ; 2 uses
  %i.fa = sub nsw i32 1, %i.cy
  %i.fb = udiv i32 %i.fa, 400
  %i.fc = add nuw nsw i32 %i.fb, 1                ; 2 uses
  %i.fd = mul nuw nsw i32 %i.fc, 400
  %.neg.i.i = mul nsw i32 %i.fc, -146097
  %i.fe = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.ff = add nuw nsw i32 %i.ch, -719163
  %i.fg = sub nsw i64 %i.fe, %.sroa.057.0.i.i
  %.sroa.426.0..sroa_idx.i190.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.445.0..sroa_idx.i191.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.430.0..sroa_idx.i193.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.439.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.434.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fj = zext nneg i32 %i.bo to i64
  %.sroa.426.0..sroa_idx.i182.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.445.0..sroa_idx.i183.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.430.0..sroa_idx.i185.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.439.0..sroa_idx.i186.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.434.0..sroa_idx.i187.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fm = icmp samesign ult i32 %i.ek, 10
  %i.fn = icmp samesign ult i32 %i.du, 10
  %i.fo = urem i32 %i.dm, 12                      ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = trunc nuw nsw i32 %i.fo to i8
  %i.fr = select i1 %i.fp, i8 12, i8 %i.fq
  %.frozen.i.i = freeze i8 %i.fr                  ; 4 uses
  %.cmp9.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %i.fs = icmp ult i8 %.frozen.i.i, 10            ; 2 uses
  %i.ft = select i1 %.cmp9.i.i, i8 49, i8 48
  %.urem10.i.i = add i8 %.frozen.i.i, -10
  %i.fu = select i1 %i.fs, i8 %.frozen.i.i, i8 %.urem10.i.i
  %i.fv = or disjoint i8 %i.fu, 48
  %i.fw = icmp ult i8 %i.dp, 10
  %i.fx = add nuw nsw i8 %i.dv, 48
  %i.fy = zext nneg i32 %i.ch to i64
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.ck to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.gb = trunc i32 %i.bk to i8
  %i.gc = and i8 %i.gb, 15                        ; 4 uses
  %i.gd = trunc nuw nsw i32 %i.ch to i16
  %i.ge = add nuw nsw i16 %i.gd, 6
  %.lhs.trunc1.i142.i.i = sub nuw nsw i16 %i.ge, %i.ck ; 2 uses
  %i.gf = udiv i16 %.lhs.trunc1.i142.i.i, 7
  %i.gg = trunc nuw nsw i16 %i.gf to i8           ; 2 uses
  %i.gh = udiv i8 %i.gg, 10
  %i.gi = icmp samesign ult i16 %.lhs.trunc1.i142.i.i, 70
  %i.gj = add nuw nsw i8 %i.gh, 48
  %i.gk = urem i8 %i.gg, 10
  %i.gl = or disjoint i8 %i.gk, 48
  %spec.select.i131.i.i = zext nneg i16 %i.ck to i32 ; 2 uses
  %i.gm = add nuw nsw i32 %spec.select.i131.i.i, 7
  %.pn.i.i.i = select i1 %i.cl, i32 %i.gm, i32 %spec.select.i131.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.ch, 6
  %i.gn = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %i.go = trunc nsw i32 %i.gn to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %i.go, 6
  %i.gp = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.gq = trunc nuw nsw i16 %i.gp to i8           ; 2 uses
  %i.gr = udiv i8 %i.gq, 10
  %i.gs = icmp samesign ult i16 %i.gp, 10
  %i.gt = add nuw nsw i8 %i.gr, 48
  %i.gu = urem i8 %i.gq, 10
  %i.gv = or disjoint i8 %i.gu, 48
  %i.gw = srem i32 %i.cy, 100                     ; 4 uses
  %i.gx = icmp slt i32 %i.gw, 0
  %i.gy = add nsw i32 %i.gw, 100
  %spec.select.i.i.i = select i1 %i.gx, i32 %i.gy, i32 %i.gw ; 2 uses
  %i.gz = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.ha = udiv i8 %i.gz, 10
  %i.hb = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.hc = add nuw nsw i8 %i.ha, 48
  %i.hd = urem i8 %i.gz, 10
  %i.he = or disjoint i8 %i.hd, 48
  %i.hf = sdiv i32 %i.cy, 100
  %.lobit.i.i.i = ashr i32 %i.gw, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.hf
  %i.hg = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.hh = udiv i8 %i.hg, 10
  %i.hi = icmp ult i8 %i.hg, 10
  %i.hj = add nuw nsw i8 %i.hh, 48
  %i.hk = urem i8 %i.hg, 10
  %i.hl = or disjoint i8 %i.hk, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  %spec.select.i = select i1 %i.ez, i32 %.neg.i.i, i32 0
  %i.hn = select i1 %i.ez, i32 %i.fd, i32 0
  %spec.select246.i = add nsw i32 %i.ey, %i.hn    ; 2 uses
  %i.ho = sdiv i32 %spec.select246.i, 100         ; 2 uses
  %i.hp = mul nsw i32 %spec.select246.i, 1461
  %i.hq = ashr i32 %i.hp, 2
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCs1LHh8CLbVkQ_11polars_core:bb.a
  %i.amq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256766, !alias.scope !255433, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.amr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256767, !alias.scope !255433, !noalias !255427, !noundef !4867 ; 2 uses
  %i.ams = icmp sgt i64 %i.amr, -1, !dbg !256768
  call void @llvm.assume(i1 %i.ams), !dbg !256769
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amq, i64 %i.amr, !dbg !256770
  store i8 %i.amp, ptr %i.amt, align 1, !dbg !256771, !noalias !255428
  %i.amu = add nuw i64 %i.alh, 2, !dbg !256772
  store i64 %i.amu, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256773, !alias.scope !255433, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc132.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256774

.noexc132.i:                                      ; preds = %.noexc131.i
  %.cmp43.i.i = icmp samesign ult i32 %i.amn, 640, !dbg !256775
  %i.amv = lshr i32 %i.amn, 6, !dbg !256776
  %i.amw = trunc nuw nsw i32 %i.amv to i8, !dbg !256777 ; 2 uses
  %.urem.i123.i = add nsw i8 %i.amw, -10, !dbg !256775
  %i.amx = select i1 %.cmp43.i.i, i8 %i.amw, i8 %.urem.i123.i, !dbg !256775
  %i.amy = or disjoint i8 %i.amx, 48, !dbg !256778
  %i.amz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256779, !alias.scope !255434, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.ana = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256780, !alias.scope !255434, !noalias !255427, !noundef !4867 ; 2 uses
  %i.anb = icmp sgt i64 %i.ana, -1, !dbg !256781
  call void @llvm.assume(i1 %i.anb), !dbg !256782
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amz, i64 %i.ana, !dbg !256783
  store i8 %i.amy, ptr %i.anc, align 1, !dbg !256784, !noalias !255428
  %i.and = add nuw nsw i64 %i.alh, 3, !dbg !256785
  store i64 %i.and, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256786, !alias.scope !255434, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc133.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256787

.noexc133.i:                                      ; preds = %.noexc132.i
  %i.ane = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256788, !alias.scope !255435, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.anf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256789, !alias.scope !255435, !noalias !255427, !noundef !4867 ; 2 uses
  %i.ang = icmp sgt i64 %i.anf, -1, !dbg !256790
  call void @llvm.assume(i1 %i.ang), !dbg !256791
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ane, i64 %i.anf, !dbg !256792
  store i8 45, ptr %i.anh, align 1, !dbg !256793, !noalias !255428
  %i.ani = add nuw nsw i64 %i.alh, 4, !dbg !256794
  store i64 %i.ani, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256795, !alias.scope !255435, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc134.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256796

.noexc134.i:                                      ; preds = %.noexc133.i
  %i.anj = add i8 %i.amk, %i.dl, !dbg !256797
  %i.ank = lshr i8 %i.anj, 1, !dbg !256797
  %i.anl = and i8 %i.ank, 31, !dbg !256797        ; 2 uses
  %i.anm = udiv i8 %i.anl, 10, !dbg !256798
  %i.ann = urem i8 %i.anl, 10, !dbg !256799
  %i.ano = or disjoint i8 %i.anm, 48, !dbg !256800
  %i.anp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256801, !alias.scope !255436, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.anq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256802, !alias.scope !255436, !noalias !255427, !noundef !4867 ; 2 uses
  %i.anr = icmp sgt i64 %i.anq, -1, !dbg !256803
  call void @llvm.assume(i1 %i.anr), !dbg !256804
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anp, i64 %i.anq, !dbg !256805
  store i8 %i.ano, ptr %i.ans, align 1, !dbg !256806, !noalias !255428
  %i.ant = add nuw i64 %i.alh, 5, !dbg !256807
  store i64 %i.ant, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256808, !alias.scope !255436, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc135.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256809

.noexc135.i:                                      ; preds = %.noexc134.i
  %i.anu = or disjoint i8 %i.ann, 48, !dbg !256810
  %i.anv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256811, !alias.scope !255437, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.anw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256812, !alias.scope !255437, !noalias !255427, !noundef !4867 ; 2 uses
  %i.anx = icmp sgt i64 %i.anw, -1, !dbg !256813
  call void @llvm.assume(i1 %i.anx), !dbg !256814
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.anw, !dbg !256815
  store i8 %i.anu, ptr %i.any, align 1, !dbg !256816, !noalias !255428
  %i.anz = add nuw nsw i64 %i.alh, 6, !dbg !256817
  store i64 %i.anz, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256818, !alias.scope !255437, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc136.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256819

.noexc136.i:                                      ; preds = %.noexc135.i
  %i.aoa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256820, !alias.scope !255438, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.aob = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256821, !alias.scope !255438, !noalias !255427, !noundef !4867 ; 2 uses
  %i.aoc = icmp sgt i64 %i.aob, -1, !dbg !256822
  call void @llvm.assume(i1 %i.aoc), !dbg !256823
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.aob, !dbg !256824
  store i8 84, ptr %i.aod, align 1, !dbg !256825, !noalias !255428
  %i.aoe = add nuw i64 %i.alh, 7, !dbg !256826    ; 2 uses
  store i64 %i.aoe, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256827, !alias.scope !255438, !noalias !255427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !256828, !noalias !255423
  store i32 %storemerge.i.i, ptr %i.n, align 4, !dbg !256829, !noalias !255423
  br i1 %i.dq, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit38.thread.i.i, label %bb.fg, !dbg !256830

bb.fg:                                            ; preds = %.noexc136.i
  %i.aof = icmp sgt i64 %i.aoe, -1, !dbg !256831
  call void @llvm.assume(i1 %i.aof), !dbg !256832
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256833

.noexc138.i:                                      ; preds = %bb.fg
  %i.aog = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256834, !alias.scope !255439, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.aoh = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256835, !alias.scope !255439, !noalias !255427, !noundef !4867 ; 2 uses
  %i.aoi = icmp sgt i64 %i.aoh, -1, !dbg !256836
  call void @llvm.assume(i1 %i.aoi), !dbg !256837
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 %i.aoh, !dbg !256838
  store i8 %i.dw, ptr %i.aoj, align 1, !dbg !256839, !noalias !255428
  %i.aok = add nuw i64 %i.alh, 8, !dbg !256840
  store i64 %i.aok, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256841, !alias.scope !255439, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256842

.noexc139.i:                                      ; preds = %.noexc138.i
  %i.aol = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256843, !alias.scope !255440, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.aom = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256844, !alias.scope !255440, !noalias !255427, !noundef !4867 ; 2 uses
  %i.aon = icmp sgt i64 %i.aom, -1, !dbg !256845
  call void @llvm.assume(i1 %i.aon), !dbg !256846
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 %i.aom, !dbg !256847
  store i8 %i.dy, ptr %i.aoo, align 1, !dbg !256848, !noalias !255428
  %i.aop = add nuw nsw i64 %i.alh, 9, !dbg !256849
  store i64 %i.aop, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256850, !alias.scope !255440, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256851

.noexc140.i:                                      ; preds = %.noexc139.i
  %i.aoq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256852, !alias.scope !255441, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.aor = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256853, !alias.scope !255441, !noalias !255427, !noundef !4867 ; 2 uses
  %i.aos = icmp sgt i64 %i.aor, -1, !dbg !256854
  call void @llvm.assume(i1 %i.aos), !dbg !256855
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.aor, !dbg !256856
  store i8 58, ptr %i.aot, align 1, !dbg !256857, !noalias !255428
  %i.aou = add nuw nsw i64 %i.alh, 10, !dbg !256858
  store i64 %i.aou, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256859, !alias.scope !255441, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc141.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256860

.noexc141.i:                                      ; preds = %.noexc140.i
  %i.aov = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256861, !alias.scope !255442, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.aow = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256862, !alias.scope !255442, !noalias !255427, !noundef !4867 ; 2 uses
  %i.aox = icmp sgt i64 %i.aow, -1, !dbg !256863
  call void @llvm.assume(i1 %i.aox), !dbg !256864
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.aow, !dbg !256865
  store i8 %i.eb, ptr %i.aoy, align 1, !dbg !256866, !noalias !255428
  %i.aoz = add nuw i64 %i.alh, 11, !dbg !256867
  store i64 %i.aoz, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256868, !alias.scope !255442, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256869

.noexc142.i:                                      ; preds = %.noexc141.i
  %i.apa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256870, !alias.scope !255443, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.apb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256871, !alias.scope !255443, !noalias !255427, !noundef !4867 ; 2 uses
  %i.apc = icmp sgt i64 %i.apb, -1, !dbg !256872
  call void @llvm.assume(i1 %i.apc), !dbg !256873
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apa, i64 %i.apb, !dbg !256874
  store i8 %i.ed, ptr %i.apd, align 1, !dbg !256875, !noalias !255428
  %i.ape = add nuw nsw i64 %i.alh, 12, !dbg !256876
  store i64 %i.ape, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256877, !alias.scope !255443, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc143.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256878

.noexc143.i:                                      ; preds = %.noexc142.i
  %i.apf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256879, !alias.scope !255444, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.apg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256880, !alias.scope !255444, !noalias !255427, !noundef !4867 ; 2 uses
  %i.aph = icmp sgt i64 %i.apg, -1, !dbg !256881
  call void @llvm.assume(i1 %i.aph), !dbg !256882
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 %i.apg, !dbg !256883
  store i8 58, ptr %i.api, align 1, !dbg !256884, !noalias !255428
  %i.apj = add nuw nsw i64 %i.alh, 13, !dbg !256885
  store i64 %i.apj, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256886, !alias.scope !255444, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc144.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256887

.noexc144.i:                                      ; preds = %.noexc143.i
  %i.apk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256888, !alias.scope !255445, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.apl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256889, !alias.scope !255445, !noalias !255427, !noundef !4867 ; 2 uses
  %i.apm = icmp sgt i64 %i.apl, -1, !dbg !256890
  call void @llvm.assume(i1 %i.apm), !dbg !256891
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apk, i64 %i.apl, !dbg !256892
  store i8 %i.eg, ptr %i.apn, align 1, !dbg !256893, !noalias !255428
  %i.apo = add nuw i64 %i.alh, 14, !dbg !256894
  store i64 %i.apo, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256895, !alias.scope !255445, !noalias !255427
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef 1)
          to label %.noexc145.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256896

.noexc145.i:                                      ; preds = %.noexc144.i
  %i.app = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256897, !alias.scope !255446, !noalias !255427, !nonnull !4867, !noundef !4867
  %i.apq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256898, !alias.scope !255446, !noalias !255427, !noundef !4867 ; 2 uses
  %i.apr = icmp sgt i64 %i.apq, -1, !dbg !256899
  call void @llvm.assume(i1 %i.apr), !dbg !256900
  %i.aps = getelementptr inbounds nuw i8, ptr %i.app, i64 %i.apq, !dbg !256901
  store i8 %i.ei, ptr %i.aps, align 1, !dbg !256902, !noalias !255428
  %i.apt = add nuw i64 %i.alh, 15, !dbg !256903
  store i64 %i.apt, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256904, !alias.scope !255446, !noalias !255427
  %i.apu = load i32, ptr %i.n, align 4, !dbg !256905, !noalias !255423, !noundef !4867 ; 5 uses
  %i.apv = icmp eq i32 %i.apu, 0, !dbg !256905
  br i1 %i.apv, label %bb.fh, label %bb.fi, !dbg !256905

bb.fh:                                            ; preds = %.noexc149.i, %.noexc148.i, %.noexc147.i, %.noexc145.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !256906, !noalias !255423
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.h, align 4, !dbg !256906, !noalias !255423
  %i.apw = invoke noundef zeroext i1 @_RINvMs0_NtNtCs9o5SvTbM2BP_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i32 noundef %i.cx)
          to label %.noexc108.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256907

_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit38.thread.i.i: ; preds = %.noexc149.i, %.noexc148.i, %.noexc147.i, %.noexc136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !256908, !noalias !255423
  br label %.noexc108.thread.i, !dbg !256909

bb.fi:                                            ; preds = %.noexc145.i
  %i.apx = urem i32 %i.apu, 1000000, !dbg !256910
  %i.apy = udiv i32 %i.apu, 1000000, !dbg !256911
  %i.apz = icmp eq i32 %i.apx, 0, !dbg !256910
  br i1 %i.apz, label %bb.fj, label %bb.fk, !dbg !256910

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !256911, !noalias !255423
  store i32 %i.apy, ptr %i.m, align 4, !dbg !256911, !noalias !255423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !256912, !noalias !255423
  store ptr %i.m, ptr %i.l, align 8, !dbg !256912, !noalias !255423
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !dbg !256912, !noalias !255423
  %i.aqa = invoke noundef zeroext i1 @_RNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull @181, ptr noundef nonnull %i.l)
          to label %.noexc147.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256913

.noexc147.i:                                      ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !256914, !noalias !255423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !256914, !noalias !255423
  br i1 %i.aqa, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit38.thread.i.i, label %bb.fh, !dbg !256915

bb.fk:                                            ; preds = %bb.fi
  %i.aqb = urem i32 %i.apu, 1000, !dbg !256916
  %i.aqc = udiv i32 %i.apu, 1000, !dbg !256917
  %i.aqd = icmp eq i32 %i.aqb, 0, !dbg !256916
  br i1 %i.aqd, label %bb.fl, label %bb.fm, !dbg !256916

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !256917, !noalias !255423
  store i32 %i.aqc, ptr %i.k, align 4, !dbg !256917, !noalias !255423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !256918, !noalias !255423
  store ptr %i.k, ptr %i.j, align 8, !dbg !256918, !noalias !255423
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !dbg !256918, !noalias !255423
  %i.aqe = invoke noundef zeroext i1 @_RNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull @182, ptr noundef nonnull %i.j)
          to label %.noexc148.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256919

.noexc148.i:                                      ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !256920, !noalias !255423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !256920, !noalias !255423
  br i1 %i.aqe, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit38.thread.i.i, label %bb.fh, !dbg !256921

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !256922, !noalias !255423
  store ptr %i.n, ptr %i.i, align 8, !dbg !256922, !noalias !255423
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !dbg !256922, !noalias !255423
  %i.aqf = invoke noundef zeroext i1 @_RNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull @183, ptr noundef nonnull %i.i)
          to label %.noexc149.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256923

.noexc149.i:                                      ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !256924, !noalias !255423
  br i1 %i.aqf, label %_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit38.thread.i.i, label %bb.fh, !dbg !256925

.noexc108.thread.i:                               ; preds = %.noexc125.i, %_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit38.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !256926, !noalias !255229
  br label %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.thread.sink.split.i, !dbg !255492

.noexc108.i:                                      ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !256908, !noalias !255423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !256927, !noalias !255423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !256926, !noalias !255229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !256401, !noalias !255229
  br i1 %i.apw, label %.loopexit, label %.critedge.i, !dbg !255492

_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE12format_fixedNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.thread193.i: ; preds = %bb.dw, %.split.i.i, %.split123.i.i, %.loopexit.i.i, %.noexc82.i, %.noexc81.i, %.noexc79.i, %.noexc76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !256401, !noalias !255229
  br label %.critedge.i, !dbg !255492

_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE12format_fixedNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %.noexc182.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !256401, !noalias !255229
  br i1 %i.alf, label %.loopexit, label %.critedge.i, !dbg !255492

bb.fn:                                            ; preds = %bb.b, %bb.b
  %.sroa.02.0.i = load ptr, ptr %.sroa.03.0.i, align 8, !dbg !256928, !noalias !255229, !nonnull !4867, !noundef !4867
  %.sroa.3.0.i = load i64, ptr %i.hm, align 8, !dbg !256928, !noalias !255229, !noundef !4867 ; 4 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %.sroa.3.0.i)
          to label %.noexc110.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256929

.noexc110.i:                                      ; preds = %bb.fn
  %i.aqg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256930, !alias.scope !255452, !noalias !255453, !noundef !4867 ; 3 uses
  %i.aqh = icmp sgt i64 %i.aqg, -1, !dbg !256931
  call void @llvm.assume(i1 %i.aqh), !dbg !256932
  %.not.i.i.i109.i = icmp eq i64 %.sroa.3.0.i, 0, !dbg !256933
  br i1 %.not.i.i.i109.i, label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit.i, label %bb.fo, !dbg !256933

bb.fo:                                            ; preds = %.noexc110.i
  %i.aqi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256934, !alias.scope !255452, !noalias !255453, !nonnull !4867, !noundef !4867
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %i.aqg, !dbg !256935
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqj, ptr nonnull readonly align 1 %.sroa.02.0.i, i64 %.sroa.3.0.i, i1 false), !dbg !256936
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256937, !alias.scope !255452, !noalias !255453
  br label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit.i, !dbg !256938

_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit.i: ; preds = %bb.fo, %.noexc110.i
  %i.aqk = phi i64 [ %.pre.i.i.i.i, %bb.fo ], [ %i.aqg, %.noexc110.i ], !dbg !256937
  %i.aql = add i64 %i.aqk, %.sroa.3.0.i, !dbg !256937
  store i64 %i.aql, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256937, !alias.scope !255452, !noalias !255453
  br label %.critedge.i, !dbg !256939

bb.fp:                                            ; preds = %bb.b, %bb.b
  %i.aqm = load ptr, ptr %.sroa.03.0.i, align 8, !dbg !256940, !noalias !255229, !nonnull !4867, !noundef !4867
  %i.aqn = load i64, ptr %i.hm, align 8, !dbg !256940, !noalias !255229, !noundef !4867 ; 4 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aqn)
          to label %.noexc113.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !256941

.noexc113.i:                                      ; preds = %bb.fp
  %i.aqo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256942, !alias.scope !255454, !noalias !255455, !noundef !4867 ; 3 uses
  %i.aqp = icmp sgt i64 %i.aqo, -1, !dbg !256943
  call void @llvm.assume(i1 %i.aqp), !dbg !256944
  %.not.i.i.i111.i = icmp eq i64 %i.aqn, 0, !dbg !256945
  br i1 %.not.i.i.i111.i, label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit114.i, label %bb.fq, !dbg !256945

bb.fq:                                            ; preds = %.noexc113.i
  %i.aqq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256946, !alias.scope !255454, !noalias !255455, !nonnull !4867, !noundef !4867
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqo, !dbg !256947
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqr, ptr nonnull readonly align 1 %i.aqm, i64 %i.aqn, i1 false), !dbg !256948
  %.pre.i.i.i112.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256949, !alias.scope !255454, !noalias !255455
  br label %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit114.i, !dbg !256950

_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit114.i: ; preds = %bb.fq, %.noexc113.i
  %i.aqs = phi i64 [ %.pre.i.i.i112.i, %bb.fq ], [ %i.aqo, %.noexc113.i ], !dbg !256949
  %i.aqt = add i64 %i.aqs, %i.aqn, !dbg !256949
  store i64 %i.aqt, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256949, !alias.scope !255454, !noalias !255455
  br label %.critedge.i, !dbg !256951

_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !256952, !noalias !255238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !255491
  br i1 %i.io, label %.loopexit, label %.critedge.i, !dbg !255492

_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.thread.sink.split.i: ; preds = %.noexc172.i, %bb.ex, %bb.es, %bb.er, %bb.eq, %bb.el, %bb.cz, %bb.cw, %bb.cl, %.noexc108.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !256401, !noalias !255229
  br label %.loopexit, !dbg !255474

.critedge.i:                                      ; preds = %.noexc18, %.noexc13, %.noexc14, %.noexc15, %.noexc16, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i.thread, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit114.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit.i, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE12format_fixedNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE12format_fixedNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.thread193.i, %.noexc108.i, %.noexc106.i, %.noexc105.i, %.noexc104.i, %.noexc103.i, %.noexc102.i, %.noexc101.i, %.noexc100.i, %.noexc99.i, %.noexc98.i, %.noexc96.i, %.noexc94.i, %.noexc92.i, %.noexc91.i, %.noexc90.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit197.i.i, %.noexc65.i, %.noexc63.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit189.i.i, %.noexc62.i, %.noexc60.i, %.noexc59.i, %.noexc56.i, %.noexc53.i, %.noexc50.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.noexc47.i, %.noexc45.i, %.noexc44.i, %.noexc43.i, %.noexc42.i, %.noexc38.i, %.noexc35.i, %.noexc31.i, %.noexc27.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i.i, %.noexc22.i, %.noexc18.i, %.noexc12.i, %.noexc9.i
  call void @llvm.experimental.noalias.scope.decl(metadata !255456), !dbg !255474
  %i.aqu = load i8, ptr %i.bc, align 8, !dbg !256953, !range !5584, !alias.scope !255456, !noalias !255229, !noundef !4867
  switch i8 %i.aqu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i [
    i8 1, label %bb.fr
    i8 3, label %bb.fs
  ], !dbg !256953

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxeEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i116.i: ; preds = %bb.fs, %bb.fr
  %.val1.sink.i117.i = phi i64 [ %.val3.i119.i, %bb.fr ], [ %.val1.i115.i, %bb.fs ]
  %.val.i118.i = load ptr, ptr %.sroa.03.0.i, align 8, !dbg !256953, !alias.scope !255456, !noalias !255229, !nonnull !4867, !noundef !4867
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i118.i, i64 noundef range(i64 1, 0) %.val1.sink.i117.i, i64 noundef 1) #58, !dbg !256954, !noalias !255456
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i, !dbg !256953

bb.fr:                                            ; preds = %.critedge.i
  %.val3.i119.i = load i64, ptr %i.hm, align 8, !dbg !256953, !alias.scope !255456, !noalias !255229, !noundef !4867 ; 2 uses
  %i.aqv = icmp eq i64 %.val3.i119.i, 0, !dbg !256955
  br i1 %i.aqv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxeEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i116.i, !dbg !256955

bb.fs:                                            ; preds = %.critedge.i
  %.val1.i115.i = load i64, ptr %i.hm, align 8, !dbg !256953, !alias.scope !255456, !noalias !255229, !noundef !4867 ; 2 uses
  %i.aqw = icmp eq i64 %.val1.i115.i, 0, !dbg !256956
  br i1 %i.aqw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxeEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i116.i, !dbg !256956

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i: ; preds = %bb.fs, %bb.fr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxeEECs1LHh8CLbVkQ_11polars_core.exit.sink.split.i116.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !255474, !noalias !255229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !255474, !noalias !255229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !255472, !noalias !255229
  invoke void @_RNvXs_NtNtCs9o5SvTbM2BP_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc4 unwind label %.loopexit22, !dbg !255472

.noexc4:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i
  %i.aqx = load i8, ptr %i.bd, align 8, !dbg !255472, !range !255233, !noalias !255229, !noundef !4867
  %.not.not.i = icmp eq i8 %i.aqx, 7, !dbg !255472
  br i1 %.not.not.i, label %.loopexit23, label %bb.b, !dbg !255472

.loopexit22:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core.exit120.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit23, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit22, %.loopexit.split-lp, %.loopexit.split-lp.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit22 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #52
          to label %common.resume unwind label %bb.fy, !dbg !255464

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %.noexc45.i, %.noexc47.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.noexc60.i, %.noexc62.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit189.i.i, %.noexc63.i, %.noexc65.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit197.i.i, %.noexc90.i, %.noexc91.i, %.noexc92.i, %.noexc94.i, %.noexc96.i, %.noexc98.i, %.noexc99.i, %.noexc100.i, %.noexc101.i, %.noexc102.i, %.noexc103.i, %.noexc104.i, %.noexc105.i, %.noexc106.i, %.noexc108.i, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE12format_fixedNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i, %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc18, %bb.b, %_RINvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !255474, !noalias !255229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !255474, !noalias !255229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !256957, !noalias !255229
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.ft, !dbg !256958

bb.ft:                                            ; preds = %.loopexit
  %i.aqy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %common.resume unwind label %bb.fu, !dbg !256959

bb.fu:                                            ; preds = %bb.ft
  %i.aqz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !256958
  unreachable, !dbg !256958

common.resume:                                    ; preds = %.body, %bb.fw, %bb.ft
  %common.resume.op = phi { ptr, i32 } [ %i.ard, %bb.fw ], [ %i.aqy, %bb.ft ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !256960

.loopexit23:                                      ; preds = %.noexc4, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !255474, !noalias !255229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !256957, !noalias !255229
  %i.ara = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !256961, !nonnull !4867, !noundef !4867
  %i.arb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !256962, !noundef !4867
  %i.arc = invoke noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ara, i64 noundef %i.arb)
          to label %bb.fv unwind label %.loopexit.split-lp, !dbg !256963

bb.fv:                                            ; preds = %.loopexit23
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.fw, !dbg !256964

bb.fw:                                            ; preds = %bb.fv
  %i.ard = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %common.resume unwind label %bb.fx, !dbg !256965

end_hunk_3
