Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.10?download=true
inline.NumInlined: 1202
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvCshhfsHpF03Qr_6netlog18read_netlog_recordINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECsaTqK2fWTXJW_11qlog_dancer:bb.a
          to label %bb.c unwind label %bb.b, !dbg !13828 ; 2 uses

.body:                                            ; preds = %bb.ad, %bb.x, %bb.s, %bb.e, %bb.b, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.ab ], [ %i.av, %bb.x ], [ %i.p, %bb.e ], [ %i.ao, %bb.s ], [ %i.l, %bb.b ], [ %i.bc, %bb.ad ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #21
          to label %common.resume unwind label %bb.ag, !dbg !13829

bb.b:                                             ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.p, %bb.n, %bb.k, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i64, ptr } %i.k, 0, !dbg !13830
  %i.n = extractvalue { i64, ptr } %i.k, 1, !dbg !13830 ; 2 uses
    #dbg_value(i64 %i.m, !13737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13578)
    #dbg_value(ptr %i.n, !13737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13578)
    #dbg_declare(ptr %i.c, !13742, !DIExpression(), !13579)
  %i.o = trunc nuw i64 %i.m to i1, !dbg !13831
  br i1 %i.o, label %bb.d, label %bb.h, !dbg !13831, !prof !3806

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13832
  store ptr %i.n, ptr %i.c, align 8, !dbg !13832
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @199, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.f unwind label %bb.e, !dbg !13833

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %.body unwind label %bb.g, !dbg !13834

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13835
  unreachable, !dbg !13835

bb.h:                                             ; preds = %bb.c
    #dbg_value(ptr %i.n, !13737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13578)
    #dbg_value(ptr %i.n, !13642, !DIExpression(), !13744)
  %i.r = icmp ult ptr %i.n, inttoptr (i64 2 to ptr), !dbg !13836
  br i1 %i.r, label %bb.ah, label %bb.i, !dbg !13836

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.h, !13677, !DIExpression(), !13745)
    #dbg_value(ptr %i.h, !13746, !DIExpression(), !13749)
    #dbg_value(ptr %i.h, !13750, !DIExpression(), !13753)
    #dbg_value(ptr %i.h, !13754, !DIExpression(), !13757)
  %i.s = load i64, ptr %i.j, align 8, !dbg !13837, !noundef !3137 ; 3 uses
    #dbg_value(ptr poison, !13686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13691)
    #dbg_value(ptr poison, !13695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(i64 %i.s, !13686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13691)
    #dbg_value(i64 %i.s, !13695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
  %.not = icmp eq i64 %i.s, 0, !dbg !13838
  br i1 %.not, label %.invoke, label %bb.j, !dbg !13838

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.i, align 8, !dbg !13839, !nonnull !3137, !noundef !3137
    #dbg_value(ptr %i.t, !13686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13691)
    #dbg_value(ptr %i.t, !13695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
  %i.u = load i8, ptr %i.t, align 1, !dbg !13840, !noundef !3137
  %i.v = icmp eq i8 %i.u, 123, !dbg !13840
  br i1 %i.v, label %bb.k, label %bb.ah, !dbg !13840

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.h, !13761, !DIExpression(), !13764)
  %i.w = icmp sgt i64 %i.s, -1, !dbg !13841
  call void @llvm.assume(i1 %i.w), !dbg !13842
  %i.x = add nsw i64 %i.s, -2, !dbg !13843
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.x)
          to label %bb.l unwind label %bb.b, !dbg !13844

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.h, !13677, !DIExpression(), !13766)
    #dbg_value(ptr %i.h, !13746, !DIExpression(), !13769)
    #dbg_value(ptr %i.h, !13750, !DIExpression(), !13772)
    #dbg_value(ptr %i.h, !13754, !DIExpression(), !13775)
    #dbg_value(ptr %i.h, !13761, !DIExpression(), !13777)
  %i.y = load i64, ptr %i.j, align 8, !dbg !13845, !noundef !3137 ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !13846
  call void @llvm.assume(i1 %i.z), !dbg !13847
  %i.aa = add nsw i64 %i.y, -1, !dbg !13848       ; 3 uses
    #dbg_value(i64 %i.aa, !13678, !DIExpression(), !13778)
    #dbg_value(i64 %i.aa, !13687, !DIExpression(), !13780)
    #dbg_value(i64 %i.aa, !13696, !DIExpression(), !13783)
    #dbg_value(ptr poison, !13686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13780)
    #dbg_value(ptr poison, !13695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13783)
    #dbg_value(i64 %i.y, !13686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13780)
    #dbg_value(i64 %i.y, !13695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13783)
  %.not29 = icmp eq i64 %i.y, 0, !dbg !13849
  br i1 %.not29, label %.invoke, label %bb.m, !dbg !13849

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.i, align 8, !dbg !13850, !nonnull !3137, !noundef !3137
    #dbg_value(ptr %i.ab, !13686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13780)
    #dbg_value(ptr %i.ab, !13695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13783)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa, !dbg !13851
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !13852, !noundef !3137
  %i.ae = icmp eq i8 %i.ad, 93, !dbg !13852
  br i1 %i.ae, label %bb.n, label %bb.o, !dbg !13852

.invoke:                                          ; preds = %bb.l, %bb.i
  %i.af = phi i64 [ 0, %bb.i ], [ %i.aa, %bb.l ]
  %i.ag = phi ptr [ @3, %bb.i ], [ @4, %bb.l ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #22
          to label %.cont unwind label %bb.b, !dbg !13853

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.h, !13761, !DIExpression(), !13793)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aa)
          to label %bb.o unwind label %bb.b, !dbg !13854

bb.o:                                             ; preds = %bb.m, %bb.n
    #dbg_value(i64 5, !13644, !DIExpression(), !13794)
    #dbg_value(ptr poison, !13701, !DIExpression(), !13795)
    #dbg_value(ptr poison, !13701, !DIExpression(), !13796)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !13722, !DIExpression(), !13727)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !3832, !DIExpression(), !13588)
    #dbg_value(i8 0, !3835, !DIExpression(), !13588)
  %i.ah = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13855 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 6, !dbg !13856
  call void @llvm.assume(i1 %i.ai), !dbg !13856
    #dbg_value(ptr poison, !13702, !DIExpression(), !13797)
    #dbg_value(i8 poison, !13710, !DIExpression(), !13798)
    #dbg_value(i8 poison, !13716, !DIExpression(), !13803)
    #dbg_value(i8 poison, !13709, !DIExpression(), !13804)
  %i.aj = icmp samesign ugt i64 %i.ah, 4, !dbg !13857
  br i1 %i.aj, label %bb.p, label %bb.q, !dbg !13704

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13858
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !13858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13859
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.r unwind label %bb.b, !dbg !13860

bb.q:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !13861
  br label %bb.af, !dbg !13862

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !13805), !dbg !13858
  call void @llvm.experimental.noalias.scope.decl(metadata !13806), !dbg !13858
    #dbg_declare(ptr %i.f, !13807, !DIExpression(), !13595)
    #dbg_declare(ptr poison, !13811, !DIExpression(), !13596)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13863, !noalias !13813
    #dbg_value(ptr %i.f, !13814, !DIExpression(), !13599)
    #dbg_value(ptr %i.f, !13816, !DIExpression(), !13602)
    #dbg_value(ptr %i.f, !13818, !DIExpression(), !13605)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13864 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !13864, !alias.scope !13806, !noalias !13805, !nonnull !3137, !noundef !3137
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !13865
  %i.an = load i64, ptr %i.am, align 8, !dbg !13865, !alias.scope !13806, !noalias !13805, !noundef !3137 ; 2 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.an)
          to label %bb.t unwind label %bb.s, !dbg !13863, !noalias !13813

bb.s:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %.body unwind label %bb.u, !dbg !13866, !noalias !13805

bb.t:                                             ; preds = %bb.r
  %i.ap = load i64, ptr %i.b, align 8, !dbg !13863, !range !3838, !noalias !13813, !noundef !3137
  %i.aq = trunc nuw i64 %i.ap to i1, !dbg !13867
  br i1 %i.aq, label %bb.v, label %.thread, !dbg !13867

.thread:                                          ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !13868, !alias.scope !13813
    #dbg_value(i64 %i.an, !13652, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13820)
    #dbg_value(i64 -1, !13652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13820)
    #dbg_value(i64 poison, !13652, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13820)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13869, !noalias !13813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13870
    #dbg_value(ptr @5, !13668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13612)
    #dbg_value(i64 16, !13668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13612)
    #dbg_declare(ptr %i.a, !13670, !DIExpression(), !13613)
  br label %bb.aa, !dbg !13871

bb.u:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13872, !noalias !13805
  unreachable, !dbg !13872

bb.v:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13873 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.as, align 8, !dbg !13873, !noalias !13813
  %i.au = load i64, ptr %i.as, align 8, !dbg !13873, !noalias !13813
  %.sroa.041.0.copyload = load i64, ptr %i.f, align 8, !dbg !13874, !noalias !13805 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !dbg !13874, !noalias !3137
    #dbg_value(i64 %.sroa.041.0.copyload, !13652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13820)
    #dbg_value(i64 poison, !13652, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13820)
    #dbg_value(i64 poison, !13652, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13820)
    #dbg_value(i64 %.sroa.041.0.copyload, !13652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13820)
    #dbg_value(i64 poison, !13652, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13820)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13869, !noalias !13813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13870
  call void @llvm.experimental.noalias.scope.decl(metadata !13821), !dbg !13875
  call void @llvm.experimental.noalias.scope.decl(metadata !13822), !dbg !13875
    #dbg_value(ptr @5, !13668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13612)
    #dbg_value(i64 16, !13668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13612)
    #dbg_declare(ptr %i.a, !13670, !DIExpression(), !13613)
  %.not.i = icmp eq i64 %.sroa.041.0.copyload, -1, !dbg !13876
  br i1 %.not.i, label %bb.aa, label %bb.w, !dbg !13871, !prof !13823

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13877, !noalias !13824
  store i64 %.sroa.041.0.copyload, ptr %i.a, align 8, !dbg !13877, !noalias !13821
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !13877, !noalias !13821
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx38.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !13877
  store <2 x i64> %i.at, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx38.sroa_idx, align 8, !dbg !13877, !noalias !13821
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.y unwind label %bb.x, !dbg !13878, !noalias !13824

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #21
          to label %.body unwind label %bb.z, !dbg !13879, !noalias !13824

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13880, !noalias !13824
  unreachable, !dbg !13880

bb.aa:                                            ; preds = %bb.v, %.thread
  %.sroa.6.sroa.6.0 = phi i64 [ %i.au, %bb.v ], [ %i.an, %.thread ], !dbg !13881
    #dbg_value(i64 %.sroa.6.sroa.6.0, !13652, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13820)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !13882, !alias.scope !13824
  %.sroa.6.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !13882
  store i64 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa_idx47, align 8, !dbg !13882, !alias.scope !13824
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !13883
    #dbg_value(ptr %i.g, !13646, !DIExpression(), !13825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13884
  store ptr %i.g, ptr %i.e, align 8, !dbg !13884
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13884
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !13884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13704
  store ptr @8, ptr %i.d, align 8, !dbg !13704
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13704
  store i64 6, ptr %i.ax, align 8, !dbg !13704
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !13704
  store ptr @8, ptr %i.ay, align 8, !dbg !13704
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !13704
  store i64 6, ptr %i.az, align 8, !dbg !13704
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !13704
  store ptr @7, ptr %i.ba, align 8, !dbg !13704
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsaTqK2fWTXJW_11qlog_dancer(ptr noundef nonnull @0, ptr noundef nonnull %i.e, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.ac unwind label %bb.ab, !dbg !13704

bb.ab:                                            ; preds = %bb.aa
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #21
          to label %.body unwind label %bb.ag, !dbg !13704

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13704
    #dbg_value(ptr %i.g, !3843, !DIExpression(), !13618)
    #dbg_value(ptr %i.g, !3849, !DIExpression(), !13620)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.ad, !dbg !13885

bb.ad:                                            ; preds = %bb.ac
  %i.bc = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !3854, !DIExpression(), !13622)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.ae, !dbg !13886

bb.ae:                                            ; preds = %bb.ad
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13885
  unreachable, !dbg !13885

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.ac
    #dbg_value(ptr %i.g, !3854, !DIExpression(), !13624)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.b, !dbg !13887

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13704
  br label %bb.q, !dbg !13704

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13829
  ret void, !dbg !13862

bb.ag:                                            ; preds = %bb.ab, %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13888
  unreachable, !dbg !13888

bb.ah:                                            ; preds = %bb.j, %bb.h
  store i64 -1, ptr %0, align 8, !dbg !13744
    #dbg_value(ptr %i.h, !3849, !DIExpression(), !13626)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.ai, !dbg !13889

bb.ai:                                            ; preds = %bb.ah
  %i.bf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !3854, !DIExpression(), !13628)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.aj, !dbg !13890

bb.aj:                                            ; preds = %bb.ai
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13889
  unreachable, !dbg !13889

common.resume:                                    ; preds = %.body, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.ai ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !13672

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.ah
    #dbg_value(ptr %i.h, !3854, !DIExpression(), !13630)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !13891
  br label %bb.af, !dbg !13862
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs8vPbO5abei1_6tabled6tables5tableNtB3_5Table3newINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesyNtNtCsaTqK2fWTXJW_11qlog_dancer12request_stub15HttpRequestStubERB1S_EB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([3280 x i8]) align 8 captures(none) dereferenceable(3280) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13906 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !14124, !DIExpression(), !14132)
    #dbg_value(ptr poison, !14147, !DIExpression(), !14149)
    #dbg_value(ptr poison, !14150, !DIExpression(), !14154)
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !14124, !DIExpression(), !14158)
    #dbg_value(ptr poison, !14147, !DIExpression(), !14159)
    #dbg_value(ptr poison, !14150, !DIExpression(), !14161)
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [3048 x i8], align 8              ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [56 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
    #dbg_declare(ptr %1, !14108, !DIExpression(), !14162)
    #dbg_declare(ptr %i.u, !14109, !DIExpression(), !14163)
    #dbg_declare(ptr %i.t, !14133, !DIExpression(), !14164)
    #dbg_declare(ptr %i.t, !14165, !DIExpression(), !14168)
    #dbg_declare(ptr %i.s, !14110, !DIExpression(), !14169)
    #dbg_declare(ptr %i.r, !14112, !DIExpression(), !14170)
    #dbg_declare(ptr %i.r, !14171, !DIExpression(), !14174)
    #dbg_declare(ptr %i.q, !14113, !DIExpression(), !14175)
    #dbg_declare(ptr %i.q, !14176, !DIExpression(), !14180)
    #dbg_declare(ptr %i.p, !14114, !DIExpression(), !14181)
    #dbg_declare(ptr %i.o, !14115, !DIExpression(), !14182)
    #dbg_declare(ptr %i.m, !14117, !DIExpression(), !14183)
    #dbg_declare(ptr %i.l, !14133, !DIExpression(), !14184)
    #dbg_declare(ptr %i.l, !14165, !DIExpression(), !14187)
    #dbg_declare(ptr %i.k, !14118, !DIExpression(), !14188)
    #dbg_declare(ptr %i.j, !14120, !DIExpression(), !14189)
    #dbg_declare(ptr %i.j, !14171, !DIExpression(), !14191)
    #dbg_declare(ptr %i.i, !14121, !DIExpression(), !14192)
    #dbg_declare(ptr %i.i, !14176, !DIExpression(), !14194)
    #dbg_declare(ptr %i.h, !14195, !DIExpression(), !14199)
    #dbg_declare(ptr poison, !14122, !DIExpression(), !14200)
    #dbg_declare(ptr %i.e, !14202, !DIExpression(), !14208)
    #dbg_value(i64 28, !14209, !DIExpression(), !14212)
    #dbg_value(i64 28, !14213, !DIExpression(), !14217)
    #dbg_declare(ptr poison, !14214, !DIExpression(), !14218)
    #dbg_value(i64 28, !14219, !DIExpression(), !14223)
    #dbg_declare(ptr poison, !14220, !DIExpression(), !14224)
    #dbg_value(i64 28, !14225, !DIExpression(), !14239)
    #dbg_declare(ptr poison, !14226, !DIExpression(), !14240)
    #dbg_value(i64 0, !14241, !DIExpression(), !14248)
    #dbg_value(i64 28, !14243, !DIExpression(), !14248)
    #dbg_value(i64 56, !14125, !DIExpression(), !14250)
end_hunk_0
begin_hunk_1_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNCINvMCs1apnfJGOCVB_13table_to_htmlNtB2P_9HtmlTable11with_headerINtB4_3VecIB3M_B2l_EEB3V_B2l_E00EB2l_ECsaTqK2fWTXJW_11qlog_dancer:bb.a
  store i64 %i.m, ptr %i.r, align 8, !dbg !29716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29715
    #dbg_value(ptr %1, !29692, !DIExpression(), !29579)
    #dbg_value(ptr %1, !29698, !DIExpression(), !29581)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !29717
  ret void, !dbg !29718

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !29719
  unreachable, !dbg !29719

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCNCINvMCs1apnfJGOCVB_13table_to_htmlNtB2s_9HtmlTable11with_headerINtB1e_3VecIB3p_B1X_EEB3z_B1X_E00EECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !29719
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB6_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29752 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11158, !DIExpression(), !29755)
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11158, !DIExpression(), !29758)
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 13 uses
    #dbg_declare(ptr poison, !29919, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !29931)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29761)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29761)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29762)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29762)
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [1 x i8], align 1                 ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !29905, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !29932)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29765)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29765)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29766)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29766)
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !29901, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !29933)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29769)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29769)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29770)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29770)
  %i.o = alloca [8 x i8], align 8                 ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
    #dbg_value(ptr %1, !29887, !DIExpression(), !29934)
  store ptr %1, ptr %i.p, align 8
    #dbg_value(i32 %2, !29888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %3, !29888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(i32 %4, !29889, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %5, !29889, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(ptr %6, !29890, !DIExpression(), !29934)
  store ptr %6, ptr %i.o, align 8
    #dbg_declare(ptr %i.n, !29904, !DIExpression(), !29935)
    #dbg_declare(ptr %i.l, !29908, !DIExpression(), !29936)
    #dbg_declare(ptr %i.i, !29914, !DIExpression(), !29937)
    #dbg_declare(ptr %i.h, !29922, !DIExpression(), !29938)
    #dbg_declare(ptr %i.g, !29924, !DIExpression(), !29939)
    #dbg_declare(ptr %i.f, !29927, !DIExpression(), !29940)
    #dbg_declare(ptr %i.e, !29929, !DIExpression(), !29941)
    #dbg_value(ptr %6, !11201, !DIExpression(), !29772)
  %.sroa.0.0.copyload = load double, ptr %6, align 8, !dbg !30088, !alias.scope !29942
  %i.q = fcmp oeq double %.sroa.0.0.copyload, 0.000000e+00, !dbg !30089
  br i1 %i.q, label %bb.c, label %bb.b, !dbg !30089

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !29890, !DIExpression(), !29934)
  %i.r = icmp eq i32 %2, %4, !dbg !30090
  br i1 %i.r, label %bb.e, label %bb.d, !dbg !30090

bb.c:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8, !dbg !30091
  br label %bb.u, !dbg !30092

bb.d:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %3, %5, !dbg !30093
  br i1 %i.s, label %bb.g, label %bb.f, !dbg !30093

bb.e:                                             ; preds = %bb.b
  %.sroa.16.1 = tail call i32 @llvm.smax.i32(i32 %3, i32 %5), !dbg !30094
  %.sroa.17.2 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5), !dbg !30094
    #dbg_value(i32 %2, !29888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %.sroa.17.2, !29888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(i32 %.sroa.16.1, !29889, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(i32 %.sroa.17.2, !29901, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29944)
    #dbg_value(i32 %.sroa.16.1, !29901, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29944)
    #dbg_value(i8 poison, !29901, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !29944)
    #dbg_value(ptr undef, !11194, !DIExpression(), !29770)
    #dbg_value(ptr undef, !11178, !DIExpression(), !29769)
  br label %bb.ak, !dbg !30095

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !30096
  %i.t = sub i32 %2, %4, !dbg !30097
    #dbg_value(i32 %i.t, !29945, !DIExpression(), !29948)
  %.sroa.065.0 = tail call i32 @llvm.abs.i32(i32 %i.t, i1 false), !dbg !30098
  %i.u = sub i32 %3, %5, !dbg !30099
    #dbg_value(i32 %i.u, !29945, !DIExpression(), !29950)
  %.sroa.066.0 = tail call i32 @llvm.abs.i32(i32 %i.u, i1 false), !dbg !30100
  %i.v = icmp slt i32 %.sroa.065.0, %.sroa.066.0, !dbg !30097 ; 4 uses
  %i.w = zext i1 %i.v to i8, !dbg !30097
    #dbg_value(i8 %i.w, !29909, !DIExpression(), !29951)
  store i8 %i.w, ptr %i.j, align 1, !dbg !30097
  br i1 %i.v, label %bb.i, label %bb.h, !dbg !30101

bb.g:                                             ; preds = %bb.d
  %.sroa.027.1 = tail call i32 @llvm.smax.i32(i32 %2, i32 %4), !dbg !30102
  %.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4), !dbg !30102
    #dbg_value(i32 %.sroa.0.1, !29888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %3, !29888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(i32 %.sroa.027.1, !29889, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %.sroa.0.1, !29905, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29952)
    #dbg_value(i32 %.sroa.027.1, !29905, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29952)
    #dbg_value(i8 poison, !29905, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !29952)
    #dbg_value(ptr undef, !11194, !DIExpression(), !29766)
    #dbg_value(ptr undef, !11178, !DIExpression(), !29765)
  br label %bb.ah, !dbg !30103

