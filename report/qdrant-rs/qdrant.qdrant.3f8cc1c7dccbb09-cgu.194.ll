Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.194?download=true
inline.NumInlined: 526
inline.NumDeleted: 278
begin_hunk_0_@_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write:bb.a
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !490
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !490, !noundef !5
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !485
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !486 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.cm, %i.co                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !485
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6ChangeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.08 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.08 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.08 ; 2 uses
  %.val = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val5 = load i32, ptr %i.d, align 8, !noundef !5
  %.val6 = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val7 = load i32, ptr %i.e, align 8, !noundef !5
  %i.f = icmp eq i32 %.val5, %.val7
  %i.g = icmp eq i64 %.val, %.val6
  %.sroa.0.0.i.not.i.not = select i1 %i.f, i1 %i.g, i1 false ; 2 uses
  %i.h = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.h, %2
  %or.cond.not = select i1 %.sroa.0.0.i.not.i.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.sroa.0.0.i.not.i.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10shards_apiNtB4_16create_shard_keyNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 37)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 3, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs_NtNtNtCsl8OoimOLbh_6qdrant5actix3api10shards_apiNtB12_16create_shard_keyNtNtB7_7service18HttpServiceFactory8register16create_shard_keyTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB14_14CollectionPathEINtNtB4p_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations11cluster_ops17CreateShardingKeyEINtNtB4p_5query5QueryNtNtB14_15collections_api11WaitTimeoutENtNtB16_4auth9ActixAuthEEB18_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCshE3sgg5Qsfb_6config3env11EnvironmentNtNtB6_6source6Source10collect_toCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias nofree noundef align 16 dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.0 = alloca [72 x i8], align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs_NtCshE3sgg5Qsfb_6config3envNtB4_11EnvironmentNtNtB6_6source6Source7collect(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i64, ptr %i.g, align 8, !range !498, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.h, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(72) %i.f, i64 72, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.510.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  call void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.c, align 16, !range !499, !noalias !500, !noundef !5
  %.not.i = icmp eq i64 %i.k, -1
  br i1 %.not.i, label %_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBN_NCNvYNtNtB1u_3env11EnvironmentNtNtB1u_6source6Source10collect_to0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false), !noalias !500
  invoke void @_RNvNtCshE3sgg5Qsfb_6config6source9set_value(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %bb.h unwind label %bb.e, !noalias !502

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  br label %bb.d

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.j

_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBN_NCNvYNtNtB1u_3env11EnvironmentNtNtB1u_6source6Source10collect_to0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.m, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBN_NCNvYNtNtB1u_3env11EnvironmentNtNtB1u_6source6Source10collect_to0E0ECsl8OoimOLbh_6qdrant.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE8wait_forNCNCNCNvMNtNtB14_10collection14shard_transferNtB2I_10Collection23initiate_shard_transfer00s_0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1a_15ShardReplicaSet8wait_forNCNCNvB19_14wait_for_local00E0bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1a_15ShardReplicaSet8wait_forNCNCNvB19_20wait_for_local_state00E0bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 11) i8 @_RNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_stateNtB2_15ReplicaSetState14get_peer_state(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionError16is_missing_point(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRyNtB6_7Display3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet20add_locally_disabled(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64), i64 noundef, i8 noundef range(i8 -1, 11)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCs6zns41jJLXB_16tonic_reflection9generated18grpc_reflection_v122FileDescriptorResponseNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCs6zns41jJLXB_16tonic_reflection9generated18grpc_reflection_v123ExtensionNumberResponseNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCs6zns41jJLXB_16tonic_reflection9generated18grpc_reflection_v119ListServiceResponseNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCs6zns41jJLXB_16tonic_reflection9generated18grpc_reflection_v113ErrorResponseNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputINtNtB1V_6result6ResultIB2n_DNtNtCsgoPClq0H8JF_9actix_web4data11DataFactoryEL_EuEEL_EEEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureINtB1V_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB36_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB3a_10collection5queryNtB4Q_10Collection31batch_query_shards_concurrently0s_000NCB4H_0EEEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureINtB1V_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB36_15ShardReplicaSet9scroll_by0NCNCNCNCNvMNtNtB3a_10collection9point_opsNtB4N_10Collection9scroll_by0s_000NCB4E_0EEEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB57_6common15operation_error14OperationErrorEEEEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB4t_14TableOfContent11query_batch00NCNvMB4t_B5o_18get_collection_opt0E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB4t_14TableOfContent14discover_batch00NCNvMB4t_B5o_18get_collection_opt0E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB4t_14TableOfContent15recommend_batch00NCNvMB4t_B5o_18get_collection_opt0E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB4t_14TableOfContent5group00NCNvMB4t_B5o_18get_collection_opt0E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB4t_14TableOfContent8discover00NCNvMB4t_B5o_18get_collection_opt0E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB4t_14TableOfContent9recommend00NCNvMB4t_B5o_18get_collection_opt0E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCINvMs_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB2S_16ReferencedPoints13fetch_vectorsNCNCNvMs4_NtNtB2W_10collection15distance_matrixNtB4w_10Collection20search_points_matrix0s4_0NCNCB4m_s4_00E0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB2V_10Collection19do_query_batch_impl000EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB2V_10Collection20query_batch_internal000EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2V_10Collection20do_core_search_batch0s_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB2R_10Collection14do_query_batch0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2R_10Collection17core_search_batch0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2R_10Collection31fill_search_result_with_payload0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2P_15ShardReplicaSet13optimizations0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB2P_11RemoteShard13memory_report0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB2P_11RemoteShard13optimizations0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB2P_14ChannelService20await_commit_on_peer0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB2R_14TableOfContent17core_search_batch0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors38retrieve_points_with_locked_collection0EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB1Z_11ShardHolder15stop_gracefully000EENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1V_15ShardReplicaSet28on_strict_mode_config_update0EENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNvMsb_NtNtCsjZG7hsAZr3B_5tokio4sync9broadcastINtB1Y_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEE4recv0EENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future10try_future6MapErrNCINvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB1T_14ChannelService18with_qdrant_clientINtNtCsgOCJwUSa4vG_5tonic8response8ResponseNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant20GetTelemetryResponseENCNCNCNCNCNvNvXsc_NtNtNtCsl8OoimOLbh_6qdrant5actix3api11cluster_apiNtB5m_21get_cluster_telemetryNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21get_cluster_telemetry00000NCB58_0E0NCB58_s_0EENtB5_7ArcWake4wakeB5s_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4h_IB4h_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB2c_8read_opsB3n_11query_batch00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4l_5boxed3BoxDNtNtNtB6O_6future6future6Futurep6OutputINtNtB6O_6result6ResultB4g_NtNtNtB2g_10operations5types15CollectionErrorENtNtB6O_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4h_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB2c_8read_opsB3n_11core_search00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4l_5boxed3BoxDNtNtNtB6I_6future6future6Futurep6OutputINtNtB6I_6result6ResultB4g_NtNtNtB2g_10operations5types15CollectionErrorENtNtB6I_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2c_8read_opsB3n_8retrieve00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4l_5boxed3BoxDNtNtNtB6V_6future6future6Futurep6OutputINtNtB6V_6result6ResultB4g_NtNtNtB2g_10operations5types15CollectionErrorENtNtB6V_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2c_8read_opsB3n_9scroll_by00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4l_5boxed3BoxDNtNtNtB6W_6future6future6Futurep6OutputINtNtB6W_6result6ResultB4g_NtNtNtB2g_10operations5types15CollectionErrorENtNtB6W_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2g_10operations5types11CountResultNCNCNvMNtB2c_8read_opsB3n_5count00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5T_6future6future6Futurep6OutputINtNtB5T_6result6ResultB4g_NtB4i_15CollectionErrorENtNtB5T_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2g_10operations5types14CollectionInfoNCNCNvMNtB2c_8read_opsB3n_4info00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5V_6future6future6Futurep6OutputINtNtB5V_6result6ResultB4g_NtB4i_15CollectionErrorENtNtB5V_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherINtNtB1i_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2c_15ShardReplicaSet30execute_cluster_read_operationNtNtNtCs607s0NAIaWN_7segment10data_types6facets13FacetResponseNCNCNvMNtB2c_8read_opsB3n_5facet00E0s_0NCB24_s0_0EIB1J_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB6e_6future6future6Futurep6OutputINtNtB6e_6result6ResultB4g_NtNtNtB2g_10operations5types15CollectionErrorENtNtB6e_6marker4SendEL_EENCNCB24_s2_00EEENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskINtNtNtBb_6future6either6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1R_15ShardReplicaSet11update_impl0s1_0NCNCB1K_s0_00EENtB5_7ArcWake4wakeCsl8OoimOLbh_6qdrant(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!302 = !{!301, !299}
!303 = distinct !{!303, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2r_15ShardReplicaSet5count0EEECsl8OoimOLbh_6qdrant"}
!304 = distinct !{!304, !303, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2r_15ShardReplicaSet5count0EEECsl8OoimOLbh_6qdrant: argument 0"}
!305 = distinct !{!305, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB1Y_15ShardReplicaSet5count0EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!306 = distinct !{!306, !305, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB1Y_15ShardReplicaSet5count0EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!307 = !{!306, !304}
!308 = distinct !{!308, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2r_15ShardReplicaSet5facet0EEECsl8OoimOLbh_6qdrant"}
!309 = distinct !{!309, !308, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2r_15ShardReplicaSet5facet0EEECsl8OoimOLbh_6qdrant: argument 0"}
!310 = distinct !{!310, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB1Y_15ShardReplicaSet5facet0EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant"}
!311 = distinct !{!311, !310, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB1Y_15ShardReplicaSet5facet0EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant: argument 0"}
!312 = !{!311, !309}
!313 = distinct !{!313, i1 true, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer24serialize_struct_variantCsl8OoimOLbh_6qdrant"}
!314 = distinct !{!314, !313, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer24serialize_struct_variantCsl8OoimOLbh_6qdrant: argument 1"}
!315 = distinct !{!315, !313, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer24serialize_struct_variantCsl8OoimOLbh_6qdrant: argument 0"}
!316 = distinct !{!316, i1 true, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant"}
!317 = distinct !{!317, !316, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant: argument 1"}
!318 = distinct !{!318, !316, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_mapCsl8OoimOLbh_6qdrant: argument 0"}
!319 = !{!314}
!320 = !{!315, !314}
!321 = !{!315}
!322 = !{!317}
!323 = !{!317, !314}
!324 = !{!318, !317, !315}
!325 = !{i8 0, i8 3}
!326 = distinct !{!326, i1 true, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer23serialize_tuple_variantCsl8OoimOLbh_6qdrant"}
!327 = distinct !{!327, !326, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer23serialize_tuple_variantCsl8OoimOLbh_6qdrant: argument 1"}
!328 = distinct !{!328, !326, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer23serialize_tuple_variantCsl8OoimOLbh_6qdrant: argument 0"}
!329 = distinct !{!329, i1 true, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant"}
!330 = distinct !{!330, !329, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant: argument 1"}
!331 = distinct !{!331, !329, !"_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_seqCsl8OoimOLbh_6qdrant: argument 0"}
!332 = distinct !{!332, i1 true, !"_RINvXs5_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant15serialize_fieldmECsl8OoimOLbh_6qdrant"}
!333 = distinct !{!333, !332, !"_RINvXs5_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant15serialize_fieldmECsl8OoimOLbh_6qdrant: argument 0"}
!334 = distinct !{!334, i1 true, !"_RINvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq17serialize_elementmECsl8OoimOLbh_6qdrant"}
!335 = distinct !{!335, !334, !"_RINvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq17serialize_elementmECsl8OoimOLbh_6qdrant: argument 0"}
!336 = distinct !{!336, i1 true, !"_RINvXs5_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant15serialize_fieldyECsl8OoimOLbh_6qdrant"}
!337 = distinct !{!337, !336, !"_RINvXs5_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant15serialize_fieldyECsl8OoimOLbh_6qdrant: argument 0"}
!338 = distinct !{!338, i1 true, !"_RINvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq17serialize_elementyECsl8OoimOLbh_6qdrant"}
!339 = distinct !{!339, !338, !"_RINvXs2_NtCs8O45qwFIwQX_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs4NSHK7GLW4I_10serde_core3ser12SerializeSeq17serialize_elementyECsl8OoimOLbh_6qdrant: argument 0"}
!340 = !{!327}
!341 = !{!328, !327}
!342 = !{!328}
!343 = !{!330}
!344 = !{!330, !327}
!345 = !{!331, !330, !328}
!346 = !{!335, !333}
!347 = !{!339, !337}
!348 = distinct !{!348, i1 true, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer23serialize_tuple_variantCsl8OoimOLbh_6qdrant"}
!349 = distinct !{!349, !348, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer23serialize_tuple_variantCsl8OoimOLbh_6qdrant: argument 1"}
!350 = distinct !{!350, !348, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer23serialize_tuple_variantCsl8OoimOLbh_6qdrant: argument 0"}
!351 = distinct !{!351, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant"}
!352 = distinct !{!352, !351, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 1"}
!353 = distinct !{!353, !351, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!354 = distinct !{!354, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!355 = distinct !{!355, !354, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!356 = distinct !{!356, !354, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!357 = distinct !{!357, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!358 = distinct !{!358, !357, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!359 = distinct !{!359, !357, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!360 = distinct !{!360, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant"}
!361 = distinct !{!361, !360, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 1"}
!362 = distinct !{!362, !360, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!363 = distinct !{!363, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!364 = distinct !{!364, !363, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!365 = distinct !{!365, !363, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!366 = distinct !{!366, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!367 = distinct !{!367, !366, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!368 = distinct !{!368, !366, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!369 = distinct !{!369, i1 true, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant"}
!370 = distinct !{!370, !369, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant: argument 1"}
!371 = distinct !{!371, !369, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant: argument 0"}
!372 = distinct !{!372, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant"}
!373 = distinct !{!373, !372, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 1"}
!374 = distinct !{!374, !372, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!375 = distinct !{!375, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!376 = distinct !{!376, !375, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!377 = distinct !{!377, !375, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!378 = distinct !{!378, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!379 = distinct !{!379, !378, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!380 = distinct !{!380, !378, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!381 = distinct !{!381, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant"}
!382 = distinct !{!382, !381, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 1"}
!383 = distinct !{!383, !381, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!384 = distinct !{!384, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!385 = distinct !{!385, !384, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!386 = distinct !{!386, !384, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!387 = distinct !{!387, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!388 = distinct !{!388, !387, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!389 = distinct !{!389, !387, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!390 = distinct !{!390, i1 true, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant"}
!391 = distinct !{!391, !390, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant: argument 1"}
!392 = distinct !{!392, !390, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_strCsl8OoimOLbh_6qdrant: argument 0"}
!393 = distinct !{!393, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant"}
!394 = distinct !{!394, !393, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 1"}
!395 = distinct !{!395, !393, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!396 = distinct !{!396, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!397 = distinct !{!397, !396, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!398 = distinct !{!398, !396, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!399 = distinct !{!399, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!400 = distinct !{!400, !399, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!401 = distinct !{!401, !399, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!402 = distinct !{!402, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant"}
!403 = distinct !{!403, !402, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 1"}
!404 = distinct !{!404, !402, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!405 = distinct !{!405, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!406 = distinct !{!406, !405, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!407 = distinct !{!407, !405, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!408 = distinct !{!408, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!409 = distinct !{!409, !408, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!410 = distinct !{!410, !408, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!411 = distinct !{!411, i1 true, !"_RINvXs2_NtCs8jn5zD2RXga_10serde_cbor3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant15serialize_fieldyECsl8OoimOLbh_6qdrant"}
!412 = distinct !{!412, !411, !"_RINvXs2_NtCs8jn5zD2RXga_10serde_cbor3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant15serialize_fieldyECsl8OoimOLbh_6qdrant: argument 0"}
!413 = distinct !{!413, i1 true, !"_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant"}
!414 = distinct !{!414, !413, !"_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant: argument 0"}
!415 = distinct !{!415, i1 true, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant"}
!416 = distinct !{!416, !415, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant: argument 0"}
!417 = distinct !{!417, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u64Csl8OoimOLbh_6qdrant"}
!418 = distinct !{!418, !417, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u64Csl8OoimOLbh_6qdrant: argument 0"}
!419 = distinct !{!419, !413, !"_RINvXsL_NtNtCs4NSHK7GLW4I_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant: argument 1"}
!420 = distinct !{!420, !415, !"_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant: argument 1"}
!421 = distinct !{!421, !417, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u64Csl8OoimOLbh_6qdrant: argument 1"}
!422 = distinct !{!422, i1 true, !"_RNvXs2_NtCs8jn5zD2RXga_10serde_cbor3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant3endCsl8OoimOLbh_6qdrant"}
!423 = distinct !{!423, !422, !"_RNvXs2_NtCs8jn5zD2RXga_10serde_cbor3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser21SerializeTupleVariant3endCsl8OoimOLbh_6qdrant: argument 0"}
!424 = !{!349}
!425 = !{i8 0, i8 2}
!426 = !{!359, !358, !356, !355, !353, !352, !350, !349}
!427 = !{!359, !356, !353, !350}
!428 = !{!368, !367, !365, !364, !362, !361, !350, !349}
!429 = !{!368, !365, !362, !350}
!430 = !{!380, !379, !377, !376, !374, !373, !371, !370, !350, !349}
!431 = !{!380, !377, !374, !371, !350}
!432 = !{!370, !350, !349}
!433 = !{!371, !370, !350, !349}
!434 = !{!371, !350}
!435 = !{!389, !388, !386, !385, !383, !382, !350, !349}
!436 = !{!389, !386, !383, !350}
!437 = !{!388, !385, !382, !350, !349}
!438 = !{!401, !400, !398, !397, !395, !394, !392, !391, !350, !349}
!439 = !{!401, !398, !395, !392, !350}
!440 = !{!350, !349}
!441 = !{!392, !391, !350, !349}
!442 = !{!392, !350}
!443 = !{!410, !409, !407, !406, !404, !403, !350, !349}
!444 = !{!410, !407, !404, !350}
!445 = !{!412}
!446 = !{!414}
!447 = !{!416}
!448 = !{!418}
!449 = !{!418, !421, !416, !420, !414, !419, !412}
!450 = !{!418, !416, !414, !412}
!451 = !{!421, !420, !419}
!452 = !{!423}
!453 = distinct !{!453, i1 true, !"_RINvXs3_NtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_6ChangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant"}
!454 = distinct !{!454, !453, !"_RINvXs3_NtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_6ChangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant: argument 0"}
!455 = distinct !{!455, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u32Csl8OoimOLbh_6qdrant"}
!456 = distinct !{!456, !455, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u32Csl8OoimOLbh_6qdrant: argument 0"}
!457 = distinct !{!457, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Csl8OoimOLbh_6qdrant"}
!458 = distinct !{!458, !457, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Csl8OoimOLbh_6qdrant: argument 0"}
!459 = !{!456, !454}
!460 = !{!458, !454}
!461 = distinct !{!461, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant"}
!462 = distinct !{!462, !461, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 0"}
!463 = distinct !{!463, !461, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u16Csl8OoimOLbh_6qdrant: argument 1"}
!464 = distinct !{!464, i1 true, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant"}
!465 = distinct !{!465, !464, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 0"}
!466 = distinct !{!466, !464, !"_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8write_u8Csl8OoimOLbh_6qdrant: argument 1"}
!467 = !{!462}
!468 = !{!462, !463}
!469 = !{!465}
!470 = !{!465, !466, !462, !463}
!471 = !{!465, !462}
!472 = !{!466, !463}
!473 = !{!463}
!474 = distinct !{!474, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant"}
!475 = distinct !{!475, !474, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant: argument 0"}
!476 = distinct !{!476, !474, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant: argument 1"}
!477 = distinct !{!477, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!478 = distinct !{!478, !477, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!479 = distinct !{!479, i1 true, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!480 = distinct !{!480, !479, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!481 = distinct !{!481, i1 true, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!482 = distinct !{!482, !481, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!483 = distinct !{!483, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!484 = distinct !{!484, !483, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!485 = !{!475}
!486 = !{!476}
!487 = !{!478, !476}
!488 = !{!480, !475}
!489 = !{!482, !475}
!490 = !{!484, !476}
!491 = distinct !{!491, i1 true, !"_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBN_NCNvYNtNtB1u_3env11EnvironmentNtNtB1u_6source6Source10collect_to0E0ECsl8OoimOLbh_6qdrant"}
!492 = distinct !{!492, !491, !"_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBN_NCNvYNtNtB1u_3env11EnvironmentNtNtB1u_6source6Source10collect_to0E0ECsl8OoimOLbh_6qdrant: argument 1"}
!493 = distinct !{!493, !491, !"_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBN_NCNvYNtNtB1u_3env11EnvironmentNtNtB1u_6source6Source10collect_to0E0ECsl8OoimOLbh_6qdrant: argument 0"}
!494 = distinct !{!494, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENCNvYNtNtB1W_3env11EnvironmentNtNtB1W_6source6Source10collect_to0E0Csl8OoimOLbh_6qdrant"}
!495 = distinct !{!495, !494, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueENCNvYNtNtB1W_3env11EnvironmentNtNtB1W_6source6Source10collect_to0E0Csl8OoimOLbh_6qdrant: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNCNvYNtNtCshE3sgg5Qsfb_6config3env11EnvironmentNtNtB8_6source6Source10collect_to0Csl8OoimOLbh_6qdrant"}
!497 = distinct !{!497, !496, !"_RNCNvYNtNtCshE3sgg5Qsfb_6config3env11EnvironmentNtNtB8_6source6Source10collect_to0Csl8OoimOLbh_6qdrant: argument 0"}
!498 = !{i64 -2, i64 -9223372036854775800}
!499 = !{i64 -1, i64 -9223372036854775808}
!500 = !{!493, !492}
!501 = !{!497, !495, !493, !492}
!502 = !{!497, !495}
end_hunk_1
