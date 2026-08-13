inline.NumInlined: 325
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsjRvGck33osM_6diesel9serializeINtB3_6OutputNtNtNtB5_6sqlite7backend6SqliteE9set_valuelEB5_:bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %.val3.sink.i.i, i64 noundef 1) #18, !noalias !46
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !46, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.e, align 8, !alias.scope !46, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %.val3.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit: ; preds = %bb.c, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i, %bb.a
  store i32 4, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %.sroa.5.0..sroa_idx2, align 4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtCsjRvGck33osM_6diesel9serializeINtB3_6OutputNtNtNtB5_6sqlite7backend6SqliteE9set_valuexEB5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.a = load i32, ptr %0, align 8, !range !9, !alias.scope !53, !noundef !11
  switch i32 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit [
    i32 1, label %bb.b
    i32 3, label %bb.c
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i: ; preds = %bb.c, %bb.b
  %.val3.sink.i.i = phi i64 [ %.val1.i.i, %bb.b ], [ %.val3.i.i, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !53, !nonnull !11, !noundef !11
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %.val3.sink.i.i, i64 noundef 1) #18, !noalias !53
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !53, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.e, align 8, !alias.scope !53, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %.val3.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector15SqliteBindValueEBJ_.exit: ; preds = %bb.c, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsjRvGck33osM_6diesel.exit.sink.split.i.i, %bb.a
  store i32 5, ptr %0, align 8
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.54.0..sroa_idx5, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsjRvGck33osM_6diesel2pg15metadata_lookupNtB6_15PgMetadataCache10store_typeNtNtB8_7backend19InnerPgTypeMetadataEBa_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCsjRvGck33osM_6diesel2pg15metadata_lookupNtB4_18PgMetadataCacheKey10into_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1)
  call void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyNtNtBR_7backend19InnerPgTypeMetadataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertBT_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCslCQnfik72jt_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef readonly captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !54, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %2, 0
  %.sroa.021.0 = select i1 %i.d, i32 45, i32 43   ; 2 uses
  %.sroa.07.0 = tail call i32 @llvm.abs.i32(i32 %2, i1 false) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = load i8, ptr %i.e, align 1, !range !55, !noundef !11 ; 6 uses
  switch i8 %i.f, label %default.unreachable35 [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !56, !noundef !11 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !56, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 90, ptr %i.l, align 1
  %i.m = add nuw i64 %i.h, 1
  store i64 %i.m, ptr %i.g, align 8, !alias.scope !56
  br label %bb.u

default.unreachable35:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.n = add nuw i32 %.sroa.07.0, 30              ; 2 uses
  %i.o = sdiv i32 %i.n, 60
  %i.p = srem i32 %i.o, 60                        ; 2 uses
  %i.q = icmp eq i8 %i.f, 3
  %i.r = icmp eq i32 %i.p, 0
  %or.cond2.not.not = select i1 %i.q, i1 %i.r, i1 false ; 2 uses
  %i.s = trunc nsw i32 %i.p to i8
  %spec.select28 = select i1 %or.cond2.not.not, i8 0, i8 %i.s
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.t = sdiv i32 %.sroa.07.0, 60
  %i.u = srem i32 %.sroa.07.0, 60                 ; 2 uses
  %i.v = srem i32 %i.t, 60                        ; 2 uses
  %i.w = trunc nsw i32 %i.v to i8                 ; 2 uses
  %i.x = icmp ne i8 %i.f, 2
  %i.y = icmp eq i32 %i.u, 0
  %or.cond4 = and i1 %i.y, %i.x
  br i1 %or.cond4, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.h, %bb.b, %bb.g
  %i.z = phi i1 [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.d ] ; 2 uses
  %.sroa.019.0 = phi i1 [ false, %bb.g ], [ true, %bb.b ], [ %or.cond6.not.not, %bb.h ], [ %or.cond2.not.not, %bb.d ]
  %.sroa.017.0 = phi i8 [ %i.ae, %bb.g ], [ %i.f, %bb.b ], [ 0, %bb.h ], [ 0, %bb.d ]
  %.sroa.014.0 = phi i8 [ %i.w, %bb.g ], [ %i.f, %bb.b ], [ %.26, %bb.h ], [ %spec.select28, %bb.d ]
  %.sroa.011.0.in.in = phi i32 [ %.sroa.07.0, %bb.g ], [ %.sroa.07.0, %bb.b ], [ %.sroa.07.0, %bb.h ], [ %i.n, %bb.d ]
  %.sroa.011.0.in = sdiv i32 %.sroa.011.0.in.in, 3600
  %.sroa.011.0 = trunc i32 %.sroa.011.0.in to i8  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !61, !noundef !11
  %i.ac = icmp eq i8 %i.ab, 1                     ; 2 uses
  %i.ad = icmp ult i8 %.sroa.011.0, 10
  br i1 %i.ad, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = trunc nsw i32 %i.u to i8
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.af = icmp eq i8 %i.f, 5
  %i.ag = icmp eq i32 %i.v, 0
  %or.cond6.not.not = and i1 %i.ag, %i.af         ; 2 uses
  %.26 = select i1 %or.cond6.not.not, i8 0, i8 %i.w
  br label %bb.f

bb.i:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !62, !noundef !11 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !62, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  %i.an = trunc nuw nsw i32 %.sroa.021.0 to i8
  store i8 %i.an, ptr %i.am, align 1
  %i.ao = add nuw i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !62
  %i.ap = tail call noundef zeroext i1 @_RINvNtNtCslCQnfik72jt_6chrono6format10formatting14write_hundredsNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.011.0)
  br i1 %i.ap, label %bb.u, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !range !61, !noundef !11 ; 2 uses
  %i.as = icmp eq i8 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 4 uses
  br i1 %i.as, label %bb.l, label %._crit_edge