bb.h:                                             ; preds = %bb.i, %bb.f
  %.sroa.16.0 = phi i32 [ %4, %bb.i ], [ %5, %bb.f ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %5, %bb.i ], [ %4, %bb.f ] ; 3 uses
  %.sroa.17.0 = phi i32 [ %2, %bb.i ], [ %3, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %3, %bb.i ], [ %2, %bb.f ] ; 3 uses
    #dbg_value(i32 %.sroa.0.0, !29888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %.sroa.17.0, !29888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(i32 %.sroa.027.0, !29889, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %.sroa.16.0, !29889, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
  %i.x = icmp sgt i32 %.sroa.0.0, %.sroa.027.0, !dbg !30104 ; 2 uses
  %.sroa.027.0..sroa.0.0 = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0, i32 %.sroa.027.0), !dbg !30105 ; 3 uses
  %.sroa.0.0..sroa.027.0 = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 %.sroa.027.0), !dbg !30105 ; 3 uses
    #dbg_value(i32 %.sroa.17.0..sroa.16.0, !29953, !DIExpression(), !29956)
    #dbg_value(i32 %.sroa.17.0..sroa.16.0, !29911, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29957)
    #dbg_value(i32 %.sroa.0.0..sroa.027.0, !29911, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29957)
    #dbg_value(i32 %.sroa.16.0..sroa.17.0, !29953, !DIExpression(), !29959)
    #dbg_value(i32 %.sroa.16.0..sroa.17.0, !29910, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29957)
    #dbg_value(i32 %.sroa.027.0..sroa.0.0, !29910, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29957)
    #dbg_value(ptr %1, !29887, !DIExpression(), !29934)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30106
  %.val = load i32, ptr %i.y, align 8, !dbg !30106, !noundef !3137 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 52, !dbg !30106
  %.val238 = load i32, ptr %i.z, align 4, !dbg !30106, !noundef !3137 ; 2 uses
    #dbg_value(i32 %.val, !29912, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29960)
    #dbg_value(i32 %.val238, !29912, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29960)
    #dbg_value(i8 %i.w, !29909, !DIExpression(), !29951)
  %.sroa.7.0 = select i1 %i.v, i32 %.val, i32 %.val238, !dbg !30107 ; 2 uses
  %.sroa.067.0 = select i1 %i.v, i32 %.val238, i32 %.val, !dbg !30107
    #dbg_value(i32 %.sroa.067.0, !29912, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29960)
    #dbg_value(i32 %.sroa.7.0, !29912, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29960)
    #dbg_value(i32 %i.ae, !29953, !DIExpression(), !29962)
  %i.aa = sub i32 %.sroa.0.0..sroa.027.0, %.sroa.027.0..sroa.0.0, !dbg !30108
    #dbg_value(i32 %i.aa, !29953, !DIExpression(), !29964)
  %i.ab = sitofp i32 %i.aa to double, !dbg !30109
    #dbg_value(double %i.ag, !29913, !DIExpression(), !29965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !30110
  store ptr %i.j, ptr %i.i, align 8, !dbg !30111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !30111
  store ptr %i.p, ptr %i.ac, align 8, !dbg !30111
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !30111
  store ptr %i.o, ptr %i.ad, align 8, !dbg !30111
  %.sroa.16.0..sroa.17.0 = select i1 %i.x, i32 %.sroa.16.0, i32 %.sroa.17.0, !dbg !30105 ; 4 uses
  %.sroa.17.0..sroa.16.0 = select i1 %i.x, i32 %.sroa.17.0, i32 %.sroa.16.0, !dbg !30105 ; 3 uses
  %i.ae = sub i32 %.sroa.17.0..sroa.16.0, %.sroa.16.0..sroa.17.0, !dbg !30112
  %i.af = sitofp i32 %i.ae to double, !dbg !30113
  %i.ag = fdiv double %i.af, %i.ab, !dbg !29961   ; 3 uses
  %i.ah = add i32 %.sroa.7.0, -1, !dbg !30114
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !29779)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !29779)
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.ah, i32 %.sroa.17.0..sroa.16.0), !dbg !30115
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !29781)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !29781)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !29953, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !29967)
    #dbg_value(double poison, !29968, !DIExpression(), !29971)
    #dbg_value(double poison, !29972, !DIExpression(), !29975)
    #dbg_value(i32 %i.av, !29915, !DIExpression(), !29976)
  %i.ai = add i32 %.sroa.7.0, -2, !dbg !30116
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !29785)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !29785)
  %..i240 = call noundef i32 @llvm.smin.i32(i32 %i.ai, i32 %.sroa.16.0..sroa.17.0), !dbg !30117
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !29787)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !29787)
  %i.aj = insertelement <2 x i32> poison, i32 %..i240, i64 0, !dbg !30118
  %i.ak = insertelement <2 x i32> %i.aj, i32 %..i, i64 1, !dbg !30118
  %i.al = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ak, <2 x i32> zeroinitializer), !dbg !30118
  %i.am = insertelement <2 x i32> poison, i32 %.sroa.16.0..sroa.17.0, i64 0, !dbg !30119
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !30119
  %i.ao = sub <2 x i32> %i.al, %i.an, !dbg !30119
    #dbg_value(!DIArgList(i32 poison, i32 poison), !29953, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !29978)
  %i.ap = sitofp <2 x i32> %i.ao to <2 x double>, !dbg !30120
  %i.aq = insertelement <2 x double> poison, double %i.ag, i64 0, !dbg !30121
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !30121
  %i.as = fdiv <2 x double> %i.ap, %i.ar, !dbg !30121 ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 1, !dbg !30122
  %i.au = call double @llvm.floor.f64(double %i.at), !dbg !30122
  %i.av = call i32 @llvm.fptosi.sat.i32.f64(double %i.au), !dbg !30121
    #dbg_value(double poison, !29979, !DIExpression(), !29982)
  %i.aw = extractelement <2 x double> %i.as, i64 0, !dbg !30123
  %i.ax = call double @llvm.fabs.f64(double %i.aw), !dbg !30123
    #dbg_value(double %i.ax, !29983, !DIExpression(), !29986)
    #dbg_value(double %i.ax, !29987, !DIExpression(), !29990)
  %i.ay = call double @llvm.ceil.f64(double %i.ax), !dbg !30124
  %i.az = call i32 @llvm.fptosi.sat.i32.f64(double %i.ay), !dbg !30125 ; 2 uses
  %i.ba = add i32 %i.az, %.sroa.027.0..sroa.0.0, !dbg !30125 ; 2 uses
    #dbg_value(i32 %i.ba, !29916, !DIExpression(), !29991)
  %i.bb = add i32 %.sroa.067.0, -2, !dbg !30126
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !29792)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !29792)
  %..i242 = call noundef i32 @llvm.smin.i32(i32 %i.bb, i32 %.sroa.0.0..sroa.027.0), !dbg !30127
  %i.bc = add i32 %.sroa.027.0..sroa.0.0, -1, !dbg !30128
  %i.bd = add i32 %i.bc, %i.av, !dbg !30128
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !29794)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !29794)
  %..i243 = call noundef i32 @llvm.smin.i32(i32 %i.bd, i32 %..i242), !dbg !30129 ; 4 uses
    #dbg_value(i32 %..i243, !29917, !DIExpression(), !29992)
  %i.be = sitofp i32 %.sroa.16.0..sroa.17.0 to double, !dbg !30130
    #dbg_value(i32 %i.az, !29953, !DIExpression(), !29994)
  %i.bf = sitofp i32 %i.az to double, !dbg !30131
  %i.bg = fmul double %i.ag, %i.bf, !dbg !29993
  %i.bh = fadd double %i.bg, %i.be, !dbg !29958   ; 2 uses
    #dbg_value(double %i.bh, !29918, !DIExpression(), !29995)
    #dbg_value(double %i.bh, !29968, !DIExpression(), !29997)
    #dbg_value(double %i.bh, !29972, !DIExpression(), !30000)
    #dbg_value(i32 %i.ba, !29919, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30001)
    #dbg_value(i32 %..i243, !29919, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30001)
    #dbg_value(i8 poison, !29919, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30001)
    #dbg_value(ptr undef, !11194, !DIExpression(), !29762)
    #dbg_value(ptr undef, !11178, !DIExpression(), !29761)
  %.not.i294 = icmp sgt i32 %i.ba, %..i243
  br i1 %.not.i294, label %._crit_edge, label %.lr.ph, !dbg !30132

.lr.ph:                                           ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.j, !dbg !30132

bb.i:                                             ; preds = %bb.f
    #dbg_value(i32 %3, !29888, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %2, !29888, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
    #dbg_value(i32 %5, !29889, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29934)
    #dbg_value(i32 %4, !29889, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29934)
  br label %bb.h, !dbg !30133

bb.j:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256
  %.sroa.071.0296 = phi double [ %i.bh, %.lr.ph ], [ %i.dh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256 ] ; 5 uses
  %.sroa.0272.0295 = phi i32 [ %i.ba, %.lr.ph ], [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256 ] ; 5 uses
    #dbg_value(double %.sroa.071.0296, !29972, !DIExpression(), !30000)
    #dbg_value(i32 %.sroa.0272.0295, !29919, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30001)
    #dbg_value(i32 %.sroa.0272.0295, !11237, !DIExpression(), !29796)
    #dbg_value(i32 %.sroa.0272.0295, !11247, !DIExpression(), !29798)
    #dbg_value(i64 1, !11244, !DIExpression(), !29796)
    #dbg_value(i32 1, !11245, !DIExpression(), !29799)
    #dbg_value(i32 1, !11250, !DIExpression(), !29798)
  %i.bm = call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0272.0295, i32 1), !dbg !30134 ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 0, !dbg !30135 ; 2 uses
  %i.bo = extractvalue { i32, i1 } %i.bm, 1, !dbg !30135
    #dbg_value(i1 %i.bo, !29919, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30001)
    #dbg_value(i32 %i.bn, !29919, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30001)
    #dbg_value(i32 %.sroa.0272.0295, !29920, !DIExpression(), !30002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !30136
  %i.bp = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.071.0296), !dbg !30137 ; 3 uses
    #dbg_value(double %.sroa.071.0296, !29968, !DIExpression(), !30005)
    #dbg_value(double %.sroa.071.0296, !29972, !DIExpression(), !30008)
  %i.bq = call double @llvm.floor.f64(double %.sroa.071.0296), !dbg !30138 ; 2 uses
  %i.br = fadd double %i.bq, 1.000000e+00, !dbg !30139
  %i.bs = fsub double %i.br, %.sroa.071.0296, !dbg !30139 ; 2 uses
    #dbg_value(ptr poison, !11158, !DIExpression(), !29802)
    #dbg_value(ptr poison, !11168, !DIExpression(DW_OP_deref, DW_OP_deref), !29803)
    #dbg_value(ptr poison, !11169, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !29803)
    #dbg_value(ptr poison, !11170, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !29803)
    #dbg_value(i32 %.sroa.0272.0295, !11173, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29803)
    #dbg_value(i32 %i.bp, !11173, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29803)
    #dbg_value(double %i.bs, !11167, !DIExpression(), !29803)
    #dbg_value(double %i.bs, !11162, !DIExpression(), !29804)
    #dbg_value(double %i.bs, !11162, !DIExpression(), !29805)
    #dbg_value(i32 %.sroa.0272.0295, !11171, !DIExpression(), !29806)
    #dbg_value(i32 %i.bp, !11172, !DIExpression(), !29806)
  %i.bt = load i8, ptr %i.j, align 1, !dbg !30140, !range !5912, !noalias !30009, !noundef !3137
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !30140
  %i.bv = load ptr, ptr %i.p, align 8, !dbg !30141, !noalias !30009, !nonnull !3137, !align !5401, !noundef !3137 ; 2 uses
  br i1 %i.bu, label %bb.l, label %bb.k, !dbg !30140

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30142, !noalias !30009
  %i.bw = load ptr, ptr %i.o, align 8, !dbg !30142, !noalias !30009, !nonnull !3137, !align !5401, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.bw, !11201, !DIExpression(), !29811)
  %.sroa.05.0.copyload.i = load double, ptr %i.bw, align 8, !dbg !30143, !alias.scope !30010, !noalias !30009
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !30143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bi, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.46.0..sroa_idx.i, i64 3, i1 false), !dbg !30143, !noalias !30009
    #dbg_value(ptr undef, !11158, !DIExpression(), !29802)
  %i.bx = fmul double %i.bs, %.sroa.05.0.copyload.i, !dbg !30144
  store double %i.bx, ptr %i.c, align 8, !dbg !30145, !noalias !30009
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bv, i32 noundef %.sroa.0272.0295, i32 noundef %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.c), !dbg !30146, !noalias !30011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30147, !noalias !30009
  br label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5style12BackendColorE0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !30148

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !30149, !noalias !30009
  %i.by = load ptr, ptr %i.o, align 8, !dbg !30149, !noalias !30009, !nonnull !3137, !align !5401, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.by, !11201, !DIExpression(), !29816)
  %.sroa.0.0.copyload.i = load double, ptr %i.by, align 8, !dbg !30150, !alias.scope !30012, !noalias !30009
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8, !dbg !30150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bj, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.4.0..sroa_idx.i, i64 3, i1 false), !dbg !30150, !noalias !30009
    #dbg_value(ptr undef, !11158, !DIExpression(), !29758)
  %i.bz = fmul double %i.bs, %.sroa.0.0.copyload.i, !dbg !30151
  store double %i.bz, ptr %i.d, align 8, !dbg !30152, !noalias !30009
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bv, i32 noundef %i.bp, i32 noundef %.sroa.0272.0295, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !dbg !30153, !noalias !30011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !30154, !noalias !30009
  br label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5style12BackendColorE0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !30148

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5style12BackendColorE0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.k, %bb.l
    #dbg_value(ptr %i.h, !30013, !DIExpression(), !30017)
    #dbg_value(ptr %i.h, !30018, !DIExpression(), !30022)
  %i.ca = load i8, ptr %i.h, align 8, !dbg !30155, !range !11263, !noundef !3137
  %.not233 = icmp eq i8 %i.ca, -2, !dbg !30155
  br i1 %.not233, label %bb.w, label %bb.z, !dbg !30156

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256, %bb.h
  %.sroa.071.0.lcssa = phi double [ %i.bh, %bb.h ], [ %i.dh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit256 ], !dbg !29992 ; 7 uses
    #dbg_value(i8 poison, !29919, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30001)
    #dbg_value(i32 poison, !29919, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30001)
  %i.cb = icmp sgt i32 %.sroa.0.0..sroa.027.0, %..i243, !dbg !30157
  br i1 %i.cb, label %bb.n, label %bb.m, !dbg !30157

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit244, %bb.q, %bb.n, %._crit_edge
  store i8 -2, ptr %0, align 8, !dbg !30158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !30159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !30160
  br label %bb.u, !dbg !30161

bb.n:                                             ; preds = %._crit_edge
  %i.cc = sitofp i32 %.sroa.17.0..sroa.16.0 to double, !dbg !30162 ; 2 uses
  %i.cd = fcmp olt double %.sroa.071.0.lcssa, %i.cc, !dbg !30163
  br i1 %i.cd, label %bb.o, label %bb.m, !dbg !30163

bb.o:                                             ; preds = %bb.n
  %i.ce = add nsw i32 %..i243, 1, !dbg !30164     ; 2 uses
    #dbg_value(i32 %i.ce, !29925, !DIExpression(), !30023)
    #dbg_value(double %.sroa.071.0.lcssa, !29968, !DIExpression(), !30025)
    #dbg_value(double %.sroa.071.0.lcssa, !29972, !DIExpression(), !30028)
  %i.cf = call double @llvm.floor.f64(double %.sroa.071.0.lcssa), !dbg !30165 ; 2 uses
  %i.cg = fadd double %i.cf, 1.000000e+00, !dbg !30166
  %i.ch = fsub double %i.cg, %.sroa.071.0.lcssa, !dbg !30166 ; 2 uses
  %i.ci = fcmp ogt double %i.ch, 1.000000e-05, !dbg !30166
  br i1 %i.ci, label %bb.p, label %bb.q, !dbg !30166

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !30167
  %i.cj = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.071.0.lcssa), !dbg !30168
    #dbg_value(double %.sroa.071.0.lcssa, !29968, !DIExpression(), !30031)
    #dbg_value(double %.sroa.071.0.lcssa, !29972, !DIExpression(), !30034)
  call fastcc void @_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5style12BackendColorE0CsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, i32 noundef %i.ce, i32 noundef %i.cj, double noundef %i.ch) #27, !dbg !30169
    #dbg_value(ptr %i.f, !30013, !DIExpression(), !30037)
    #dbg_value(ptr %i.f, !30018, !DIExpression(), !30040)
  %i.ck = load i8, ptr %i.f, align 8, !dbg !30170, !range !11263, !noundef !3137
  %.not = icmp eq i8 %i.ck, -2, !dbg !30170
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.r, !dbg !30171

bb.q:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(double %.sroa.071.0.lcssa, !29968, !DIExpression(), !30042)
    #dbg_value(double %.sroa.071.0.lcssa, !29972, !DIExpression(), !30045)
  %i.cl = fsub double %.sroa.071.0.lcssa, %i.cf, !dbg !30172 ; 2 uses
  %i.cm = fcmp ogt double %i.cl, 1.000000e-05, !dbg !30172
  %i.cn = fadd double %.sroa.071.0.lcssa, 1.000000e+00
  %i.co = fcmp olt double %i.cn, %i.cc
  %or.cond = and i1 %i.co, %i.cm, !dbg !30172
  br i1 %or.cond, label %bb.s, label %bb.m, !dbg !30172

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.p
    #dbg_value(ptr %i.f, !11265, !DIExpression(), !29823)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !30173
  br label %bb.q, !dbg !30174

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !30175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !30173
  br label %bb.v, !dbg !30176

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !30167
  %i.cp = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.071.0.lcssa), !dbg !30177
  %i.cq = add i32 %i.cp, 1, !dbg !30177
  call fastcc void @_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB8_5style12BackendColorE0CsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, i32 noundef %i.ce, i32 noundef %i.cq, double noundef %i.cl) #27, !dbg !30178
    #dbg_value(ptr %i.e, !30013, !DIExpression(), !30049)
    #dbg_value(ptr %i.e, !30018, !DIExpression(), !30052)
  %i.cr = load i8, ptr %i.e, align 8, !dbg !30179, !range !11263, !noundef !3137
  %.not232 = icmp eq i8 %i.cr, -2, !dbg !30179
  br i1 %.not232, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit244, label %bb.t, !dbg !30180

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit244: ; preds = %bb.s
    #dbg_value(ptr %i.e, !11265, !DIExpression(), !29825)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !30181
  br label %bb.m, !dbg !30182

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !dbg !30183
end_hunk_1
begin_hunk_2_@_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !30505)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30291)
    #dbg_value(ptr poison, !11178, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30291)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30292)
    #dbg_value(ptr poison, !11194, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30292)
  %i.o = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !30470, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30506)
    #dbg_value(ptr poison, !30470, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30506)
    #dbg_value(ptr poison, !30469, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30507)
    #dbg_value(ptr poison, !30469, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30507)
  %i.p = alloca [24 x i8], align 8                ; 14 uses
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30509)
  %i.q = alloca [8 x i8], align 8                 ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
    #dbg_value(ptr %1, !30459, !DIExpression(), !30510)
  store ptr %1, ptr %i.r, align 8
    #dbg_value(i32 %2, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %3, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %4, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %5, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(ptr %6, !30462, !DIExpression(), !30510)
  store ptr %6, ptr %i.q, align 8
    #dbg_declare(ptr %i.p, !30468, !DIExpression(), !30511)
    #dbg_declare(ptr %i.n, !30476, !DIExpression(), !30512)
    #dbg_declare(ptr %i.l, !30480, !DIExpression(), !30513)
    #dbg_declare(ptr %i.i, !30486, !DIExpression(), !30514)
    #dbg_declare(ptr %i.h, !30494, !DIExpression(), !30515)
    #dbg_declare(ptr %i.g, !30496, !DIExpression(), !30516)
    #dbg_declare(ptr %i.f, !30499, !DIExpression(), !30517)
    #dbg_declare(ptr %i.e, !30501, !DIExpression(), !30518)
    #dbg_value(ptr %6, !11294, !DIExpression(), !30294)
    #dbg_value(ptr %6, !11301, !DIExpression(), !30296)
  %i.s = load double, ptr %6, align 8, !dbg !30756, !alias.scope !30519, !noalias !30520, !noundef !3137
  %i.t = fcmp oeq double %i.s, 0.000000e+00, !dbg !30757
  br i1 %i.t, label %bb.c, label %bb.b, !dbg !30757

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %6, !30462, !DIExpression(), !30510)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !30758
  %.val243 = load i32, ptr %i.u, align 8, !dbg !30758, !noundef !3137 ; 2 uses
  switch i32 %.val243, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ], !dbg !30759

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 -2, ptr %0, align 8, !dbg !30760
  br label %bb.w, !dbg !30761

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %2, %4, !dbg !30762
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !30762

bb.e:                                             ; preds = %bb.b
  %i.w = sub i32 %4, %2, !dbg !30763              ; 2 uses
    #dbg_value(i32 %i.w, !30522, !DIExpression(), !30525)
  %i.x = sext i32 %i.w to i64, !dbg !30764        ; 2 uses
    #dbg_value(i64 %i.x, !30463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30526)
  %i.y = sub i32 %5, %3, !dbg !30765              ; 2 uses
    #dbg_value(i32 %i.y, !30522, !DIExpression(), !30528)
  %i.z = sext i32 %i.y to i64, !dbg !30766        ; 2 uses
    #dbg_value(i64 %i.z, !30463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30526)
  %i.aa = mul nsw i64 %i.x, %i.x, !dbg !30767
  %i.ab = mul nsw i64 %i.z, %i.z, !dbg !30768
  %i.ac = add nuw i64 %i.ab, %i.aa, !dbg !30769
  %i.ad = sitofp i64 %i.ac to double, !dbg !30770
    #dbg_value(double %i.ad, !30529, !DIExpression(), !30532)
    #dbg_value(double %i.ad, !30533, !DIExpression(), !30536)
  %i.ae = tail call double @llvm.sqrt.f64(double %i.ad), !dbg !30771 ; 2 uses
    #dbg_value(double %i.ae, !30464, !DIExpression(), !30537)
  %i.af = fcmp olt double %i.ae, 1.000000e-05, !dbg !30772
  br i1 %i.af, label %bb.ap, label %bb.aq, !dbg !30772

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i32 %3, %5, !dbg !30773
  br i1 %i.ag, label %bb.i, label %bb.h, !dbg !30773

