Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.15?download=true
inline.NumInlined: 225
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs3f36owOmepS_6quiche3tls16set_write_secret:bb.a
    #dbg_value(ptr %3, !11450, !DIExpression(), !11477)
    #dbg_value(i64 %4, !11451, !DIExpression(), !11477)
    #dbg_declare(ptr poison, !11473, !DIExpression(), !11479)
    #dbg_value(ptr poison, !11480, !DIExpression(), !11485)
    #dbg_value(i8 0, !11487, !DIExpression(), !11496)
    #dbg_declare(ptr poison, !11490, !DIExpression(), !11498)
    #dbg_value(i8 0, !11499, !DIExpression(), !11503)
    #dbg_value(i8 0, !11507, !DIExpression(), !11511)
    #dbg_declare(ptr poison, !11490, !DIExpression(), !11516)
    #dbg_value(i8 2, !11521, !DIExpression(), !11525)
    #dbg_value(i8 2, !11527, !DIExpression(), !11531)
    #dbg_value(i64 2, !11533, !DIExpression(), !11537)
    #dbg_value(i64 2, !11539, !DIExpression(), !11543)
    #dbg_value(i8 1, !11521, !DIExpression(), !11545)
    #dbg_value(i8 1, !11527, !DIExpression(), !11547)
    #dbg_value(i64 1, !11533, !DIExpression(), !11550)
    #dbg_value(i64 1, !11539, !DIExpression(), !11553)
    #dbg_value(i8 2, !11521, !DIExpression(), !11556)
    #dbg_value(i8 2, !11527, !DIExpression(), !11558)
    #dbg_value(i64 2, !11533, !DIExpression(), !11561)
    #dbg_value(i64 2, !11539, !DIExpression(), !11564)
    #dbg_value(i8 0, !11521, !DIExpression(), !11567)
    #dbg_value(i8 0, !11527, !DIExpression(), !11569)
    #dbg_value(i64 0, !11533, !DIExpression(), !11572)
    #dbg_value(i64 0, !11539, !DIExpression(), !11575)
    #dbg_value(ptr %0, !9949, !DIExpression(), !11578)
    #dbg_value(ptr %0, !9957, !DIExpression(), !11580)
    #dbg_value(ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, !9968, !DIExpression(), !11582)
    #dbg_value(ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, !9973, !DIExpression(), !11584)
    #dbg_value(ptr poison, !7174, !DIExpression(), !11586)
    #dbg_value(ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, !7182, !DIExpression(), !11586)
    #dbg_declare(ptr %i.b, !7183, !DIExpression(), !11588)
    #dbg_value(i8 2, !7188, !DIExpression(), !11589)
    #dbg_value(ptr poison, !7204, !DIExpression(), !11592)
    #dbg_value(ptr poison, !7195, !DIExpression(), !11593)
    #dbg_value(ptr poison, !7208, !DIExpression(), !11594)
    #dbg_value(i8 2, !7214, !DIExpression(), !11594)
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, i64 8) acquire, align 8, !dbg !11596
  %i.i = icmp eq i32 %i.h, 0, !dbg !11597
  br i1 %i.i, label %bb.d, label %bb.b, !dbg !11598, !prof !7220

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11599
  store ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, ptr %i.b, align 8, !dbg !11600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11601
  store ptr %i.b, ptr %i.a, align 8, !dbg !11601
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc unwind label %bb.c, !dbg !11602

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11604
  br label %bb.d, !dbg !11604

bb.c:                                             ; preds = %bb.b, %bb.n, %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !dbg !11605
  unreachable, !dbg !11605

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.k = load i32, ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, align 8, !dbg !11606, !noundef !30
    #dbg_value(i32 %i.k, !9962, !DIExpression(), !11580)
  %i.l = call noundef align 16 ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef %i.k) #21, !dbg !11607 ; 4 uses
  %.not = icmp eq ptr %i.l, null, !dbg !11608
  br i1 %.not, label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, label %bb.e, !dbg !11609

