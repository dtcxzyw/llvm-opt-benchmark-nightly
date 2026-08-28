Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-a6df2c06781ea95b.yara_x_proto.f1622c5365b6210a-cgu.15?download=true
inline.NumInlined: 146
inline.NumDeleted: 69
begin_hunk_0_@_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBN_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCskIStwd7HrDO_12yara_x_proto:bb.a
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !123, !noundef !5
  %i.ay = and i8 %i.ax, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = load i64, ptr %i.d, align 8, !alias.scope !118, !noalias !121, !noundef !5
  %i.bd = and i64 %i.bc, %i.bb
  store i8 %i.f, ptr %i.aw, align 1, !noalias !123
  %i.be = getelementptr i8, ptr %i.av, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store i8 %i.f, ptr %i.bf, align 1, !noalias !123
  %i.bg = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !118, !noalias !121
  %i.bh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.az, i64 0
  %i.bi = sub <2 x i64> %i.bg, %i.bh
  store <2 x i64> %i.bi, ptr %i.ba, align 8, !alias.scope !118, !noalias !121
  %i.bj = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bk = getelementptr inbounds [48 x i8], ptr %i.av, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #19
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #19
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBK_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIStwd7HrDO_12yara_x_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEENtNtB1E_5clone5Clone5cloneCskIStwd7HrDO_12yara_x_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs1_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs1_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !124, !noundef !5 ; 2 uses
  %i.b = add nsw i64 %i.a, -3
  %i.c = icmp samesign ugt i64 %i.a, 2
  %i.d = select i1 %i.c, i64 %i.b, i64 10
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
  ], !prof !125

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !5
  %i.g = load i64, ptr %1, align 8, !range !124, !noundef !5
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = load i64, ptr %1, align 8, !range !124, !noundef !5
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !noundef !5
  %i.o = load i64, ptr %1, align 8, !range !124, !noundef !5
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = load i64, ptr %1, align 8, !range !124, !noundef !5
  %i.t = icmp eq i64 %i.s, 6
  br i1 %i.t, label %bb.p, label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !126, !noundef !5
  %i.w = load i64, ptr %1, align 8, !range !124, !noundef !5
  %i.x = icmp eq i64 %i.w, 9
  br i1 %i.x, label %bb.r, label %switch.lookup

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = load i64, ptr %1, align 8, !range !124, !noundef !5
  %i.ad = icmp eq i64 %i.ac, 10
  br i1 %i.ad, label %bb.s, label %bb.t

bb.i:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.sroa.01.0 = phi i32 [ %i.af, %bb.i ], [ 0, %bb.c ]
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.f, i32 %.sroa.01.0)
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %bb.t, %bb.q, %bb.o, %bb.m, %bb.j
  %.sroa.0.0 = phi i8 [ %i.ag, %bb.j ], [ %i.aj, %bb.m ], [ %i.am, %bb.o ], [ %i.ap, %bb.q ], [ %i.bb, %bb.t ], [ %i.as, %switch.lookup ]
  ret i8 %.sroa.0.0

bb.l:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l
  %.sroa.03.0 = phi i64 [ %i.ai, %bb.l ], [ 0, %bb.d ]
  %i.aj = tail call i8 @llvm.ucmp.i8.i64(i64 %i.j, i64 %.sroa.03.0)
  br label %bb.k

bb.n:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !noundef !5
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.n
  %.sroa.06.0 = phi i32 [ %i.al, %bb.n ], [ 0, %bb.e ]
  %i.am = tail call i8 @llvm.scmp.i8.i32(i32 %i.n, i32 %.sroa.06.0)
  br label %bb.k

bb.p:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.p
  %.sroa.09.0 = phi i64 [ %i.ao, %bb.p ], [ 0, %bb.f ]
  %i.ap = tail call i8 @llvm.scmp.i8.i64(i64 %i.r, i64 %.sroa.09.0)
  br label %bb.k

bb.r:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !range !126, !noundef !5
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.g, %bb.r
  %.sroa.012.0 = phi i8 [ %i.ar, %bb.r ], [ 0, %bb.g ]
  %i.as = sub nsw i8 %i.v, %.sroa.012.0
  br label %bb.k

bb.s:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  br label %bb.t

bb.t:                                             ; preds = %bb.h, %bb.s
  %.sroa.315.0 = phi i64 [ %i.aw, %bb.s ], [ 0, %bb.h ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.au, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %.sroa.315.0)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.z, ptr nonnull %.sroa.014.0, i64 %spec.store.select) ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.ab, %.sroa.315.0
  %spec.select = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !41, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs15_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsg2CeFYmfPbl_8protobuf7special13SpecialFieldsNtB6_5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !41, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !127
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 14, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCskIStwd7HrDO_12yara_x_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !130
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !130
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCskIStwd7HrDO_12yara_x_proto4yara8AclEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 112                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !133
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !133
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCskIStwd7HrDO_12yara_x_proto9test_json10SubMessageENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 96                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !136
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCskIStwd7HrDO_12yara_x_proto9test_yaml10SubMessageENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 96                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !139
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !139
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECskIStwd7HrDO_12yara_x_proto.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECskIStwd7HrDO_12yara_x_proto.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.i, %.body.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECskIStwd7HrDO_12yara_x_proto(ptr nonnull %0) #19
  resume { ptr, i32 } %eh.lpad-body.i

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i.i
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i
  %.sroa.0.0.i29 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.0.i29 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.0.0.i29, 1       ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto.exit.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph31
  %i.ah = add i64 %.sroa.0.1.i30, 1               ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph31

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIStwd7HrDO_12yara_x_proto.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
end_hunk_0