bb.g:                                             ; preds = %bb.d
  %.sroa.16.1 = tail call i32 @llvm.smax.i32(i32 %3, i32 %5), !dbg !30774
  %.sroa.17.2 = tail call i32 @llvm.smin.i32(i32 %3, i32 %5), !dbg !30774
    #dbg_value(i32 %2, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.17.2, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.16.1, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.17.2, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30538)
    #dbg_value(i32 %.sroa.16.1, !30473, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30538)
    #dbg_value(i8 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30538)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30292)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30291)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.5.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  br label %bb.am, !dbg !30775

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !30776
  %i.ai = sub i32 %2, %4, !dbg !30777
    #dbg_value(i32 %i.ai, !30539, !DIExpression(), !30542)
  %.sroa.065.0 = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 false), !dbg !30778
  %i.aj = sub i32 %3, %5, !dbg !30779
    #dbg_value(i32 %i.aj, !30539, !DIExpression(), !30544)
  %.sroa.066.0 = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 false), !dbg !30780
  %i.ak = icmp slt i32 %.sroa.065.0, %.sroa.066.0, !dbg !30777 ; 4 uses
  %i.al = zext i1 %i.ak to i8, !dbg !30777
    #dbg_value(i8 %i.al, !30481, !DIExpression(), !30545)
  store i8 %i.al, ptr %i.j, align 1, !dbg !30777
  br i1 %i.ak, label %bb.k, label %bb.j, !dbg !30781

bb.i:                                             ; preds = %bb.f
  %.sroa.027.1 = tail call i32 @llvm.smax.i32(i32 %2, i32 %4), !dbg !30782
  %.sroa.0.1 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4), !dbg !30782
    #dbg_value(i32 %.sroa.0.1, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %3, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.027.1, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.0.1, !30477, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30546)
    #dbg_value(i32 %.sroa.027.1, !30477, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30546)
    #dbg_value(i8 poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30546)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30288)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30287)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %.sroa.5.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  br label %bb.aj, !dbg !30783

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.16.0 = phi i32 [ %4, %bb.k ], [ %5, %bb.h ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %5, %bb.k ], [ %4, %bb.h ] ; 3 uses
  %.sroa.17.0 = phi i32 [ %2, %bb.k ], [ %3, %bb.h ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %3, %bb.k ], [ %2, %bb.h ] ; 3 uses
    #dbg_value(i32 %.sroa.0.0, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.17.0, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %.sroa.027.0, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %.sroa.16.0, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
  %i.an = icmp sgt i32 %.sroa.0.0, %.sroa.027.0, !dbg !30784 ; 2 uses
  %.sroa.027.0..sroa.0.0 = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0, i32 %.sroa.027.0), !dbg !30785 ; 3 uses
  %.sroa.0.0..sroa.027.0 = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 %.sroa.027.0), !dbg !30785 ; 3 uses
    #dbg_value(i32 %.sroa.17.0..sroa.16.0, !30547, !DIExpression(), !30550)
    #dbg_value(i32 %.sroa.17.0..sroa.16.0, !30483, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30551)
    #dbg_value(i32 %.sroa.0.0..sroa.027.0, !30483, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30551)
    #dbg_value(i32 %.sroa.16.0..sroa.17.0, !30547, !DIExpression(), !30553)
    #dbg_value(i32 %.sroa.16.0..sroa.17.0, !30482, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30551)
    #dbg_value(i32 %.sroa.027.0..sroa.0.0, !30482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30551)
    #dbg_value(ptr %1, !30459, !DIExpression(), !30510)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30786
  %.val = load i32, ptr %i.ao, align 8, !dbg !30786, !noundef !3137 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52, !dbg !30786
  %.val240 = load i32, ptr %i.ap, align 4, !dbg !30786, !noundef !3137 ; 2 uses
    #dbg_value(i32 %.val, !30484, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30554)
    #dbg_value(i32 %.val240, !30484, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30554)
    #dbg_value(i8 %i.al, !30481, !DIExpression(), !30545)
  %.sroa.7.0 = select i1 %i.ak, i32 %.val, i32 %.val240, !dbg !30787 ; 2 uses
  %.sroa.067.0 = select i1 %i.ak, i32 %.val240, i32 %.val, !dbg !30787
    #dbg_value(i32 %.sroa.067.0, !30484, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30554)
    #dbg_value(i32 %.sroa.7.0, !30484, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30554)
    #dbg_value(i32 %i.au, !30547, !DIExpression(), !30556)
  %i.aq = sub i32 %.sroa.0.0..sroa.027.0, %.sroa.027.0..sroa.0.0, !dbg !30788
    #dbg_value(i32 %i.aq, !30547, !DIExpression(), !30558)
  %i.ar = sitofp i32 %i.aq to double, !dbg !30789
    #dbg_value(double %i.aw, !30485, !DIExpression(), !30559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !30790
  store ptr %i.j, ptr %i.i, align 8, !dbg !30791
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !30791
  store ptr %i.r, ptr %i.as, align 8, !dbg !30791
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !30791
  store ptr %i.q, ptr %i.at, align 8, !dbg !30791
  %.sroa.16.0..sroa.17.0 = select i1 %i.an, i32 %.sroa.16.0, i32 %.sroa.17.0, !dbg !30785 ; 4 uses
  %.sroa.17.0..sroa.16.0 = select i1 %i.an, i32 %.sroa.17.0, i32 %.sroa.16.0, !dbg !30785 ; 3 uses
  %i.au = sub i32 %.sroa.17.0..sroa.16.0, %.sroa.16.0..sroa.17.0, !dbg !30792
  %i.av = sitofp i32 %i.au to double, !dbg !30793
  %i.aw = fdiv double %i.av, %i.ar, !dbg !30555   ; 3 uses
  %i.ax = add i32 %.sroa.7.0, -1, !dbg !30794
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !30306)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !30306)
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.ax, i32 %.sroa.17.0..sroa.16.0), !dbg !30795
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !30308)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !30308)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !30547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !30561)
    #dbg_value(double poison, !30562, !DIExpression(), !30565)
    #dbg_value(double poison, !30566, !DIExpression(), !30569)
    #dbg_value(i32 %i.bl, !30487, !DIExpression(), !30570)
  %i.ay = add i32 %.sroa.7.0, -2, !dbg !30796
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !30312)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !30312)
  %..i245 = call noundef i32 @llvm.smin.i32(i32 %i.ay, i32 %.sroa.16.0..sroa.17.0), !dbg !30797
    #dbg_value(ptr undef, !11224, !DIExpression(DW_OP_deref), !30314)
    #dbg_value(ptr undef, !11225, !DIExpression(DW_OP_deref), !30314)
  %i.az = insertelement <2 x i32> poison, i32 %..i245, i64 0, !dbg !30798
  %i.ba = insertelement <2 x i32> %i.az, i32 %..i, i64 1, !dbg !30798
  %i.bb = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ba, <2 x i32> zeroinitializer), !dbg !30798
  %i.bc = insertelement <2 x i32> poison, i32 %.sroa.16.0..sroa.17.0, i64 0, !dbg !30799
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !30799
  %i.be = sub <2 x i32> %i.bb, %i.bd, !dbg !30799
    #dbg_value(!DIArgList(i32 poison, i32 poison), !30547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !30572)
  %i.bf = sitofp <2 x i32> %i.be to <2 x double>, !dbg !30800
  %i.bg = insertelement <2 x double> poison, double %i.aw, i64 0, !dbg !30801
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !30801
  %i.bi = fdiv <2 x double> %i.bf, %i.bh, !dbg !30801 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1, !dbg !30802
  %i.bk = call double @llvm.floor.f64(double %i.bj), !dbg !30802
  %i.bl = call i32 @llvm.fptosi.sat.i32.f64(double %i.bk), !dbg !30801
    #dbg_value(double poison, !30573, !DIExpression(), !30576)
  %i.bm = extractelement <2 x double> %i.bi, i64 0, !dbg !30803
  %i.bn = call double @llvm.fabs.f64(double %i.bm), !dbg !30803
    #dbg_value(double %i.bn, !30577, !DIExpression(), !30580)
    #dbg_value(double %i.bn, !30581, !DIExpression(), !30584)
  %i.bo = call double @llvm.ceil.f64(double %i.bn), !dbg !30804
  %i.bp = call i32 @llvm.fptosi.sat.i32.f64(double %i.bo), !dbg !30805 ; 2 uses
  %i.bq = add i32 %i.bp, %.sroa.027.0..sroa.0.0, !dbg !30805 ; 2 uses
    #dbg_value(i32 %i.bq, !30488, !DIExpression(), !30585)
  %i.br = add i32 %.sroa.067.0, -2, !dbg !30806
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !30319)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !30319)
  %..i247 = call noundef i32 @llvm.smin.i32(i32 %i.br, i32 %.sroa.0.0..sroa.027.0), !dbg !30807
  %i.bs = add i32 %.sroa.027.0..sroa.0.0, -1, !dbg !30808
  %i.bt = add i32 %i.bs, %i.bl, !dbg !30808
    #dbg_value(ptr undef, !11216, !DIExpression(DW_OP_deref), !30321)
    #dbg_value(ptr undef, !11220, !DIExpression(DW_OP_deref), !30321)
  %..i248 = call noundef i32 @llvm.smin.i32(i32 %i.bt, i32 %..i247), !dbg !30809 ; 4 uses
    #dbg_value(i32 %..i248, !30489, !DIExpression(), !30586)
  %i.bu = sitofp i32 %.sroa.16.0..sroa.17.0 to double, !dbg !30810
    #dbg_value(i32 %i.bp, !30547, !DIExpression(), !30588)
  %i.bv = sitofp i32 %i.bp to double, !dbg !30811
  %i.bw = fmul double %i.aw, %i.bv, !dbg !30587
  %i.bx = fadd double %i.bw, %i.bu, !dbg !30552   ; 2 uses
    #dbg_value(double %i.bx, !30490, !DIExpression(), !30589)
    #dbg_value(double %i.bx, !30562, !DIExpression(), !30591)
    #dbg_value(double %i.bx, !30566, !DIExpression(), !30594)
    #dbg_value(i32 %i.bq, !30491, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30595)
    #dbg_value(i32 %..i248, !30491, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30595)
    #dbg_value(i8 poison, !30491, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30595)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30284)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30283)
  %.not.i307 = icmp sgt i32 %i.bq, %..i248
  br i1 %.not.i307, label %._crit_edge, label %.lr.ph, !dbg !30812

.lr.ph:                                           ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.5.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i251 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.516.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.413.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.5.0..sroa_idx.i254 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br label %bb.l, !dbg !30812

bb.k:                                             ; preds = %bb.h
    #dbg_value(i32 %3, !30460, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %2, !30460, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
    #dbg_value(i32 %5, !30461, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30510)
    #dbg_value(i32 %4, !30461, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30510)
  br label %bb.j, !dbg !30813

bb.l:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262
  %.sroa.071.0309 = phi double [ %i.bx, %.lr.ph ], [ %i.ez, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262 ] ; 5 uses
  %.sroa.0285.0308 = phi i32 [ %i.bq, %.lr.ph ], [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262 ] ; 5 uses
    #dbg_value(double %.sroa.071.0309, !30566, !DIExpression(), !30594)
    #dbg_value(i32 %.sroa.0285.0308, !30491, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30595)
    #dbg_value(i32 %.sroa.0285.0308, !11237, !DIExpression(), !30323)
    #dbg_value(i32 %.sroa.0285.0308, !11247, !DIExpression(), !30325)
    #dbg_value(i64 1, !11244, !DIExpression(), !30323)
    #dbg_value(i32 1, !11245, !DIExpression(), !30326)
    #dbg_value(i32 1, !11250, !DIExpression(), !30325)
  %i.cc = call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0285.0308, i32 1), !dbg !30814 ; 2 uses
  %i.cd = extractvalue { i32, i1 } %i.cc, 0, !dbg !30815 ; 2 uses
  %i.ce = extractvalue { i32, i1 } %i.cc, 1, !dbg !30815
    #dbg_value(i1 %i.ce, !30491, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30595)
    #dbg_value(i32 %i.cd, !30491, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30595)
    #dbg_value(i32 %.sroa.0285.0308, !30492, !DIExpression(), !30596)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !30816
  %i.cf = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.071.0309), !dbg !30817 ; 3 uses
    #dbg_value(double %.sroa.071.0309, !30562, !DIExpression(), !30599)
    #dbg_value(double %.sroa.071.0309, !30566, !DIExpression(), !30602)
  %i.cg = call double @llvm.floor.f64(double %.sroa.071.0309), !dbg !30818 ; 2 uses
  %i.ch = fadd double %i.cg, 1.000000e+00, !dbg !30819
  %i.ci = fsub double %i.ch, %.sroa.071.0309, !dbg !30819 ; 2 uses
    #dbg_value(ptr poison, !11279, !DIExpression(), !30329)
    #dbg_value(ptr poison, !11286, !DIExpression(DW_OP_deref, DW_OP_deref), !30330)
    #dbg_value(ptr poison, !11287, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !30330)
    #dbg_value(ptr poison, !11288, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !30330)
    #dbg_value(i32 %.sroa.0285.0308, !11291, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30330)
    #dbg_value(i32 %i.cf, !11291, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30330)
    #dbg_value(double %i.ci, !11285, !DIExpression(), !30330)
    #dbg_value(double %i.ci, !11280, !DIExpression(), !30331)
    #dbg_value(double %i.ci, !11280, !DIExpression(), !30332)
    #dbg_value(i32 %.sroa.0285.0308, !11289, !DIExpression(), !30333)
    #dbg_value(i32 %i.cf, !11290, !DIExpression(), !30333)
  %i.cj = load i8, ptr %i.j, align 1, !dbg !30820, !range !5912, !noalias !30603, !noundef !3137
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !30820
  %i.cl = load ptr, ptr %i.r, align 8, !dbg !30821, !noalias !30603, !nonnull !3137, !align !5401, !noundef !3137 ; 2 uses
  br i1 %i.ck, label %bb.n, label %bb.m, !dbg !30820

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30822, !noalias !30603
  %i.cm = load ptr, ptr %i.q, align 8, !dbg !30822, !noalias !30603, !nonnull !3137, !align !5401, !noundef !3137 ; 4 uses
    #dbg_value(ptr %i.cm, !11294, !DIExpression(), !30338)
    #dbg_value(ptr %i.cm, !11301, !DIExpression(), !30340)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !30823
  %i.co = load i8, ptr %i.cn, align 8, !dbg !30823, !alias.scope !30604, !noalias !30605, !noundef !3137
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 9, !dbg !30824
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !30824, !alias.scope !30604, !noalias !30605, !noundef !3137
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 10, !dbg !30825
  %i.cs = load i8, ptr %i.cr, align 2, !dbg !30825, !alias.scope !30604, !noalias !30605, !noundef !3137
  %i.ct = load double, ptr %i.cm, align 8, !dbg !30826, !alias.scope !30604, !noalias !30605, !noundef !3137
    #dbg_value(ptr undef, !11279, !DIExpression(), !30329)
  %i.cu = fmul double %i.ci, %i.ct, !dbg !30827
  store double %i.cu, ptr %i.c, align 8, !dbg !30828, !noalias !30603
  store i8 %i.co, ptr %i.by, align 8, !dbg !30828, !noalias !30603
  store i8 %i.cq, ptr %.sroa.415.0..sroa_idx.i, align 1, !dbg !30828, !noalias !30603
  store i8 %i.cs, ptr %.sroa.516.0..sroa_idx.i, align 2, !dbg !30828, !noalias !30603
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cl, i32 noundef %.sroa.0285.0308, i32 noundef %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.c), !dbg !30829, !noalias !30606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30830, !noalias !30603
  br label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !30831

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !30832, !noalias !30603
  %i.cv = load ptr, ptr %i.q, align 8, !dbg !30832, !noalias !30603, !nonnull !3137, !align !5401, !noundef !3137 ; 4 uses
    #dbg_value(ptr %i.cv, !11294, !DIExpression(), !30345)
    #dbg_value(ptr %i.cv, !11301, !DIExpression(), !30347)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !30833
  %i.cx = load i8, ptr %i.cw, align 8, !dbg !30833, !alias.scope !30607, !noalias !30608, !noundef !3137
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 9, !dbg !30834
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !30834, !alias.scope !30607, !noalias !30608, !noundef !3137
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 10, !dbg !30835
  %i.db = load i8, ptr %i.da, align 2, !dbg !30835, !alias.scope !30607, !noalias !30608, !noundef !3137
  %i.dc = load double, ptr %i.cv, align 8, !dbg !30836, !alias.scope !30607, !noalias !30608, !noundef !3137
    #dbg_value(ptr undef, !11279, !DIExpression(), !30280)
  %i.dd = fmul double %i.ci, %i.dc, !dbg !30837
  store double %i.dd, ptr %i.d, align 8, !dbg !30838, !noalias !30603
  store i8 %i.cx, ptr %i.bz, align 8, !dbg !30838, !noalias !30603
  store i8 %i.cz, ptr %.sroa.413.0..sroa_idx.i, align 1, !dbg !30838, !noalias !30603
  store i8 %i.db, ptr %.sroa.5.0..sroa_idx.i249, align 2, !dbg !30838, !noalias !30603
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cl, i32 noundef %i.cf, i32 noundef %.sroa.0285.0308, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !dbg !30839, !noalias !30606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !30840, !noalias !30603
  br label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0CsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !30831

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.m, %bb.n
    #dbg_value(ptr %i.h, !30609, !DIExpression(), !30613)
    #dbg_value(ptr %i.h, !30614, !DIExpression(), !30618)
  %i.de = load i8, ptr %i.h, align 8, !dbg !30841, !range !11263, !noundef !3137
  %.not234 = icmp eq i8 %i.de, -2, !dbg !30841
  br i1 %.not234, label %bb.y, label %bb.ab, !dbg !30842

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262, %bb.j
  %.sroa.071.0.lcssa = phi double [ %i.bx, %bb.j ], [ %i.ez, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262 ], !dbg !30586 ; 7 uses
    #dbg_value(i8 poison, !30491, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30595)
    #dbg_value(i32 poison, !30491, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30595)
  %i.df = icmp sgt i32 %.sroa.0.0..sroa.027.0, %..i248, !dbg !30843
  br i1 %i.df, label %bb.p, label %bb.o, !dbg !30843

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit250, %bb.s, %bb.p, %._crit_edge
  store i8 -2, ptr %0, align 8, !dbg !30844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !30845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !30846
  br label %bb.w, !dbg !30847

bb.p:                                             ; preds = %._crit_edge
  %i.dg = sitofp i32 %.sroa.17.0..sroa.16.0 to double, !dbg !30848 ; 2 uses
  %i.dh = fcmp olt double %.sroa.071.0.lcssa, %i.dg, !dbg !30849
  br i1 %i.dh, label %bb.q, label %bb.o, !dbg !30849

bb.q:                                             ; preds = %bb.p
  %i.di = add nsw i32 %..i248, 1, !dbg !30850     ; 2 uses
    #dbg_value(i32 %i.di, !30497, !DIExpression(), !30619)
    #dbg_value(double %.sroa.071.0.lcssa, !30562, !DIExpression(), !30621)
    #dbg_value(double %.sroa.071.0.lcssa, !30566, !DIExpression(), !30624)
  %i.dj = call double @llvm.floor.f64(double %.sroa.071.0.lcssa), !dbg !30851 ; 2 uses
  %i.dk = fadd double %i.dj, 1.000000e+00, !dbg !30852
  %i.dl = fsub double %i.dk, %.sroa.071.0.lcssa, !dbg !30852 ; 2 uses
  %i.dm = fcmp ogt double %i.dl, 1.000000e-05, !dbg !30852
  br i1 %i.dm, label %bb.r, label %bb.s, !dbg !30852

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !30853
  %i.dn = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.071.0.lcssa), !dbg !30854
    #dbg_value(double %.sroa.071.0.lcssa, !30562, !DIExpression(), !30627)
    #dbg_value(double %.sroa.071.0.lcssa, !30566, !DIExpression(), !30630)
  call fastcc void @_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0CsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, i32 noundef %i.di, i32 noundef %i.dn, double noundef %i.dl) #27, !dbg !30855
    #dbg_value(ptr %i.f, !30609, !DIExpression(), !30633)
    #dbg_value(ptr %i.f, !30614, !DIExpression(), !30636)
  %i.do = load i8, ptr %i.f, align 8, !dbg !30856, !range !11263, !noundef !3137
  %.not232 = icmp eq i8 %i.do, -2, !dbg !30856
  br i1 %.not232, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.t, !dbg !30857

bb.s:                                             ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(double %.sroa.071.0.lcssa, !30562, !DIExpression(), !30638)
    #dbg_value(double %.sroa.071.0.lcssa, !30566, !DIExpression(), !30641)
  %i.dp = fsub double %.sroa.071.0.lcssa, %i.dj, !dbg !30858 ; 2 uses
  %i.dq = fcmp ogt double %i.dp, 1.000000e-05, !dbg !30858
  %i.dr = fadd double %.sroa.071.0.lcssa, 1.000000e+00
  %i.ds = fcmp olt double %i.dr, %i.dg
  %or.cond = and i1 %i.ds, %i.dq, !dbg !30858
  br i1 %or.cond, label %bb.u, label %bb.o, !dbg !30858

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.r
    #dbg_value(ptr %i.f, !11265, !DIExpression(), !30354)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !30859
  br label %bb.s, !dbg !30860
end_hunk_2
begin_hunk_3_@_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a