_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit: ; preds = %bb.l, %bb.i, %bb.p, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6crypto4SealEEB11_.exit, %bb.d
  %.sroa.0.0 = phi i32 [ 1, %bb.m ], [ 0, %bb.d ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6crypto4SealEEB11_.exit ], [ 0, %bb.p ], [ 0, %bb.i ], [ 0, %bb.l ], !dbg !11477
  ret i32 %.sroa.0.0, !dbg !11610

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.l, !11452, !DIExpression(), !11611)
    #dbg_value(i64 5, !11456, !DIExpression(), !11612)
    #dbg_value(ptr poison, !11483, !DIExpression(), !11613)
    #dbg_value(ptr poison, !11483, !DIExpression(), !11614)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !11510, !DIExpression(), !11511)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !3196, !DIExpression(), !11615)
    #dbg_value(i8 0, !3202, !DIExpression(), !11615)
  %i.m = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !11617 ; 2 uses
  %i.n = icmp ult i64 %i.m, 6, !dbg !11618
  call void @llvm.assume(i1 %i.n), !dbg !11618
    #dbg_value(ptr poison, !11484, !DIExpression(), !11619)
    #dbg_value(i8 poison, !11494, !DIExpression(), !11620)
    #dbg_value(i8 poison, !11502, !DIExpression(), !11621)
    #dbg_value(i8 poison, !11493, !DIExpression(), !11626)
  %i.o = icmp samesign ugt i64 %i.m, 4, !dbg !11627
  br i1 %i.o, label %bb.f, label %bb.g, !dbg !11486

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 256, !dbg !11486
    #dbg_value(ptr %i.p, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11628)
    #dbg_value(ptr %i.g, !11459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11629
  store ptr %i.p, ptr %i.f, align 8, !dbg !11629
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11629
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs3f36owOmepS_6quiche, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !11629
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !11629
  store ptr %i.g, ptr %i.q, align 8, !dbg !11629
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !11629
  store ptr @_RNvXs6_NtCs3f36owOmepS_6quiche6cryptoNtB5_5LevelNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !11629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11486
  store ptr @8, ptr %i.e, align 8, !dbg !11486
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11486
  store i64 11, ptr %i.r, align 8, !dbg !11486
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !11486
  store ptr @8, ptr %i.s, align 8, !dbg !11486
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !11486
  store i64 11, ptr %i.t, align 8, !dbg !11486
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !11486
  store ptr @39, ptr %i.u, align 8, !dbg !11486
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs3f36owOmepS_6quiche(ptr noundef nonnull @38, ptr noundef nonnull %i.f, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.h unwind label %bb.c, !dbg !11486

bb.g:                                             ; preds = %bb.e, %bb.h
  %i.v = load i32, ptr %i.g, align 4, !dbg !11630, !range !11405, !noundef !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 544, !dbg !11611
  %i.x = load ptr, ptr %i.w, align 16, !dbg !11611, !nonnull !30, !align !1591, !noundef !30 ; 4 uses
    #dbg_value(ptr %i.x, !11524, !DIExpression(), !11567)
    #dbg_value(ptr %i.x, !11524, !DIExpression(), !11556)
    #dbg_value(ptr %i.x, !11524, !DIExpression(), !11545)
    #dbg_value(ptr %i.x, !11524, !DIExpression(), !11525)
    #dbg_value(ptr %i.x, !11530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11569)
    #dbg_value(ptr %i.x, !11530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11558)
    #dbg_value(ptr %i.x, !11530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11547)
    #dbg_value(ptr %i.x, !11530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11531)
    #dbg_value(ptr %i.x, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11572)
    #dbg_value(ptr %i.x, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11561)
    #dbg_value(ptr %i.x, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11550)
    #dbg_value(ptr %i.x, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11537)
    #dbg_value(ptr %i.x, !11542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11575)
    #dbg_value(ptr %i.x, !11542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11564)
    #dbg_value(ptr %i.x, !11542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11553)
    #dbg_value(ptr %i.x, !11542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11543)
    #dbg_value(i64 3, !11530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11569)
    #dbg_value(i64 3, !11530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11558)
    #dbg_value(i64 3, !11530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11547)
    #dbg_value(i64 3, !11530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11531)
    #dbg_value(i64 3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11572)
    #dbg_value(i64 3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11561)
    #dbg_value(i64 3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11550)
    #dbg_value(i64 3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11537)
    #dbg_value(i64 3, !11542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11575)
    #dbg_value(i64 3, !11542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11564)
    #dbg_value(i64 3, !11542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11553)
    #dbg_value(i64 3, !11542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11543)
  switch i32 %i.v, label %default.unreachable94 [
    i32 0, label %bb.l
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
  ], !dbg !11631

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11486
  br label %bb.g, !dbg !11486

default.unreachable94:                            ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %i.x, !11465, !DIExpression(DW_OP_plus_uconst, 8160, DW_OP_stack_value), !11632)
    #dbg_value(ptr %2, !8287, !DIExpression(), !11633)
  %i.y = call noundef i32 @SSL_CIPHER_get_id(ptr noundef %2) #21, !dbg !11635, !noalias !11636
    #dbg_value(i32 %i.y, !8306, !DIExpression(), !11639)
  %switch.tableidx.i = add i32 %i.y, -50336513, !dbg !11640 ; 2 uses
  %i.z = icmp ult i32 %switch.tableidx.i, 3, !dbg !11640
  br i1 %i.z, label %bb.m, label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, !dbg !11640