bb.k:                                             ; preds = %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit, %bb.i
  br i1 %.sroa.019.0, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !67, !nonnull !11, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  store i8 32, ptr %i.ay, align 1
  %i.az = add nuw i64 %i.au, 1                    ; 2 uses
  store i64 %i.az, ptr %i.at, align 8, !alias.scope !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.l
  %i.ba = phi i64 [ %i.az, %bb.l ], [ %i.au, %bb.j ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bc = icmp sgt i64 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bc)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !72, !nonnull !11, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ba
  %i.bg = trunc nuw nsw i32 %.sroa.021.0 to i8
  store i8 %i.bg, ptr %i.bf, align 1
  %i.bh = add nuw i64 %i.ba, 1                    ; 3 uses
  store i64 %i.bh, ptr %i.bb, align 8, !alias.scope !72
  %i.bi = icmp eq i8 %i.ar, 1
  br i1 %i.bi, label %bb.m, label %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit

bb.m:                                             ; preds = %._crit_edge
  %i.bj = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bj)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bk = load ptr, ptr %i.bd, align 8, !alias.scope !77, !nonnull !11, !noundef !11
  %3 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 48, ptr %i.bl, align 1
  %i.bm = add nuw i64 %i.ba, 2                    ; 2 uses
  store i64 %i.bm, ptr %i.bb, align 8, !alias.scope !77
  br label %_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit

_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char.exit: ; preds = %bb.m, %._crit_edge
  %i.bn = phi i64 [ %i.bm, %bb.m ], [ %i.bh, %._crit_edge ] ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  tail call void @llvm.assume(i1 %i.bo)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bp = load ptr, ptr %i.bd, align 8, !alias.scope !82, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  %i.br = or disjoint i8 %.sroa.011.0, 48
  store i8 %i.br, ptr %i.bq, align 1
  %i.bs = add nuw i64 %i.bn, 1
  store i64 %i.bs, ptr %i.bb, align 8, !alias.scope !82
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  br i1 %i.z, label %bb.r, label %bb.u

bb.o:                                             ; preds = %bb.k
  br i1 %i.ac, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bt = tail call noundef zeroext i1 @_RINvNtNtCslCQnfik72jt_6chrono6format10formatting14write_hundredsNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.014.0) ; 2 uses
  %.not = xor i1 %i.z, true
  %brmerge = or i1 %i.bt, %.not
  br i1 %brmerge, label %bb.u, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !87, !noundef !11 ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  tail call void @llvm.assume(i1 %i.bw)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !87, !nonnull !11, !noundef !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  store i8 58, ptr %i.bz, align 1
  %i.ca = add nuw i64 %i.bv, 1
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !87
  br label %bb.p