bb.ag:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer4line9draw_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0CsaTqK2fWTXJW_11qlog_dancer.exit256
    #dbg_value(double poison, !30490, !DIExpression(), !30589)
    #dbg_value(double poison, !30562, !DIExpression(), !30591)
    #dbg_value(double poison, !30566, !DIExpression(), !30594)
    #dbg_value(ptr %i.g, !11265, !DIExpression(), !30389)
  %i.ez = fadd double %i.aw, %.sroa.071.0309, !dbg !30901 ; 2 uses
    #dbg_value(double %i.ez, !30490, !DIExpression(), !30589)
    #dbg_value(double %i.ez, !30562, !DIExpression(), !30591)
    #dbg_value(double %i.ez, !30566, !DIExpression(), !30594)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !30899
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !30391)
  %i.fa = load i8, ptr %i.h, align 8, !dbg !30902, !range !11263, !alias.scope !30668, !noundef !3137
  %i.fb = icmp eq i8 %i.fa, -2, !dbg !30902
  br i1 %i.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262, label %bb.ah, !dbg !30902

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h), !dbg !30902
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262, !dbg !30902

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit262: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30903
    #dbg_value(i8 poison, !30491, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30595)
    #dbg_value(i32 %i.cd, !30491, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30595)
    #dbg_value(double %i.ez, !30566, !DIExpression(), !30594)
    #dbg_value(double %i.ez, !30562, !DIExpression(), !30591)
    #dbg_value(double %i.ez, !30490, !DIExpression(), !30589)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30284)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30283)
  %.not.i = icmp sgt i32 %i.cd, %..i248
  %or.cond301 = or i1 %i.ce, %.not.i, !dbg !30812
  br i1 %or.cond301, label %._crit_edge, label %bb.l, !dbg !30812

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit261: ; preds = %bb.af, %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30903
  br label %bb.x, !dbg !30904

bb.ai:                                            ; preds = %bb.ad, %bb.ar
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !30905
  unreachable, !dbg !30905

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit258: ; preds = %bb.ac, %bb.ad, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.et, %bb.ac ], [ %i.gv, %bb.ar ], [ %i.et, %bb.ad ]
  resume { ptr, i32 } %.pn, !dbg !30905

bb.aj:                                            ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit269
  %.sroa.0281.0310 = phi i32 [ %.sroa.0.1, %bb.i ], [ %i.fp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit269 ] ; 2 uses
    #dbg_value(i32 %.sroa.0281.0310, !11237, !DIExpression(), !30395)
    #dbg_value(i32 %.sroa.0281.0310, !11247, !DIExpression(), !30397)
    #dbg_value(i64 1, !11244, !DIExpression(), !30395)
    #dbg_value(i32 1, !11245, !DIExpression(), !30398)
    #dbg_value(i32 1, !11250, !DIExpression(), !30397)
    #dbg_value(i32 poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30546)
    #dbg_value(i1 poison, !30477, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30546)
    #dbg_value(i32 %.sroa.0281.0310, !30478, !DIExpression(), !30670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !30906
  %i.fd = load ptr, ptr %i.r, align 8, !dbg !30907, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.fd, !30459, !DIExpression(), !30510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !30908
  %i.fe = load ptr, ptr %i.q, align 8, !dbg !30908, !nonnull !3137, !align !5401, !noundef !3137 ; 4 uses
    #dbg_value(ptr %i.fe, !30462, !DIExpression(), !30510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30672), !dbg !30909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30673), !dbg !30909
    #dbg_value(ptr %i.fe, !11294, !DIExpression(), !30403)
    #dbg_value(ptr %i.fe, !11301, !DIExpression(), !30405)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !30910
  %i.fg = load i8, ptr %i.ff, align 8, !dbg !30910, !alias.scope !30673, !noalias !30672, !noundef !3137
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 9, !dbg !30911
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !30911, !alias.scope !30673, !noalias !30672, !noundef !3137
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 10, !dbg !30912
  %i.fk = load i8, ptr %i.fj, align 2, !dbg !30912, !alias.scope !30673, !noalias !30672, !noundef !3137
  %i.fl = load double, ptr %i.fe, align 8, !dbg !30913, !alias.scope !30673, !noalias !30672, !noundef !3137
  store double %i.fl, ptr %i.k, align 8, !dbg !30914, !alias.scope !30672, !noalias !30673
  store i8 %i.fg, ptr %i.am, align 8, !dbg !30914, !alias.scope !30672, !noalias !30673
  store i8 %i.fi, ptr %.sroa.4.0..sroa_idx.i267, align 1, !dbg !30914, !alias.scope !30672, !noalias !30673
  store i8 %i.fk, ptr %.sroa.5.0..sroa_idx.i268, align 2, !dbg !30914, !alias.scope !30672, !noalias !30673
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.fd, i32 noundef %.sroa.0281.0310, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.k), !dbg !30915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !30916
    #dbg_value(ptr %i.l, !30609, !DIExpression(), !30676)
    #dbg_value(ptr %i.l, !30614, !DIExpression(), !30679)
  %i.fm = load i8, ptr %i.l, align 8, !dbg !30917, !range !11263, !noundef !3137
  %.not237 = icmp eq i8 %i.fm, -2, !dbg !30917
  br i1 %.not237, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit269, label %bb.al, !dbg !30918

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit269
    #dbg_value(i32 poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30546)
    #dbg_value(i8 poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30546)
  store i8 -2, ptr %0, align 8, !dbg !30919
  br label %bb.w, !dbg !30920

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit269: ; preds = %bb.aj
  %i.fn = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0281.0310, i32 1), !dbg !30921 ; 2 uses
  %i.fo = extractvalue { i32, i1 } %i.fn, 1, !dbg !30922
    #dbg_value(i1 %i.fo, !30477, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30546)
  %i.fp = extractvalue { i32, i1 } %i.fn, 0, !dbg !30922 ; 2 uses
    #dbg_value(i32 %i.fp, !30477, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30546)
    #dbg_value(ptr %i.l, !11265, !DIExpression(), !30408)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !30923
    #dbg_value(i8 poison, !30477, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30546)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30288)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30287)
  %.not.i263 = icmp sgt i32 %i.fp, %.sroa.027.1
  %or.cond302 = or i1 %i.fo, %.not.i263, !dbg !30783
  br i1 %or.cond302, label %bb.ak, label %bb.aj, !dbg !30783

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !dbg !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !30923
  br label %bb.w, !dbg !30761

bb.am:                                            ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276
  %.sroa.0278.0311 = phi i32 [ %.sroa.17.2, %bb.g ], [ %i.gc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276 ] ; 2 uses
    #dbg_value(i32 %.sroa.0278.0311, !11237, !DIExpression(), !30410)
    #dbg_value(i32 %.sroa.0278.0311, !11247, !DIExpression(), !30412)
    #dbg_value(i64 1, !11244, !DIExpression(), !30410)
    #dbg_value(i32 1, !11245, !DIExpression(), !30413)
    #dbg_value(i32 1, !11250, !DIExpression(), !30412)
    #dbg_value(i32 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30538)
    #dbg_value(i1 poison, !30473, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30538)
    #dbg_value(i32 %.sroa.0278.0311, !30474, !DIExpression(), !30680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !30925
  %i.fq = load ptr, ptr %i.r, align 8, !dbg !30926, !nonnull !3137, !align !5401, !noundef !3137
    #dbg_value(ptr %i.fq, !30459, !DIExpression(), !30510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !30927
  %i.fr = load ptr, ptr %i.q, align 8, !dbg !30927, !nonnull !3137, !align !5401, !noundef !3137 ; 4 uses
    #dbg_value(ptr %i.fr, !30462, !DIExpression(), !30510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30682), !dbg !30928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30683), !dbg !30928
    #dbg_value(ptr %i.fr, !11294, !DIExpression(), !30418)
    #dbg_value(ptr %i.fr, !11301, !DIExpression(), !30420)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8, !dbg !30929
  %i.ft = load i8, ptr %i.fs, align 8, !dbg !30929, !alias.scope !30683, !noalias !30682, !noundef !3137
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 9, !dbg !30930
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !30930, !alias.scope !30683, !noalias !30682, !noundef !3137
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 10, !dbg !30931
  %i.fx = load i8, ptr %i.fw, align 2, !dbg !30931, !alias.scope !30683, !noalias !30682, !noundef !3137
  %i.fy = load double, ptr %i.fr, align 8, !dbg !30932, !alias.scope !30683, !noalias !30682, !noundef !3137
  store double %i.fy, ptr %i.m, align 8, !dbg !30933, !alias.scope !30682, !noalias !30683
  store i8 %i.ft, ptr %i.ah, align 8, !dbg !30933, !alias.scope !30682, !noalias !30683
  store i8 %i.fv, ptr %.sroa.4.0..sroa_idx.i274, align 1, !dbg !30933, !alias.scope !30682, !noalias !30683
  store i8 %i.fx, ptr %.sroa.5.0..sroa_idx.i275, align 2, !dbg !30933, !alias.scope !30682, !noalias !30683
  call void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.fq, i32 noundef %2, i32 noundef %.sroa.0278.0311, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m), !dbg !30934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !30935
    #dbg_value(ptr %i.n, !30609, !DIExpression(), !30685)
    #dbg_value(ptr %i.n, !30614, !DIExpression(), !30687)
  %i.fz = load i8, ptr %i.n, align 8, !dbg !30936, !range !11263, !noundef !3137
  %.not238 = icmp eq i8 %i.fz, -2, !dbg !30936
  br i1 %.not238, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276, label %bb.ao, !dbg !30937

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276
    #dbg_value(i32 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30538)
    #dbg_value(i8 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30538)
  store i8 -2, ptr %0, align 8, !dbg !30938
  br label %bb.w, !dbg !30939

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit276: ; preds = %bb.am
  %i.ga = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0278.0311, i32 1), !dbg !30940 ; 2 uses
  %i.gb = extractvalue { i32, i1 } %i.ga, 1, !dbg !30941
    #dbg_value(i1 %i.gb, !30473, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !30538)
  %i.gc = extractvalue { i32, i1 } %i.ga, 0, !dbg !30941 ; 2 uses
    #dbg_value(i32 %i.gc, !30473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30538)
    #dbg_value(ptr %i.n, !11265, !DIExpression(), !30423)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30942
    #dbg_value(i8 poison, !30473, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !30538)
    #dbg_value(ptr undef, !11194, !DIExpression(), !30292)
    #dbg_value(ptr undef, !11178, !DIExpression(), !30291)
  %.not.i270 = icmp sgt i32 %i.gc, %.sroa.16.1
  %or.cond303 = or i1 %i.gb, %.not.i270, !dbg !30775
  br i1 %or.cond303, label %bb.an, label %bb.am, !dbg !30775

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !30943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !30942
  br label %bb.w, !dbg !30761

bb.ap:                                            ; preds = %bb.e
  store i8 -2, ptr %0, align 8, !dbg !30944
  br label %bb.w, !dbg !30945

bb.aq:                                            ; preds = %bb.e
  %i.gd = insertelement <2 x i32> poison, i32 %i.w, i64 0, !dbg !30946
  %i.ge = insertelement <2 x i32> %i.gd, i32 %i.y, i64 1, !dbg !30946
  %i.gf = sitofp <2 x i32> %i.ge to <2 x double>, !dbg !30946
    #dbg_value(double poison, !30465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30689)
  %i.gg = insertelement <2 x double> poison, double %i.ae, i64 0, !dbg !30946
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !30946
  %i.gi = fdiv <2 x double> %i.gf, %i.gh, !dbg !30946 ; 2 uses
    #dbg_value(double poison, !30465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30689)
    #dbg_value(ptr %6, !30462, !DIExpression(), !30510)
    #dbg_value(i32 %.val243, !30690, !DIExpression(), !30693)
  %i.gj = uitofp i32 %.val243 to double, !dbg !30947
  %i.gk = fmul nnan double %i.gj, 5.000000e-01, !dbg !30692 ; 4 uses
  %i.gl = extractelement <2 x double> %i.gi, i64 1, !dbg !30948 ; 2 uses
    #dbg_value(double %i.gk, !30466, !DIExpression(), !30694)
  %i.gm = fmul double %i.gl, %i.gk, !dbg !30949   ; 2 uses
  %i.gn = extractelement <2 x double> %i.gi, i64 0, !dbg !30950 ; 2 uses
  %i.go = fneg double %i.gn, !dbg !30951
  %i.gp = fmul double %i.gk, %i.go, !dbg !30951   ; 2 uses
  %i.gq = fneg double %i.gl, !dbg !30948
  %i.gr = fmul double %i.gk, %i.gq, !dbg !30948   ; 2 uses
  %i.gs = fmul double %i.gn, %i.gk, !dbg !30950   ; 2 uses
    #dbg_value(double %i.gm, !30467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30695)
    #dbg_value(double %i.gp, !30467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(double %i.gr, !30467, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30695)
    #dbg_value(double %i.gs, !30467, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !30952
  store i64 0, ptr %i.p, align 8, !dbg !30953
  %i.gt = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !30953 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.gt, align 8, !dbg !30953
  %i.gu = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !30953 ; 5 uses
  store i64 0, ptr %i.gu, align 8, !dbg !30953
    #dbg_value(ptr undef, !30469, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30507)
    #dbg_value(!DIArgList(ptr undef, i64 8), !30469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30507)
    #dbg_value(ptr undef, !30470, !DIExpression(), !30506)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30509)
    #dbg_value(!DIArgList(ptr undef, i64 0), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30703, !DIExpression(), !30710)
    #dbg_value(i32 %2, !30547, !DIExpression(), !30712)
    #dbg_value(i32 %3, !30547, !DIExpression(), !30714)
    #dbg_value(i32 poison, !30707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30710)
    #dbg_value(i32 poison, !30707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30710)
    #dbg_value(ptr %i.p, !30715, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30723, !DIExpression(), !30434)
    #dbg_value(i32 poison, !30719, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 poison, !30719, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30728, !DIExpression(), !30439)
    #dbg_value(i64 0, !30720, !DIExpression(), !30440)
    #dbg_value(i64 0, !30737, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30735, !DIExpression(), !30444)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge337 unwind label %bb.ar, !dbg !30954

bb.ar:                                            ; preds = %bb.aw, %bb.au, %bb.as, %bb.aq
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTllEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit258 unwind label %bb.ai, !dbg !30955

._crit_edge337:                                   ; preds = %bb.aq
  %i.gw = sitofp i32 %3 to double                 ; 2 uses
  %i.gx = fadd double %i.gp, %i.gw, !dbg !30956
  %i.gy = call i32 @llvm.fptosi.sat.i32.f64(double %i.gx), !dbg !30956
    #dbg_value(i32 %i.gy, !30707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30710)
    #dbg_value(i32 %i.gy, !30719, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
  %i.gz = sitofp i32 %2 to double                 ; 2 uses
  %i.ha = fadd double %i.gm, %i.gz, !dbg !30957
  %i.hb = call i32 @llvm.fptosi.sat.i32.f64(double %i.ha), !dbg !30957
    #dbg_value(i32 %i.hb, !30707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30710)
    #dbg_value(i32 %i.hb, !30719, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
  %.pre = load ptr, ptr %i.gt, align 8, !dbg !30958, !alias.scope !30740 ; 2 uses
    #dbg_value(ptr %.pre, !30738, !DIExpression(), !30443)
    #dbg_value(ptr %.pre, !30721, !DIExpression(), !30453)
    #dbg_value(ptr %.pre, !30751, !DIExpression(), !30456)
    #dbg_value(i32 %i.hb, !30754, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.gy, !30754, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.hb, ptr %.pre, align 4, !dbg !30959
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre, i64 4, !dbg !30959
  store i32 %i.gy, ptr %i.hc, align 4, !dbg !30959
  store i64 1, ptr %i.gu, align 8, !dbg !30960, !alias.scope !30740
    #dbg_value(!DIArgList(ptr undef, i64 16), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30703, !DIExpression(), !30710)
    #dbg_value(i32 %2, !30547, !DIExpression(), !30712)
  %i.hd = fadd double %i.gr, %i.gz, !dbg !30957
  %i.he = call i32 @llvm.fptosi.sat.i32.f64(double %i.hd), !dbg !30957
    #dbg_value(i32 %3, !30547, !DIExpression(), !30714)
  %i.hf = fadd double %i.gs, %i.gw, !dbg !30956
  %i.hg = call i32 @llvm.fptosi.sat.i32.f64(double %i.hf), !dbg !30956
    #dbg_value(i32 %i.he, !30707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30710)
    #dbg_value(i32 %i.hg, !30707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30710)
    #dbg_value(ptr %i.p, !30715, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30723, !DIExpression(), !30434)
    #dbg_value(i32 %i.he, !30719, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 %i.hg, !30719, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30728, !DIExpression(), !30439)
    #dbg_value(i64 1, !30720, !DIExpression(), !30440)
    #dbg_value(i64 1, !30737, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30735, !DIExpression(), !30444)
  %i.hh = load i64, ptr %i.p, align 8, !dbg !30961, !range !5219, !alias.scope !30740, !noundef !3137 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 1, !dbg !30962
  br i1 %i.hi, label %bb.as, label %bb.at, !dbg !30962

bb.as:                                            ; preds = %._crit_edge337
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge338 unwind label %bb.ar, !dbg !30954

._crit_edge338:                                   ; preds = %bb.as
  %.pre339 = load i64, ptr %i.p, align 8, !dbg !30961, !range !5219, !alias.scope !30740
  br label %bb.at, !dbg !30954

bb.at:                                            ; preds = %._crit_edge338, %._crit_edge337
  %i.hj = phi i64 [ %.pre339, %._crit_edge338 ], [ %i.hh, %._crit_edge337 ], !dbg !30961 ; 2 uses
  %i.hk = load ptr, ptr %i.gt, align 8, !dbg !30958, !alias.scope !30740, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(ptr %i.hk, !30738, !DIExpression(), !30443)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8, !dbg !30963
    #dbg_value(ptr %i.hl, !30721, !DIExpression(), !30453)
    #dbg_value(ptr %i.hl, !30751, !DIExpression(), !30456)
    #dbg_value(i32 %i.he, !30754, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.hg, !30754, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.he, ptr %i.hl, align 4, !dbg !30959
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 12, !dbg !30959
  store i32 %i.hg, ptr %i.hm, align 4, !dbg !30959
  store i64 2, ptr %i.gu, align 8, !dbg !30960, !alias.scope !30740
    #dbg_value(double %i.gr, !30467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30695)
    #dbg_value(double %i.gs, !30467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30695)
    #dbg_value(double %i.gm, !30467, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30695)
    #dbg_value(double %i.gp, !30467, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30695)
    #dbg_value(!DIArgList(ptr undef, i64 16), !30469, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30507)
    #dbg_value(ptr undef, !30470, !DIExpression(), !30506)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30471, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !30509)
  %i.hn = sitofp i32 %4 to double                 ; 2 uses
  %i.ho = sitofp i32 %5 to double                 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 0), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30703, !DIExpression(), !30710)
    #dbg_value(i32 %4, !30547, !DIExpression(), !30712)
  %i.hp = fadd double %i.gr, %i.hn, !dbg !30957
  %i.hq = call i32 @llvm.fptosi.sat.i32.f64(double %i.hp), !dbg !30957
    #dbg_value(i32 %5, !30547, !DIExpression(), !30714)
  %i.hr = fadd double %i.gs, %i.ho, !dbg !30956
  %i.hs = call i32 @llvm.fptosi.sat.i32.f64(double %i.hr), !dbg !30956
    #dbg_value(i32 %i.hq, !30707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30710)
    #dbg_value(i32 %i.hs, !30707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30710)
    #dbg_value(ptr %i.p, !30715, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30723, !DIExpression(), !30434)
    #dbg_value(i32 %i.hq, !30719, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 %i.hs, !30719, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30728, !DIExpression(), !30439)
    #dbg_value(i64 2, !30720, !DIExpression(), !30440)
    #dbg_value(i64 2, !30737, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30735, !DIExpression(), !30444)
  %i.ht = icmp eq i64 %i.hj, 2, !dbg !30962
  br i1 %i.ht, label %bb.au, label %bb.av, !dbg !30962

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge340 unwind label %bb.ar, !dbg !30954

._crit_edge340:                                   ; preds = %bb.au
  %.pre341 = load i64, ptr %i.p, align 8, !dbg !30961, !range !5219, !alias.scope !30740
  br label %bb.av, !dbg !30954