bb.j:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4080, !dbg !11641
    #dbg_value(ptr %i.aa, !11465, !DIExpression(), !11632)
  br label %bb.l, !dbg !11642

bb.k:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8160, !dbg !11643
    #dbg_value(ptr %i.ab, !11465, !DIExpression(), !11632)
  br label %bb.l, !dbg !11644

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j
  %.sroa.03.0 = phi ptr [ %i.ab, %bb.k ], [ %i.aa, %bb.j ], [ %i.x, %bb.g ], !dbg !11645
    #dbg_value(ptr %.sroa.03.0, !11465, !DIExpression(), !11632)
    #dbg_value(ptr %2, !8287, !DIExpression(), !11649)
  %i.ac = call noundef i32 @SSL_CIPHER_get_id(ptr noundef %2) #21, !dbg !11651, !noalias !11652
    #dbg_value(i32 %i.ac, !8306, !DIExpression(), !11655)
  %switch.tableidx.i78 = add i32 %i.ac, -50336513, !dbg !11656 ; 2 uses
  %i.ad = icmp ult i32 %switch.tableidx.i78, 3, !dbg !11656
  br i1 %i.ad, label %bb.n, label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, !dbg !11656

bb.m:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8160, !dbg !11657
    #dbg_value(ptr %i.ae, !11465, !DIExpression(), !11632)
    #dbg_value(i32 %switch.tableidx.i, !11467, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11658)
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 586, !dbg !11659
  %i.ag = load i8, ptr %i.af, align 2, !dbg !11659, !range !1626, !noundef !30
  %i.ah = trunc nuw i8 %i.ag to i1, !dbg !11659
  br i1 %i.ah, label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, label %bb.n, !dbg !11659

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.09.0.in = phi i32 [ %switch.tableidx.i, %bb.m ], [ %switch.tableidx.i78, %bb.l ]
  %.sroa.03.1 = phi ptr [ %i.ae, %bb.m ], [ %.sroa.03.0, %bb.l ], !dbg !11645 ; 6 uses
  %.sroa.09.0 = trunc nuw nsw i32 %.sroa.09.0.in to i8, !dbg !11660
    #dbg_value(ptr %.sroa.03.1, !11465, !DIExpression(), !11632)
    #dbg_value(ptr %3, !11471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11662)
    #dbg_value(i64 %4, !11471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11663
  invoke void @_RNvMs1_NtCs3f36owOmepS_6quiche6cryptoNtB5_4Seal11from_secret(ptr noalias nofree noundef nonnull sret([920 x i8]) align 8 captures(none) dereferenceable(920) %i.d, i8 noundef %.sroa.09.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.o unwind label %bb.c, !dbg !11663

bb.o:                                             ; preds = %bb.n
  %i.ai = load i64, ptr %i.d, align 8, !dbg !11663, !range !1037, !noundef !30
  %i.aj = icmp eq i64 %i.ai, -1, !dbg !11663
  br i1 %i.aj, label %bb.p, label %bb.q, !dbg !11664

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11665
  br label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, !dbg !11666

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr noundef nonnull align 8 dereferenceable(920) %i.d, i64 920, i1 false), !dbg !11669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11665
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.1, i64 2240, !dbg !11670 ; 6 uses
    #dbg_value(ptr %i.ak, !11671, !DIExpression(), !11679)
  %i.al = load i64, ptr %i.ak, align 8, !dbg !11681, !range !1037, !alias.scope !11682, !noundef !30
  %i.am = icmp eq i64 %i.al, -1, !dbg !11681
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6crypto4SealEEB11_.exit, label %bb.r, !dbg !11681

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %i.ak, !11685, !DIExpression(), !11691)
    #dbg_value(ptr %i.ak, !1424, !DIExpression(), !11693)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %i.ak)
          to label %bb.t unwind label %bb.s, !dbg !11695

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr %i.ak, !1435, !DIExpression(), !11696)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %i.ak)
          to label %.body.i.i unwind label %bb.u, !dbg !11698