bb.r:                                             ; preds = %bb.p, %bb.n
  br i1 %i.ac, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.cb = tail call noundef zeroext i1 @_RINvNtNtCslCQnfik72jt_6chrono6format10formatting14write_hundredsNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.017.0)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !92, !noundef !11 ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  tail call void @llvm.assume(i1 %i.ce)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !92, !nonnull !11, !noundef !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd
  store i8 58, ptr %i.ch, align 1
  %i.ci = add nuw i64 %i.cd, 1
  store i64 %i.ci, ptr %i.cc, align 8, !alias.scope !92
  br label %bb.s

bb.u:                                             ; preds = %bb.s, %bb.p, %bb.n, %bb.i, %bb.c
  %.sroa.0.1 = phi i1 [ false, %bb.n ], [ false, %bb.c ], [ %i.bt, %bb.p ], [ true, %bb.i ], [ %i.cb, %bb.s ]
  ret i1 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 6, 12) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !11
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !103, !noalias !104, !noundef !11 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !103, !noalias !104, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !noalias !107 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -48
  %i.w = tail call noundef zeroext i1 @_RNvXCsfKiFC1ztrmh_9hashbrowneINtB2_10EquivalentNtNtCs40k4W9msRzi_5alloc6string6StringE10equivalentCsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 6, 12) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v), !noalias !110
  br i1 %i.w, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsjRvGck33osM_6diesel.exit, label %bb.d, !prof !113

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsjRvGck33osM_6diesel.exit, !prof !114

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsjRvGck33osM_6diesel.exit: ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsjRvGck33osM_6diesel.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsjRvGck33osM_6diesel.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs40k4W9msRzi_5alloc3stre7replacecECsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 39, 97) %3, ptr noalias noundef nonnull readonly captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !115, !noundef !11
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !116, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %.lr.ph.split.i.lr.ph, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #19
  unreachable

bb.c:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #20
          to label %bb.r unwind label %bb.q

bb.d:                                             ; preds = %.loopexit74
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph.split.i.lr.ph:                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.k = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.12.32.extract.trunc = trunc nuw nsw i32 %3 to i8 ; 3 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.lr.ph, %bb.p
  %.sroa.04.093 = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.aa, %bb.p ] ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i
  %i.l = phi i64 [ %.sroa.04.093, %.lr.ph.split.i ], [ %i.aa, %bb.i ] ; 4 uses
  %i.m = sub nuw i64 %2, %i.l                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.o = icmp samesign ult i64 %i.m, 16
  br i1 %i.o, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i64 %i.m, 0
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsjRvGck33osM_6diesel5mysql10connection3urlNtB2_17ConnectionOptions5parse:bb.a
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 14 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 1                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 16 uses
  %i.aa = alloca [72 x i8], align 8               ; 6 uses
  %i.ab = alloca [88 x i8], align 8               ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.ad, align 8
  store ptr null, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.ae, align 8
  call void @_RNvMCs9ZkZ3OOHQZh_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.af = load i64, ptr %i.ab, align 8, !range !133, !noundef !11
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !275
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 120, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !275
  %i.ah = load i64, ptr %i.d, align 8, !range !115, !noalias !275, !noundef !11
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !116, !noalias !275, !noundef !11 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.c, label %_RNvNtNtNtCsjRvGck33osM_6diesel5mysql10connection3url20connection_url_error.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.al, align 8, !noalias !275
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.am) #19, !noalias !275
  unreachable

_RNvNtNtNtCsjRvGck33osM_6diesel5mysql10connection3url20connection_url_error.exit: ; preds = %bb.b
  %i.an = load ptr, ptr %i.al, align 8, !noalias !275, !nonnull !11, !noundef !11 ; 2 uses
  %i.ao = icmp samesign ugt i64 %i.ak, 119
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.an, ptr noundef nonnull align 1 dereferenceable(120) @93, i64 120, i1 false), !noalias !275
  store i64 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 120, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -1, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ek

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !11 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val374 = load i64, ptr %i.at, align 8, !noundef !11 ; 3 uses
  %i.au = zext i32 %i.ar to i64                   ; 4 uses
  %i.av = icmp eq i32 %i.ar, 0
  br i1 %i.av, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp ugt i64 %.val374, %i.au
  br i1 %.not.i.i.i.i, label %bb.f, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.e
  %i.aw = icmp eq i64 %.val374, %i.au
  br i1 %i.aw, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !278, !noundef !11
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val374, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #19
          to label %.noexc unwind label %.loopexit.split-lp551