bb.av:                                            ; preds = %._crit_edge340, %bb.at
  %i.hu = phi i64 [ %.pre341, %._crit_edge340 ], [ %i.hj, %bb.at ], !dbg !30961
  %i.hv = load ptr, ptr %i.gt, align 8, !dbg !30958, !alias.scope !30740, !nonnull !3137, !noundef !3137 ; 3 uses
    #dbg_value(ptr %i.hv, !30738, !DIExpression(), !30443)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16, !dbg !30963
    #dbg_value(ptr %i.hw, !30721, !DIExpression(), !30453)
    #dbg_value(ptr %i.hw, !30751, !DIExpression(), !30456)
    #dbg_value(i32 %i.hq, !30754, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.hs, !30754, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.hq, ptr %i.hw, align 4, !dbg !30959
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 20, !dbg !30959
  store i32 %i.hs, ptr %i.hx, align 4, !dbg !30959
  store i64 3, ptr %i.gu, align 8, !dbg !30960, !alias.scope !30740
    #dbg_value(!DIArgList(ptr undef, i64 16), !30471, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 16, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30509)
    #dbg_value(ptr undef, !30472, !DIExpression(), !30508)
    #dbg_value(ptr %i.p, !30703, !DIExpression(), !30710)
    #dbg_value(i32 %4, !30547, !DIExpression(), !30712)
  %i.hy = fadd double %i.gm, %i.hn, !dbg !30957
  %i.hz = call i32 @llvm.fptosi.sat.i32.f64(double %i.hy), !dbg !30957
    #dbg_value(i32 %5, !30547, !DIExpression(), !30714)
  %i.ia = fadd double %i.gp, %i.ho, !dbg !30956
  %i.ib = call i32 @llvm.fptosi.sat.i32.f64(double %i.ia), !dbg !30956
    #dbg_value(i32 %i.hz, !30707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30710)
    #dbg_value(i32 %i.ib, !30707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30710)
    #dbg_value(ptr %i.p, !30715, !DIExpression(), !30431)
    #dbg_value(ptr %i.p, !30723, !DIExpression(), !30434)
    #dbg_value(i32 %i.hz, !30719, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30431)
    #dbg_value(i32 %i.ib, !30719, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30431)
    #dbg_value(i64 8, !30728, !DIExpression(), !30439)
    #dbg_value(i64 3, !30720, !DIExpression(), !30440)
    #dbg_value(i64 3, !30737, !DIExpression(), !30443)
    #dbg_value(ptr %i.p, !30735, !DIExpression(), !30444)
  %i.ic = icmp eq i64 %i.hu, 3, !dbg !30962
  br i1 %i.ic, label %bb.aw, label %bb.ax, !dbg !30962

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEE8grow_oneCshnIEpH9fIfn_16plotters_backend(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %._crit_edge342 unwind label %bb.ar, !dbg !30954

._crit_edge342:                                   ; preds = %bb.aw
  %.pre343 = load ptr, ptr %i.gt, align 8, !dbg !30958, !alias.scope !30740
  br label %bb.ax, !dbg !30954

bb.ax:                                            ; preds = %._crit_edge342, %bb.av
  %i.id = phi ptr [ %.pre343, %._crit_edge342 ], [ %i.hv, %bb.av ], !dbg !30958 ; 2 uses
    #dbg_value(ptr %i.id, !30738, !DIExpression(), !30443)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24, !dbg !30963
    #dbg_value(ptr %i.ie, !30721, !DIExpression(), !30453)
    #dbg_value(ptr %i.ie, !30751, !DIExpression(), !30456)
    #dbg_value(i32 %i.hz, !30754, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30456)
    #dbg_value(i32 %i.ib, !30754, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !30456)
  store i32 %i.hz, ptr %i.ie, align 4, !dbg !30959
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 28, !dbg !30959
end_hunk_3
begin_hunk_4_@_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB6_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %.idx537 = shl nuw nsw i64 %i.gw, 4, !dbg !32826
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx537, !dbg !32826
    #dbg_value(ptr %i.gx, !31875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32501)
    #dbg_value(ptr %i.gy, !31875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32501)
    #dbg_value(i32 poison, !31873, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32276)
    #dbg_value(i32 %.sroa.972.0530, !31873, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32276)
    #dbg_value(i32 %.sroa.14.0529, !31873, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32276)
    #dbg_value(i32 %.sroa.16.0528, !31873, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32276)
    #dbg_value(i32 %.sroa.18.0527, !31873, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32276)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32277)
    #dbg_value(ptr undef, !31968, !DIExpression(), !31975)
    #dbg_value(ptr %i.gx, !31969, !DIExpression(), !32502)
    #dbg_value(ptr %i.gx, !32084, !DIExpression(), !32088)
    #dbg_value(ptr %i.gy, !31970, !DIExpression(), !32503)
    #dbg_value(ptr poison, !32504, !DIExpression(), !32508)
    #dbg_value(ptr poison, !32505, !DIExpression(), !32509)
  %i.gz = icmp eq i64 %i.gw, 0, !dbg !32827
  br i1 %i.gz, label %._crit_edge520, label %.lr.ph519, !dbg !32828

.lr.ph519:                                        ; preds = %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit, %.backedge
  %.sroa.031.0518 = phi ptr [ %i.ha, %.backedge ], [ %i.gx, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 5 uses
  %.sroa.068.0517 = phi i32 [ %.sroa.068.0.be, %.backedge ], [ 0, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ]
  %.sroa.972.1516 = phi i32 [ %.sroa.972.1.be, %.backedge ], [ %.sroa.972.0530, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 3 uses
  %.sroa.14.1515 = phi i32 [ %.sroa.14.1.be, %.backedge ], [ %.sroa.14.0529, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 3 uses
  %.sroa.16.1514 = phi i32 [ %.sroa.16.1.be, %.backedge ], [ %.sroa.16.0528, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 3 uses
  %.sroa.18.1513 = phi i32 [ %.sroa.18.1.be, %.backedge ], [ %.sroa.18.0527, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 2 uses
    #dbg_value(i32 %.sroa.972.1516, !31873, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32276)
    #dbg_value(i32 %.sroa.14.1515, !31873, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32276)
    #dbg_value(i32 %.sroa.16.1514, !31873, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32276)
    #dbg_value(i32 %.sroa.18.1513, !31873, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32276)
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.031.0518, i64 16, !dbg !32829 ; 2 uses
    #dbg_value(ptr %i.ha, !31875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32501)
    #dbg_value(ptr %.sroa.031.0518, !31876, !DIExpression(), !32510)
    #dbg_value(ptr %.sroa.031.0518, !32511, !DIExpression(), !32514)
    #dbg_value(ptr %.sroa.031.0518, !32511, !DIExpression(), !32516)
    #dbg_value(ptr undef, !31928, !DIExpression(), !31947)
    #dbg_value(ptr undef, !31922, !DIExpression(), !31946)
  %.not270 = icmp eq i32 %.sroa.068.0517, 1, !dbg !32830
  %.sroa.4116.0..sroa.033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.031.0518, i64 4, !dbg !32831
  %.sroa.5117.0..sroa.033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.031.0518, i64 8, !dbg !32831
  %.sroa.6118.0..sroa.033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.031.0518, i64 12, !dbg !32831
  %.sroa.0115.0.copyload = load i32, ptr %.sroa.031.0518, align 4, !dbg !32831 ; 9 uses
  %.sroa.4116.0.copyload = load i32, ptr %.sroa.4116.0..sroa.033.0..sroa_idx, align 4, !dbg !32831 ; 7 uses
  %.sroa.5117.0.copyload = load i32, ptr %.sroa.5117.0..sroa.033.0..sroa_idx, align 4, !dbg !32831 ; 7 uses
  %.sroa.6118.0.copyload = load i32, ptr %.sroa.6118.0..sroa.033.0..sroa_idx, align 4, !dbg !32831 ; 6 uses
  br i1 %.not270, label %.thread434, label %.backedge, !dbg !32832

._crit_edge520:                                   ; preds = %.backedge, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0527, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.18.1.be, %.backedge ]
  %.sroa.16.1.lcssa = phi i32 [ %.sroa.16.0528, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.16.1.be, %.backedge ]
  %.sroa.14.1.lcssa = phi i32 [ %.sroa.14.0529, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.14.1.be, %.backedge ]
  %.sroa.972.1.lcssa = phi i32 [ %.sroa.972.0530, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.972.1.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !32779
    #dbg_value(i32 %i.et, !31865, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32275)
    #dbg_value(i8 poison, !31865, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !32275)
    #dbg_value(i64 %.sroa.05.1.lcssa, !31863, !DIExpression(), !32273)
    #dbg_value(i32 %.sroa.972.1.lcssa, !31873, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32276)
    #dbg_value(i32 %.sroa.14.1.lcssa, !31873, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32276)
    #dbg_value(i32 %.sroa.16.1.lcssa, !31873, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32276)
    #dbg_value(i32 %.sroa.18.1.lcssa, !31873, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32276)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32277)
    #dbg_value(ptr undef, !11194, !DIExpression(), !31474)
    #dbg_value(ptr undef, !11178, !DIExpression(), !31473)
  %.not.i = icmp sgt i32 %i.et, %spec.select285
  %or.cond444 = or i1 %i.eu, %.not.i, !dbg !32752
  br i1 %or.cond444, label %._crit_edge534, label %bb.r, !dbg !32752

.thread434:                                       ; preds = %.lr.ph519
    #dbg_value(ptr undef, !31928, !DIExpression(), !31930)
    #dbg_value(ptr undef, !31922, !DIExpression(), !31927)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32277)
    #dbg_value(i32 1, !31874, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32277)
    #dbg_value(ptr undef, !31916, !DIExpression(), !31943)
    #dbg_value(i32 %.sroa.0115.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32277)
    #dbg_value(i32 %.sroa.4116.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32277)
    #dbg_value(i32 %.sroa.5117.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32277)
    #dbg_value(ptr undef, !32511, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !32519)
    #dbg_value(ptr undef, !31916, !DIExpression(), !31921)
    #dbg_value(i32 %.sroa.972.1516, !31877, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32520)
    #dbg_value(i32 %.sroa.14.1515, !31877, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32520)
    #dbg_value(i32 %.sroa.16.1514, !31877, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32520)
    #dbg_value(i32 %.sroa.18.1513, !31877, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32520)
    #dbg_value(i32 %.sroa.0115.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32277)
    #dbg_value(i32 %.sroa.4116.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32277)
    #dbg_value(i32 %.sroa.5117.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32277)
    #dbg_value(i32 %.sroa.6118.0.copyload, !31874, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32277)
    #dbg_value(ptr undef, !32511, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !32523)
    #dbg_value(i32 %.sroa.0115.0.copyload, !31878, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32524)
    #dbg_value(i32 %.sroa.4116.0.copyload, !31878, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32524)
    #dbg_value(i32 %.sroa.5117.0.copyload, !31878, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32524)
    #dbg_value(i32 %.sroa.6118.0.copyload, !31878, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32524)
    #dbg_value(ptr undef, !31948, !DIExpression(), !31967)
    #dbg_value(i32 %.sroa.14.1515, !32525, !DIExpression(), !32528)
    #dbg_value(i32 %.sroa.972.1516, !32529, !DIExpression(), !32532)
  %i.hb = icmp eq i32 %.sroa.14.1515, %.sroa.972.1516, !dbg !32833 ; 2 uses
    #dbg_value(ptr undef, !31948, !DIExpression(), !31959)
    #dbg_value(ptr undef, !31948, !DIExpression(), !31953)
  %i.hc = icmp eq i32 %.sroa.4116.0.copyload, %.sroa.0115.0.copyload, !dbg !32524 ; 2 uses
  br i1 %i.hb, label %bb.al, label %bb.an, !dbg !32833

.backedge:                                        ; preds = %.lr.ph519, %bb.al, %bb.an, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit326, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307
  %.sroa.18.1.be = phi i32 [ %.sroa.6118.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 ], [ %.sroa.6118.0.copyload, %bb.am ], [ %.sroa.6118.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit326 ], [ %.sroa.18.1513, %bb.an ], [ %.sroa.6118.0.copyload, %bb.al ], [ %.sroa.6118.0.copyload, %.lr.ph519 ] ; 2 uses
  %.sroa.16.1.be = phi i32 [ %.sroa.5117.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 ], [ %.sroa.5117.0.copyload, %bb.am ], [ %.sroa.5117.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit326 ], [ %.sroa.16.1514, %bb.an ], [ %.sroa.5117.0.copyload, %bb.al ], [ %.sroa.5117.0.copyload, %.lr.ph519 ] ; 2 uses
  %.sroa.14.1.be = phi i32 [ %.sroa.4116.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 ], [ %.sroa.0115.0.copyload, %bb.am ], [ %.sroa.4116.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit326 ], [ %.sroa.14.1515, %bb.an ], [ %.sroa.4116.0.copyload, %bb.al ], [ %.sroa.4116.0.copyload, %.lr.ph519 ] ; 2 uses
  %.sroa.972.1.be = phi i32 [ %.sroa.0115.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 ], [ %.sroa.0115.0.copyload, %bb.am ], [ %.sroa.0115.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit326 ], [ %.sroa.972.1516, %bb.an ], [ %.sroa.0115.0.copyload, %bb.al ], [ %.sroa.0115.0.copyload, %.lr.ph519 ] ; 2 uses
  %.sroa.068.0.be = phi i32 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 ], [ 0, %bb.am ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit326 ], [ 1, %bb.an ], [ 1, %bb.al ], [ 1, %.lr.ph519 ]
    #dbg_value(ptr %i.ha, !31875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32501)
    #dbg_value(i32 poison, !31873, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32276)
    #dbg_value(i32 %.sroa.972.1.be, !31873, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32276)
    #dbg_value(i32 %.sroa.14.1.be, !31873, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32276)
    #dbg_value(i32 %.sroa.16.1.be, !31873, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32276)
    #dbg_value(i32 %.sroa.18.1.be, !31873, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32276)
    #dbg_value(i32 0, !31874, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !32277)
    #dbg_value(i32 poison, !31874, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !32277)
    #dbg_value(ptr undef, !31968, !DIExpression(), !31975)
    #dbg_value(ptr %i.ha, !31969, !DIExpression(), !32502)
    #dbg_value(ptr %i.ha, !32084, !DIExpression(), !32088)
    #dbg_value(ptr %i.gy, !31970, !DIExpression(), !32503)
    #dbg_value(ptr poison, !32504, !DIExpression(), !32508)
    #dbg_value(ptr poison, !32505, !DIExpression(), !32509)
  %i.hd = icmp eq ptr %i.ha, %i.gy, !dbg !32827
  br i1 %i.hd, label %._crit_edge520, label %.lr.ph519, !dbg !32828

bb.al:                                            ; preds = %.thread434
  br i1 %i.hc, label %bb.am, label %.backedge, !dbg !32834

bb.am:                                            ; preds = %bb.al, %bb.an
    #dbg_value(ptr undef, !31954, !DIExpression(), !31963)
    #dbg_value(i32 %.sroa.16.1514, !32533, !DIExpression(), !32536)
  %i.he = sitofp i32 %.sroa.16.1514 to double, !dbg !32835
  %i.hf = sub i32 %.sroa.18.1513, %.sroa.16.1514, !dbg !32836
    #dbg_value(i32 %i.hf, !32537, !DIExpression(), !32540)
  %i.hg = zext i32 %.sroa.972.1516 to i64, !dbg !32837
  %i.hh = uitofp i32 %.sroa.14.1515 to double, !dbg !32838
    #dbg_value(double poison, !31879, !DIExpression(), !32541)
    #dbg_value(double poison, !32542, !DIExpression(), !32545)
    #dbg_value(double poison, !32546, !DIExpression(), !32549)
    #dbg_value(double poison, !32542, !DIExpression(), !32551)
    #dbg_value(double poison, !32546, !DIExpression(), !32554)
    #dbg_value(double poison, !32555, !DIExpression(), !32558)
    #dbg_value(double poison, !32559, !DIExpression(), !32563)
    #dbg_value(double poison, !32542, !DIExpression(), !32565)
    #dbg_value(double poison, !32546, !DIExpression(), !32568)
    #dbg_value(double poison, !32555, !DIExpression(), !32570)
    #dbg_value(double poison, !32559, !DIExpression(), !32573)
    #dbg_value(double poison, !32542, !DIExpression(), !32575)
    #dbg_value(double poison, !32546, !DIExpression(), !32578)
    #dbg_value(ptr undef, !31954, !DIExpression(), !31957)
    #dbg_value(i32 %.sroa.5117.0.copyload, !32533, !DIExpression(), !32581)
  %i.hi = sitofp i32 %.sroa.5117.0.copyload to double, !dbg !32839
  %i.hj = sub i32 %.sroa.6118.0.copyload, %.sroa.5117.0.copyload, !dbg !32840
    #dbg_value(i32 %i.hj, !32537, !DIExpression(), !32583)
    #dbg_value(i32 %.sroa.0115.0.copyload, !32529, !DIExpression(), !32585)
  %i.hk = zext i32 %.sroa.0115.0.copyload to i64, !dbg !32841
    #dbg_value(i32 %.sroa.4116.0.copyload, !32525, !DIExpression(), !32587)
  %i.hl = uitofp i32 %.sroa.4116.0.copyload to double, !dbg !32842
  %i.hm = sext i32 %i.hf to i64, !dbg !32843
  %i.hn = mul nsw i64 %i.hg, %i.hm, !dbg !32844
  %i.ho = sitofp i64 %i.hn to double, !dbg !32844
  %i.hp = sext i32 %i.hj to i64, !dbg !32845
  %i.hq = mul nsw i64 %i.hp, %i.hk, !dbg !32846
  %i.hr = sitofp i64 %i.hq to double, !dbg !32846
  %i.hs = insertelement <2 x double> poison, double %i.hr, i64 0, !dbg !32846
  %i.ht = insertelement <2 x double> %i.hs, double %i.ho, i64 1, !dbg !32846
  %i.hu = insertelement <2 x double> poison, double %i.hl, i64 0, !dbg !32846
  %i.hv = insertelement <2 x double> %i.hu, double %i.hh, i64 1, !dbg !32846
  %i.hw = fdiv <2 x double> %i.ht, %i.hv, !dbg !32846
  %i.hx = insertelement <2 x double> poison, double %i.hi, i64 0, !dbg !32847
  %i.hy = insertelement <2 x double> %i.hx, double %i.he, i64 1, !dbg !32847
  %i.hz = fadd <2 x double> %i.hw, %i.hy, !dbg !32847 ; 2 uses
    #dbg_value(double poison, !31880, !DIExpression(), !32588)
    #dbg_value(double poison, !32555, !DIExpression(), !32590)
    #dbg_value(double poison, !32559, !DIExpression(), !32592)
    #dbg_value(double poison, !32542, !DIExpression(), !32594)
    #dbg_value(double poison, !32546, !DIExpression(), !32597)
    #dbg_value(double poison, !32555, !DIExpression(), !32599)
    #dbg_value(double poison, !32559, !DIExpression(), !32602)
    #dbg_value(double poison, !32555, !DIExpression(), !32604)
    #dbg_value(double poison, !32559, !DIExpression(), !32607)
    #dbg_value(double poison, !32542, !DIExpression(), !32609)
    #dbg_value(double poison, !32546, !DIExpression(), !32612)
    #dbg_value(double poison, !32555, !DIExpression(), !32614)
    #dbg_value(double poison, !32559, !DIExpression(), !32617)
    #dbg_value(ptr undef, !31948, !DIExpression(), !31961)
    #dbg_value(ptr undef, !31948, !DIExpression(), !31951)
  %i.ia = icmp eq i32 %.sroa.4116.0.copyload, %.sroa.0115.0.copyload
  %or.cond2 = and i1 %i.hb, %i.ia, !dbg !32848
  %i.ib = extractelement <2 x double> %i.hz, i64 0 ; 6 uses
  %i.ic = extractelement <2 x double> %i.hz, i64 1 ; 6 uses
  %i.id = fsub double %i.ib, %i.ic
  %i.ie = fcmp ogt double %i.id, 1.000000e+00
  %or.cond4 = select i1 %or.cond2, i1 %i.ie, i1 false, !dbg !32848
  br i1 %or.cond4, label %.backedge, label %bb.ao, !dbg !32848

bb.an:                                            ; preds = %.thread434
  br i1 %i.hc, label %.backedge, label %bb.am, !dbg !32849

bb.ao:                                            ; preds = %bb.am
  %i.if = call double @llvm.ceil.f64(double %i.ic), !dbg !32850 ; 3 uses
  %i.ig = call double @llvm.floor.f64(double %i.ib), !dbg !32851 ; 3 uses
  %i.ih = call i32 @llvm.fptosi.sat.i32.f64(double %i.ig), !dbg !32588 ; 2 uses
  %i.ii = call i32 @llvm.fptosi.sat.i32.f64(double %i.if), !dbg !32588 ; 2 uses
  br i1 %i.bf, label %bb.bl, label %bb.ap, !dbg !32852

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !32853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !32854
    #dbg_value(ptr %4, !11201, !DIExpression(), !31745)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i64 16, i1 false), !dbg !32855, !alias.scope !32621
  invoke void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ii, i32 noundef %.sroa.0345.0526, i32 noundef %i.ih, i32 noundef %.sroa.0345.0526, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.aq unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread422.loopexit, !dbg !32856

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !32857
    #dbg_value(ptr %i.j, !32622, !DIExpression(), !32626)
    #dbg_value(ptr %i.j, !32627, !DIExpression(), !32631)
  %i.ij = load i8, ptr %i.j, align 8, !dbg !32858, !range !11263, !noundef !3137
  %.not272 = icmp eq i8 %i.ij, -2, !dbg !32858
  br i1 %.not272, label %bb.at, label %bb.ar, !dbg !32859

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !32860
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit309, !dbg !32861

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit299: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aw, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.ir, %bb.aw ], [ %i.ir, %bb.ax ], [ %lpad.loopexit445, %.loopexit ], [ %lpad.loopexit.split-lp446, %.loopexit.split-lp ] ; 2 uses
    #dbg_value(ptr %i.j, !11265, !DIExpression(), !31752)
  %i.ik = load i8, ptr %i.j, align 8, !dbg !32862, !range !11263, !alias.scope !32633, !noundef !3137
  %i.il = icmp eq i8 %i.ik, -2, !dbg !32862
  br i1 %i.il, label %.thread396, label %bb.as, !dbg !32862

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit299
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.thread396 unwind label %bb.bg, !dbg !32862

.loopexit:                                        ; preds = %bb.at, %bb.bd
  %lpad.loopexit445 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit299

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit299

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !32072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !32863
    #dbg_value(ptr %4, !11201, !DIExpression(), !31756)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eb, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.4372.0..sroa_idx, i64 3, i1 false), !dbg !32864
  %i.im = call double @llvm.floor.f64(double %i.ic), !dbg !32865
  %i.in = call i32 @llvm.fptosi.sat.i32.f64(double %i.im), !dbg !32866
    #dbg_value(ptr undef, !31931, !DIExpression(), !31937)
  %i.io = fsub double %i.if, %i.ic, !dbg !32867
    #dbg_value(double %i.io, !31932, !DIExpression(), !32634)
  %i.ip = fmul double %i.io, %.sroa.0371.0.copyload, !dbg !32868
  store double %i.ip, ptr %i.g, align 8, !dbg !32869
  invoke void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.in, i32 noundef %.sroa.0345.0526, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.g)
          to label %bb.au unwind label %.loopexit, !dbg !32870

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32871
    #dbg_value(ptr %i.h, !32622, !DIExpression(), !32637)
    #dbg_value(ptr %i.h, !32627, !DIExpression(), !32640)
  %i.iq = load i8, ptr %i.h, align 8, !dbg !32872, !range !11263, !noundef !3137
  %.not273 = icmp eq i8 %i.iq, -2, !dbg !32872
  br i1 %.not273, label %bb.ay, label %bb.av, !dbg !32873

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !dbg !32874
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit303, !dbg !32875

bb.aw:                                            ; preds = %bb.ay
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !31758)
  %i.is = load i8, ptr %i.h, align 8, !dbg !32876, !range !11263, !alias.scope !32642, !noundef !3137
  %i.it = icmp eq i8 %i.is, -2, !dbg !32876
  br i1 %i.it, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit299, label %bb.ax, !dbg !32876

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit299 unwind label %bb.bg, !dbg !32876

bb.ay:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32877
    #dbg_value(ptr %4, !11201, !DIExpression(), !31762)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ec, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.4372.0..sroa_idx, i64 3, i1 false), !dbg !32878
  %i.iu = call double @llvm.ceil.f64(double %i.ib), !dbg !32879
  %i.iv = call i32 @llvm.fptosi.sat.i32.f64(double %i.iu), !dbg !32880
    #dbg_value(ptr undef, !31931, !DIExpression(), !31935)
  %i.iw = fsub double %i.ig, %i.ib, !dbg !32881
    #dbg_value(double %i.iw, !31932, !DIExpression(), !32643)
  %i.ix = fmul double %i.iw, %.sroa.0371.0.copyload, !dbg !32882
  store double %i.ix, ptr %i.e, align 8, !dbg !32883
  invoke void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.iv, i32 noundef %.sroa.0345.0526, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.e)
          to label %bb.az unwind label %bb.aw, !dbg !32884

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !32885
    #dbg_value(ptr %i.f, !32622, !DIExpression(), !32646)
    #dbg_value(ptr %i.f, !32627, !DIExpression(), !32649)
  %i.iy = load i8, ptr %i.f, align 8, !dbg !32886, !range !11263, !noundef !3137
  %.not274 = icmp eq i8 %i.iy, -2, !dbg !32886
  br i1 %.not274, label %bb.bc, label %bb.ba, !dbg !32887

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !32888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32889
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !31764)
  %i.iz = load i8, ptr %i.h, align 8, !dbg !32890, !range !11263, !alias.scope !32650, !noundef !3137
  %i.ja = icmp eq i8 %i.iz, -2, !dbg !32890
  br i1 %i.ja, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit303, label %bb.bb, !dbg !32890

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit303 unwind label %.loopexit.split-lp, !dbg !32890

