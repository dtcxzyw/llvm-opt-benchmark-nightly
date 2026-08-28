Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.12?download=true
inline.NumInlined: 569
inline.NumDeleted: 265
begin_hunk_0_@_RINvMs0_NtCsdq8xsXUia3c_10grep_regex6configNtB6_13ConfiguredHIR3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg:bb.a

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.0101.0 = phi i8 [ 1, %bb.af ], [ 2, %bb.ae ], !dbg !667
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !668
  %i.hw = load i8, ptr %i.hv, align 2, !dbg !668, !range !220, !noundef !17
  %. = sub nuw nsw i8 2, %i.hw, !dbg !669
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 27, !dbg !672
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !672, !range !220, !noundef !17
  %.sroa.0103.0 = sub nuw nsw i8 2, %i.hy, !dbg !673
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !676
  %i.ia = load i8, ptr %i.hz, align 8, !dbg !676, !range !220, !noundef !17
  %.sroa.0104.0 = sub nuw nsw i8 2, %i.ia, !dbg !677
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !680
  %i.ic = load i8, ptr %i.ib, align 4, !dbg !680, !range !220, !noundef !17
  %.sroa.0105.0 = sub nuw nsw i8 2, %i.ic, !dbg !681
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 30, !dbg !684
  %i.ie = load i8, ptr %i.id, align 2, !dbg !684, !range !220, !noundef !17
  %.sroa.0106.0 = shl nuw nsw i8 %i.ie, 1, !dbg !685
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !688 ; 6 uses
  %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !dbg !688
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx, align 8, !dbg !688
  %.sroa.4108.sroa.5.0..sroa.4108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !688
  store i64 0, ptr %.sroa.4108.sroa.5.0..sroa.4108.0..sroa_idx.sroa_idx, align 8, !dbg !688
  %i.if = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !688
  store i8 %.sroa.0101.0, ptr %i.if, align 8, !dbg !688
  %.sroa.4122.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.m, i64 33, !dbg !688
  store i8 %., ptr %.sroa.4122.0..sroa_idx.a, align 1, !dbg !688
  %.sroa.5123.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.m, i64 34, !dbg !688
  store i8 %.sroa.0103.0, ptr %.sroa.5123.0..sroa_idx.a, align 2, !dbg !688
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 35, !dbg !688
  store i8 %.sroa.0105.0, ptr %.sroa.6124.0..sroa_idx, align 1, !dbg !688
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 36, !dbg !688
  store i8 %.sroa.0106.0, ptr %.sroa.7125.0..sroa_idx, align 4, !dbg !688
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 37, !dbg !688
  store i8 %.sroa.0104.0, ptr %.sroa.8126.0..sroa_idx, align 1, !dbg !688
  %i.ig = getelementptr inbounds nuw i8, ptr %i.m, i64 39, !dbg !688
  store i8 0, ptr %i.ig, align 1, !dbg !688
  %i.ih = getelementptr inbounds nuw i8, ptr %i.m, i64 38, !dbg !688
  store i8 10, ptr %i.ih, align 2, !dbg !688
  %i.ii = load ptr, ptr %i.hf, align 8, !dbg !691, !nonnull !17, !noundef !17
  %i.ij = load i64, ptr %i.hh, align 8, !dbg !705, !noundef !17
  invoke void @_RNvMs0_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translateNtB5_10Translator9translate(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ij, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.ai unwind label %bb.ah, !dbg !706

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.m) #25
          to label %.body160 unwind label %bb.t, !dbg !707

bb.ai:                                            ; preds = %bb.ag
  %i.il = load i64, ptr %i.n, align 8, !dbg !708, !range !636, !noundef !17
  %.not = icmp eq i64 %i.il, -1, !dbg !708
  br i1 %.not, label %bb.ak, label %bb.aj, !dbg !711

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false), !dbg !712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !713
  invoke void @_RINvMNtCsdq8xsXUia3c_10grep_regex5errorNtB3_5Error7genericNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.e)
          to label %bb.bk unwind label %bb.ah, !dbg !715

bb.ak:                                            ; preds = %bb.ai
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !719
  %.sroa.0127.0.copyload = load i64, ptr %i.im, align 8, !dbg !719
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4128.0..sroa_idx, i64 32, i1 false), !dbg !719
  %.sroa.5129.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !719
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx.a, align 8, !dbg !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637, i64 32, i1 false), !dbg !721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637), !dbg !726
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !727 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630, i64 32, i1 false), !dbg !655
  store i64 %.sroa.0127.0.copyload, ptr %i.o, align 8, !dbg !727
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40, !dbg !727 ; 5 uses
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !727
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.al, !dbg !730