bb.t:                                             ; preds = %bb.r
    #dbg_value(ptr %i.ak, !1435, !DIExpression(), !11699)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(920) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i unwind label %bb.v, !dbg !11701

bb.u:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11695
  unreachable, !dbg !11695

bb.v:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i, !dbg !11702

.body.i.i:                                        ; preds = %bb.v, %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.1, i64 2904, !dbg !11702
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl19HeaderProtectionKeyEBH_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.aq) #23
          to label %.body3.i.i unwind label %bb.ac, !dbg !11702

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i: ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.1, i64 2904, !dbg !11702
    #dbg_value(ptr %i.ar, !1450, !DIExpression(), !11703)
  %i.as = load i32, ptr %i.ar, align 8, !dbg !11705, !range !1461, !alias.scope !11706, !noundef !30
  %i.at = icmp eq i32 %i.as, 0, !dbg !11705
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl19HeaderProtectionKeyEBH_.exit.i.i, label %bb.w, !dbg !11705

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.1, i64 2912, !dbg !11705 ; 3 uses
    #dbg_value(ptr %i.au, !1424, !DIExpression(), !11711)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i.i unwind label %bb.x, !dbg !11713

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr %i.au, !1435, !DIExpression(), !11714)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body3.i.i unwind label %bb.y, !dbg !11716

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11713
  unreachable, !dbg !11713

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i.i: ; preds = %bb.w
    #dbg_value(ptr %i.au, !1435, !DIExpression(), !11717)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl19HeaderProtectionKeyEBH_.exit.i.i unwind label %bb.z, !dbg !11719

.body3.i.i:                                       ; preds = %bb.z, %bb.x, %.body.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.1, i64 2264, !dbg !11702
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl9PacketKeyEBH_(ptr noalias nofree noundef align 8 dereferenceable(640) %i.ax) #23
          to label %.body unwind label %bb.ac, !dbg !11702

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body3.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl19HeaderProtectionKeyEBH_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.1, i64 2264, !dbg !11702 ; 3 uses
    #dbg_value(ptr %i.az, !1476, !DIExpression(), !11720)
    #dbg_value(ptr %i.az, !1424, !DIExpression(), !11722)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6crypto4SealEBF_.exit.i unwind label %bb.aa, !dbg !11724

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl19HeaderProtectionKeyEBH_.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr %i.az, !1435, !DIExpression(), !11725)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.az)
          to label %.body unwind label %bb.ab, !dbg !11727

bb.ab:                                            ; preds = %bb.aa
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11724
  unreachable, !dbg !11724

bb.ac:                                            ; preds = %.body3.i.i, %.body.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11702
  unreachable, !dbg !11702

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6crypto4SealEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl19HeaderProtectionKeyEBH_.exit.i.i
    #dbg_value(ptr %i.az, !1435, !DIExpression(), !11728)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6crypto4SealEEB11_.exit unwind label %bb.ad, !dbg !11730

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6crypto4SealEBF_.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body, !dbg !11670