bb.bc:                                            ; preds = %bb.az
    #dbg_value(ptr %i.f, !11265, !DIExpression(), !31768)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32889
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !31770)
  %i.jb = load i8, ptr %i.h, align 8, !dbg !32891, !range !11263, !alias.scope !32651, !noundef !3137
  %i.jc = icmp eq i8 %i.jb, -2, !dbg !32891
  br i1 %i.jc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit305, label %bb.bd, !dbg !32891

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit305 unwind label %.loopexit, !dbg !32891

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit305: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !32892
    #dbg_value(ptr %i.j, !11265, !DIExpression(), !31774)
  %i.jd = load i8, ptr %i.j, align 8, !dbg !32893, !range !11263, !alias.scope !32652, !noundef !3137
  %i.je = icmp eq i8 %i.jd, -2, !dbg !32893
  br i1 %i.je, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307, label %bb.be, !dbg !32893

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit305
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread422.loopexit, !dbg !32893

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit305, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !32894
  br label %.backedge, !dbg !32895

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit303: ; preds = %bb.ba, %bb.bb, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !32892
    #dbg_value(ptr %i.j, !11265, !DIExpression(), !31778)
  %i.jf = load i8, ptr %i.j, align 8, !dbg !32896, !range !11263, !alias.scope !32653, !noundef !3137
  %i.jg = icmp eq i8 %i.jf, -2, !dbg !32896
  br i1 %i.jg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit309, label %bb.bf, !dbg !32896

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit303
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit309 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread422.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !32896

bb.bg:                                            ; preds = %bb.bt, %bb.bo, %bb.ax, %bb.as, %bb.x, %.thread396, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread415, %.body
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !32897
  unreachable, !dbg !32897

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit309: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit303, %bb.bf, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !32894
  br label %bb.bh, !dbg !32898

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit328, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !32779
    #dbg_value(ptr %i.s, !8934, !DIExpression(), !31782)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bj unwind label %bb.bi, !dbg !32899

bb.bi:                                            ; preds = %bb.bh
  %i.ji = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.s, !8939, !DIExpression(), !31784)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bk, !dbg !32900

bb.bj:                                            ; preds = %bb.bh
    #dbg_value(ptr %i.s, !8939, !DIExpression(), !31786)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit314 unwind label %bb.d, !dbg !32901

bb.bk:                                            ; preds = %bb.bi
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !32899
end_hunk_4
begin_hunk_5_@_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %.idx569 = shl nuw nsw i64 %i.hf, 4, !dbg !34381
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx569, !dbg !34381
    #dbg_value(ptr %i.hg, !33428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34054)
    #dbg_value(ptr %i.hh, !33428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34054)
    #dbg_value(i32 poison, !33426, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33829)
    #dbg_value(i32 %.sroa.972.0562, !33426, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33829)
    #dbg_value(i32 %.sroa.14.0561, !33426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33829)
    #dbg_value(i32 %.sroa.16.0560, !33426, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33829)
    #dbg_value(i32 %.sroa.18.0559, !33426, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33829)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33830)
    #dbg_value(ptr undef, !33521, !DIExpression(), !33528)
    #dbg_value(ptr %i.hg, !33522, !DIExpression(), !34055)
    #dbg_value(ptr %i.hg, !33637, !DIExpression(), !33641)
    #dbg_value(ptr %i.hh, !33523, !DIExpression(), !34056)
    #dbg_value(ptr poison, !34057, !DIExpression(), !34061)
    #dbg_value(ptr poison, !34058, !DIExpression(), !34062)
  %i.hi = icmp eq i64 %i.hf, 0, !dbg !34382
  br i1 %i.hi, label %._crit_edge552, label %.lr.ph551, !dbg !34383

.lr.ph551:                                        ; preds = %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit, %.backedge
  %.sroa.031.0550 = phi ptr [ %i.hj, %.backedge ], [ %i.hg, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 5 uses
  %.sroa.068.0549 = phi i32 [ %.sroa.068.0.be, %.backedge ], [ 0, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ]
  %.sroa.972.1548 = phi i32 [ %.sroa.972.1.be, %.backedge ], [ %.sroa.972.0562, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 3 uses
  %.sroa.14.1547 = phi i32 [ %.sroa.14.1.be, %.backedge ], [ %.sroa.14.0561, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 3 uses
  %.sroa.16.1546 = phi i32 [ %.sroa.16.1.be, %.backedge ], [ %.sroa.16.0560, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 3 uses
  %.sroa.18.1545 = phi i32 [ %.sroa.18.1.be, %.backedge ], [ %.sroa.18.0559, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ] ; 2 uses
    #dbg_value(i32 %.sroa.972.1548, !33426, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33829)
    #dbg_value(i32 %.sroa.14.1547, !33426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33829)
    #dbg_value(i32 %.sroa.16.1546, !33426, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33829)
    #dbg_value(i32 %.sroa.18.1545, !33426, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33829)
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.031.0550, i64 16, !dbg !34384 ; 2 uses
    #dbg_value(ptr %i.hj, !33428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34054)
    #dbg_value(ptr %.sroa.031.0550, !33429, !DIExpression(), !34063)
    #dbg_value(ptr %.sroa.031.0550, !34064, !DIExpression(), !34067)
    #dbg_value(ptr %.sroa.031.0550, !34064, !DIExpression(), !34069)
    #dbg_value(ptr undef, !33481, !DIExpression(), !33500)
    #dbg_value(ptr undef, !33475, !DIExpression(), !33499)
  %.not270 = icmp eq i32 %.sroa.068.0549, 1, !dbg !34385
  %.sroa.4116.0..sroa.033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.031.0550, i64 4, !dbg !34386
  %.sroa.5117.0..sroa.033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.031.0550, i64 8, !dbg !34386
  %.sroa.6118.0..sroa.033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.031.0550, i64 12, !dbg !34386
  %.sroa.0115.0.copyload = load i32, ptr %.sroa.031.0550, align 4, !dbg !34386 ; 9 uses
  %.sroa.4116.0.copyload = load i32, ptr %.sroa.4116.0..sroa.033.0..sroa_idx, align 4, !dbg !34386 ; 7 uses
  %.sroa.5117.0.copyload = load i32, ptr %.sroa.5117.0..sroa.033.0..sroa_idx, align 4, !dbg !34386 ; 7 uses
  %.sroa.6118.0.copyload = load i32, ptr %.sroa.6118.0..sroa.033.0..sroa_idx, align 4, !dbg !34386 ; 6 uses
  br i1 %.not270, label %.thread466, label %.backedge, !dbg !34387

._crit_edge552:                                   ; preds = %.backedge, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0559, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.18.1.be, %.backedge ]
  %.sroa.16.1.lcssa = phi i32 [ %.sroa.16.0560, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.16.1.be, %.backedge ]
  %.sroa.14.1.lcssa = phi i32 [ %.sroa.14.0561, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.14.1.be, %.backedge ]
  %.sroa.972.1.lcssa = phi i32 [ %.sroa.972.0562, %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.972.1.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !34334
    #dbg_value(i32 %i.fc, !33418, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33828)
    #dbg_value(i8 poison, !33418, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !33828)
    #dbg_value(i64 %.sroa.05.1.lcssa, !33416, !DIExpression(), !33826)
    #dbg_value(i32 %.sroa.972.1.lcssa, !33426, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33829)
    #dbg_value(i32 %.sroa.14.1.lcssa, !33426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33829)
    #dbg_value(i32 %.sroa.16.1.lcssa, !33426, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33829)
    #dbg_value(i32 %.sroa.18.1.lcssa, !33426, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33829)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33830)
    #dbg_value(ptr undef, !11194, !DIExpression(), !33015)
    #dbg_value(ptr undef, !11178, !DIExpression(), !33014)
  %.not.i = icmp sgt i32 %i.fc, %spec.select285
  %or.cond476 = or i1 %i.fd, %.not.i, !dbg !34307
  br i1 %or.cond476, label %._crit_edge566, label %bb.r, !dbg !34307

.thread466:                                       ; preds = %.lr.ph551
    #dbg_value(ptr undef, !33481, !DIExpression(), !33483)
    #dbg_value(ptr undef, !33475, !DIExpression(), !33480)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33830)
    #dbg_value(i32 1, !33427, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33830)
    #dbg_value(ptr undef, !33469, !DIExpression(), !33496)
    #dbg_value(i32 %.sroa.0115.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33830)
    #dbg_value(i32 %.sroa.4116.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33830)
    #dbg_value(i32 %.sroa.5117.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33830)
    #dbg_value(ptr undef, !34064, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !34072)
    #dbg_value(ptr undef, !33469, !DIExpression(), !33474)
    #dbg_value(i32 %.sroa.972.1548, !33430, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !34073)
    #dbg_value(i32 %.sroa.14.1547, !33430, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !34073)
    #dbg_value(i32 %.sroa.16.1546, !33430, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !34073)
    #dbg_value(i32 %.sroa.18.1545, !33430, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !34073)
    #dbg_value(i32 %.sroa.0115.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33830)
    #dbg_value(i32 %.sroa.4116.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33830)
    #dbg_value(i32 %.sroa.5117.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33830)
    #dbg_value(i32 %.sroa.6118.0.copyload, !33427, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33830)
    #dbg_value(ptr undef, !34064, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !34076)
    #dbg_value(i32 %.sroa.0115.0.copyload, !33431, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !34077)
    #dbg_value(i32 %.sroa.4116.0.copyload, !33431, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !34077)
    #dbg_value(i32 %.sroa.5117.0.copyload, !33431, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !34077)
    #dbg_value(i32 %.sroa.6118.0.copyload, !33431, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !34077)
    #dbg_value(ptr undef, !33501, !DIExpression(), !33520)
    #dbg_value(i32 %.sroa.14.1547, !34078, !DIExpression(), !34081)
    #dbg_value(i32 %.sroa.972.1548, !34082, !DIExpression(), !34085)
  %i.hk = icmp eq i32 %.sroa.14.1547, %.sroa.972.1548, !dbg !34388 ; 2 uses
    #dbg_value(ptr undef, !33501, !DIExpression(), !33512)
    #dbg_value(ptr undef, !33501, !DIExpression(), !33506)
  %i.hl = icmp eq i32 %.sroa.4116.0.copyload, %.sroa.0115.0.copyload, !dbg !34077 ; 2 uses
  br i1 %i.hk, label %bb.al, label %bb.an, !dbg !34388

.backedge:                                        ; preds = %.lr.ph551, %bb.al, %bb.an, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit338, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315
  %.sroa.18.1.be = phi i32 [ %.sroa.6118.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315 ], [ %.sroa.6118.0.copyload, %bb.am ], [ %.sroa.6118.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit338 ], [ %.sroa.18.1545, %bb.an ], [ %.sroa.6118.0.copyload, %bb.al ], [ %.sroa.6118.0.copyload, %.lr.ph551 ] ; 2 uses
  %.sroa.16.1.be = phi i32 [ %.sroa.5117.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315 ], [ %.sroa.5117.0.copyload, %bb.am ], [ %.sroa.5117.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit338 ], [ %.sroa.16.1546, %bb.an ], [ %.sroa.5117.0.copyload, %bb.al ], [ %.sroa.5117.0.copyload, %.lr.ph551 ] ; 2 uses
  %.sroa.14.1.be = phi i32 [ %.sroa.4116.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315 ], [ %.sroa.0115.0.copyload, %bb.am ], [ %.sroa.4116.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit338 ], [ %.sroa.14.1547, %bb.an ], [ %.sroa.4116.0.copyload, %bb.al ], [ %.sroa.4116.0.copyload, %.lr.ph551 ] ; 2 uses
  %.sroa.972.1.be = phi i32 [ %.sroa.0115.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315 ], [ %.sroa.0115.0.copyload, %bb.am ], [ %.sroa.0115.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit338 ], [ %.sroa.972.1548, %bb.an ], [ %.sroa.0115.0.copyload, %bb.al ], [ %.sroa.0115.0.copyload, %.lr.ph551 ] ; 2 uses
  %.sroa.068.0.be = phi i32 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315 ], [ 0, %bb.am ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit338 ], [ 1, %bb.an ], [ 1, %bb.al ], [ 1, %.lr.ph551 ]
    #dbg_value(ptr %i.hj, !33428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34054)
    #dbg_value(i32 poison, !33426, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33829)
    #dbg_value(i32 %.sroa.972.1.be, !33426, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33829)
    #dbg_value(i32 %.sroa.14.1.be, !33426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33829)
    #dbg_value(i32 %.sroa.16.1.be, !33426, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33829)
    #dbg_value(i32 %.sroa.18.1.be, !33426, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33829)
    #dbg_value(i32 0, !33427, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !33830)
    #dbg_value(i32 poison, !33427, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !33830)
    #dbg_value(ptr undef, !33521, !DIExpression(), !33528)
    #dbg_value(ptr %i.hj, !33522, !DIExpression(), !34055)
    #dbg_value(ptr %i.hj, !33637, !DIExpression(), !33641)
    #dbg_value(ptr %i.hh, !33523, !DIExpression(), !34056)
    #dbg_value(ptr poison, !34057, !DIExpression(), !34061)
    #dbg_value(ptr poison, !34058, !DIExpression(), !34062)
  %i.hm = icmp eq ptr %i.hj, %i.hh, !dbg !34382
  br i1 %i.hm, label %._crit_edge552, label %.lr.ph551, !dbg !34383

bb.al:                                            ; preds = %.thread466
  br i1 %i.hl, label %bb.am, label %.backedge, !dbg !34389

bb.am:                                            ; preds = %bb.al, %bb.an
    #dbg_value(ptr undef, !33507, !DIExpression(), !33516)
    #dbg_value(i32 %.sroa.16.1546, !34086, !DIExpression(), !34089)
  %i.hn = sitofp i32 %.sroa.16.1546 to double, !dbg !34390
  %i.ho = sub i32 %.sroa.18.1545, %.sroa.16.1546, !dbg !34391
    #dbg_value(i32 %i.ho, !34090, !DIExpression(), !34093)
  %i.hp = zext i32 %.sroa.972.1548 to i64, !dbg !34392
  %i.hq = uitofp i32 %.sroa.14.1547 to double, !dbg !34393
    #dbg_value(double poison, !33432, !DIExpression(), !34094)
    #dbg_value(double poison, !34095, !DIExpression(), !34098)
    #dbg_value(double poison, !34099, !DIExpression(), !34102)
    #dbg_value(double poison, !34095, !DIExpression(), !34104)
    #dbg_value(double poison, !34099, !DIExpression(), !34107)
    #dbg_value(double poison, !34108, !DIExpression(), !34111)
    #dbg_value(double poison, !34112, !DIExpression(), !34116)
    #dbg_value(double poison, !34095, !DIExpression(), !34118)
    #dbg_value(double poison, !34099, !DIExpression(), !34121)
    #dbg_value(double poison, !34108, !DIExpression(), !34123)
    #dbg_value(double poison, !34112, !DIExpression(), !34126)
    #dbg_value(double poison, !34095, !DIExpression(), !34128)
    #dbg_value(double poison, !34099, !DIExpression(), !34131)
    #dbg_value(ptr undef, !33507, !DIExpression(), !33510)
    #dbg_value(i32 %.sroa.5117.0.copyload, !34086, !DIExpression(), !34134)
  %i.hr = sitofp i32 %.sroa.5117.0.copyload to double, !dbg !34394
  %i.hs = sub i32 %.sroa.6118.0.copyload, %.sroa.5117.0.copyload, !dbg !34395
    #dbg_value(i32 %i.hs, !34090, !DIExpression(), !34136)
    #dbg_value(i32 %.sroa.0115.0.copyload, !34082, !DIExpression(), !34138)
  %i.ht = zext i32 %.sroa.0115.0.copyload to i64, !dbg !34396
    #dbg_value(i32 %.sroa.4116.0.copyload, !34078, !DIExpression(), !34140)
  %i.hu = uitofp i32 %.sroa.4116.0.copyload to double, !dbg !34397
  %i.hv = sext i32 %i.ho to i64, !dbg !34398
  %i.hw = mul nsw i64 %i.hp, %i.hv, !dbg !34399
  %i.hx = sitofp i64 %i.hw to double, !dbg !34399
  %i.hy = sext i32 %i.hs to i64, !dbg !34400
  %i.hz = mul nsw i64 %i.hy, %i.ht, !dbg !34401
  %i.ia = sitofp i64 %i.hz to double, !dbg !34401
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0, !dbg !34401
  %i.ic = insertelement <2 x double> %i.ib, double %i.hx, i64 1, !dbg !34401
  %i.id = insertelement <2 x double> poison, double %i.hu, i64 0, !dbg !34401
  %i.ie = insertelement <2 x double> %i.id, double %i.hq, i64 1, !dbg !34401
  %i.if = fdiv <2 x double> %i.ic, %i.ie, !dbg !34401
  %i.ig = insertelement <2 x double> poison, double %i.hr, i64 0, !dbg !34402
  %i.ih = insertelement <2 x double> %i.ig, double %i.hn, i64 1, !dbg !34402
  %i.ii = fadd <2 x double> %i.if, %i.ih, !dbg !34402 ; 2 uses
    #dbg_value(double poison, !33433, !DIExpression(), !34141)
    #dbg_value(double poison, !34108, !DIExpression(), !34143)
    #dbg_value(double poison, !34112, !DIExpression(), !34145)
    #dbg_value(double poison, !34095, !DIExpression(), !34147)
    #dbg_value(double poison, !34099, !DIExpression(), !34150)
    #dbg_value(double poison, !34108, !DIExpression(), !34152)
    #dbg_value(double poison, !34112, !DIExpression(), !34155)
    #dbg_value(double poison, !34108, !DIExpression(), !34157)
    #dbg_value(double poison, !34112, !DIExpression(), !34160)
    #dbg_value(double poison, !34095, !DIExpression(), !34162)
    #dbg_value(double poison, !34099, !DIExpression(), !34165)
    #dbg_value(double poison, !34108, !DIExpression(), !34167)
    #dbg_value(double poison, !34112, !DIExpression(), !34170)
    #dbg_value(ptr undef, !33501, !DIExpression(), !33514)
    #dbg_value(ptr undef, !33501, !DIExpression(), !33504)
  %i.ij = icmp eq i32 %.sroa.4116.0.copyload, %.sroa.0115.0.copyload
  %or.cond2 = and i1 %i.hk, %i.ij, !dbg !34403
  %i.ik = extractelement <2 x double> %i.ii, i64 0 ; 6 uses
  %i.il = extractelement <2 x double> %i.ii, i64 1 ; 6 uses
  %i.im = fsub double %i.ik, %i.il
  %i.in = fcmp ogt double %i.im, 1.000000e+00
  %or.cond4 = select i1 %or.cond2, i1 %i.in, i1 false, !dbg !34403
  br i1 %or.cond4, label %.backedge, label %bb.ao, !dbg !34403

bb.an:                                            ; preds = %.thread466
  br i1 %i.hl, label %.backedge, label %bb.am, !dbg !34404

bb.ao:                                            ; preds = %bb.am
  %i.io = call double @llvm.ceil.f64(double %i.il), !dbg !34405 ; 3 uses
  %i.ip = call double @llvm.floor.f64(double %i.ik), !dbg !34406 ; 3 uses
  %i.iq = call i32 @llvm.fptosi.sat.i32.f64(double %i.ip), !dbg !34141 ; 2 uses
  %i.ir = call i32 @llvm.fptosi.sat.i32.f64(double %i.io), !dbg !34141 ; 2 uses
  br i1 %i.bf, label %bb.bl, label %bb.ap, !dbg !34407

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !34408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !34409
    #dbg_value(ptr %4, !11294, !DIExpression(), !33286)
    #dbg_value(ptr %4, !11301, !DIExpression(), !33288)
  store double %i.eh, ptr %i.i, align 8, !dbg !34410, !alias.scope !34174, !noalias !34175
  store i8 %i.ec, ptr %i.ei, align 8, !dbg !34410, !alias.scope !34174, !noalias !34175
  store i8 %i.ee, ptr %.sroa.4.0..sroa_idx.i297, align 1, !dbg !34410, !alias.scope !34174, !noalias !34175
  store i8 %i.eg, ptr %.sroa.5.0..sroa_idx.i298, align 2, !dbg !34410, !alias.scope !34174, !noalias !34175
  invoke void @_RINvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB6_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend9draw_lineNtNtB16_5style12BackendColorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ir, i32 noundef %.sroa.0357.0558, i32 noundef %i.iq, i32 noundef %.sroa.0357.0558, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.aq unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread454.loopexit, !dbg !34411

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !34412
    #dbg_value(ptr %i.j, !34176, !DIExpression(), !34180)
    #dbg_value(ptr %i.j, !34181, !DIExpression(), !34185)
  %i.is = load i8, ptr %i.j, align 8, !dbg !34413, !range !11263, !noundef !3137
  %.not272 = icmp eq i8 %i.is, -2, !dbg !34413
  br i1 %.not272, label %bb.at, label %bb.ar, !dbg !34414

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !34415
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit317, !dbg !34416

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aw, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.ja, %bb.aw ], [ %i.ja, %bb.ax ], [ %lpad.loopexit477, %.loopexit ], [ %lpad.loopexit.split-lp478, %.loopexit.split-lp ] ; 2 uses
    #dbg_value(ptr %i.j, !11265, !DIExpression(), !33295)
  %i.it = load i8, ptr %i.j, align 8, !dbg !34417, !range !11263, !alias.scope !34187, !noundef !3137
  %i.iu = icmp eq i8 %i.it, -2, !dbg !34417
  br i1 %i.iu, label %.thread428, label %bb.as, !dbg !34417

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %.thread428 unwind label %bb.bg, !dbg !34417

.loopexit:                                        ; preds = %bb.at, %bb.bd
  %lpad.loopexit477 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp478 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !34418
    #dbg_value(ptr %4, !11294, !DIExpression(), !33299)
    #dbg_value(ptr %4, !11301, !DIExpression(), !33301)
  %i.iv = call double @llvm.floor.f64(double %i.il), !dbg !34419
  %i.iw = call i32 @llvm.fptosi.sat.i32.f64(double %i.iv), !dbg !34420
    #dbg_value(ptr undef, !33484, !DIExpression(), !33490)
  %i.ix = fsub double %i.io, %i.il, !dbg !34421
    #dbg_value(double %i.ix, !33485, !DIExpression(), !34188)
  %i.iy = fmul double %i.ix, %i.eh, !dbg !34422
  store double %i.iy, ptr %i.g, align 8, !dbg !34423
  store i8 %i.ec, ptr %i.ej, align 8, !dbg !34423
  store i8 %i.ee, ptr %.sroa.4404.0..sroa_idx, align 1, !dbg !34423
  store i8 %i.eg, ptr %.sroa.5405.0..sroa_idx, align 2, !dbg !34423
  invoke void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.iw, i32 noundef %.sroa.0357.0558, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.g)
          to label %bb.au unwind label %.loopexit, !dbg !34424

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !34425
    #dbg_value(ptr %i.h, !34176, !DIExpression(), !34191)
    #dbg_value(ptr %i.h, !34181, !DIExpression(), !34194)
  %i.iz = load i8, ptr %i.h, align 8, !dbg !34426, !range !11263, !noundef !3137
  %.not273 = icmp eq i8 %i.iz, -2, !dbg !34426
  br i1 %.not273, label %bb.ay, label %bb.av, !dbg !34427

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !dbg !34428
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit311, !dbg !34429

bb.aw:                                            ; preds = %bb.ay
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !33303)
  %i.jb = load i8, ptr %i.h, align 8, !dbg !34430, !range !11263, !alias.scope !34196, !noundef !3137
  %i.jc = icmp eq i8 %i.jb, -2, !dbg !34430
  br i1 %i.jc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307, label %bb.ax, !dbg !34430

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit307 unwind label %bb.bg, !dbg !34430

