Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.02?download=true
inline.NumInlined: 1645
inline.NumDeleted: 712
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs1i_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_9DecOctHex10parse_char:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.f, ptr %i.b, align 4
  %i.g = xor i32 %i.f, 55296
  %i.h = add i32 %i.g, -1114112
  %i.i = icmp ult i32 %i.h, -1112064
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.f, 1114112
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1429
  store ptr %i.b, ptr %i.a, align 8, !noalias !1429
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1429
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1429
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1i_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_9DecOctHex5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs1i_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_9DecOctHex9parse_raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp ugt i32 %i.h, 65535
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc nuw i32 %i.h to i16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.j, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1433
  store i64 0, ptr %i.c, align 8, !noalias !1433
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1433
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1433
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.l, align 8, !noalias !1433
  store ptr %i.c, ptr %i.b, align 8, !noalias !1433
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @138, ptr %i.m, align 8, !noalias !1433
  %i.n = invoke noundef zeroext i1 @_RNvXs_NtNtCsf3Ta7LF998c_4core3num5errorNtB4_15TryFromIntErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f, !noalias !1434

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.j unwind label %bb.i, !noalias !1434

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.h, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #20
          to label %.noexc.i unwind label %bb.f, !noalias !1434

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !1434
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error15TryFromIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1i_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_9DecOctHex9parse_raw(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !6, !noundef !5 ; 2 uses
  %i.n = icmp samesign ugt i8 %i.m, 23
  %i.o = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.p = add nsw i64 %i.o, -23
  %i.q = select i1 %i.n, i64 %i.p, i64 0          ; 3 uses
  switch i64 %i.k, label %default.unreachable136 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

default.unreachable136:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.a
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.ab
    i64 1, label %bb.ac
    i64 2, label %bb.ad
  ]

bb.e:                                             ; preds = %bb.a
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.av
    i64 1, label %bb.aw
    i64 2, label %bb.ax
  ]

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.43.0 = phi i64 [ %i.o, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.r, %bb.f ], [ %i.t, %bb.g ], [ %i.aa, %bb.h ] ; 3 uses
  switch i64 %.sroa.43.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %.sroa.02.0, align 1, !alias.scope !1450, !noundef !5 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.i
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !1450
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i, %bb.j
  %i.ac = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ab, %bb.j ]
  %cond.i = icmp eq i8 %i.ac, 43                  ; 2 uses
  %i.ad = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.43.0, %i.ad  ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.ae, label %.preheader.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i:                          ; preds = %bb.m
  %.not55.us.i = icmp eq i64 %i.ag, 0
  br i1 %.not55.us.i, label %.loopexit.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i.preheader:                ; preds = %bb.k, %.preheader64.split.us.i
  %.sroa.0.1.us.i175 = phi ptr [ %i.af, %.preheader64.split.us.i ], [ %.sroa.0.0.i, %bb.k ] ; 2 uses
  %.sroa.15.1.us.i174 = phi i64 [ %i.ag, %.preheader64.split.us.i ], [ %.sroa.15.0.i, %bb.k ]
  %.sroa.045.0.us.i173 = phi i32 [ %i.ao, %.preheader64.split.us.i ], [ 0, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i175, i64 1
  %i.ag = add nsw i64 %.sroa.15.1.us.i174, -1     ; 2 uses
  %i.ah = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i173, i32 10) ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 0       ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ah, 1
  %i.ak = load i8, ptr %.sroa.0.1.us.i175, align 1, !alias.scope !1450, !noundef !5 ; 2 uses
  br i1 %i.aj, label %.split.us.i, label %bb.l, !prof !14

bb.l:                                             ; preds = %.preheader64.split.us.i.preheader
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.m, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = add i32 %i.am, %i.ai                    ; 3 uses
  %i.ap = icmp ult i32 %i.ao, %i.ai
  br i1 %i.ap, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader64.split.us.i, !prof !14

.preheader.i:                                     ; preds = %bb.k
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i
  %i.aq = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1450, !noundef !5
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 3 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.n, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.split.us.i
  %.not56.us.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !1450, !noundef !5
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %bb.o, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.split.us.i.1
  %i.az = mul nuw nsw i32 %i.as, 10
  %i.ba = add nuw nsw i32 %i.ax, %i.az            ; 2 uses
  %.not56.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !1450, !noundef !5
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.p, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.split.us.i.2
  %i.bg = mul nuw nsw i32 %i.ba, 10
  %i.bh = add nuw nsw i32 %i.be, %i.bg            ; 2 uses
  %.not56.us.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.us.i.2, label %.loopexit.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !1450, !noundef !5
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.q, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %.lr.ph.split.us.i.3
  %i.bn = mul nuw nsw i32 %i.bh, 10
  %i.bo = add nuw nsw i32 %i.bl, %i.bn            ; 2 uses
  %.not56.us.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.us.i.3, label %.loopexit.i, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !1450, !noundef !5
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.r, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.r:                                             ; preds = %.lr.ph.split.us.i.4
  %i.bu = mul i32 %i.bo, 10
  %i.bv = add i32 %i.bs, %i.bu                    ; 2 uses
  %.not56.us.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.us.i.4, label %.loopexit.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !1450, !noundef !5
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -48                  ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.s:                                             ; preds = %.lr.ph.split.us.i.5
  %i.cb = mul i32 %i.bv, 10
  %i.cc = add i32 %i.bz, %i.cb                    ; 2 uses
  %.not56.us.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.us.i.5, label %.loopexit.i, label %.lr.ph.split.us.i.6

.lr.ph.split.us.i.6:                              ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !1450, !noundef !5
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 10
  br i1 %i.ch, label %bb.t, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.t:                                             ; preds = %.lr.ph.split.us.i.6
  %i.ci = mul i32 %i.cc, 10
  %i.cj = add i32 %i.cg, %i.ci                    ; 2 uses
  %.not56.us.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.us.i.6, label %.loopexit.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !1450, !noundef !5
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ult i32 %i.cn, 10
  br i1 %i.co, label %bb.u, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.u:                                             ; preds = %.lr.ph.split.us.i.7
  %i.cp = mul i32 %i.cj, 10
  %i.cq = add i32 %i.cn, %i.cp
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader64.split.us.i, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.cq, %bb.u ], [ 0, %.preheader.i ], [ %i.as, %bb.n ], [ %i.ba, %bb.o ], [ %i.bh, %bb.p ], [ %i.bo, %bb.q ], [ %i.bv, %bb.r ], [ %i.cc, %bb.s ], [ %i.cj, %bb.t ], [ %i.ao, %.preheader64.split.us.i ]
  %i.cr = zext i32 %.sroa.045.1.i to i64
  %i.cs = shl nuw i64 %i.cr, 32
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit

.split.us.i:                                      ; preds = %.preheader64.split.us.i.preheader
  %i.ct = add i8 %i.ak, -48
  %i.cu = icmp ult i8 %i.ct, 10
  %spec.select.i = select i1 %i.cu, i64 513, i64 257
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %.split.us.i ], [ %i.cs, %.loopexit.i ] ; 3 uses
  %i.cv = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cv, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.z

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.l, %bb.m, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7, %bb.i, %bb.j, %bb.j, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i78 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.j ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.j ], [ 1, %bb.i ], [ 257, %.lr.ph.split.us.i.7 ], [ 257, %.lr.ph.split.us.i.6 ], [ 257, %.lr.ph.split.us.i.5 ], [ 257, %.lr.ph.split.us.i.4 ], [ 257, %.lr.ph.split.us.i.3 ], [ 257, %.lr.ph.split.us.i.2 ], [ 257, %.lr.ph.split.us.i.1 ], [ 513, %bb.m ], [ 257, %bb.l ]
  %.sroa.417.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i78, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %.sroa.417.0.extract.trunc, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1451
  store i64 0, ptr %i.g, align 8, !noalias !1451
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1451
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1451
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1610612768, ptr %i.cw, align 8, !noalias !1451
  store ptr %i.g, ptr %i.f, align 8, !noalias !1451
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @138, ptr %i.cx, align 8, !noalias !1451
  %i.cy = invoke noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.v, !noalias !1452