bb.al:                                            ; preds = %bb.ak
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %.body158.thread unwind label %bb.am, !dbg !739

bb.am:                                            ; preds = %bb.al
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !730
  unreachable, !dbg !730

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit unwind label %.body158.thread203, !dbg !742

.body158.thread203:                               ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body158.thread, !dbg !744

.body158:                                         ; preds = %bb.ay
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body160, !dbg !744

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630), !dbg !707
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 22, !dbg !745
  %i.iq = load i8, ptr %i.ip, align 2, !dbg !745, !range !220, !noundef !17
  %i.ir = trunc nuw i8 %i.iq to i1, !dbg !745
  br i1 %i.ir, label %bb.an, label %bb.ao, !dbg !748

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !745
  %i.it = load i8, ptr %i.is, align 1, !dbg !749, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !750
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, i8 noundef %i.it)
          to label %bb.ap unwind label %.body158.thread203, !dbg !750

bb.ao:                                            ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !751
  %i.iv = load i8, ptr %i.iu, align 4, !dbg !751, !range !268, !noundef !17 ; 2 uses
  %.not139 = icmp eq i8 %i.iv, 2, !dbg !751
  br i1 %.not139, label %bb.az, label %bb.ay, !dbg !752

bb.ap:                                            ; preds = %bb.an
  %i.iw = load i8, ptr %i.l, align 8, !dbg !753, !range !755, !noundef !17
  %.not138 = icmp eq i8 %i.iw, -1, !dbg !753
  br i1 %.not138, label %bb.aw, label %bb.aq, !dbg !756

bb.aq:                                            ; preds = %bb.ap
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !766
  store i64 -1, ptr %0, align 8, !dbg !757
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.as unwind label %bb.ar, !dbg !767, !inline_history !770

bb.ar:                                            ; preds = %bb.aq
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o) #25
          to label %bb.av unwind label %bb.au, !dbg !767, !inline_history !770

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECs2NzvFoTxuAy_2rg.exit unwind label %bb.at, !dbg !767, !inline_history !770

bb.at:                                            ; preds = %bb.as
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !767, !inline_history !770
  unreachable, !dbg !767

bb.av:                                            ; preds = %bb.at, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.iz, %bb.at ], [ %i.iy, %bb.ar ]
  %.val2.i = load ptr, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !767, !alias.scope !771, !nonnull !17, !noundef !17
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #24, !dbg !774, !inline_history !770
  br label %.body160, !dbg !767

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.as
  %.val.i = load ptr, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !767, !alias.scope !771, !nonnull !17, !noundef !17
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #24, !dbg !787, !inline_history !770
  br label %bb.ax, !dbg !767

bb.aw:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !766
  br label %bb.ao, !dbg !795

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit171, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !744
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r)
          to label %bb.bn unwind label %bb.v, !dbg !650

bb.ay:                                            ; preds = %bb.ao
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 21, !dbg !751
  %i.jc = trunc nuw i8 %i.iv to i1, !dbg !796
  %i.jd = load i8, ptr %i.jb, align 1, !dbg !796
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.647), !dbg !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !dbg !799
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip16strip_from_match(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.j, i1 noundef zeroext %i.jc, i8 %i.jd)
          to label %bb.bb unwind label %.body158, !dbg !797

bb.az:                                            ; preds = %bb.ao
  %.sroa.052.0.copyload = load i64, ptr %i.o, align 8, !dbg !800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.443.0..sroa_idx, i64 32, i1 false), !dbg !800
  %.sroa.455.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !800
  br label %bb.ba, !dbg !800

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.sroa.455.0 = phi i64 [ %.sroa.5135.0.copyload, %bb.bd ], [ %.sroa.455.0.copyload, %bb.az ], !dbg !801
  %.sroa.052.0 = phi i64 [ %i.je, %bb.bd ], [ %.sroa.052.0.copyload, %bb.az ], !dbg !801
  store i64 %.sroa.052.0, ptr %i.o, align 8, !dbg !802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false), !dbg !802
  store i64 %.sroa.455.0, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !dbg !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !744
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast3AstECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r)
          to label %bb.be unwind label %bb.v, !dbg !650

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !804
  %i.je = load i64, ptr %i.k, align 8, !dbg !805, !range !806, !noundef !17 ; 2 uses
  %i.jf = icmp eq i64 %i.je, -1, !dbg !805
  %i.jg = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.647, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i64 32, i1 false), !dbg !807
  br i1 %i.jf, label %bb.bc, label %bb.bd, !dbg !808

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !809
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.647, i64 32, i1 false), !dbg !809
  store i64 -1, ptr %0, align 8, !dbg !810
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.647), !dbg !816
  br label %bb.ax, !dbg !817