bb.ay:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !34431
    #dbg_value(ptr %4, !11294, !DIExpression(), !33307)
    #dbg_value(ptr %4, !11301, !DIExpression(), !33309)
  %i.jd = call double @llvm.ceil.f64(double %i.ik), !dbg !34432
  %i.je = call i32 @llvm.fptosi.sat.i32.f64(double %i.jd), !dbg !34433
    #dbg_value(ptr undef, !33484, !DIExpression(), !33488)
  %i.jf = fsub double %i.ip, %i.ik, !dbg !34434
    #dbg_value(double %i.jf, !33485, !DIExpression(), !34197)
  %i.jg = fmul double %i.jf, %i.eh, !dbg !34435
  store double %i.jg, ptr %i.e, align 8, !dbg !34436
  store i8 %i.ec, ptr %i.ek, align 8, !dbg !34436
  store i8 %i.ee, ptr %.sroa.4407.0..sroa_idx, align 1, !dbg !34436
  store i8 %i.eg, ptr %.sroa.5408.0..sroa_idx, align 2, !dbg !34436
  invoke void @_RNvXs1_NtCs29sfksKwgjx_15plotters_bitmap6bitmapNtB5_13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend10draw_pixelCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.je, i32 noundef %.sroa.0357.0558, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.e)
          to label %bb.az unwind label %bb.aw, !dbg !34437

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !34438
    #dbg_value(ptr %i.f, !34176, !DIExpression(), !34200)
    #dbg_value(ptr %i.f, !34181, !DIExpression(), !34203)
  %i.jh = load i8, ptr %i.f, align 8, !dbg !34439, !range !11263, !noundef !3137
  %.not274 = icmp eq i8 %i.jh, -2, !dbg !34439
  br i1 %.not274, label %bb.bc, label %bb.ba, !dbg !34440

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !34441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !34442
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !33311)
  %i.ji = load i8, ptr %i.h, align 8, !dbg !34443, !range !11263, !alias.scope !34204, !noundef !3137
  %i.jj = icmp eq i8 %i.ji, -2, !dbg !34443
  br i1 %i.jj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit311, label %bb.bb, !dbg !34443

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit311 unwind label %.loopexit.split-lp, !dbg !34443

bb.bc:                                            ; preds = %bb.az
    #dbg_value(ptr %i.f, !11265, !DIExpression(), !33315)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !34442
    #dbg_value(ptr %i.h, !11265, !DIExpression(), !33317)
  %i.jk = load i8, ptr %i.h, align 8, !dbg !34444, !range !11263, !alias.scope !34205, !noundef !3137
  %i.jl = icmp eq i8 %i.jk, -2, !dbg !34444
  br i1 %i.jl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit313, label %bb.bd, !dbg !34444

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit313 unwind label %.loopexit, !dbg !34444

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit313: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !34445
    #dbg_value(ptr %i.j, !11265, !DIExpression(), !33321)
  %i.jm = load i8, ptr %i.j, align 8, !dbg !34446, !range !11263, !alias.scope !34206, !noundef !3137
  %i.jn = icmp eq i8 %i.jm, -2, !dbg !34446
  br i1 %i.jn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315, label %bb.be, !dbg !34446

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit313
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread454.loopexit, !dbg !34446

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit315: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit313, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !34447
  br label %.backedge, !dbg !34448

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit311: ; preds = %bb.ba, %bb.bb, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !34445
    #dbg_value(ptr %i.j, !11265, !DIExpression(), !33325)
  %i.jo = load i8, ptr %i.j, align 8, !dbg !34449, !range !11263, !alias.scope !34207, !noundef !3137
  %i.jp = icmp eq i8 %i.jo, -2, !dbg !34449
  br i1 %i.jp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit317, label %bb.bf, !dbg !34449

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit311
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit317 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread454.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !34449

bb.bg:                                            ; preds = %bb.bt, %bb.bo, %bb.ax, %bb.as, %bb.x, %.thread428, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeEECsaTqK2fWTXJW_11qlog_dancer.exit.thread447, %.body
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !34450
  unreachable, !dbg !34450

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit317: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit311, %bb.bf, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !34447
  br label %bb.bh, !dbg !34451

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit340, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !34334
    #dbg_value(ptr %i.s, !8934, !DIExpression(), !33329)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bj unwind label %bb.bi, !dbg !34452

bb.bi:                                            ; preds = %bb.bh
  %i.jr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.s, !8939, !DIExpression(), !33331)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon4EdgeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bk, !dbg !34453
end_hunk_5
begin_hunk_6_@_RNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks:bb.a
    #dbg_declare(ptr poison, !45011, !DIExpression(), !45289)
    #dbg_value(i64 0, !45037, !DIExpression(), !45292)
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 2176, !dbg !46790
  %i.hw = load i8, ptr %i.hv, align 8, !dbg !46790, !range !5912, !noundef !3137 ; 3 uses
  %i.hx = trunc nuw i8 %i.hw to i1, !dbg !46790   ; 10 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 2177, !dbg !46791
  %i.hz = load i8, ptr %i.hy, align 1, !dbg !46791, !range !5912, !noundef !3137 ; 7 uses
  %i.ia = trunc nuw i8 %i.hz to i1, !dbg !46791   ; 3 uses
  br i1 %i.hx, label %bb.b, label %bb.c, !dbg !46792

bb.b:                                             ; preds = %bb.a
  br i1 %i.ia, label %bb.d, label %bb.e, !dbg !46792, !prof !5866

bb.c:                                             ; preds = %bb.a
  br i1 %i.ia, label %bb.d, label %.thread, !dbg !46792

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink1357 = phi i64 [ 792, %bb.b ], [ 816, %bb.c ]
  %.sink = phi i64 [ 816, %bb.b ], [ 792, %bb.c ]
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 %.sink1357, !dbg !44834 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 %.sink, !dbg !44834 ; 4 uses
    #dbg_value(ptr %i.ib, !45293, !DIExpression(), !45296)
    #dbg_value(ptr %i.ib, !45297, !DIExpression(), !45303)
    #dbg_value(ptr %i.ib, !45304, !DIExpression(), !45313)
    #dbg_value(ptr %i.ib, !44751, !DIExpression(), !45314)
    #dbg_value(ptr %i.ic, !45297, !DIExpression(), !45316)
    #dbg_value(ptr %i.ic, !45304, !DIExpression(), !45318)
    #dbg_value(ptr %i.ic, !44752, !DIExpression(), !45314)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !46793
  %i.ie = load i8, ptr %i.id, align 4, !dbg !46793, !range !5912, !noundef !3137
  %i.if = trunc nuw i8 %i.ie to i1, !dbg !46793
  br i1 %i.if, label %bb.f, label %.thread907, !dbg !46793

.thread:                                          ; preds = %bb.c
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 840, !dbg !46794
    #dbg_value(ptr %i.ig, !44751, !DIExpression(), !45314)
    #dbg_value(ptr %i.ig, !45304, !DIExpression(), !45313)
    #dbg_value(ptr %i.ig, !45297, !DIExpression(), !45303)
    #dbg_value(ptr %i.ig, !45293, !DIExpression(), !45296)
    #dbg_value(ptr %i.ig, !45304, !DIExpression(), !45320)
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 888, !dbg !46795
    #dbg_value(ptr %i.ih, !45297, !DIExpression(), !45316)
    #dbg_value(ptr %i.ih, !45304, !DIExpression(), !45318)
    #dbg_value(ptr %i.ih, !44752, !DIExpression(), !45314)
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !46793
  %i.ij = load i8, ptr %i.ii, align 4, !dbg !46793, !range !5912, !noundef !3137
  %i.ik = trunc nuw i8 %i.ij to i1, !dbg !46793
  br label %.thread907, !dbg !46793

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #26, !dbg !46796
  unreachable, !dbg !46796

.thread907:                                       ; preds = %.thread, %bb.d
  %i.il = phi i1 [ %i.ik, %.thread ], [ false, %bb.d ]
  %.sroa.0.0906 = phi ptr [ %i.ig, %.thread ], [ %i.ib, %bb.d ] ; 2 uses
  %.sroa.013.0903 = phi ptr [ %i.ih, %.thread ], [ %i.ic, %bb.d ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0906, i64 16, !dbg !46797
  %i.in = load i64, ptr %i.im, align 8, !dbg !46797, !noundef !3137
    #dbg_value(i64 %i.in, !44753, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45321)
    #dbg_value(i64 %i.in, !44755, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45322)
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.013.0903, i64 16, !dbg !46798
  %i.ip = load i64, ptr %i.io, align 8, !dbg !46798, !noundef !3137
    #dbg_value(i64 %i.ip, !44754, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45321)
  br label %bb.g, !dbg !46799

bb.f:                                             ; preds = %bb.d
  %i.iq = load ptr, ptr %i.ib, align 8, !dbg !46800, !noundef !3137 ; 3 uses
  %.not558 = icmp eq ptr %i.iq, null, !dbg !46800
  br i1 %.not558, label %bb.i, label %bb.h, !dbg !46801

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit, %.thread907
  %.fr = phi i1 [ true, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], [ %i.il, %.thread907 ]
  %.sroa.0.0905 = phi ptr [ %i.ib, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], [ %.sroa.0.0906, %.thread907 ] ; 2 uses
  %.sroa.013.0902 = phi ptr [ %i.ic, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], [ %.sroa.013.0903, %.thread907 ]
  %.sroa.024.0.in = phi i64 [ %.sroa.0.0.lcssa.i.i658, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], [ %i.ip, %.thread907 ]
  %.sroa.022.0.in = phi i64 [ %.sroa.0.0.lcssa.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], [ %i.in, %.thread907 ]
    #dbg_value(i64 %.sroa.022.0.in, !44755, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45322)
    #dbg_value(i64 %.sroa.022.0.in, !44753, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45321)
    #dbg_value(i64 %.sroa.024.0.in, !44754, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45321)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !46802
  %i.is = load i32, ptr %i.ir, align 8, !dbg !46802, !noundef !3137 ; 9 uses
  %i.it = icmp eq i32 %i.is, 0, !dbg !46803
  br i1 %i.it, label %bb.m, label %bb.l, !dbg !46803

bb.h:                                             ; preds = %bb.f
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ib, i64 8, !dbg !46800
    #dbg_value(ptr undef, !45305, !DIExpression(DW_OP_deref), !45323)
    #dbg_value(ptr undef, !45324, !DIExpression(DW_OP_deref), !45327)
    #dbg_value(i64 1, !45306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45328)
    #dbg_value(ptr null, !45306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45328)
    #dbg_value(ptr %i.iq, !45306, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45328)
    #dbg_value(i64 poison, !45306, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45328)
    #dbg_value(i64 1, !45306, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45328)
    #dbg_value(ptr null, !45306, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45328)
    #dbg_value(ptr %i.iq, !45306, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45328)
    #dbg_value(i64 poison, !45306, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45328)
  %i.iv = load <2 x i64>, ptr %i.iu, align 8, !dbg !46804
  br label %bb.i, !dbg !46805

bb.i:                                             ; preds = %bb.f, %bb.h
  %.sroa.019.sroa.0.0 = phi i64 [ 1, %bb.h ], [ 0, %bb.f ], !dbg !45313 ; 2 uses
  %i.iw = phi <2 x i64> [ %i.iv, %bb.h ], [ <i64 undef, i64 0>, %bb.f ], !dbg !45313 ; 3 uses
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45345)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45362)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45370)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45382)
    #dbg_value(ptr null, !45330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45345)
    #dbg_value(ptr null, !45346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45362)
    #dbg_value(ptr null, !45364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45370)
    #dbg_value(ptr null, !45371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45382)
    #dbg_value(ptr %i.iq, !45330, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45345)
    #dbg_value(ptr %i.iq, !45346, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45362)
    #dbg_value(ptr %i.iq, !45364, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45370)
    #dbg_value(ptr %i.iq, !45371, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45382)
    #dbg_value(i64 poison, !45330, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45345)
    #dbg_value(i64 poison, !45346, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45362)
    #dbg_value(i64 poison, !45364, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45370)
    #dbg_value(i64 poison, !45371, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45382)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45330, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45345)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45346, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45362)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45364, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45370)
    #dbg_value(i64 %.sroa.019.sroa.0.0, !45371, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45382)
    #dbg_value(ptr null, !45330, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45345)
    #dbg_value(ptr null, !45346, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45362)
    #dbg_value(ptr null, !45364, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45370)
    #dbg_value(ptr null, !45371, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45382)
    #dbg_value(ptr %i.iq, !45330, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45345)
    #dbg_value(ptr %i.iq, !45346, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45362)
    #dbg_value(ptr %i.iq, !45364, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45370)
    #dbg_value(ptr %i.iq, !45371, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45382)
    #dbg_value(i64 poison, !45330, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45345)
    #dbg_value(i64 poison, !45346, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45362)
    #dbg_value(i64 poison, !45364, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45370)
    #dbg_value(i64 poison, !45371, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45382)
    #dbg_value(i64 poison, !45330, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45345)
    #dbg_value(i64 poison, !45346, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45362)
    #dbg_value(i64 poison, !45364, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45370)
    #dbg_value(i64 poison, !45371, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45382)
    #dbg_value(i64 0, !45376, !DIExpression(), !42911)
    #dbg_declare(ptr poison, !45377, !DIExpression(), !42912)
    #dbg_value(i64 poison, !45342, !DIExpression(), !42913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !46806, !noalias !45384
  store i64 %.sroa.019.sroa.0.0, ptr %i.ea, align 8, !dbg !46806
  %.sroa.4863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !46806
  store ptr null, ptr %.sroa.4863.0..sroa_idx, align 8, !dbg !46806
  %.sroa.5.0..sroa_idx864 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !46806
  store ptr %i.iq, ptr %.sroa.5.0..sroa_idx864, align 8, !dbg !46806
  %.sroa.6.0..sroa_idx865 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24, !dbg !46806
  %i.ix = extractelement <2 x i64> %i.iw, i64 0, !dbg !46806
  store i64 %i.ix, ptr %.sroa.6.0..sroa_idx865, align 8, !dbg !46806
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 32, !dbg !46806
  store i64 %.sroa.019.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !46806
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 40, !dbg !46806
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !46806
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 48, !dbg !46806
  store ptr %i.iq, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !46806
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 56, !dbg !46806
  store <2 x i64> %i.iw, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !46806
    #dbg_declare(ptr %i.ea, !45385, !DIExpression(), !42921)
    #dbg_value(i64 0, !45392, !DIExpression(), !42922)
    #dbg_declare(ptr poison, !45393, !DIExpression(), !42923)
    #dbg_value(i64 0, !45394, !DIExpression(), !42924)
  %i.iy = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ea), !dbg !46807, !noalias !45384
  %i.iz = extractvalue { ptr, ptr } %i.iy, 0, !dbg !46807 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.iz, null, !dbg !46808
  br i1 %.not10.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit, label %.lr.ph.i.i, !dbg !46809

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.ja = phi ptr [ %i.jf, %.lr.ph.i.i ], [ %i.iz, %bb.i ]
  %.sroa.0.011.i.i = phi i64 [ %i.jd, %.lr.ph.i.i ], [ 0, %bb.i ]
    #dbg_value(i64 %.sroa.0.011.i.i, !45394, !DIExpression(), !42924)
    #dbg_value(ptr %i.ja, !45395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42925)
    #dbg_value(ptr poison, !45395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42925)
  %.val.i.i = load i64, ptr %i.ja, align 8, !dbg !46810, !alias.scope !45400, !noalias !45384, !noundef !3137
    #dbg_value(i64 %.sroa.0.011.i.i, !45401, !DIExpression(), !42930)
    #dbg_value(ptr poison, !45405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42930)
    #dbg_value(ptr poison, !45405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42930)
    #dbg_value(ptr poison, !45413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42933)
    #dbg_value(ptr poison, !45413, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42933)
  %i.jb = lshr i64 %.val.i.i, 1, !dbg !46811
  %.lobit.i.i.i.i = and i64 %i.jb, 1, !dbg !46811
  %i.jc = xor i64 %.lobit.i.i.i.i, 1, !dbg !46811
    #dbg_value(ptr poison, !45422, !DIExpression(), !42936)
    #dbg_value(i64 %.sroa.0.011.i.i, !45425, !DIExpression(), !42936)
    #dbg_value(i64 %i.jc, !45426, !DIExpression(), !42936)
  %i.jd = add i64 %i.jc, %.sroa.0.011.i.i, !dbg !46812 ; 2 uses
    #dbg_value(i64 %i.jd, !45394, !DIExpression(), !42924)
  %i.je = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ea), !dbg !46807, !noalias !45384
  %i.jf = extractvalue { ptr, ptr } %i.je, 0, !dbg !46807 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jf, null, !dbg !46808
  br i1 %.not.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit, label %.lr.ph.i.i, !dbg !46809

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit: ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.i ], [ %i.jd, %.lr.ph.i.i ], !dbg !46813 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i, !45343, !DIExpression(), !42937)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !46814, !noalias !45384
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i, !45428, !DIExpression(), !42940)
    #dbg_value(i64 poison, !45432, !DIExpression(), !42940)
  %i.jg = extractelement <2 x i64> %i.iw, i64 1, !dbg !46815
  %i.jh = icmp ule i64 %.sroa.0.0.lcssa.i.i, %i.jg, !dbg !46815
    #dbg_value(i1 true, !45435, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !42943)
  call void @llvm.assume(i1 %i.jh), !dbg !46816
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i, !44753, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45321)
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i, !44755, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45322)
  %i.ji = load ptr, ptr %i.ic, align 8, !dbg !46817, !noundef !3137 ; 3 uses
  %.not559 = icmp eq ptr %i.ji, null, !dbg !46817
  br i1 %.not559, label %bb.k, label %bb.j, !dbg !46818

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ic, i64 8, !dbg !46817
    #dbg_value(ptr undef, !45307, !DIExpression(DW_OP_deref), !45437)
    #dbg_value(ptr undef, !45324, !DIExpression(DW_OP_deref), !45440)
    #dbg_value(i64 1, !45308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45441)
    #dbg_value(ptr null, !45308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45441)
    #dbg_value(ptr %i.ji, !45308, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45441)
    #dbg_value(i64 poison, !45308, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45441)
    #dbg_value(i64 1, !45308, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45441)
    #dbg_value(ptr null, !45308, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45441)
    #dbg_value(ptr %i.ji, !45308, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45441)
    #dbg_value(i64 poison, !45308, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45441)
  %i.jk = load <2 x i64>, ptr %i.jj, align 8, !dbg !46819
  br label %bb.k, !dbg !46820

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit, %bb.j
  %.sroa.020.sroa.0.0 = phi i64 [ 1, %bb.j ], [ 0, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], !dbg !45318 ; 2 uses
  %i.jl = phi <2 x i64> [ %i.jk, %bb.j ], [ <i64 undef, i64 0>, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparks0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit ], !dbg !45318 ; 3 uses
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45453)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45467)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45472)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45481)
    #dbg_value(ptr null, !45442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45453)
    #dbg_value(ptr null, !45454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45467)
    #dbg_value(ptr null, !45468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45472)
    #dbg_value(ptr null, !45473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45481)
    #dbg_value(ptr %i.ji, !45442, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45453)
    #dbg_value(ptr %i.ji, !45454, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45467)
    #dbg_value(ptr %i.ji, !45468, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45472)
    #dbg_value(ptr %i.ji, !45473, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45481)
    #dbg_value(i64 poison, !45442, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45453)
    #dbg_value(i64 poison, !45454, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45467)
    #dbg_value(i64 poison, !45468, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45472)
    #dbg_value(i64 poison, !45473, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !45481)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45442, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45453)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45454, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45467)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45468, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45472)
    #dbg_value(i64 %.sroa.020.sroa.0.0, !45473, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !45481)
    #dbg_value(ptr null, !45442, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45453)
    #dbg_value(ptr null, !45454, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45467)
    #dbg_value(ptr null, !45468, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45472)
    #dbg_value(ptr null, !45473, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !45481)
    #dbg_value(ptr %i.ji, !45442, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45453)
    #dbg_value(ptr %i.ji, !45454, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45467)
    #dbg_value(ptr %i.ji, !45468, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45472)
    #dbg_value(ptr %i.ji, !45473, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !45481)
    #dbg_value(i64 poison, !45442, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45453)
    #dbg_value(i64 poison, !45454, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45467)
    #dbg_value(i64 poison, !45468, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45472)
    #dbg_value(i64 poison, !45473, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !45481)
    #dbg_value(i64 poison, !45442, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45453)
    #dbg_value(i64 poison, !45454, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45467)
    #dbg_value(i64 poison, !45468, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45472)
    #dbg_value(i64 poison, !45473, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !45481)
    #dbg_value(i64 0, !45476, !DIExpression(), !42959)
    #dbg_declare(ptr poison, !45477, !DIExpression(), !42960)
    #dbg_value(i64 poison, !45450, !DIExpression(), !42961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !dbg !46821, !noalias !45482
  store i64 %.sroa.020.sroa.0.0, ptr %i.dz, align 8, !dbg !46821
  %.sroa.4867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8, !dbg !46821
  store ptr null, ptr %.sroa.4867.0..sroa_idx, align 8, !dbg !46821
  %.sroa.5868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16, !dbg !46821
  store ptr %i.ji, ptr %.sroa.5868.0..sroa_idx, align 8, !dbg !46821
  %.sroa.6869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 24, !dbg !46821
  %i.jm = extractelement <2 x i64> %i.jl, i64 0, !dbg !46821
  store i64 %i.jm, ptr %.sroa.6869.0..sroa_idx, align 8, !dbg !46821
  %.sroa.7870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 32, !dbg !46821
  store i64 %.sroa.020.sroa.0.0, ptr %.sroa.7870.0..sroa_idx, align 8, !dbg !46821
  %.sroa.8871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 40, !dbg !46821
  store ptr null, ptr %.sroa.8871.0..sroa_idx, align 8, !dbg !46821
  %.sroa.9872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 48, !dbg !46821
  store ptr %i.ji, ptr %.sroa.9872.0..sroa_idx, align 8, !dbg !46821
  %.sroa.10873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 56, !dbg !46821
  store <2 x i64> %i.jl, ptr %.sroa.10873.0..sroa_idx, align 8, !dbg !46821
    #dbg_declare(ptr %i.dz, !45483, !DIExpression(), !42969)
    #dbg_value(i64 0, !45489, !DIExpression(), !42970)
    #dbg_declare(ptr poison, !45490, !DIExpression(), !42971)
    #dbg_value(i64 0, !45491, !DIExpression(), !42972)
  %i.jn = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dz), !dbg !46822, !noalias !45482
  %i.jo = extractvalue { ptr, ptr } %i.jn, 0, !dbg !46822 ; 2 uses
  %.not10.i.i652 = icmp eq ptr %i.jo, null, !dbg !46823
  br i1 %.not10.i.i652, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit, label %.lr.ph.i.i653, !dbg !46824