.noexc:                                           ; preds = %bb.g
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1w_EECsjRvGck33osM_6diesel.exit: ; preds = %.loopexit550, %.loopexit.split-lp551, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit
  %.pn372 = phi { ptr, i32 } [ %.pn370, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit ], [ %lpad.loopexit552, %.loopexit550 ], [ %lpad.loopexit.split-lp553, %.loopexit.split-lp551 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZkZ3OOHQZh_3url3UrlECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(88) %i.ac) #20
          to label %common.resume unwind label %bb.ck

.loopexit550:                                     ; preds = %bb.o
  %lpad.loopexit552 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1w_EECsjRvGck33osM_6diesel.exit

.loopexit.split-lp551:                            ; preds = %.invoke, %bb.k, %bb.t, %bb.w, %bb.g, %.thread, %bb.u, %bb.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit439
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1w_EECsjRvGck33osM_6diesel.exit

bb.h:                                             ; preds = %bb.f, %.split.i.i.i.i
  %i.ba = icmp eq i32 %i.ar, 5
  br i1 %i.ba, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %.val, align 1
  %i.bc = xor i32 %i.bb, 1903393133
  %i.bd = getelementptr i8, ptr %.val, i64 4
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = xor i32 %i.bf, 108
  %i.bh = or i32 %i.bc, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.d, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !285
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 120, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc405 unwind label %.loopexit.split-lp551

.noexc405:                                        ; preds = %.thread
  %i.bk = load i64, ptr %i.c, align 8, !range !115, !noalias !285, !noundef !11
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !116, !noalias !285, !noundef !11 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.j, label %bb.eu, !prof !114

bb.j:                                             ; preds = %.noexc405
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !285
  br label %.invoke

.invoke:                                          ; preds = %bb.v, %bb.j
  %i.bq = phi i64 [ %i.bn, %bb.j ], [ %i.dp, %bb.v ]
  %i.br = phi i64 [ %i.bp, %bb.j ], [ %i.dr, %bb.v ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.br) #19
          to label %.cont unwind label %.loopexit.split-lp551

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs_Cs9ZkZ3OOHQZh_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ac)
          to label %bb.l unwind label %.loopexit.split-lp551

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.bt = load i32, ptr %i.bs, align 4, !range !288, !noundef !11
  %.not333 = icmp eq i32 %i.bt, -1
  br i1 %.not333, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  %.promoted.i = load i8, ptr %i.bu, align 1, !alias.scope !292
  %.promoted15.i = load i64, ptr %i.g, align 8, !alias.scope !289 ; 2 uses
  %i.bv = trunc nuw i8 %.promoted.i to i1
  br i1 %i.bv, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !292, !nonnull !11, !noundef !11 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val1.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !292, !noundef !11 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !297, !noalias !300, !noundef !11 ; 5 uses
  %.not.i.i.i.i408 = icmp ugt i64 %i.bz, %.val1.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.cc = load i8, ptr %i.cb, align 8, !alias.scope !289 ; 2 uses
  %i.cd = zext nneg i8 %i.cc to i64               ; 4 uses
  %3 = add i8 %i.cc, -1
  %i.ce = icmp ult i8 %3, 4
  %i.cf = getelementptr i8, ptr %i.ca, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.cf, i64 -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ci = load i8, ptr %i.ch, align 8, !range !54, !alias.scope !289
  %i.cj = trunc nuw i8 %i.ci to i1
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !289
  br i1 %.not.i.i.i.i408, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.promoted21.i = load i64, ptr %i.ck, align 8, !alias.scope !297, !noalias !300 ; 2 uses
  %i.cl = icmp ult i64 %i.bz, %.promoted21.i
  br i1 %i.cl, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit, label %.lr.ph.i.i.i.i.lr.ph