.body:                                            ; preds = %.body3.i.i, %bb.aa, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, ptr noundef nonnull align 8 dereferenceable(920) %i.c, i64 920, i1 false), !dbg !11670
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27, !dbg !11605
  unreachable, !dbg !11605

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6crypto4SealEEB11_.exit: ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6crypto4SealEBF_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, ptr noundef nonnull align 8 dereferenceable(920) %i.c, i64 920, i1 false), !dbg !11670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11731
  br label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, !dbg !11732
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i32 0, 2) i32 @_RNvNtCs3f36owOmepS_6quiche3tls18add_handshake_data(ptr noundef %0, i32 noundef range(i32 0, 4) %1, ptr nofree noundef readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11733 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.g, align 4
    #dbg_value(i64 %3, !11740, !DIExpression(), !11763)
    #dbg_value(i64 %3, !11764, !DIExpression(), !11772)
    #dbg_value(i64 %3, !11774, !DIExpression(), !11780)
  store i64 %3, ptr %i.f, align 8
    #dbg_value(ptr %0, !11737, !DIExpression(), !11763)
    #dbg_declare(ptr %i.g, !11738, !DIExpression(), !11782)
    #dbg_value(ptr %2, !11739, !DIExpression(), !11763)
    #dbg_value(ptr %2, !11771, !DIExpression(), !11772)
    #dbg_value(ptr %2, !11779, !DIExpression(), !11780)
    #dbg_value(ptr %2, !11783, !DIExpression(), !11788)
    #dbg_value(ptr poison, !11790, !DIExpression(), !11795)
    #dbg_value(i8 0, !11797, !DIExpression(), !11806)
    #dbg_declare(ptr poison, !11800, !DIExpression(), !11808)
    #dbg_value(i8 0, !11809, !DIExpression(), !11813)
    #dbg_value(i8 0, !11817, !DIExpression(), !11821)
    #dbg_declare(ptr poison, !11800, !DIExpression(), !11826)
    #dbg_value(i8 2, !11831, !DIExpression(), !11835)
    #dbg_value(i8 2, !11837, !DIExpression(), !11841)
    #dbg_value(i64 2, !11843, !DIExpression(), !11847)
    #dbg_value(i64 2, !11849, !DIExpression(), !11853)
    #dbg_value(i8 1, !11831, !DIExpression(), !11855)
    #dbg_value(i8 1, !11837, !DIExpression(), !11857)
    #dbg_value(i64 1, !11843, !DIExpression(), !11860)
    #dbg_value(i64 1, !11849, !DIExpression(), !11863)
    #dbg_value(i8 0, !11831, !DIExpression(), !11866)
    #dbg_value(i8 0, !11837, !DIExpression(), !11868)
    #dbg_value(i64 0, !11843, !DIExpression(), !11871)
    #dbg_value(i64 0, !11849, !DIExpression(), !11874)
    #dbg_value(ptr %0, !9949, !DIExpression(), !11877)
    #dbg_value(ptr %0, !9957, !DIExpression(), !11879)
    #dbg_value(ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, !9968, !DIExpression(), !11881)
    #dbg_value(ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, !9973, !DIExpression(), !11883)
    #dbg_value(ptr poison, !7174, !DIExpression(), !11885)
    #dbg_value(ptr @_RNvNtCs3f36owOmepS_6quiche3tls20QUICHE_EX_DATA_INDEX, !7182, !DIExpression(), !11885)
    #dbg_declare(ptr %i.b, !7183, !DIExpression(), !11887)
    #dbg_value(i8 2, !7188, !DIExpression(), !11888)
    #dbg_value(ptr poison, !7204, !DIExpression(), !11891)
    #dbg_value(ptr poison, !7195, !DIExpression(), !11892)
    #dbg_value(ptr poison, !7208, !DIExpression(), !11893)
    #dbg_value(i8 2, !7214, !DIExpression(), !11893)
end_hunk_0