.lr.ph.i.i653:                                    ; preds = %bb.k, %.lr.ph.i.i653
  %i.jp = phi ptr [ %i.ju, %.lr.ph.i.i653 ], [ %i.jo, %bb.k ]
  %.sroa.0.011.i.i654 = phi i64 [ %i.js, %.lr.ph.i.i653 ], [ 0, %bb.k ]
    #dbg_value(i64 %.sroa.0.011.i.i654, !45491, !DIExpression(), !42972)
    #dbg_value(ptr %i.jp, !45492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42973)
    #dbg_value(ptr poison, !45492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42973)
  %.val.i.i655 = load i64, ptr %i.jp, align 8, !dbg !46825, !alias.scope !45496, !noalias !45482, !noundef !3137
    #dbg_value(i64 %.sroa.0.011.i.i654, !45497, !DIExpression(), !42978)
    #dbg_value(ptr poison, !45501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42978)
    #dbg_value(ptr poison, !45501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42978)
    #dbg_value(ptr poison, !45508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42981)
    #dbg_value(ptr poison, !45508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42981)
  %i.jq = lshr i64 %.val.i.i655, 1, !dbg !46826
  %.lobit.i.i.i.i656 = and i64 %i.jq, 1, !dbg !46826
  %i.jr = xor i64 %.lobit.i.i.i.i656, 1, !dbg !46826
    #dbg_value(ptr poison, !45517, !DIExpression(), !42984)
    #dbg_value(i64 %.sroa.0.011.i.i654, !45520, !DIExpression(), !42984)
    #dbg_value(i64 %i.jr, !45521, !DIExpression(), !42984)
  %i.js = add i64 %i.jr, %.sroa.0.011.i.i654, !dbg !46827 ; 2 uses
    #dbg_value(i64 %i.js, !45491, !DIExpression(), !42972)
  %i.jt = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryINtNtBb_3vec3VecTdyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dz), !dbg !46822, !noalias !45482
  %i.ju = extractvalue { ptr, ptr } %i.jt, 0, !dbg !46822 ; 2 uses
  %.not.i.i657 = icmp eq ptr %i.ju, null, !dbg !46823
  br i1 %.not.i.i657, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit, label %.lr.ph.i.i653, !dbg !46824

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryINtNtB1b_3vec3VecTdyEEENCNvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots13stream_sparks11plot_sparkss_0ENtNtNtB9_6traits8iterator8Iterator5countB2t_.exit: ; preds = %.lr.ph.i.i653, %bb.k
  %.sroa.0.0.lcssa.i.i658 = phi i64 [ 0, %bb.k ], [ %i.js, %.lr.ph.i.i653 ], !dbg !46828 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i658, !45451, !DIExpression(), !42985)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !dbg !46829, !noalias !45482
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i658, !45428, !DIExpression(), !42987)
    #dbg_value(i64 poison, !45432, !DIExpression(), !42987)
  %i.jv = extractelement <2 x i64> %i.jl, i64 1, !dbg !46830
  %i.jw = icmp ule i64 %.sroa.0.0.lcssa.i.i658, %i.jv, !dbg !46830
    #dbg_value(i1 true, !45435, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !42989)
  call void @llvm.assume(i1 %i.jw), !dbg !46831
    #dbg_value(i64 %.sroa.0.0.lcssa.i.i658, !44754, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !45321)
  br label %bb.g, !dbg !46799

bb.l:                                             ; preds = %bb.g
  %.sroa.022.0 = trunc i64 %.sroa.022.0.in to i32, !dbg !45314 ; 2 uses
    #dbg_value(i32 %.sroa.022.0, !44753, !DIExpression(), !45321)
    #dbg_value(i32 %.sroa.022.0, !44755, !DIExpression(), !45322)
  %.sroa.024.0 = trunc i64 %.sroa.024.0.in to i32, !dbg !45314 ; 2 uses
    #dbg_value(i32 %.sroa.024.0, !44754, !DIExpression(), !45321)
  %i.jx = udiv i32 %.sroa.022.0, %i.is, !dbg !46803
  %i.jy = urem i32 %.sroa.022.0, %i.is, !dbg !46832
  %i.jz = icmp ne i32 %i.jy, 0, !dbg !46832
    #dbg_value(i1 %i.jz, !45523, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !45529)
  %i.ka = zext i1 %i.jz to i32, !dbg !46833
  %i.kb = add i32 %i.jx, %i.ka, !dbg !46803
    #dbg_value(i32 %i.kb, !44757, !DIExpression(), !45530)
  %i.kc = udiv i32 %.sroa.024.0, %i.is, !dbg !46834
  %i.kd = urem i32 %.sroa.024.0, %i.is, !dbg !46835
  %i.ke = icmp ne i32 %i.kd, 0, !dbg !46835
    #dbg_value(i1 %i.ke, !45523, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !45532)
  %i.kf = zext i1 %i.ke to i32, !dbg !46836
  %i.kg = add i32 %i.kc, %i.kf, !dbg !46834
    #dbg_value(i32 %i.kg, !44758, !DIExpression(), !45533)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 85, !dbg !46837
  %i.ki = load i8, ptr %i.kh, align 1, !dbg !46837, !range !5912, !noundef !3137
  %i.kj = trunc nuw i8 %i.ki to i1, !dbg !46837   ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !46837
  %i.kl = load i32, ptr %i.kk, align 8, !dbg !46837 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 60, !dbg !46837
  %i.kn = load i32, ptr %i.km, align 4, !dbg !46837
  %.sroa.027.0 = select i1 %i.kj, i32 %i.kl, i32 0, !dbg !46837 ; 4 uses
  %.sroa.026.0 = select i1 %i.kj, i32 0, i32 %i.kn, !dbg !46837
    #dbg_value(i32 %.sroa.026.0, !44759, !DIExpression(), !45534)
    #dbg_value(i32 %.sroa.027.0, !44760, !DIExpression(), !45535)
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !46838
  %i.kp = load i32, ptr %i.ko, align 8, !dbg !46838, !noundef !3137 ; 12 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !46839
  %i.kr = load i32, ptr %i.kq, align 8, !dbg !46839, !noundef !3137 ; 10 uses
  %i.ks = uitofp i32 %i.kr to float, !dbg !46839
  %i.kt = fmul nnan float %i.ks, 1.200000e+00, !dbg !46840
  %i.ku = call i32 @llvm.fptoui.sat.i32.f32(float %i.kt), !dbg !46840
  %i.kv = add i32 %.sroa.026.0, %i.kp, !dbg !46838
  %i.kw = add i32 %i.kv, %i.ku, !dbg !46838
    #dbg_value(!DIArgList(i32 %.sroa.026.0, i32 %i.kp, i32 %i.ku), !44761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !45537)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !46841
  %i.ky = load i32, ptr %i.kx, align 4, !dbg !46841, !noundef !3137 ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !46842
  %i.la = load i32, ptr %i.kz, align 4, !dbg !46842, !noundef !3137 ; 7 uses
    #dbg_value(i32 %i.la, !44787, !DIExpression(), !45538)
  %i.lb = add i32 %i.la, %i.ky, !dbg !46841       ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 52, !dbg !46843
  %i.ld = load i32, ptr %i.lc, align 4, !dbg !46843, !noundef !3137 ; 5 uses
  %i.le = add i32 %i.ld, %.sroa.027.0, !dbg !46841
  %i.lf = add i32 %i.le, %i.lb, !dbg !46841       ; 2 uses
    #dbg_value(!DIArgList(i32 %.sroa.027.0, i32 %i.lb, i32 %i.ld), !44762, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !45539)
  %i.lg = mul i32 %i.kw, %i.is, !dbg !46844       ; 4 uses
    #dbg_value(i32 %i.lg, !44763, !DIExpression(), !45540)
  %i.lh = mul i32 %i.lf, %i.kb, !dbg !46845       ; 2 uses
    #dbg_value(i32 %i.lh, !44764, !DIExpression(), !45541)
  %i.li = mul i32 %i.lf, %i.kg, !dbg !46846       ; 2 uses
    #dbg_value(i32 %i.li, !44765, !DIExpression(), !45542)
  %.sroa.044.0.in.v = select i1 %i.hx, i64 1056, i64 1072, !dbg !46847
  %.sroa.044.0.in = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.044.0.in.v, !dbg !46847
  %.sroa.044.0 = load double, ptr %.sroa.044.0.in, align 8, !dbg !45542, !noundef !3137
    #dbg_value(double %.sroa.044.0, !44768, !DIExpression(), !45543)
    #dbg_value(double %.sroa.044.0, !44766, !DIExpression(), !45544)
  %.sroa.040.0.in.v = select i1 %i.hx, i64 1064, i64 1080, !dbg !46848
  %.sroa.040.0.in = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.040.0.in.v, !dbg !46848
  %.sroa.040.0 = load double, ptr %.sroa.040.0.in, align 8, !dbg !45544, !noundef !3137 ; 2 uses
    #dbg_value(double %.sroa.040.0, !44767, !DIExpression(), !45545)
  %i.lj = load i64, ptr %0, align 8, !dbg !46849, !range !3838, !noundef !3137 ; 5 uses
  %i.lk = trunc nuw i64 %i.lj to i1, !dbg !46850
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46850
  %i.lm = load double, ptr %i.ll, align 8, !dbg !46850 ; 5 uses
  %.sroa.044.1 = select i1 %i.lk, double %i.lm, double %.sroa.044.0, !dbg !46850 ; 3 uses
    #dbg_value(double %.sroa.044.1, !44768, !DIExpression(), !45543)
    #dbg_value(double %.sroa.044.1, !44766, !DIExpression(), !45544)
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46851
  %i.lo = load i64, ptr %i.ln, align 8, !dbg !46851, !range !3838, !noundef !3137 ; 5 uses
  %i.lp = trunc nuw i64 %i.lo to i1, !dbg !46852
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !46852
  %i.lr = load double, ptr %i.lq, align 8, !dbg !46852 ; 5 uses
  %i.ls = call nsz double @llvm.minimumnum.f64(double %.sroa.040.0, double %i.lr), !dbg !46852
  %.sroa.040.1 = select i1 %i.lp, double %i.ls, double %.sroa.040.0, !dbg !46852 ; 3 uses
    #dbg_value(double %.sroa.040.1, !44767, !DIExpression(), !45545)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu), !dbg !46853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ht), !dbg !46854
    #dbg_value(ptr @233, !44976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45546)
    #dbg_value(ptr @233, !44978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45547)
    #dbg_value(ptr @233, !44970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45548)
    #dbg_value(ptr @233, !44981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45549)
    #dbg_value(i64 24, !44976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45546)
    #dbg_value(i64 24, !44978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45547)
    #dbg_value(i64 24, !44970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45548)
    #dbg_value(i64 24, !44981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45549)
    #dbg_value(i64 24, !44982, !DIExpression(), !45550)
    #dbg_value(i64 24, !45002, !DIExpression(), !45551)
    #dbg_value(i64 24, !45007, !DIExpression(), !45552)
    #dbg_value(i64 24, !45553, !DIExpression(), !45558)
    #dbg_value(i64 24, !45559, !DIExpression(), !45564)
    #dbg_value(i64 24, !45012, !DIExpression(), !45565)
    #dbg_value(i64 24, !45039, !DIExpression(), !45043)
    #dbg_value(i64 1, !45013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45565)
    #dbg_value(i64 1, !45040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45043)
    #dbg_value(i64 1, !45013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45565)
    #dbg_value(i64 1, !45040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45043)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !dbg !46855
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fd, i64 noundef 24, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !46855
  %i.lt = load i64, ptr %i.fd, align 8, !dbg !46855, !range !3838, !noundef !3137
  %i.lu = trunc nuw i64 %i.lt to i1, !dbg !46856
  %i.lv = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !45565
  %i.lw = load i64, ptr %i.lv, align 8, !dbg !45565, !range !5067, !noundef !3137 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.fd, i64 16, !dbg !45565 ; 2 uses
  br i1 %i.lu, label %bb.n, label %bb.o, !dbg !46856, !prof !3806

bb.m:                                             ; preds = %bb.g
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #26, !dbg !46803
  unreachable, !dbg !46803

bb.n:                                             ; preds = %bb.l
  %i.ly = load i64, ptr %i.lx, align 8, !dbg !46857
    #dbg_value(i64 %i.lw, !45015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45566)
    #dbg_value(i64 %i.ly, !45015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45566)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.lw, i64 %i.ly) #22, !dbg !46858
  unreachable, !dbg !46858

bb.o:                                             ; preds = %bb.l
  %i.lz = load ptr, ptr %i.lx, align 8, !dbg !46859, !nonnull !3137, !noundef !3137 ; 2 uses
    #dbg_value(i64 %i.lw, !45014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45567)
    #dbg_value(ptr %i.lz, !45014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45567)
    #dbg_value(ptr poison, !45038, !DIExpression(), !45568)
  %i.ma = icmp samesign ugt i64 %i.lw, 23, !dbg !46860
    #dbg_value(i1 true, !45569, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !45572)
  call void @llvm.assume(i1 %i.ma), !dbg !46861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !dbg !46862
    #dbg_value(i64 %i.lw, !45573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45576)
    #dbg_value(i64 %i.lw, !44983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45577)
    #dbg_value(ptr %i.lz, !45573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45576)
    #dbg_value(ptr %i.lz, !44983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45577)
    #dbg_value(i64 0, !45573, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45576)
    #dbg_value(i64 0, !44983, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45577)
    #dbg_value(ptr @233, !45554, !DIExpression(), !45558)
    #dbg_value(ptr @233, !45560, !DIExpression(), !45564)
    #dbg_value(ptr %i.lz, !45555, !DIExpression(), !45558)
    #dbg_value(ptr %i.lz, !45561, !DIExpression(), !45564)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.lz, ptr noundef nonnull align 1 dereferenceable(24) @233, i64 24, i1 false), !dbg !46863
    #dbg_value(i64 24, !45573, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45576)
    #dbg_value(i64 24, !44983, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !45577)
  store i64 %i.lw, ptr %i.ht, align 8, !dbg !46864
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8, !dbg !46864
  store ptr %i.lz, ptr %.sroa.4194.0..sroa_idx, align 8, !dbg !46864
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 16, !dbg !46864
  store i64 24, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !46864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs), !dbg !46865
    #dbg_value(ptr %1, !44976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45578)
    #dbg_value(ptr %1, !44978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45579)
    #dbg_value(ptr %1, !44970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45580)
    #dbg_value(ptr %1, !44981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45581)
    #dbg_value(ptr %1, !44976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45582)
    #dbg_value(ptr %1, !44978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45583)
    #dbg_value(ptr %1, !44970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45584)
    #dbg_value(ptr %1, !44981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45585)
    #dbg_value(ptr %1, !44976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45586)
    #dbg_value(ptr %1, !44978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45587)
    #dbg_value(ptr %1, !44970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45588)
    #dbg_value(ptr %1, !44981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45589)
    #dbg_value(ptr %1, !44976, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45590)
    #dbg_value(ptr %1, !44978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45591)
    #dbg_value(ptr %1, !44970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45592)
    #dbg_value(ptr %1, !44981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !45593)
    #dbg_value(i64 %2, !44976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45578)
    #dbg_value(i64 %2, !44978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45579)
    #dbg_value(i64 %2, !44970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45580)
    #dbg_value(i64 %2, !44981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45581)
    #dbg_value(i64 %2, !44976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45582)
    #dbg_value(i64 %2, !44978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45583)
    #dbg_value(i64 %2, !44970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45584)
    #dbg_value(i64 %2, !44981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45585)
    #dbg_value(i64 %2, !44976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45586)
    #dbg_value(i64 %2, !44978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45587)
    #dbg_value(i64 %2, !44970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45588)
    #dbg_value(i64 %2, !44981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45589)
    #dbg_value(i64 %2, !44976, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45590)
    #dbg_value(i64 %2, !44978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45591)
    #dbg_value(i64 %2, !44970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45592)
    #dbg_value(i64 %2, !44981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !45593)
    #dbg_value(i64 %2, !44984, !DIExpression(), !45594)
    #dbg_value(i64 %2, !45002, !DIExpression(), !45595)
    #dbg_value(i64 %2, !45007, !DIExpression(), !45596)
    #dbg_value(i64 %2, !45553, !DIExpression(), !45599)
    #dbg_value(i64 %2, !45559, !DIExpression(), !45602)
    #dbg_value(i64 %2, !45012, !DIExpression(), !45603)
    #dbg_value(i64 %2, !45039, !DIExpression(), !45065)
    #dbg_value(i64 %2, !44988, !DIExpression(), !45604)
    #dbg_value(i64 %2, !45002, !DIExpression(), !45605)
    #dbg_value(i64 %2, !45007, !DIExpression(), !45606)
    #dbg_value(i64 %2, !45553, !DIExpression(), !45609)
end_hunk_6