.lr.ph.i.i.i.i.lr.ph:                             ; preds = %.lr.ph.split.preheader.i
  call void @llvm.assume(i1 %i.ce)
  %.pre.i.i.i.i = load i8, ptr %i.cg, align 1, !alias.scope !297, !noalias !300 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.lr.ph, %select.unfold.i
  %.lcssa1718.i567 = phi i64 [ %.promoted15.i, %.lr.ph.i.i.i.i.lr.ph ], [ %i.dc, %select.unfold.i ] ; 2 uses
  %.sroa.0.019.i566 = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph ], [ %i.dh, %select.unfold.i ] ; 3 uses
  %i.cm = phi i64 [ %.promoted21.i, %.lr.ph.i.i.i.i.lr.ph ], [ %i.dc, %select.unfold.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i
  %i.cn = phi i64 [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.dc, %bb.r ] ; 3 uses
  %i.co = sub nuw i64 %i.bz, %i.cn                ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.cn ; 2 uses
  %i.cq = icmp samesign ult i64 %i.co, 16
  br i1 %i.cq, label %.preheader.i.i.i.i.i, label %bb.o

.preheader.i.i.i.i.i:                             ; preds = %bb.n
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cr = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef range(i64 0, -9223372036854775808) %i.co)
          to label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i unwind label %.loopexit550

._crit_edge.i.i.i.i.i:                            ; preds = %bb.p, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.co, %bb.p ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.p ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.cs = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.ct = insertvalue { i64, i64 } %i.cs, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.p
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.cx, %bb.p ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.05.i.i.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !305, !noalias !308, !noundef !11
  %i.cw = icmp eq i8 %i.cv, %.pre.i.i.i.i
  br i1 %i.cw, label %._crit_edge.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cx, %i.co
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.ct, %._crit_edge.i.i.i.i.i ], [ %i.cr, %bb.o ] ; 2 uses
  %i.cy = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.q, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit

bb.q:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.da = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.db = add i64 %i.cn, 1
  %i.dc = add i64 %i.db, %i.da                    ; 9 uses
  %.not12.i.i.i.i = icmp ult i64 %i.dc, %i.cd
  %.not13.i.i.i.i = icmp ugt i64 %i.dc, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.dd = icmp ult i64 %i.bz, %i.dc
  br i1 %i.dd, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit, label %bb.n

bb.s:                                             ; preds = %bb.q
  %i.de = sub nuw i64 %i.dc, %i.cd
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.de
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.df, ptr nonnull readonly %i.ca, i64 %i.cd), !noalias !300
  %i.dg = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dg, label %select.unfold.i, label %bb.r

select.unfold.i:                                  ; preds = %bb.s
  %i.dh = add i64 %.sroa.0.019.i566, 1            ; 2 uses
  %i.di = icmp ult i64 %i.bz, %i.dc
  br i1 %i.di, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit, label %.lr.ph.i.i.i.i

_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit.thread: ; preds = %bb.m, %.lr.ph.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.sink.split

_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit: ; preds = %select.unfold.i, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i, %bb.r, %.lr.ph.split.preheader.i
  %.sroa.0.019.i565 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %.sroa.0.019.i566, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %.sroa.0.019.i566, %bb.r ], [ %i.dh, %select.unfold.i ]
  %.lcssa1718.i562 = phi i64 [ %.promoted15.i, %.lr.ph.split.preheader.i ], [ %.lcssa1718.i567, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %.lcssa1718.i567, %bb.r ], [ %i.dc, %select.unfold.i ]
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa1718.i562
  %or.cond.not.i.i.i.i = select i1 %i.cj, i1 true, i1 %.not.i3.i.i.i
  %i.dj = zext i1 %or.cond.not.i.i.i.i to i64
  %spec.select.i = add i64 %.sroa.0.019.i565, %i.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dk = icmp ugt i64 %spec.select.i, 1
  br i1 %i.dk, label %bb.u, label %bb.t

.sink.split:                                      ; preds = %bb.l, %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.dl = invoke { ptr, i64 } @_RNvMs_Cs9ZkZ3OOHQZh_3urlNtB4_3Url5query(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ac)
          to label %bb.w unwind label %.loopexit.split-lp551 ; 2 uses

