Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.020?download=true
inline.NumInlined: 462
inline.NumDeleted: 138
begin_hunk_0_@_RNvXsj_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema12FormulaQueryE4from:bb.a
bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7FormulaE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(464) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [416 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %.not = icmp eq i64 %.sroa.0.0.copyload, -3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i64 400, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %.sroa.65.0..sroa_idx6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsm_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionE8try_from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %i.g)
          to label %bb.f unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 25)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !range !19, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.544.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.l, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.f) #15
          to label %.thread unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB3u_7formula15FormulaInternalINtNtB6_7convert7TryFromNtB2F_7FormulaE8try_froms_0ETB21_NtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B6l_IB6j_INtB19_7HashMapB21_B5B_EB6F_EINtNtNtB4_6traits7collect12FromIteratorIB6j_B5w_B6F_EE9from_iterBQ_E0B7A_EB3w_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.c)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.o:                                             ; preds = %bb.p, %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.thread:                                          ; preds = %bb.p, %bb.i
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.p ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %.pn53

bb.p:                                             ; preds = %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 5 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 5 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 5 uses
  %i.ae = alloca [64 x i8], align 8               ; 4 uses
  %i.af = alloca [64 x i8], align 8               ; 5 uses
  %i.ag = alloca [64 x i8], align 8               ; 4 uses
  %i.ah = alloca [64 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [64 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !6 ; 3 uses
  %i.ao = icmp ne i64 %i.an, -9223372036854775805
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = xor i64 %i.an, -9223372036854775808
  %i.aq = icmp slt i64 %i.an, 0
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 3
  switch i64 %i.ar, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load float, ptr %i.as, align 8, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.at, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !align !8, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load <2 x double>, ptr %i.ba, align 8
  store <2 x double> %i.bc, ptr %i.bb, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bk = load i64, ptr %i.bh, align 8, !range !16, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bn = icmp ult i64 %i.bm, 144115188075855872
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bj, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.bo, ptr %.sroa.6.0..sroa_idx, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1f_7convert4FromB2l_E4fromEB3b_EB3h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bs = load i64, ptr %i.bp, align 8, !range !16, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.bv = icmp ult i64 %i.bu, 144115188075855872
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %i.bu
  store ptr %i.br, ptr %i.al, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.br, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.bs, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.bw, ptr %.sroa.64.0..sroa_idx, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1f_7convert4FromB2l_E4fromEB3b_EB3h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.by, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.aj)
          to label %bb.x unwind label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.ca, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.ae unwind label %bb.ad

bb.m:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.cg = load i32, ptr %i.cb, align 8, !range !17, !noundef !6
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ci = load float, ptr %i.ch, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ag)
          to label %bb.ak unwind label %bb.aj

bb.n:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ck, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ac)
          to label %bb.ax unwind label %bb.aw

bb.o:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.z)
          to label %bb.bd unwind label %bb.bc

bb.p:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.cq, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.v)
          to label %bb.br unwind label %bb.bq

bb.q:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.t)
          to label %bb.bx unwind label %bb.bw

bb.r:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.cd unwind label %bb.cc

bb.s:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !align !8, !noundef !6 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i32, ptr %i.da, align 8, !range !17, !noundef !6
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = load i32, ptr %i.cv, align 8, !range !17, !noundef !6
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dg = load float, ptr %i.df, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.cx, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.m)
          to label %bb.cj unwind label %bb.ci

bb.t:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !align !8, !noundef !6 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !range !17, !noundef !6
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = load i32, ptr %i.dh, align 8, !range !17, !noundef !6
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ds = load float, ptr %i.dr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.j)
          to label %bb.cw unwind label %bb.cv

bb.u:                                             ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !align !8, !noundef !6 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !range !17, !noundef !6
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = load i32, ptr %i.dt, align 8, !range !17, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ee = load float, ptr %i.ed, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.dj unwind label %bb.di

bb.v:                                             ; preds = %bb.du, %bb.dh, %bb.cu, %bb.ch, %bb.cb, %bb.bv, %bb.bn, %bb.bb, %bb.au, %bb.ai, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void

bb.w:                                             ; preds = %bb.k
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.x:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !503
  %i.eg = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !503 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.y, label %bb.ab, !prof !18

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ak) #15
          to label %.body63 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eg, ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %i.ek, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.ac:                                            ; preds = %.thread160, %.thread165, %.thread170, %.body118, %.body111, %.body104, %bb.bp, %.body48, %.thread, %.body57
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body63:                                          ; preds = %bb.w, %bb.z, %.thread170, %.body118, %.thread165, %.body111, %.thread160, %.body104, %bb.cc, %bb.cf, %bb.bw, %bb.bz, %bb.bq, %bb.bt, %bb.bp, %bb.bo, %bb.aw, %bb.az, %bb.ad, %bb.ag, %bb.av
  %.sink = phi ptr [ %i.dj, %.thread165 ], [ %i.cx, %.thread160 ], [ %i.cu, %bb.cc ], [ %i.cs, %bb.bw ], [ %i.cq, %bb.bq ], [ %i.co, %bb.bp ], [ %i.ck, %bb.aw ], [ %i.ca, %bb.ad ], [ %i.cd, %bb.av ], [ %i.dv, %.thread170 ], [ %i.ca, %bb.ag ], [ %i.ck, %bb.az ], [ %i.co, %bb.bo ], [ %i.cq, %bb.bt ], [ %i.cs, %bb.bz ], [ %i.cu, %bb.cf ], [ %i.cx, %.body104 ], [ %i.dj, %.body111 ], [ %i.dv, %.body118 ], [ %i.by, %bb.z ], [ %i.by, %bb.w ]
  %.pn31 = phi { ptr, i32 } [ %eh.lpad-body34, %.thread165 ], [ %eh.lpad-body37, %.thread160 ], [ %i.gk, %bb.cc ], [ %i.ge, %bb.bw ], [ %i.fy, %bb.bq ], [ %.pn27.ph, %bb.bp ], [ %i.fg, %bb.aw ], [ %i.em, %bb.ad ], [ %.pn29153, %bb.av ], [ %eh.lpad-body, %.thread170 ], [ %i.ep, %bb.ag ], [ %i.fj, %bb.az ], [ %eh.lpad-body49, %bb.bo ], [ %i.gb, %bb.bt ], [ %i.gh, %bb.bz ], [ %i.gn, %bb.cf ], [ %eh.lpad-body.i, %.body104 ], [ %eh.lpad-body.i109, %.body111 ], [ %eh.lpad-body.i116, %.body118 ], [ %i.ei, %bb.z ], [ %i.ef, %bb.w ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 64, i64 noundef 8) #14
  resume { ptr, i32 } %.pn31

bb.ad:                                            ; preds = %bb.l
end_hunk_0
