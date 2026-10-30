Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.02?download=true
inline.NumInlined: 263
inline.NumDeleted: 176
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtCs1ElB0qm0ygX_13influxdb3_wal3RowEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendBV_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !297
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCs1ElB0qm0ygX_13influxdb3_wal3RowEEB1g_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCs1ElB0qm0ygX_13influxdb3_wal3RowEEB1g_.exit: ; preds = %bb.c, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal3RowE7reserveBF_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal3RowE7reserveBF_.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !297
  %i.t = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1ElB0qm0ygX_13influxdb3_wal3RowENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal3RowEEB1q_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal3RowE7reserveBF_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal3RowENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal3RowEEB1q_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMNtCs1LivM9IBWqb_12object_store4pathNtB1E_4Path5parts0ENtNtNtB9_6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !318, !alias.scope !319, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !319, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !319, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.g = load i64, ptr %1, align 8, !range !15, !alias.scope !322, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !318, !alias.scope !323, !noundef !3
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !322 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.promoted26.i.i.i = load i8, ptr %i.m, align 8, !alias.scope !323 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.n = trunc nuw i8 %.promoted26.i.i.i to i1    ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %.not.i.i.i.peel.i.i, label %bb.d, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.p, label %bb.e, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !325, !noalias !326, !noundef !3
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.u, label %.loopexit19.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !327, !noundef !3 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !327, !noundef !3
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !327, !noundef !3
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !327, !noundef !3
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !322, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !322, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !322, !noundef !3 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i = icmp ult i64 %i.bq, %.val1.i.i
  br i1 %.not.i.i.i.i.i, label %bb.o, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !325, !noalias !330, !noundef !3
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i.i
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !331, !noundef !3 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %.split.i.i.i.i.i, %bb.d, %.split.i.i.i.peel.i.i
  %.lcssa15.i.i = phi i8 [ %.promoted26.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted26.i.i.i, %bb.d ], [ 1, %.split.i.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !323
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa12.i.i, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24, !noalias !330
  unreachable

.loopexit19.i.i:                                  ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !323
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.i
  store i8 1, ptr %i.j, align 2, !alias.scope !323
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i, %bb.q, %bb.h
  %.lcssa14.i.i = phi i64 [ %.promoted.i.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !323
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i, %.loopexit19.i.i, %bb.p
  %2 = phi i64 [ %.lcssa14.i.i, %.sink.split.i.i ], [ %.val1.i.i, %.loopexit19.i.i ], [ %.val1.i.i, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.ck, align 8, !alias.scope !320, !noalias !319
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.cl, align 8, !alias.scope !320, !noalias !319
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i.i
  %storemerge.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.a, align 8, !alias.scope !320, !noalias !319
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i
  %i.cm = load i64, ptr %i.a, align 8, !range !15, !noalias !319, !noundef !3
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !319, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !319, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !319, !noundef !3 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !319
  br label %bb.aa

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cw = load i8, ptr %i.b, align 1, !range !318, !alias.scope !332, !noundef !3
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !332
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !318, !alias.scope !332, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i.i, label %bb.y

._crit_edge.i.i.i:                                ; preds = %bb.x
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !332
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !332
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !332, !noundef !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !332, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i.i, label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i
  %i.df = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !332, !nonnull !3, !noundef !3
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dg
  br label %bb.aa

_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6: ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  br label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.sroa.4.0.i.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ]
  %.sroa.0.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ab

_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread: ; preds = %bb.a, %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6
  store i64 -2, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread, %bb.aa
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtB6_5Debug3fmtB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !333, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtB5_5Debug3fmtBz_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_7u8_char6U8CharEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecB14_EE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecaEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecaEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecbEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecbEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecfEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecfEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 2
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VechEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVechEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
end_hunk_0