bb.u:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECsjRvGck33osM_6diesel.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !309
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 120, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc412 unwind label %.loopexit.split-lp551

.noexc412:                                        ; preds = %bb.u
  %i.dm = load i64, ptr %i.b, align 8, !range !115, !noalias !309, !noundef !11
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !116, !noalias !309, !noundef !11 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dn, label %bb.v, label %bb.et, !prof !114

bb.v:                                             ; preds = %.noexc412
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !309
  br label %.invoke

bb.w:                                             ; preds = %bb.t
  %i.ds = extractvalue { ptr, i64 } %i.dl, 0      ; 2 uses
  %.not334 = icmp eq ptr %i.ds, null              ; 2 uses
  %i.dt = extractvalue { ptr, i64 } %i.dl, 1
  %.sroa.0165.0 = select i1 %.not334, ptr inttoptr (i64 1 to ptr), ptr %i.ds
  %.sroa.5166.0 = select i1 %.not334, i64 0, i64 %i.dt
  invoke void @_RINvXs1c_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB7_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB15_EINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTB15_B15_EE9from_iterNtCsjbK69OuZrc0_15form_urlencoded14ParseIntoOwnedECsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0165.0, i64 noundef %.sroa.5166.0)
          to label %bb.x unwind label %.loopexit.split-lp551

bb.x:                                             ; preds = %bb.w
  %i.du = invoke noundef zeroext i1 @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyeECsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 8)
          to label %bb.y unwind label %.loopexit.split-lp546

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit: ; preds = %.loopexit545, %.loopexit.split-lp546, %bb.ao, %bb.an, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit440
  %.pn370 = phi { ptr, i32 } [ %.pn368, %bb.ao ], [ %.pn368, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit440 ], [ %.pn368, %bb.an ], [ %lpad.loopexit547, %.loopexit545 ], [ %lpad.loopexit.split-lp548, %.loopexit.split-lp546 ]
  invoke void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBP_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1w_EECsjRvGck33osM_6diesel.exit unwind label %bb.ck

.loopexit545:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit547 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit

.loopexit.split-lp546:                            ; preds = %bb.x, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsjRvGck33osM_6diesel.exit, %bb.aa, %bb.ae, %bb.af
  %lpad.loopexit.split-lp548 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECsjRvGck33osM_6diesel.exit

bb.y:                                             ; preds = %bb.x
  br i1 %i.du, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !11, !noundef !11
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %select.unfold534, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.dz = invoke noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 11)
          to label %.noexc416 unwind label %.loopexit.split-lp546 ; 2 uses