bb.bd:                                            ; preds = %bb.bb
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !819
  %.sroa.5135.0.copyload = load i64, ptr %.sroa.5135.0..sroa_idx, align 8, !dbg !819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.647, i64 32, i1 false), !dbg !797
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.647), !dbg !816
  br label %bb.ba, !dbg !802

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !650
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i163 unwind label %bb.bf, !dbg !820

bb.bf:                                            ; preds = %bb.be
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bg, !dbg !823

bb.bg:                                            ; preds = %bb.bf
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !820
  unreachable, !dbg !820

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i163: ; preds = %bb.be
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit166 unwind label %.loopexit.split-lp, !dbg !825

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit166: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !581
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit unwind label %bb.bh, !dbg !827

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit166
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.bi, !dbg !830

bb.bi:                                            ; preds = %bb.bh
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !827
  unreachable, !dbg !827

common.resume:                                    ; preds = %.body, %.body180.thread, %bb.bs, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.jt, %bb.bs ], [ %i.jk, %bb.bh ], [ %eh.lpad-body181208, %.body180.thread ], [ %.pn143, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !416

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit166
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y), !dbg !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !550
  br label %bb.bj, !dbg !835

bb.bj:                                            ; preds = %bb.cg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !836
  %i.jm = getelementptr inbounds nuw i8, ptr %i.i, i64 48, !dbg !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jm, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !dbg !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false), !dbg !838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !839
  br label %bb.bu, !dbg !840

.body158.thread:                                  ; preds = %bb.al, %.body158.thread203
  %eh.lpad-body159202 = phi { ptr, i32 } [ %lpad.thr_comm, %.body158.thread203 ], [ %i.in, %bb.al ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o) #25
          to label %.body160 unwind label %bb.t, !dbg !744

bb.bk:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637, i64 32, i1 false), !dbg !844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637), !dbg !726
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.630, i64 32, i1 false), !dbg !726
  store i64 -1, ptr %0, align 8, !dbg !845
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i168 unwind label %bb.bl, !dbg !851

bb.bl:                                            ; preds = %bb.bk
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %.body160 unwind label %bb.bm, !dbg !856

bb.bm:                                            ; preds = %bb.bl
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !851
  unreachable, !dbg !851

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i168: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4108.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit171 unwind label %bb.ab, !dbg !858

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate10TranslatorECs2NzvFoTxuAy_2rg.exit171: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir9translate8HirFrameEEECs2NzvFoTxuAy_2rg.exit.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630), !dbg !707
  br label %bb.ax, !dbg !860

bb.bn:                                            ; preds = %bb.br, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !650
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i173 unwind label %bb.bo, !dbg !862

bb.bo:                                            ; preds = %bb.bn
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bp, !dbg !865

bb.bp:                                            ; preds = %bb.bo
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !862
  unreachable, !dbg !862

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i173: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit176 unwind label %.loopexit.split-lp, !dbg !867

bb.bq:                                            ; preds = %bb.z
  %.sroa.013.0.copyload = load i8, ptr %i.f, align 8, !dbg !869
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !869
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.493.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.615.0..sroa_idx, i64 7, i1 false), !dbg !869
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !869
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8, !dbg !869
  %.sroa.820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !869
  %.sroa.820.0.copyload = load ptr, ptr %.sroa.820.0..sroa_idx, align 8, !dbg !869
  %.sroa.1023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !869
  %.sroa.1023.0.copyload = load i64, ptr %.sroa.1023.0..sroa_idx, align 8, !dbg !869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !646
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !870
  store i8 %.sroa.013.0.copyload, ptr %i.js, align 8, !dbg !870
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !870
  store i64 %.sroa.617.0.copyload, ptr %.sroa.594.0..sroa_idx, align 8, !dbg !870
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !870
  store ptr %.sroa.820.0.copyload, ptr %.sroa.695.0..sroa_idx, align 8, !dbg !870
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !870
  store i64 %.sroa.1023.0.copyload, ptr %.sroa.796.0..sroa_idx, align 8, !dbg !870
  store i64 -1, ptr %0, align 8, !dbg !870
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast5parse6ParserECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(200) %i.p)
          to label %bb.br unwind label %bb.v, !dbg !629

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !629
  br label %bb.bn, !dbg !878

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit176: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !581
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit178 unwind label %bb.bs, !dbg !880

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit176
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.bt, !dbg !882

bb.bt:                                            ; preds = %bb.bs
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !880
  unreachable, !dbg !880

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg.exit178: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit176
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y), !dbg !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !550
  br label %bb.bu, !dbg !840

end_hunk_0