bb.v:                                             ; preds = %bb.x, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18
          to label %common.resume unwind label %bb.y, !noalias !1452

bb.w:                                             ; preds = %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  br i1 %i.cy, label %bb.x, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit, !prof !14

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #20
          to label %.noexc.i unwind label %bb.v, !noalias !1452

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !1452
  unreachable

common.resume:                                    ; preds = %bb.bk, %bb.aq, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.gi, %bb.aq ], [ %i.cz, %bb.v ], [ %i.lf, %bb.bk ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aa

bb.z:                                             ; preds = %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.extract.trunc, ptr %i.db, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit76, %bb.bo, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit56, %bb.au, %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit, %bb.z
  ret void

bb.ab:                                            ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %bb.ae

bb.ac:                                            ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !noundef !5
  br label %bb.ae

bb.ad:                                            ; preds = %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.49.0 = phi i64 [ %i.o, %bb.ab ], [ %i.dg, %bb.ac ], [ %i.dk, %bb.ad ] ; 2 uses
  %.sroa.08.0 = phi ptr [ %i.dc, %bb.ab ], [ %i.de, %bb.ac ], [ %i.dl, %bb.ad ] ; 3 uses
  switch i64 %.sroa.49.0, label %thread-pre-split.i50 [
    i64 0, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dm = load i8, ptr %.sroa.08.0, align 1, !alias.scope !1453, !noundef !5 ; 2 uses
  switch i8 %i.dm, label %bb.ag [
    i8 43, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread
    i8 45, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread
  ]

thread-pre-split.i50:                             ; preds = %bb.ae
  %.pr.i51 = load i8, ptr %.sroa.08.0, align 1, !alias.scope !1453
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split.i50, %bb.af
  %i.dn = phi i8 [ %.pr.i51, %thread-pre-split.i50 ], [ %i.dm, %bb.af ]
  %cond.i28 = icmp eq i8 %i.dn, 43                ; 2 uses
  %i.do = sext i1 %cond.i28 to i64
  %.sroa.15.0.i29 = add nsw i64 %.sroa.49.0, %i.do ; 10 uses
  %.sroa.0.0.idx.i30 = zext i1 %cond.i28 to i64
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 %.sroa.0.0.idx.i30 ; 9 uses
  %i.dp = icmp samesign ult i64 %.sroa.15.0.i29, 9
  br i1 %i.dp, label %.preheader.i42, label %.preheader64.split.us.i33.preheader

.preheader64.split.us.i33:                        ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i36108, i64 1
  %i.dr = add nsw i64 %.sroa.15.1.us.i35107, -1   ; 2 uses
  %i.ds = shl nuw i32 %.sroa.045.0.us.i34106, 3
  %i.dt = or disjoint i32 %i.dx, %i.ds            ; 2 uses
  %.not55.us.i37 = icmp eq i64 %i.dr, 0
  br i1 %.not55.us.i37, label %.loopexit.i40, label %.preheader64.split.us.i33.preheader

.preheader64.split.us.i33.preheader:              ; preds = %bb.ag, %.preheader64.split.us.i33
  %.sroa.0.1.us.i36108 = phi ptr [ %i.dq, %.preheader64.split.us.i33 ], [ %.sroa.0.0.i31, %bb.ag ] ; 2 uses
  %.sroa.15.1.us.i35107 = phi i64 [ %i.dr, %.preheader64.split.us.i33 ], [ %.sroa.15.0.i29, %bb.ag ]
  %.sroa.045.0.us.i34106 = phi i32 [ %i.dt, %.preheader64.split.us.i33 ], [ 0, %bb.ag ] ; 2 uses
  %i.du = icmp ugt i32 %.sroa.045.0.us.i34106, 536870911
  %i.dv = load i8, ptr %.sroa.0.1.us.i36108, align 1, !alias.scope !1453, !noundef !5 ; 2 uses
  br i1 %i.du, label %.split.us.i38, label %bb.ah, !prof !14

bb.ah:                                            ; preds = %.preheader64.split.us.i33.preheader
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nsw i32 %i.dw, -48                  ; 2 uses
  %i.dy = icmp ult i32 %i.dx, 8
  br i1 %i.dy, label %.preheader64.split.us.i33, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

.preheader.i42:                                   ; preds = %bb.ag
  %.not5674.i43 = icmp eq i64 %.sroa.15.0.i29, 0
  br i1 %.not5674.i43, label %.loopexit.i40, label %.lr.ph.split.us.i45

.lr.ph.split.us.i45:                              ; preds = %.preheader.i42
  %i.dz = load i8, ptr %.sroa.0.0.i31, align 1, !alias.scope !1453, !noundef !5
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nsw i32 %i.ea, -48                  ; 3 uses
  %i.ec = icmp ult i32 %i.eb, 8
  br i1 %i.ec, label %bb.ai, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.ai:                                            ; preds = %.lr.ph.split.us.i45
  %.not56.us.i49 = icmp eq i64 %.sroa.15.0.i29, 1
  br i1 %.not56.us.i49, label %.loopexit.i40, label %.lr.ph.split.us.i45.1

.lr.ph.split.us.i45.1:                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !1453, !noundef !5
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nsw i32 %i.ef, -48                  ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 8
  br i1 %i.eh, label %bb.aj, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.aj:                                            ; preds = %.lr.ph.split.us.i45.1
  %i.ei = shl nuw nsw i32 %i.eb, 3
  %i.ej = or disjoint i32 %i.eg, %i.ei            ; 2 uses
  %.not56.us.i49.1 = icmp eq i64 %.sroa.15.0.i29, 2
  br i1 %.not56.us.i49.1, label %.loopexit.i40, label %.lr.ph.split.us.i45.2

.lr.ph.split.us.i45.2:                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !1453, !noundef !5
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ult i32 %i.en, 8
  br i1 %i.eo, label %bb.ak, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.ak:                                            ; preds = %.lr.ph.split.us.i45.2
  %i.ep = shl nuw nsw i32 %i.ej, 3
  %i.eq = or disjoint i32 %i.en, %i.ep            ; 2 uses
  %.not56.us.i49.2 = icmp eq i64 %.sroa.15.0.i29, 3
  br i1 %.not56.us.i49.2, label %.loopexit.i40, label %.lr.ph.split.us.i45.3

.lr.ph.split.us.i45.3:                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 3
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !1453, !noundef !5
  %i.et = zext i8 %i.es to i32
  %i.eu = add nsw i32 %i.et, -48                  ; 2 uses
  %i.ev = icmp ult i32 %i.eu, 8
  br i1 %i.ev, label %bb.al, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.al:                                            ; preds = %.lr.ph.split.us.i45.3
  %i.ew = shl nuw nsw i32 %i.eq, 3
  %i.ex = or disjoint i32 %i.eu, %i.ew            ; 2 uses
  %.not56.us.i49.3 = icmp eq i64 %.sroa.15.0.i29, 4
  br i1 %.not56.us.i49.3, label %.loopexit.i40, label %.lr.ph.split.us.i45.4

.lr.ph.split.us.i45.4:                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 4
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !1453, !noundef !5
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, -48                  ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 8
  br i1 %i.fc, label %bb.am, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.am:                                            ; preds = %.lr.ph.split.us.i45.4
  %i.fd = shl i32 %i.ex, 3
  %i.fe = or disjoint i32 %i.fb, %i.fd            ; 2 uses
  %.not56.us.i49.4 = icmp eq i64 %.sroa.15.0.i29, 5
  br i1 %.not56.us.i49.4, label %.loopexit.i40, label %.lr.ph.split.us.i45.5

.lr.ph.split.us.i45.5:                            ; preds = %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 5
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !1453, !noundef !5
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -48                  ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 8
  br i1 %i.fj, label %bb.an, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.an:                                            ; preds = %.lr.ph.split.us.i45.5
  %i.fk = shl i32 %i.fe, 3
  %i.fl = or disjoint i32 %i.fi, %i.fk            ; 2 uses
  %.not56.us.i49.5 = icmp eq i64 %.sroa.15.0.i29, 6
  br i1 %.not56.us.i49.5, label %.loopexit.i40, label %.lr.ph.split.us.i45.6

.lr.ph.split.us.i45.6:                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 6
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !1453, !noundef !5
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -48                  ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 8
  br i1 %i.fq, label %bb.ao, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.ao:                                            ; preds = %.lr.ph.split.us.i45.6
  %i.fr = shl i32 %i.fl, 3
  %i.fs = or disjoint i32 %i.fp, %i.fr            ; 2 uses
  %.not56.us.i49.6 = icmp eq i64 %.sroa.15.0.i29, 7
  br i1 %.not56.us.i49.6, label %.loopexit.i40, label %.lr.ph.split.us.i45.7

.lr.ph.split.us.i45.7:                            ; preds = %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31, i64 7
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !1453, !noundef !5
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nsw i32 %i.fv, -48                  ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 8
  br i1 %i.fx, label %bb.ap, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread

bb.ap:                                            ; preds = %.lr.ph.split.us.i45.7
  %i.fy = shl i32 %i.fs, 3
  %i.fz = or disjoint i32 %i.fw, %i.fy
  br label %.loopexit.i40

.loopexit.i40:                                    ; preds = %.preheader64.split.us.i33, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %.preheader.i42
  %.sroa.045.1.i41 = phi i32 [ %i.fz, %bb.ap ], [ 0, %.preheader.i42 ], [ %i.eb, %bb.ai ], [ %i.ej, %bb.aj ], [ %i.eq, %bb.ak ], [ %i.ex, %bb.al ], [ %i.fe, %bb.am ], [ %i.fl, %bb.an ], [ %i.fs, %bb.ao ], [ %i.dt, %.preheader64.split.us.i33 ]
  %i.ga = zext i32 %.sroa.045.1.i41 to i64
  %i.gb = shl nuw i64 %i.ga, 32
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52

.split.us.i38:                                    ; preds = %.preheader64.split.us.i33.preheader
  %i.gc = and i8 %i.dv, -8
  %i.gd = icmp eq i8 %i.gc, 48
  %spec.select.i39 = select i1 %i.gd, i64 513, i64 257
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52: ; preds = %.loopexit.i40, %.split.us.i38
  %.sroa.8.0.insert.insert.i27 = phi i64 [ %spec.select.i39, %.split.us.i38 ], [ %i.gb, %.loopexit.i40 ] ; 3 uses
  %i.ge = trunc i64 %.sroa.8.0.insert.insert.i27 to i1
  br i1 %i.ge, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread, label %bb.au

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread: ; preds = %bb.ah, %.lr.ph.split.us.i45, %.lr.ph.split.us.i45.1, %.lr.ph.split.us.i45.2, %.lr.ph.split.us.i45.3, %.lr.ph.split.us.i45.4, %.lr.ph.split.us.i45.5, %.lr.ph.split.us.i45.6, %.lr.ph.split.us.i45.7, %bb.ae, %bb.af, %bb.af, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52
  %.sroa.8.0.insert.insert.i2780 = phi i64 [ %.sroa.8.0.insert.insert.i27, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52 ], [ 257, %.lr.ph.split.us.i45 ], [ 257, %bb.af ], [ 257, %bb.af ], [ 1, %bb.ae ], [ 257, %.lr.ph.split.us.i45.7 ], [ 257, %.lr.ph.split.us.i45.6 ], [ 257, %.lr.ph.split.us.i45.5 ], [ 257, %.lr.ph.split.us.i45.4 ], [ 257, %.lr.ph.split.us.i45.3 ], [ 257, %.lr.ph.split.us.i45.2 ], [ 257, %.lr.ph.split.us.i45.1 ], [ 257, %bb.ah ]
  %.sroa.420.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i2780, 8
  %.sroa.420.0.extract.trunc = trunc i64 %.sroa.420.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.420.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1454
  store i64 0, ptr %i.e, align 8, !noalias !1454
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i53, align 8, !noalias !1454
  %.sroa.5.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i54, align 8, !noalias !1454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1454
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.gf, align 8, !noalias !1454
  store ptr %i.e, ptr %i.d, align 8, !noalias !1454
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @138, ptr %i.gg, align 8, !noalias !1454
  %i.gh = invoke noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ar unwind label %bb.aq, !noalias !1455

bb.aq:                                            ; preds = %bb.as, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #18
          to label %common.resume unwind label %bb.at, !noalias !1455

bb.ar:                                            ; preds = %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52.thread
  br i1 %i.gh, label %bb.as, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit56, !prof !14

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #20
          to label %.noexc.i55 unwind label %bb.aq, !noalias !1455

.noexc.i55:                                       ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !1455
  unreachable

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit56: ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.au:                                            ; preds = %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit52
  %.sroa.622.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i27, 32
  %.sroa.622.0.extract.trunc = trunc nuw i64 %.sroa.622.0.extract.shift to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.622.0.extract.trunc, ptr %i.gk, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.av:                                            ; preds = %bb.e
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %bb.ay

bb.aw:                                            ; preds = %bb.e
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !noundef !5
  br label %bb.ay

bb.ax:                                            ; preds = %bb.e
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !5, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.sroa.415.0 = phi i64 [ %i.o, %bb.av ], [ %i.gp, %bb.aw ], [ %i.gt, %bb.ax ]
  %.sroa.014.0 = phi ptr [ %i.gl, %bb.av ], [ %i.gn, %bb.aw ], [ %i.gu, %bb.ax ]
  %i.gv = tail call { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesReECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0, i64 noundef %.sroa.415.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 2) ; 2 uses
  %i.gw = extractvalue { ptr, i64 } %i.gv, 0      ; 3 uses
  %i.gx = extractvalue { ptr, i64 } %i.gv, 1      ; 2 uses
  switch i64 %i.gx, label %thread-pre-split.i70 [
    i64 0, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.gy = load i8, ptr %i.gw, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  switch i8 %i.gy, label %bb.ba [
    i8 43, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread
    i8 45, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread
  ]

thread-pre-split.i70:                             ; preds = %bb.ay
  %.pr.i71 = load i8, ptr %i.gw, align 1, !alias.scope !1456
  br label %bb.ba

bb.ba:                                            ; preds = %thread-pre-split.i70, %bb.az
  %i.gz = phi i8 [ %.pr.i71, %thread-pre-split.i70 ], [ %i.gy, %bb.az ]
  %cond.i58 = icmp eq i8 %i.gz, 43                ; 2 uses
  %i.ha = sext i1 %cond.i58 to i64
  %.sroa.15.0.i59 = add nsw i64 %i.gx, %i.ha      ; 10 uses
  %.sroa.0.0.idx.i60 = zext i1 %cond.i58 to i64
  %.sroa.0.0.i61 = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.0.0.idx.i60 ; 9 uses
  %i.hb = icmp samesign ult i64 %.sroa.15.0.i59, 9
  br i1 %i.hb, label %.preheader.i67, label %.preheader64.split.i.preheader

.preheader.i67:                                   ; preds = %bb.ba
  %.not5674.i68 = icmp eq i64 %.sroa.15.0.i59, 0
  br i1 %.not5674.i68, label %.loopexit.i65, label %.lr.ph.split.i

.preheader64.split.i:                             ; preds = %bb.bb
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i105, i64 1
  %i.hd = add nsw i64 %.sroa.15.1.i104, -1        ; 2 uses
  %i.he = shl nuw i32 %.sroa.045.0.i103, 4
  %i.hf = or disjoint i32 %spec.select81.i, %i.he ; 2 uses
  %.not55.i = icmp eq i64 %i.hd, 0
  br i1 %.not55.i, label %.loopexit.i65, label %.preheader64.split.i.preheader

.loopexit.i65:                                    ; preds = %.preheader64.split.i, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %.preheader.i67
  %.sroa.045.1.i66 = phi i32 [ %i.la, %bb.bj ], [ 0, %.preheader.i67 ], [ %spec.select82.i, %bb.bc ], [ %i.im, %bb.bd ], [ %i.ix, %bb.be ], [ %i.ji, %bb.bf ], [ %i.jt, %bb.bg ], [ %i.ke, %bb.bh ], [ %i.kp, %bb.bi ], [ %i.hf, %.preheader64.split.i ]
  %i.hg = zext i32 %.sroa.045.1.i66 to i64
  %i.hh = shl nuw i64 %i.hg, 32
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72

.preheader64.split.i.preheader:                   ; preds = %bb.ba, %.preheader64.split.i
  %.sroa.0.1.i105 = phi ptr [ %i.hc, %.preheader64.split.i ], [ %.sroa.0.0.i61, %bb.ba ] ; 2 uses
  %.sroa.15.1.i104 = phi i64 [ %i.hd, %.preheader64.split.i ], [ %.sroa.15.0.i59, %bb.ba ]
  %.sroa.045.0.i103 = phi i32 [ %i.hf, %.preheader64.split.i ], [ 0, %bb.ba ] ; 2 uses
  %i.hi = icmp ugt i32 %.sroa.045.0.i103, 268435455
  %i.hj = load i8, ptr %.sroa.0.1.i105, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.hk = zext i8 %i.hj to i32                    ; 2 uses
  %i.hl = icmp ugt i8 %i.hj, 57                   ; 2 uses
  %i.hm = add nsw i32 %i.hk, -65                  ; 2 uses
  %i.hn = add nsw i32 %i.hk, -48                  ; 2 uses
  br i1 %i.hi, label %.split.us.i63, label %bb.bb, !prof !14

bb.bb:                                            ; preds = %.preheader64.split.i.preheader
  %i.ho = and i32 %i.hm, -33
  %i.hp = add nuw nsw i32 %i.ho, 10
  %spec.select81.i = select i1 %i.hl, i32 %i.hp, i32 %i.hn ; 2 uses
  %i.hq = icmp ult i32 %spec.select81.i, 16
  br i1 %i.hq, label %.preheader64.split.i, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

.split.us.i63:                                    ; preds = %.preheader64.split.i.preheader
  %i.hr = and i32 %i.hm, -34
  %i.hs = add nuw nsw i32 %i.hr, 10
  %.sroa.02.0.i58.i = select i1 %i.hl, i32 %i.hs, i32 %i.hn
  %i.ht = icmp ult i32 %.sroa.02.0.i58.i, 16
  %spec.select.i64 = select i1 %i.ht, i64 513, i64 257
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72

.lr.ph.split.i:                                   ; preds = %.preheader.i67
  %i.hu = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.hv = zext i8 %i.hu to i32                    ; 2 uses
  %i.hw = icmp ugt i8 %i.hu, 57
  %i.hx = add nsw i32 %i.hv, -65
  %i.hy = and i32 %i.hx, -33
  %i.hz = add nuw nsw i32 %i.hy, 10
  %i.ia = add nsw i32 %i.hv, -48
  %spec.select82.i = select i1 %i.hw, i32 %i.hz, i32 %i.ia ; 3 uses
  %i.ib = icmp ult i32 %spec.select82.i, 16
  br i1 %i.ib, label %bb.bc, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bc:                                            ; preds = %.lr.ph.split.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i59, 1
  br i1 %.not56.i, label %.loopexit.i65, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.ie = zext i8 %i.id to i32                    ; 2 uses
  %i.if = icmp ugt i8 %i.id, 57
  %i.ig = add nsw i32 %i.ie, -65
  %i.ih = and i32 %i.ig, -33
  %i.ii = add nuw nsw i32 %i.ih, 10
  %i.ij = add nsw i32 %i.ie, -48
  %spec.select82.i.1 = select i1 %i.if, i32 %i.ii, i32 %i.ij ; 2 uses
  %i.ik = icmp ult i32 %spec.select82.i.1, 16
  br i1 %i.ik, label %bb.bd, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bd:                                            ; preds = %.lr.ph.split.i.1
  %i.il = shl nuw nsw i32 %spec.select82.i, 4
  %i.im = or disjoint i32 %spec.select82.i.1, %i.il ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i59, 2
  br i1 %.not56.i.1, label %.loopexit.i65, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.bd
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 2
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  %i.iq = icmp ugt i8 %i.io, 57
  %i.ir = add nsw i32 %i.ip, -65
  %i.is = and i32 %i.ir, -33
  %i.it = add nuw nsw i32 %i.is, 10
  %i.iu = add nsw i32 %i.ip, -48
  %spec.select82.i.2 = select i1 %i.iq, i32 %i.it, i32 %i.iu ; 2 uses
  %i.iv = icmp ult i32 %spec.select82.i.2, 16
  br i1 %i.iv, label %bb.be, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.be:                                            ; preds = %.lr.ph.split.i.2
  %i.iw = shl nuw nsw i32 %i.im, 4
  %i.ix = or disjoint i32 %spec.select82.i.2, %i.iw ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i59, 3
  br i1 %.not56.i.2, label %.loopexit.i65, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %bb.be
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 3
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.ja = zext i8 %i.iz to i32                    ; 2 uses
  %i.jb = icmp ugt i8 %i.iz, 57
  %i.jc = add nsw i32 %i.ja, -65
  %i.jd = and i32 %i.jc, -33
  %i.je = add nuw nsw i32 %i.jd, 10
  %i.jf = add nsw i32 %i.ja, -48
  %spec.select82.i.3 = select i1 %i.jb, i32 %i.je, i32 %i.jf ; 2 uses
  %i.jg = icmp ult i32 %spec.select82.i.3, 16
  br i1 %i.jg, label %bb.bf, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bf:                                            ; preds = %.lr.ph.split.i.3
  %i.jh = shl nuw nsw i32 %i.ix, 4
  %i.ji = or disjoint i32 %spec.select82.i.3, %i.jh ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i59, 4
  br i1 %.not56.i.3, label %.loopexit.i65, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %bb.bf
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 4
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = icmp ugt i8 %i.jk, 57
  %i.jn = add nsw i32 %i.jl, -65
  %i.jo = and i32 %i.jn, -33
  %i.jp = add nuw nsw i32 %i.jo, 10
  %i.jq = add nsw i32 %i.jl, -48
  %spec.select82.i.4 = select i1 %i.jm, i32 %i.jp, i32 %i.jq ; 2 uses
  %i.jr = icmp ult i32 %spec.select82.i.4, 16
  br i1 %i.jr, label %bb.bg, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bg:                                            ; preds = %.lr.ph.split.i.4
  %i.js = shl i32 %i.ji, 4
  %i.jt = or disjoint i32 %spec.select82.i.4, %i.js ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i59, 5
  br i1 %.not56.i.4, label %.loopexit.i65, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %bb.bg
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 5
  %i.jv = load i8, ptr %i.ju, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.jw = zext i8 %i.jv to i32                    ; 2 uses
  %i.jx = icmp ugt i8 %i.jv, 57
  %i.jy = add nsw i32 %i.jw, -65
  %i.jz = and i32 %i.jy, -33
  %i.ka = add nuw nsw i32 %i.jz, 10
  %i.kb = add nsw i32 %i.jw, -48
  %spec.select82.i.5 = select i1 %i.jx, i32 %i.ka, i32 %i.kb ; 2 uses
  %i.kc = icmp ult i32 %spec.select82.i.5, 16
  br i1 %i.kc, label %bb.bh, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bh:                                            ; preds = %.lr.ph.split.i.5
  %i.kd = shl i32 %i.jt, 4
  %i.ke = or disjoint i32 %spec.select82.i.5, %i.kd ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i59, 6
  br i1 %.not56.i.5, label %.loopexit.i65, label %.lr.ph.split.i.6

.lr.ph.split.i.6:                                 ; preds = %bb.bh
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 6
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.kh = zext i8 %i.kg to i32                    ; 2 uses
  %i.ki = icmp ugt i8 %i.kg, 57
  %i.kj = add nsw i32 %i.kh, -65
  %i.kk = and i32 %i.kj, -33
  %i.kl = add nuw nsw i32 %i.kk, 10
  %i.km = add nsw i32 %i.kh, -48
  %spec.select82.i.6 = select i1 %i.ki, i32 %i.kl, i32 %i.km ; 2 uses
  %i.kn = icmp ult i32 %spec.select82.i.6, 16
  br i1 %i.kn, label %bb.bi, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bi:                                            ; preds = %.lr.ph.split.i.6
  %i.ko = shl i32 %i.ke, 4
  %i.kp = or disjoint i32 %spec.select82.i.6, %i.ko ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i59, 7
  br i1 %.not56.i.6, label %.loopexit.i65, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %bb.bi
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 7
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !1456, !noundef !5 ; 2 uses
  %i.ks = zext i8 %i.kr to i32                    ; 2 uses
  %i.kt = icmp ugt i8 %i.kr, 57
  %i.ku = add nsw i32 %i.ks, -65
  %i.kv = and i32 %i.ku, -33
  %i.kw = add nuw nsw i32 %i.kv, 10
  %i.kx = add nsw i32 %i.ks, -48
  %spec.select82.i.7 = select i1 %i.kt, i32 %i.kw, i32 %i.kx ; 2 uses
  %i.ky = icmp ult i32 %spec.select82.i.7, 16
  br i1 %i.ky, label %bb.bj, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread

bb.bj:                                            ; preds = %.lr.ph.split.i.7
  %i.kz = shl i32 %i.kp, 4
  %i.la = or disjoint i32 %spec.select82.i.7, %i.kz
  br label %.loopexit.i65

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72: ; preds = %.loopexit.i65, %.split.us.i63
  %.sroa.8.0.insert.insert.i57 = phi i64 [ %spec.select.i64, %.split.us.i63 ], [ %i.hh, %.loopexit.i65 ] ; 3 uses
  %i.lb = trunc i64 %.sroa.8.0.insert.insert.i57 to i1
  br i1 %i.lb, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread, label %bb.bo

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread: ; preds = %bb.bb, %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %bb.ay, %bb.az, %bb.az, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72
  %.sroa.8.0.insert.insert.i5782 = phi i64 [ %.sroa.8.0.insert.insert.i57, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72 ], [ 257, %bb.az ], [ 257, %.lr.ph.split.i ], [ 257, %bb.az ], [ 1, %bb.ay ], [ 257, %.lr.ph.split.i.7 ], [ 257, %.lr.ph.split.i.6 ], [ 257, %.lr.ph.split.i.5 ], [ 257, %.lr.ph.split.i.4 ], [ 257, %.lr.ph.split.i.3 ], [ 257, %.lr.ph.split.i.2 ], [ 257, %.lr.ph.split.i.1 ], [ 257, %bb.bb ]
  %.sroa.424.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i5782, 8
  %.sroa.424.0.extract.trunc = trunc i64 %.sroa.424.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %.sroa.424.0.extract.trunc, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1457
  store i64 0, ptr %i.c, align 8, !noalias !1457
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i73, align 8, !noalias !1457
  %.sroa.5.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i74, align 8, !noalias !1457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1457
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.lc, align 8, !noalias !1457
  store ptr %i.c, ptr %i.b, align 8, !noalias !1457
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @138, ptr %i.ld, align 8, !noalias !1457
  %i.le = invoke noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bl unwind label %bb.bk, !noalias !1458

bb.bk:                                            ; preds = %bb.bm, %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %common.resume unwind label %bb.bn, !noalias !1458

bb.bl:                                            ; preds = %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72.thread
  br i1 %i.le, label %bb.bm, label %_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit76, !prof !14

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #20
          to label %.noexc.i75 unwind label %bb.bk, !noalias !1458

.noexc.i75:                                       ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !1458
  unreachable

_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtNtCsf3Ta7LF998c_4core3num5error13ParseIntErrorNtB5_12SpecToString14spec_to_stringCscScJTt9VrQp_6fea_rs.exit76: ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.bo:                                            ; preds = %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit72
  %.sroa.626.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i57, 32
  %.sroa.626.0.extract.trunc = trunc nuw i64 %.sroa.626.0.extract.shift to i32
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.626.0.extract.trunc, ptr %i.lh, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef11base_glyphs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef8nth_item(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef11mark_glyphs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef8nth_item(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef15ligature_glyphs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef8nth_item(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef16component_glyphs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef8nth_item(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1k_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_12GdefClassDef8nth_item(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef range(i64 0, 4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [160 x i8], align 8               ; 17 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [160 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !5
  %i.g = zext i32 %i.f to i64
  store i64 0, ptr %i.b, align 8
  %.sroa.03.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.03.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 0, ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %1, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 1, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.g, ptr %.sroa.44.0..sroa_idx, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread.preheader, label %.preheader

_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread.preheader: ; preds = %bb.b, %bb.a
  br label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.01.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ %2, %bb.a ]
  %i.h = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %.preheader
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i16, ptr %i.i, align 4, !range !13, !alias.scope !1515, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i16, ptr %i.k, align 8, !range !15, !alias.scope !1515
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i16 %i.l, i16 %i.j
  %i.m = icmp eq i16 %.sroa.0.0.i.i.i, 207
  %i.n = sext i1 %i.m to i64
  %.sroa.0.0.i.i = add nsw i64 %.sroa.01.0.i, %i.n ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.o, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread.preheader, label %.preheader

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed17GdefClassDefEntryEBH_.exit: ; preds = %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.t
  %.pn38 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn, %bb.t ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs1k_NtB1h_5typedNtB29_12GdefClassDef8nth_item0EEB1j_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b) #18
          to label %common.resume unwind label %bb.z

.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread, %.preheader, %bb.v, %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed17GdefClassDefEntryEBH_.exit

_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread: ; preds = %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread.preheader, %bb.c
  %i.p = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %.noexc41 unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc41:                                         ; preds = %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread
  %.not.i40 = icmp eq ptr %i.p, null
  br i1 %.not.i40, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i16, ptr %i.q, align 4, !range !13, !alias.scope !1516, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.r, -1            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i16, ptr %i.s, align 8, !range !15, !alias.scope !1516 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i16 %i.t, i16 %i.r
  %.not8.i = icmp eq i16 %.sroa.0.0.i.i.i.i, 207
  br i1 %.not8.i, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBO_4find5checkRNtB5_11NodeOrTokenQNCNvMs1k_NtB5_5typedNtB2H_12GdefClassDef8nth_item0E0INtNtNtBW_3ops12control_flow11ControlFlowB2e_EEB7_.exit, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit.thread

_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBO_4find5checkRNtB5_11NodeOrTokenQNCNvMs1k_NtB5_5typedNtB2H_12GdefClassDef8nth_item0E0INtNtNtBW_3ops12control_flow11ControlFlowB2e_EEB7_.exit: ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  br i1 %.not.i.i.i.i, label %bb.d, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit

bb.d:                                             ; preds = %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBO_4find5checkRNtB5_11NodeOrTokenQNCNvMs1k_NtB5_5typedNtB2H_12GdefClassDef8nth_item0E0INtNtNtBW_3ops12control_flow11ControlFlowB2e_EEB7_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.u = icmp eq i16 %i.t, 207
  br i1 %i.u, label %bb.e, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.v, align 8, !alias.scope !1519
  %i.x = load i32, ptr %i.v, align 8, !alias.scope !1519, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.z = load i8, ptr %i.y, align 2, !range !16, !alias.scope !1519, !noundef !5
  %i.aa = load ptr, ptr %i.p, align 8, !alias.scope !1519, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !1520
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_RNvXs63_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_17GdefClassDefEntryNtB6_7AstNode4cast.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCINvNtNtBU_8adapters6filter15filter_try_foldRNtB5_11NodeOrTokenB1S_INtNtBW_6option6OptionB1S_ENCNvMs1k_NtB5_5typedNtB44_12GdefClassDef8nth_item0NCNvXs_NvBO_10advance_byINtB2t_6FilterB3_B3V_ENtB4Q_13SpecAdvanceBy15spec_advance_by0E0B3u_EB7_.exit: ; preds = %.noexc, %.noexc41, %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBO_4find5checkRNtB5_11NodeOrTokenQNCNvMs1k_NtB5_5typedNtB2H_12GdefClassDef8nth_item0E0INtNtNtBW_3ops12control_flow11ControlFlowB2e_EEB7_.exit, %bb.d
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
          to label %bb.o unwind label %.loopexit.split-lp63.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs63_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_17GdefClassDefEntryNtB6_7AstNode4cast.exit: ; preds = %bb.e
  store ptr %i.aa, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_13GlyphClassDef9class_def:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorEBH_.exit.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterEBF_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterEBF_.exit: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorEBH_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed17GlyphClassLiteralEEB1m_.exit: ; preds = %.noexc15, %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 -1, ptr %i.x, align 8
  br label %bb.f

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @_RNvMs8_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_3Cid5parse(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 23
  %i.d = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.e = add nsw i64 %i.d, -23
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ %i.d, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  switch i64 %.sroa.4.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2131, !noundef !5 ; 2 uses
  switch i8 %i.q, label %bb.h [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2131
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.r = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.q, %bb.g ]
  %cond.i = icmp eq i8 %i.r, 43                   ; 2 uses
  %i.s = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.0, %i.s    ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.t = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.t, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.k
  %.not53.i = icmp eq i64 %i.x, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.bm, %bb.o ], [ 0, %.preheader.i ], [ %i.ao, %bb.l ], [ %i.aw, %bb.m ], [ %i.be, %bb.n ], [ %i.ai, %.preheader58.i ]
  %i.u = zext i16 %.sroa.043.1.i to i32
  %i.v = shl nuw i32 %i.u, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.h, %.preheader58.i
  %.sroa.0.1.i36 = phi ptr [ %i.w, %.preheader58.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %.sroa.15.1.i35 = phi i64 [ %i.x, %.preheader58.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.043.0.i34 = phi i16 [ %i.ai, %.preheader58.i ], [ 0, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i36, i64 1
  %i.x = add nsw i64 %.sroa.15.1.i35, -1          ; 2 uses
  %i.y = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i34, i16 10) ; 2 uses
  %i.z = extractvalue { i16, i1 } %i.y, 0         ; 2 uses
  %i.aa = extractvalue { i16, i1 } %i.y, 1
  %i.ab = load i8, ptr %.sroa.0.1.i36, align 1, !alias.scope !2131, !noundef !5 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %.preheader58.i.preheader
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.k, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.preheader58.i.preheader
  %i.af = add i8 %i.ab, -48
  %i.ag = icmp ult i8 %i.af, 10
  %spec.select.i = select i1 %i.ag, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = trunc nuw nsw i32 %i.ad to i16
  %i.ai = add i16 %i.z, %i.ah                     ; 3 uses
  %i.aj = icmp ult i16 %i.ai, %i.z
  br i1 %i.aj, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !14

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !2131, !noundef !5
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.l, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = trunc nuw nsw i32 %i.am to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !2131, !noundef !5
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.m, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.au = mul nuw nsw i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add nuw nsw i16 %i.au, %i.av            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !2131, !noundef !5
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.n, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.bc = mul nuw i16 %i.aw, 10
  %i.bd = trunc nuw nsw i32 %i.ba to i16
  %i.be = add nuw nsw i16 %i.bc, %i.bd            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !2131, !noundef !5
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.o, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.bk = mul i16 %i.be, 10
  %i.bl = trunc nuw nsw i32 %i.bi to i16
  %i.bm = add i16 %i.bk, %i.bl
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.j
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.j ], [ %i.v, %.loopexit.i ] ; 3 uses
  %i.bn = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bn, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6expectCscScJTt9VrQp_6fea_rs.exit, !prof !25

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.k, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.f, %bb.g, %bb.g, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i6 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.g ], [ 257, %.lr.ph.i ], [ 257, %bb.g ], [ 1, %bb.f ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.i ], [ 513, %bb.k ]
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i6, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #20
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6expectCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  ret i16 %.sroa.5.0.extract.trunc.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_10GlyphRange3end(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  %i.d = zext i32 %i.c to i64
  store i64 0, ptr %i.a, align 8
  %.sroa.04.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.04.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.04.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.04.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.04.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %0, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.04.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 1, ptr %.sroa.04.sroa.6.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 %i.d, ptr %.sroa.45.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 3 uses
  store i8 0, ptr %i.e, align 8
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2c_9SkipWhileppEB6_4next5checkB1c_NCNvMs9_NtB1f_5typedNtB3o_10GlyphRange3end0E0E0B1h_.exit.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2c_9SkipWhileppEB6_4next5checkB1c_NCNvMs9_NtB1f_5typedNtB3o_10GlyphRange3end0E0E0B1h_.exit.i.i.i: ; preds = %bb.a, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3end0Bb_.exit.i.i.i.i.i
  %i.f = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2c_9SkipWhileppEB6_4next5checkB1c_NCNvMs9_NtB1f_5typedNtB3o_10GlyphRange3end0E0E0B1h_.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  %i.g = load i8, ptr %i.e, align 8, !range !16, !alias.scope !2151, !noalias !2152, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3end0Bb_.exit.i.i.i.i.i

_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3end0Bb_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.j = load i16, ptr %i.i, align 4, !range !13, !alias.scope !2150, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i16, ptr %i.k, align 8, !range !15, !alias.scope !2150
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i16 %i.l, i16 %i.j
  %.not.i.i.i.i.i = icmp eq i16 %.sroa.0.0.i.i.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2c_9SkipWhileppEB6_4next5checkB1c_NCNvMs9_NtB1f_5typedNtB3o_10GlyphRange3end0E0E0B1h_.exit.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange3ends_0E0B1h_.exit.i.i: ; preds = %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i
  %i.m = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc20:                                         ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange3ends_0E0B1h_.exit.i.i
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i16, ptr %i.n, align 4, !range !13, !alias.scope !2153, !noundef !5 ; 3 uses
  switch i16 %i.o, label %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i [
    i16 -1, label %bb.d
    i16 28, label %.loopexit24.thread43
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i16, ptr %i.p, align 8, !range !15, !alias.scope !2153, !noundef !5 ; 2 uses
  %i.r = icmp eq i16 %i.q, 28
  br i1 %i.r, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit, label %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i

_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i.i.i = phi i16 [ %i.o, %bb.c ], [ %i.q, %bb.d ]
  %i.s = icmp eq i16 %.sroa.02.0.i.i.i.i, 126
  br i1 %i.s, label %.loopexit24, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange3ends_0E0B1h_.exit.i.i

bb.e:                                             ; preds = %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3end0Bb_.exit.i.i.i.i.i, %bb.b
  store i8 1, ptr %i.e, align 8, !alias.scope !2151, !noalias !2152
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.u = load i16, ptr %i.t, align 4, !range !13, !alias.scope !2154, !noundef !5 ; 3 uses
  switch i16 %i.u, label %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i [
    i16 -1, label %bb.f
    i16 28, label %.loopexit24.thread43
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = load i16, ptr %i.v, align 8, !range !15, !alias.scope !2154, !noundef !5 ; 2 uses
  %i.x = icmp eq i16 %i.w, 28
  br i1 %i.x, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit, label %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i

_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.02.0.i.i.i = phi i16 [ %i.u, %bb.e ], [ %i.w, %bb.f ]
  %i.y = icmp eq i16 %.sroa.02.0.i.i.i, 126
  br i1 %i.y, label %.loopexit24, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange3ends_0E0B1h_.exit.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange3ends_0E0B1h_.exit.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB2c_9SkipWhileppEB6_4next5checkB1c_NCNvMs9_NtB1f_5typedNtB3o_10GlyphRange3end0E0E0B1h_.exit.i.i.i, %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1p_5typedNtB2g_10GlyphRange3end0EEB1r_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #18
          to label %common.resume unwind label %bb.k

.loopexit24:                                      ; preds = %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i
  %i.z = phi i16 [ %i.u, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i ], [ %i.o, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i ]
  %.sroa.0.1.i.ph = phi ptr [ %i.f, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i ], [ %i.m, %_RNCNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10GlyphRange3ends_0Bb_.exit.i.i.i ]
  %.not19 = icmp eq i16 %i.z, -1
  br i1 %.not19, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit, label %.loopexit24.thread43, !prof !25

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit: ; preds = %.noexc, %bb.d, %.noexc20, %bb.f, %.loopexit24
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #19
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit24.thread43:                             ; preds = %bb.c, %bb.e, %.loopexit24
  %.sroa.0.1.i.ph46 = phi ptr [ %.sroa.0.1.i.ph, %.loopexit24 ], [ %i.f, %bb.e ], [ %i.m, %bb.c ]
  %i.aa = load i64, ptr %i.a, align 8, !range !8, !alias.scope !2155, !noundef !5
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1p_5typedNtB2g_10GlyphRange3end0EEB1r_.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit24.thread43
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorEBH_.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorEBH_.exit.i.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1p_5typedNtB2g_10GlyphRange3end0EEB1r_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10skip_while9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1p_5typedNtB2g_10GlyphRange3end0EEB1r_.exit: ; preds = %.loopexit24.thread43, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor6CursorEBH_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.1.i.ph46

bb.j:                                             ; preds = %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10skip_whileINtB6_9SkipWhileNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNCNvMs9_NtB1d_5typedNtB24_10GlyphRange3end0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2E_4find5checkRNtB1d_11NodeOrTokenNCB1Y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3I_EEB1f_.exit
  unreachable

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_10GlyphRange5start(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  %i.d = zext i32 %i.c to i64
  store i64 0, ptr %i.a, align 8
  %.sroa.03.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.03.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %0, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 1, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange5start0E0B1h_.exit.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange5start0E0B1h_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenNCNvMs9_NtB1f_5typedNtB29_10GlyphRange5start0E0B1h_.exit.i.backedge, %bb.a
  %i.e = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

end_hunk_1
begin_hunk_2_@_RNvMsf_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_6Number12parse_signed:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ %i.d, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.e ] ; 5 uses
  switch i64 %.sroa.4.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %.sroa.02.0, align 1, !alias.scope !4348, !noundef !5 ; 2 uses
  switch i8 %i.q, label %bb.h [
    i8 43, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !4348
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.r = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.q, %bb.g ]
  switch i8 %i.r, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  %i.t = add nsw i64 %.sroa.4.0, -1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1 ; 2 uses
  %i.v = add nsw i64 %.sroa.4.0, -1               ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.4.0, 5
  br i1 %i.w, label %.preheader117.i, label %.lr.ph.i

.preheader117.i:                                  ; preds = %bb.j
  %.not104138.i = icmp eq i64 %i.v, 0
  br i1 %.not104138.i, label %.loopexit.i, label %.lr.ph142.i

.loopexit.i:                                      ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %bb.t, %bb.u, %.preheader.i, %.preheader117.i
  %.sroa.085.1.i = phi i16 [ %i.ay, %bb.n ], [ %i.ch, %bb.u ], [ %i.bm, %bb.r ], [ 0, %.preheader.i ], [ 0, %.preheader117.i ], [ %i.br, %bb.s ], [ %i.bz, %bb.t ], [ %i.al, %bb.m ]
  %i.x = zext i16 %.sroa.085.1.i to i32
  %i.y = shl nuw i32 %i.x, 16
  br label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1137.i = phi ptr [ %i.z, %bb.m ], [ %i.u, %bb.j ] ; 3 uses
  %.sroa.26.1136.i = phi i64 [ %i.aa, %bb.m ], [ %i.v, %bb.j ]
  %.sroa.085.0135.i = phi i16 [ %i.al, %bb.m ], [ 0, %bb.j ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1137.i, i64 1
  %i.aa = add nsw i64 %.sroa.26.1136.i, -1        ; 2 uses
  %i.ab = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.0135.i, i16 10) ; 2 uses
  %i.ac = extractvalue { i16, i1 } %i.ab, 0
  %i.ad = extractvalue { i16, i1 } %i.ab, 1
  br i1 %i.ad, label %.loopexit113.sink.split.i, label %bb.k, !prof !14

bb.k:                                             ; preds = %.lr.ph.i
  %i.ae = load i8, ptr %.sroa.0.1137.i, align 1, !alias.scope !4348, !noundef !5
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.l, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ai = trunc nuw nsw i32 %i.ag to i16
  %i.aj = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.ac, i16 %i.ai) ; 2 uses
  %i.ak = extractvalue { i16, i1 } %i.aj, 1
  br i1 %i.ak, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.al = extractvalue { i16, i1 } %i.aj, 0       ; 2 uses
  %.not103.i = icmp eq i64 %i.aa, 0
  br i1 %.not103.i, label %.loopexit.i, label %.lr.ph.i

.loopexit113.sink.split.i:                        ; preds = %.lr.ph.i, %.preheader114.i
  %.sroa.0.3146.lcssa.sink.i = phi ptr [ %.sroa.0.3146.i, %.preheader114.i ], [ %.sroa.0.1137.i, %.lr.ph.i ]
  %.sink189.i = phi i32 [ 513, %.preheader114.i ], [ 769, %.lr.ph.i ]
  %i.am = load i8, ptr %.sroa.0.3146.lcssa.sink.i, align 1, !alias.scope !4348, !noundef !5
  %i.an = add i8 %i.am, -48
  %i.ao = icmp ult i8 %i.an, 10
  %i.ap = select i1 %i.ao, i32 %.sink189.i, i32 257
  br label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit

.lr.ph142.i:                                      ; preds = %.preheader117.i, %bb.n
  %.sroa.0.2141.i = phi ptr [ %i.aw, %bb.n ], [ %i.u, %.preheader117.i ] ; 2 uses
  %.sroa.26.2140.i = phi i64 [ %i.av, %bb.n ], [ %i.v, %.preheader117.i ]
  %.sroa.085.2139.i = phi i16 [ %i.ay, %bb.n ], [ 0, %.preheader117.i ]
  %i.aq = load i8, ptr %.sroa.0.2141.i, align 1, !alias.scope !4348, !noundef !5
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.n, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph142.i
  %i.au = mul i16 %.sroa.085.2139.i, 10
  %i.av = add nsw i64 %.sroa.26.2140.i, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.2141.i, i64 1
  %i.ax = trunc nuw nsw i32 %i.as to i16
  %i.ay = sub i16 %i.au, %i.ax                    ; 2 uses
  %.not104.i = icmp eq i64 %i.av, 0
  br i1 %.not104.i, label %.loopexit.i, label %.lr.ph142.i

bb.o:                                             ; preds = %bb.i, %bb.h
  %.sroa.26.0.i = phi i64 [ %i.t, %bb.i ], [ %.sroa.4.0, %bb.h ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.i ], [ %.sroa.02.0, %bb.h ] ; 4 uses
  %i.az = icmp samesign ult i64 %.sroa.26.0.i, 4
  br i1 %i.az, label %.preheader.i, label %.preheader114.i

.preheader.i:                                     ; preds = %bb.o
  %.not106147.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not106147.i, label %.loopexit.i, label %.lr.ph151.i

.preheader114.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3146.i = phi ptr [ %i.ba, %bb.r ], [ %.sroa.0.0.i, %bb.o ] ; 3 uses
  %.sroa.26.3145.i = phi i64 [ %i.bb, %bb.r ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.085.3144.i = phi i16 [ %i.bm, %bb.r ], [ 0, %bb.o ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.3146.i, i64 1
  %i.bb = add nsw i64 %.sroa.26.3145.i, -1        ; 2 uses
  %i.bc = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.3144.i, i16 10) ; 2 uses
  %i.bd = extractvalue { i16, i1 } %i.bc, 0
  %i.be = extractvalue { i16, i1 } %i.bc, 1
  br i1 %i.be, label %.loopexit113.sink.split.i, label %bb.p, !prof !14

bb.p:                                             ; preds = %.preheader114.i
  %i.bf = load i8, ptr %.sroa.0.3146.i, align 1, !alias.scope !4348, !noundef !5
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.q, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bj = trunc nuw nsw i32 %i.bh to i16
  %i.bk = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.bd, i16 %i.bj) ; 2 uses
  %i.bl = extractvalue { i16, i1 } %i.bk, 1
  br i1 %i.bl, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.bm = extractvalue { i16, i1 } %i.bk, 0       ; 2 uses
  %.not105.i = icmp eq i64 %i.bb, 0
  br i1 %.not105.i, label %.loopexit.i, label %.preheader114.i

.lr.ph151.i:                                      ; preds = %.preheader.i
  %i.bn = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4348, !noundef !5
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -48                  ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 10
  br i1 %i.bq, label %bb.s, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread

bb.s:                                             ; preds = %.lr.ph151.i
  %i.br = trunc nuw nsw i32 %i.bp to i16          ; 2 uses
  %.not106.i = icmp eq i64 %.sroa.26.0.i, 1
  br i1 %.not106.i, label %.loopexit.i, label %.lr.ph151.i.1

.lr.ph151.i.1:                                    ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !4348, !noundef !5
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.t, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread

bb.t:                                             ; preds = %.lr.ph151.i.1
  %i.bx = mul nuw nsw i16 %i.br, 10
  %i.by = trunc nuw nsw i32 %i.bv to i16
  %i.bz = add nuw nsw i16 %i.bx, %i.by            ; 2 uses
  %.not106.i.1 = icmp eq i64 %.sroa.26.0.i, 2
  br i1 %.not106.i.1, label %.loopexit.i, label %.lr.ph151.i.2

.lr.ph151.i.2:                                    ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !4348, !noundef !5
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -48                  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 10
  br i1 %i.ce, label %bb.u, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread

bb.u:                                             ; preds = %.lr.ph151.i.2
  %i.cf = mul nuw i16 %i.bz, 10
  %i.cg = trunc nuw nsw i32 %i.cd to i16
  %i.ch = add nuw nsw i16 %i.cf, %i.cg
  br label %.loopexit.i

_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit113.sink.split.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i32 [ %i.ap, %.loopexit113.sink.split.i ], [ %i.y, %.loopexit.i ] ; 3 uses
  %i.ci = trunc i32 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.ci, label %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultsNtNtNtB4_3num5error13ParseIntErrorE6expectCscScJTt9VrQp_6fea_rs.exit, !prof !25

_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.l, %bb.k, %.lr.ph142.i, %bb.p, %bb.q, %.lr.ph151.i, %.lr.ph151.i.1, %.lr.ph151.i.2, %bb.f, %bb.g, %bb.g, %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit
  %.sroa.12.0.insert.insert.i6 = phi i32 [ %.sroa.12.0.insert.insert.i, %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit ], [ 1, %bb.f ], [ 257, %.lr.ph142.i ], [ 257, %.lr.ph151.i ], [ 257, %bb.g ], [ 257, %bb.g ], [ 257, %bb.p ], [ 257, %.lr.ph151.i.2 ], [ 257, %.lr.ph151.i.1 ], [ 513, %bb.q ], [ 257, %bb.k ], [ 769, %bb.l ]
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.12.0.insert.insert.i6, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #20
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultsNtNtNtB4_3num5error13ParseIntErrorE6expectCscScJTt9VrQp_6fea_rs.exit: ; preds = %_RNvMsn_NtCsf3Ta7LF998c_4core3nums27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.12.0.insert.insert.i, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  ret i16 %.sroa.5.0.extract.trunc.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i16, i16 } @_RNvMsf_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_6Number14parse_unsigned(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.b = icmp samesign ugt i8 %i.a, 23
  %i.c = zext nneg i8 %i.a to i64                 ; 2 uses
  %i.d = add nsw i64 %i.c, -23
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.44.0 = phi i64 [ %i.c, %bb.c ], [ %i.j, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.03.0 = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  switch i64 %.sroa.44.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %.sroa.03.0, align 1, !alias.scope !4351, !noundef !5 ; 2 uses
  switch i8 %i.p, label %bb.h [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %.sroa.03.0, align 1, !alias.scope !4351
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.q = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.p, %bb.g ]
  %cond.i = icmp eq i8 %i.q, 43                   ; 2 uses
  %i.r = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.44.0, %i.r   ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.s = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.s, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.k
  %.not53.i = icmp eq i64 %i.w, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.bl, %bb.o ], [ 0, %.preheader.i ], [ %i.an, %bb.l ], [ %i.av, %bb.m ], [ %i.bd, %bb.n ], [ %i.ah, %.preheader58.i ]
  %i.t = zext i16 %.sroa.043.1.i to i32
  %i.u = shl nuw i32 %i.t, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.h, %.preheader58.i
  %.sroa.0.1.i36 = phi ptr [ %i.v, %.preheader58.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %.sroa.15.1.i35 = phi i64 [ %i.w, %.preheader58.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.043.0.i34 = phi i16 [ %i.ah, %.preheader58.i ], [ 0, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i36, i64 1
  %i.w = add nsw i64 %.sroa.15.1.i35, -1          ; 2 uses
  %i.x = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i34, i16 10) ; 2 uses
  %i.y = extractvalue { i16, i1 } %i.x, 0         ; 2 uses
  %i.z = extractvalue { i16, i1 } %i.x, 1
  %i.aa = load i8, ptr %.sroa.0.1.i36, align 1, !alias.scope !4351, !noundef !5 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %.preheader58.i.preheader
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.k, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.j:                                             ; preds = %.preheader58.i.preheader
  %i.ae = add i8 %i.aa, -48
  %i.af = icmp ult i8 %i.ae, 10
  %spec.select.i = select i1 %i.af, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = trunc nuw nsw i32 %i.ac to i16
  %i.ah = add i16 %i.y, %i.ag                     ; 3 uses
  %i.ai = icmp ult i16 %i.ah, %i.y
  br i1 %i.ai, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit, label %.preheader58.i, !prof !14

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aj = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4351, !noundef !5
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.l, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = trunc nuw nsw i32 %i.al to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !4351, !noundef !5
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.m, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.at = mul nuw nsw i16 %i.an, 10
  %i.au = trunc nuw nsw i32 %i.ar to i16
  %i.av = add nuw nsw i16 %i.at, %i.au            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !4351, !noundef !5
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.n, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.bb = mul nuw i16 %i.av, 10
  %i.bc = trunc nuw nsw i32 %i.az to i16
  %i.bd = add nuw nsw i16 %i.bb, %i.bc            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !4351, !noundef !5
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.o, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.bj = mul i16 %i.bd, 10
  %i.bk = trunc nuw nsw i32 %i.bh to i16
  %i.bl = add i16 %i.bj, %i.bk
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.i, %bb.k, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.f, %bb.g, %bb.g, %.loopexit.i, %bb.j
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.u, %.loopexit.i ], [ 257, %bb.g ], [ 1, %bb.f ], [ 257, %bb.g ], [ %spec.select.i, %bb.j ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.i ], [ 513, %bb.k ] ; 2 uses
  %i.bm = trunc i32 %.sroa.8.0.insert.insert.i to i16
  %not. = and i16 %i.bm, 1
  %. = xor i16 %not., 1
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16
  %.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.5.0.extract.shift to i16
  %i.bn = insertvalue { i16, i16 } poison, i16 %., 0
  %i.bo = insertvalue { i16, i16 } %i.bn, i16 %.sroa.5.0.extract.trunc, 1
  ret { i16, i16 } %i.bo
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMsg_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_5Float11parse_fixed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4356
  %i.c = load i8, ptr %0, align 8, !range !6, !alias.scope !4356, !noundef !5 ; 2 uses
  %i.d = icmp samesign ugt i8 %i.c, 23
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
end_hunk_2