.noexc416:                                        ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ea = lshr i64 %i.dz, 57
  %i.eb = trunc nuw nsw i64 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !318, !noalias !321, !noundef !11 ; 2 uses
  %i.ee = load ptr, ptr %i.z, align 8, !alias.scope !318, !noalias !321, !nonnull !11, !noundef !11 ; 2 uses
  %i.ef = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.noexc416
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc416 ], [ %i.ex, %bb.ad ]
  %.pn.i.i.i = phi i64 [ %i.dz, %.noexc416 ], [ %i.ey, %bb.ad ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.ed   ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCsjRvGck33osM_6diesel2pg13query_builder4copyNtB4_13CommonOptions8walk_ast:bb.a
  %i.hy = icmp samesign ult i32 %i.ex, 65536
  br i1 %i.hy, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hz = or disjoint i8 %i.hq, -32
  store i8 %i.hz, ptr %.sroa.0159, align 4, !alias.scope !424
  %.sroa.0159.1..sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0159, i64 1
  store i8 %i.ho, ptr %.sroa.0159.1..sroa_idx191, align 1, !alias.scope !424
  %.sroa.0159.2..sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0159, i64 2
  store i8 %i.hk, ptr %.sroa.0159.2..sroa_idx193, align 2, !alias.scope !424
  br label %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit119

bb.bz:                                            ; preds = %bb.bx
  store i8 %i.hv, ptr %.sroa.0159, align 4, !alias.scope !424
  %.sroa.0159.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0159, i64 1
  store i8 %i.hs, ptr %.sroa.0159.1..sroa_idx, align 1, !alias.scope !424
  %.sroa.0159.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0159, i64 2
  store i8 %i.ho, ptr %.sroa.0159.2..sroa_idx, align 2, !alias.scope !424
  %.sroa.0159.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0159, i64 3
  store i8 %i.hk, ptr %.sroa.0159.3..sroa_idx, align 1, !alias.scope !424
  br label %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit119

_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit119: ; preds = %bb.bv, %bb.bw, %bb.by, %bb.bz
  %.sroa.0.05.i118 = phi i64 [ 1, %bb.bv ], [ 2, %bb.bw ], [ 3, %bb.by ], [ 4, %bb.bz ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.05.i118, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ia = load i64, ptr %i.a, align 8, !range !115, !noundef !11
  %i.ib = trunc nuw i64 %i.ia to i1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !range !116, !noundef !11 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ib, label %bb.cd, label %bb.ce, !prof !114

bb.ca:                                            ; preds = %bb.bs
  %i.if = load i64, ptr %i.hf, align 8
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.he, i64 %i.if) #19
  unreachable

bb.cb:                                            ; preds = %bb.bs
  %i.ig = load ptr, ptr %i.hf, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ih = icmp samesign ugt i64 %i.he, 1
  call void @llvm.assume(i1 %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i16 10023, ptr %i.ig, align 1
  store i64 %i.he, ptr %i.j, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ig, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 2, ptr %.sroa.659.0..sroa_idx, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.x, ptr %i.g, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1j_NtCscI6d9CVNmLh_4core3fmtQReNtB6_7Display3fmtCsjRvGck33osM_6diesel, ptr %.sroa.466.0..sroa_idx, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.ii, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.470.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @92, ptr noundef nonnull %i.g)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit120 unwind label %bb.cf

bb.cd:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit119
  %i.ij = load i64, ptr %i.ie, align 8
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.id, i64 %i.ij) #19
  unreachable

bb.ce:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4char7methods15encode_utf8_raw.exit119
  %i.ik = load ptr, ptr %i.ie, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.il = icmp samesign ule i64 %.sroa.0.05.i118, %i.id
  call void @llvm.assume(i1 %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ik, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0159, i64 %.sroa.0.05.i118, i1 false)
  store i64 %i.id, ptr %i.j, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ik, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.0.05.i118, ptr %.sroa.662.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0159)
  br label %bb.cc

.body123:                                         ; preds = %bb.ch, %bb.cf, %bb.cl
  %.pn89 = phi { ptr, i32 } [ %i.iy, %bb.cl ], [ %i.im, %bb.cf ], [ %i.io, %bb.ch ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #20
          to label %common.resume unwind label %bb.k

bb.cf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i122, %bb.cc
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body123

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit120: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.in = load i64, ptr %1, align 8, !range !417, !noundef !11
  switch i64 %i.in, label %bb.cg [
    i64 0, label %bb.cj
    i64 4, label %bb.ck
  ]

bb.cg:                                            ; preds = %bb.cj, %bb.ck, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit120
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i122 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body123 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i122: ; preds = %bb.cg
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit125 unwind label %bb.cf

bb.cj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit120
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !noundef !11
  %i.is = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !11, !noundef !11
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !11, !align !229, !noundef !11
  invoke void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.ir)
          to label %bb.cg unwind label %bb.cl

bb.ck:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjRvGck33osM_6diesel.exit120
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !nonnull !11, !noundef !11
  store i8 0, ptr %i.ix, align 1
  br label %bb.cg

bb.cl:                                            ; preds = %bb.cj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #20
          to label %.body123 unwind label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit125: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.iz = load ptr, ptr %i.x, align 8, !nonnull !11, !align !229, !noundef !11 ; 2 uses
  store ptr @81, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 2, ptr %i.ja, align 8
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit128 unwind label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit125
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit128: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit125
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.br
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE4nextCsjRvGck33osM_6diesel(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !54, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !427, !noalias !430, !noundef !11 ; 5 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !427, !noalias !430 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i
  br i1 %i.i, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not.i = icmp ugt i64 %i.h, %.val1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !427, !noalias !430 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %1 = add i8 %i.l, -1
  %i.n = icmp ult i8 %1, 4
  br i1 %.not.i, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i = load i8, ptr %i.p, align 1, !alias.scope !427, !noalias !430 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i
  %i.q = phi i64 [ %.promoted.i, %.lr.ph.split.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !432
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i

._crit_edge.i.i:                                  ; preds = %bb.e, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.r, %bb.e ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.01.05.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.05.i.i
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !433, !noalias !432, !noundef !11
  %i.z = icmp eq i8 %i.y, %.pre.i
  br i1 %i.z, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.d
  %.merged.i.i = phi { i64, i64 } [ %i.w, %._crit_edge.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.ab = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i
  %i.ad = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.ae = add i64 %i.q, 1
  %i.af = add i64 %i.ae, %i.ad                    ; 7 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !427, !noalias !430
  %.not12.i = icmp ult i64 %i.af, %i.m
  %.not13.i = icmp ugt i64 %i.af, %.val1
  %or.cond.i = or i1 %.not12.i, %.not13.i
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !427, !noalias !430
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ag = icmp ult i64 %i.h, %i.af
  br i1 %i.ag, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.m                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.j, i64 %i.m), !noalias !430
  %i.aj = icmp eq i32 %bcmp.i, 0
  br i1 %i.aj, label %_RNvXs_NtNtCscI6d9CVNmLh_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, label %bb.h

_RNvXs_NtNtCscI6d9CVNmLh_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit: ; preds = %bb.i
  %i.ak = load i64, ptr %0, align 8, !noundef !11 ; 2 uses
  %i.al = sub nuw i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  store i64 %i.af, ptr %0, align 8
  br label %bb.j

_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit: ; preds = %bb.h, %.lr.ph.i, %bb.b, %bb.g
  store i8 1, ptr %i.a, align 1, !alias.scope !436
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !54, !alias.scope !436, !noundef !11
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2 = load i64, ptr %0, align 8, !alias.scope !436 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !436 ; 2 uses
  %.not.i3 = icmp ne i64 %.pre2.i, %.pre.i2
  %or.cond.not.i = select i1 %i.ap, i1 true, i1 %.not.i3 ; 2 uses
  %i.aq = sub nuw i64 %.pre2.i, %.pre.i2
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre.i2
  %.sroa.3.0.i = select i1 %or.cond.not.i, i64 %i.aq, i64 undef
  %.sroa.0.0.i = select i1 %or.cond.not.i, ptr %i.ar, ptr null
  br label %bb.j

bb.j:                                             ; preds = %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit, %_RNvXs_NtNtCscI6d9CVNmLh_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.al, %_RNvXs_NtNtCscI6d9CVNmLh_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %.sroa.3.0.i, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.am, %_RNvXs_NtNtCscI6d9CVNmLh_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %.sroa.0.0.i, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsjRvGck33osM_6diesel.exit ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsjRvGck33osM_6diesel5mysql10connection3url19decode_into_cstring(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @_RNvMs3_CslitqBJBKk0i_16percent_encodingNtB5_13PercentDecode11decode_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  %i.f = load i64, ptr %i.c, align 8, !range !134, !noundef !11 ; 3 uses
  %i.g = icmp eq i64 %i.f, -2
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !439
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 120, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !439
  %i.h = load i64, ptr %i.a, align 8, !range !115, !noalias !439, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !116, !noalias !439, !noundef !11 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvNtNtNtCsjRvGck33osM_6diesel5mysql10connection3url20connection_url_error.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !noalias !439
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !439
  unreachable

_RNvNtNtNtCsjRvGck33osM_6diesel5mysql10connection3url20connection_url_error.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !noalias !439, !nonnull !11, !noundef !11 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.k, 119
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !439
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.n, ptr noundef nonnull align 1 dereferenceable(120) @93, i64 120, i1 false), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 2, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 120, ptr %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.440.0.copyload = load ptr, ptr %.sroa.440.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.f, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.440.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NvMs_NtNtCs40k4W9msRzi_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.440.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !range !133, !noundef !11
  %.not28 = icmp eq i64 %i.q, -1
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ -1, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = icmp eq i64 %i.f, -1
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel.exit, label %bb.j

end_hunk_2
