Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.11?download=true
inline.NumInlined: 1583
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShNtNtNtB1Y_2io4util4SinkE0EEEE20process_input_bufferCskIqAKC4t9Ft_2yr:bb.a
bb.ad:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dq = load i64, ptr %i.x, align 8, !range !9, !alias.scope !2246, !noundef !6
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body80 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %bb.af, %bb.ah
  %eh.lpad-body81 = phi { ptr, i32 } [ %i.du, %bb.ah ], [ %i.ds, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 %i.cq, ptr %i.at, align 8
  store i8 %i.cr, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82: ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 %i.cq, ptr %i.at, align 8
  store i8 %i.cr, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.dv = load i16, ptr %i.w, align 8, !range !18, !noundef !6
  switch i16 %i.dv, label %default.unreachable253 [
    i16 0, label %bb.ak
    i16 1, label %bb.ak
    i16 2, label %bb.ak
    i16 3, label %bb.ak
    i16 4, label %bb.ak
    i16 5, label %bb.ak
    i16 6, label %bb.ak
    i16 7, label %bb.ak
    i16 8, label %bb.ak
    i16 9, label %bb.ai
    i16 10, label %bb.ai
    i16 11, label %bb.aj
    i16 12, label %bb.ak
    i16 13, label %bb.ak
    i16 14, label %bb.ak
    i16 15, label %bb.ak
    i16 16, label %bb.ai
    i16 17, label %bb.aj
    i16 18, label %bb.aj
    i16 19, label %bb.aj
    i16 20, label %bb.aj
    i16 21, label %bb.aj
    i16 22, label %bb.aj
  ]

default.unreachable253:                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  unreachable

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  br label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  %i.dw = load i64, ptr %i.bc, align 8, !noundef !6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  %.sroa.836.0 = phi i64 [ 1, %bb.ai ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ %i.dw, %bb.aj ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ]
  %i.dx = load i64, ptr %i.aq, align 8, !noundef !6
  %i.dy = add i64 %i.dx, %.sroa.836.0
  store i64 %i.dy, ptr %i.aq, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %bb.al unwind label %bb.e

bb.al:                                            ; preds = %bb.ab, %bb.ac, %bb.am, %bb.an, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %thread-pre-split

bb.am:                                            ; preds = %._crit_edge.i71, %bb.w
  %i.dz = phi i64 [ %.pre6.i73, %._crit_edge.i71 ], [ %i.cu, %bb.w ] ; 2 uses
  %i.ea = phi i64 [ %.pre.i72, %._crit_edge.i71 ], [ %i.ct, %bb.w ] ; 2 uses
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.an, align 8, !alias.scope !2244
  %i.ec = load i64, ptr %i.ao, align 8, !alias.scope !2244, !noundef !6
  %i.ed = add i64 %i.ec, %i.ea                    ; 2 uses
  %.not.i69 = icmp ult i64 %i.ed, %i.dz
  %i.ee = select i1 %.not.i69, i64 0, i64 %i.dz
  %.sroa.03.0.i70 = sub nuw i64 %i.ed, %i.ee
  %i.ef = load ptr, ptr %i.ap, align 8, !alias.scope !2244, !nonnull !6, !noundef !6
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %.sroa.03.0.i70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  store i8 1, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.al

bb.an:                                            ; preds = %._crit_edge.i, %bb.j
  %i.eh = phi i64 [ %.pre6.i, %._crit_edge.i ], [ %i.bv, %bb.j ] ; 2 uses
  %i.ei = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bu, %bb.j ] ; 2 uses
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.an, align 8, !alias.scope !2238
  %i.ek = load i64, ptr %i.ao, align 8, !alias.scope !2238, !noundef !6
  %i.el = add i64 %i.ek, %i.ei                    ; 2 uses
  %.not.i50 = icmp ult i64 %i.el, %i.eh
  %i.em = select i1 %.not.i50, i64 0, i64 %i.eh
  %.sroa.03.0.i = sub nuw i64 %i.el, %i.em
  %i.en = load ptr, ptr %i.ap, align 8, !alias.scope !2238, !nonnull !6, !noundef !6
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %.sroa.03.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.al

bb.ao:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #25
          to label %.body85.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.cr, %bb.bs, %bb.ao, %.body85.thread
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c
  %i.eq = load i64, ptr %i.ad, align 8, !alias.scope !2235, !noundef !6 ; 2 uses
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  %i.es = load i64, ptr %i.ac, align 8, !range !5, !alias.scope !2235, !noundef !6 ; 3 uses
  %.not.i = icmp ult i64 %i.er, %i.es
  %i.et = select i1 %.not.i, i64 0, i64 %i.es
  %.sroa.0.0.i = sub nuw i64 %i.er, %i.et
  store i64 %.sroa.0.0.i, ptr %i.ad, align 8, !alias.scope !2235
  %i.eu = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.ab, align 8, !alias.scope !2235
  %i.ev = icmp ult i64 %i.eu, %i.es
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load ptr, ptr %i.ae, align 8, !alias.scope !2235, !nonnull !6, !noundef !6
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %i.eq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i64 32, i1 false), !noalias !2235
  %.pr145 = load i16, ptr %i.q, align 8
  switch i16 %.pr145, label %bb.av [
    i16 -1, label %.loopexit156
    i16 9, label %.thread256
    i16 10, label %bb.az
    i16 11, label %bb.ba
    i16 16, label %bb.bb
  ]

.loopexit156:                                     ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ey = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ez = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2247
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 384307168202282326) %i.ez, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %.loopexit156
  %i.fa = load i64, ptr %i.g, align 8, !range !19, !noalias !2247, !noundef !6
  %i.fb = trunc nuw i64 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !range !20, !noalias !2247, !noundef !6 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.fb, label %bb.aq, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i, !prof !21

bb.aq:                                            ; preds = %.noexc83
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !2247
  br label %.invoke

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i: ; preds = %.noexc83
  %i.fg = load ptr, ptr %i.fe, align 8, !noalias !2247, !nonnull !6, !noundef !6 ; 2 uses
  %i.fh = icmp samesign ule i64 %i.ez, %i.fd
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2247
  store i64 %i.fd, ptr %i.i, align 8, !noalias !2247
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.fg, ptr %i.fi, align 8, !noalias !2247
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fl = icmp eq i64 %i.fd, 0
  br i1 %i.fl, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i, %bb.as
  %.sroa.012.023.i = phi ptr [ %i.fp, %bb.as ], [ %i.ey, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.fo, %bb.as ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.fm, %bb.as ], [ %i.fd, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i ]
  %i.fm = add i64 %.sroa.10.021.i, -1             ; 2 uses
  %i.fn = icmp eq ptr %.sroa.012.023.i, %i.fk
  br i1 %i.fn, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2247
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.as unwind label %bb.au, !noalias !2248

bb.as:                                            ; preds = %bb.ar
  %i.fo = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2247
  %i.fr = icmp eq i64 %i.fm, 0
  br i1 %i.fr, label %.loopexit, label %.lr.ph.i

bb.at:                                            ; preds = %bb.au
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2248
  unreachable

bb.au:                                            ; preds = %bb.ar
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.fj, align 8, !noalias !2247
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %.body85 unwind label %bb.at, !noalias !2248

.body85:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch, %bb.cd, %bb.bu, %bb.bi, %bb.au, %.body140, %bb.bs, %.body109
  %.pn44 = phi { ptr, i32 } [ %eh.lpad-body141, %.body140 ], [ %i.id, %bb.bs ], [ %eh.lpad-body110, %.body109 ], [ %lpad.loopexit.i, %bb.au ], [ %lpad.loopexit.i124, %bb.cd ], [ %i.ji, %bb.ch ], [ %lpad.loopexit.i101, %bb.bi ], [ %i.ig, %bb.bu ], [ %lpad.loopexit.split-lp305, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ft = load i16, ptr %i.q, align 8, !range !26, !noundef !6
  %.not152 = icmp eq i16 %i.ft, -1
  br i1 %.not152, label %.body85.thread, label %bb.cr

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.by, %bb.bv, %bb.bd, %.loopexit155, %bb.bk, %.loopexit154, %bb.bj, %.invoke, %.loopexit156, %.loopexit
  %lpad.loopexit.split-lp305 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.loopexit:                                        ; preds = %bb.as, %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i
  store i64 %i.ez, ptr %i.fj, align 8, !noalias !2247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2247
  %i.fu = load i8, ptr %i.al, align 8, !range !10, !noundef !6
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 817
  %i.fz = load i8, ptr %i.fy, align 1, !range !10
  %i.ga = trunc nuw i8 %i.fz to i1
  %.sroa.030.0 = select i1 %i.fx, i1 true, i1 %i.ga
  invoke fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShNtNtNtB1Y_2io4util4SinkE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(824) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, i1 noundef zeroext %i.fv, i1 noundef zeroext %.sroa.030.0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i64 32, i1 false)
  %i.gb = load i64, ptr %i.an, align 8, !alias.scope !2250, !noundef !6 ; 2 uses
  %i.gc = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2250, !noundef !6 ; 2 uses
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.aw, label %bb.cq

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %._crit_edge.i89 unwind label %bb.ax, !noalias !2251

._crit_edge.i89:                                  ; preds = %bb.aw
  %.pre.i90 = load i64, ptr %i.an, align 8, !alias.scope !2250
  %.pre6.i91 = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2250
  br label %bb.cq

bb.ax:                                            ; preds = %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #25
          to label %.body85.thread unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread256:                                       ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gg = load i64, ptr %i.aq, align 8, !noundef !6
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.aq, align 8
  br label %bb.co

bb.az:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gi = load i64, ptr %i.ay, align 8, !noundef !6
  %i.gj = load i64, ptr %i.aq, align 8, !noundef !6
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.aq, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gl = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gm = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.gn = load i64, ptr %i.at, align 8, !noundef !6 ; 2 uses
  %i.go = load i64, ptr %i.aq, align 8, !noundef !6
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.bj, label %bb.bd

bb.bb:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gq = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.by, label %bb.bx

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit, %bb.ce, %bb.az
  %.pr255 = load i16, ptr %i.q, align 8
  %.not43 = icmp eq i16 %.pr255, -1
  br i1 %.not43, label %bb.cp, label %bb.co

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gs = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gt = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2252
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 384307168202282326) %i.gt, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.bd
  %i.gu = load i64, ptr %i.d, align 8, !range !19, !noalias !2252, !noundef !6
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = load i64, ptr %i.au, align 8, !range !20, !noalias !2252, !noundef !6 ; 5 uses
  br i1 %i.gv, label %bb.be, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96, !prof !21

bb.be:                                            ; preds = %.noexc102
  %i.gx = load i64, ptr %i.av, align 8, !noalias !2252
  br label %.invoke

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96: ; preds = %.noexc102
  %i.gy = load ptr, ptr %i.av, align 8, !noalias !2252, !nonnull !6, !noundef !6 ; 2 uses
  %i.gz = icmp samesign ule i64 %i.gt, %i.gw
  call void @llvm.assume(i1 %i.gz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2252
  store i64 %i.gw, ptr %i.f, align 8, !noalias !2252
  store ptr %i.gy, ptr %i.aw, align 8, !noalias !2252
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gt
  %i.hb = icmp eq i64 %i.gw, 0
  br i1 %i.hb, label %.loopexit154, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96, %bb.bg
  %.sroa.012.023.i98 = phi ptr [ %i.hf, %bb.bg ], [ %i.gs, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96 ] ; 3 uses
  %.sroa.7.022.i99 = phi i64 [ %i.he, %bb.bg ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96 ] ; 3 uses
  %.sroa.10.021.i100 = phi i64 [ %i.hc, %bb.bg ], [ %i.gw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96 ]
  %i.hc = add i64 %.sroa.10.021.i100, -1          ; 2 uses
  %i.hd = icmp eq ptr %.sroa.012.023.i98, %i.ha
  br i1 %i.hd, label %.loopexit154, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2252
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i98)
          to label %bb.bg unwind label %bb.bi, !noalias !2253

bb.bg:                                            ; preds = %bb.bf
  %i.he = add nuw nsw i64 %.sroa.7.022.i99, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i98, i64 24
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.sroa.7.022.i99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2252
  %i.hh = icmp eq i64 %i.hc, 0
  br i1 %i.hh, label %.loopexit154, label %.lr.ph.i97

bb.bh:                                            ; preds = %bb.bi
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2253
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %lpad.loopexit.i101 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i99, ptr %i.ax, align 8, !noalias !2252
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %.body85 unwind label %bb.bh, !noalias !2253

bb.bj:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.hj = load i64, ptr %i.ay, align 8, !noundef !6
  invoke void @_RNvNtCsbRBQYsxaRdD_10yara_x_fmt8comments19split_comment_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gl, i64 noundef %i.gm, i64 noundef %i.gn, i64 noundef %i.hj)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit154:                                     ; preds = %bb.bg, %.lr.ph.i97, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96
  store i64 %i.gt, ptr %i.ax, align 8, !noalias !2252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2252
  %i.hk = load i8, ptr %i.al, align 8, !range !10, !noundef !6
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.hn = trunc nuw i8 %i.hm to i1
  invoke fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShNtNtNtB1Y_2io4util4SinkE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(824) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, i1 noundef zeroext %i.hl, i1 noundef zeroext %i.hn)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %.loopexit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018)
  %i.ho = load i64, ptr %i.aq, align 8, !noundef !6 ; 3 uses
  %i.hp = load i8, ptr %i.af, align 1, !range !10, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.hq = load i64, ptr %i.ay, align 8, !noundef !6
  invoke void @_RNvNtCsbRBQYsxaRdD_10yara_x_fmt8comments19split_comment_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gl, i64 noundef %i.gm, i64 noundef %i.ho, i64 noundef %i.hq)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.hr = load i64, ptr %i.x, align 8, !range !9, !alias.scope !2255, !noundef !6
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body109 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112 unwind label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body109

.body109:                                         ; preds = %bb.bn, %bb.bp
  %eh.lpad-body110 = phi { ptr, i32 } [ %i.hv, %bb.bp ], [ %i.ht, %bb.bn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, i64 24, i1 false)
  store i64 %i.ho, ptr %i.at, align 8
  store i8 %i.hp, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  br label %.body85

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112: ; preds = %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, i64 24, i1 false)
  store i64 %i.ho, ptr %i.at, align 8
  store i8 %i.hp, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018)
  br label %bb.bc

bb.bq:                                            ; preds = %bb.bj
  %i.hw = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.hx = load i64, ptr %i.ba, align 8, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_hEE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.hx)
          to label %.noexc115 unwind label %bb.bs

.noexc115:                                        ; preds = %bb.bq
  %i.hy = load i64, ptr %i.ag, align 8, !alias.scope !2256, !noundef !6 ; 3 uses
  %i.hz = icmp ult i64 %i.hy, 384307168202282326
  call void @llvm.assume(i1 %i.hz)
  %.not.i113 = icmp eq i64 %i.hx, 0
  br i1 %.not.i113, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %.noexc115
  %i.ia = load ptr, ptr %i.aa, align 8, !alias.scope !2256, !nonnull !6, !noundef !6
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %i.hy
  %i.ic = mul nuw nsw i64 %i.hx, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull readonly align 8 %i.hw, i64 %i.ic, i1 false)
  %.pre.i114 = load i64, ptr %i.ag, align 8, !alias.scope !2256
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #25
          to label %.body85 unwind label %bb.ap

bb.bt:                                            ; preds = %bb.br, %.noexc115
  %i.ie = phi i64 [ %.pre.i114, %bb.br ], [ %i.hy, %.noexc115 ]
  %i.if = add i64 %i.ie, %i.hx
  store i64 %i.if, ptr %i.ag, align 8, !alias.scope !2256
  store i64 0, ptr %i.ba, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body85 unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bu
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 0, ptr %i.af, align 1
  br label %bb.bc

bb.bx:                                            ; preds = %bb.bb
  store i8 1, ptr %i.af, align 1
  br label %bb.ce

bb.by:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ii = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ij = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2257
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.ij, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.by
  %i.ik = load i64, ptr %i.a, align 8, !range !19, !noalias !2257, !noundef !6
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = load i64, ptr %i.ah, align 8, !range !20, !noalias !2257, !noundef !6 ; 5 uses
  br i1 %i.il, label %bb.bz, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119, !prof !21

bb.bz:                                            ; preds = %.noexc125
  %i.in = load i64, ptr %i.ai, align 8, !noalias !2257
  br label %.invoke

.invoke:                                          ; preds = %bb.aq, %bb.be, %bb.bz
  %i.io = phi i64 [ %i.im, %bb.bz ], [ %i.gw, %bb.be ], [ %i.fd, %bb.aq ]
  %i.ip = phi i64 [ %i.in, %bb.bz ], [ %i.gx, %bb.be ], [ %i.ff, %bb.aq ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.io, i64 %i.ip) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119: ; preds = %.noexc125
  %i.iq = load ptr, ptr %i.ai, align 8, !noalias !2257, !nonnull !6, !noundef !6 ; 2 uses
  %i.ir = icmp samesign ule i64 %i.ij, %i.im
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2257
  store i64 %i.im, ptr %i.c, align 8, !noalias !2257
  store ptr %i.iq, ptr %i.aj, align 8, !noalias !2257
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.ij
  %i.it = icmp eq i64 %i.im, 0
  br i1 %i.it, label %.loopexit155, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119, %bb.cb
  %.sroa.012.023.i121 = phi ptr [ %i.ix, %bb.cb ], [ %i.ii, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119 ] ; 3 uses
  %.sroa.7.022.i122 = phi i64 [ %i.iw, %bb.cb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119 ] ; 3 uses
  %.sroa.10.021.i123 = phi i64 [ %i.iu, %bb.cb ], [ %i.im, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119 ]
  %i.iu = add i64 %.sroa.10.021.i123, -1          ; 2 uses
  %i.iv = icmp eq ptr %.sroa.012.023.i121, %i.is
  br i1 %i.iv, label %.loopexit155, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2257
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i121)
          to label %bb.cb unwind label %bb.cd, !noalias !2258

bb.cb:                                            ; preds = %bb.ca
  %i.iw = add nuw nsw i64 %.sroa.7.022.i122, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i121, i64 24
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.sroa.7.022.i122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2257
  %i.iz = icmp eq i64 %i.iu, 0
  br i1 %i.iz, label %.loopexit155, label %.lr.ph.i120

bb.cc:                                            ; preds = %bb.cd
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2258
  unreachable

bb.cd:                                            ; preds = %bb.ca
  %lpad.loopexit.i124 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i122, ptr %i.ak, align 8, !noalias !2257
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %.body85 unwind label %bb.cc, !noalias !2258

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143, %bb.bx
  store i64 0, ptr %i.aq, align 8
  br label %bb.bc

.loopexit155:                                     ; preds = %bb.cb, %.lr.ph.i120, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119
  store i64 %i.ij, ptr %i.ak, align 8, !noalias !2257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2257
  %i.jb = load i8, ptr %i.al, align 8, !range !10, !noundef !6
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.je = trunc nuw i8 %i.jd to i1
  invoke fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShNtNtNtB1Y_2io4util4SinkE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(824) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, i1 noundef zeroext %i.jc, i1 noundef zeroext %i.je)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %.loopexit155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 16, ptr %i.o, align 8
  %i.jf = load i64, ptr %i.an, align 8, !alias.scope !2260, !noundef !6 ; 2 uses
  %i.jg = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2260, !noundef !6 ; 2 uses
  %i.jh = icmp eq i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %._crit_edge.i132 unwind label %bb.ch, !noalias !2261

._crit_edge.i132:                                 ; preds = %bb.cg
  %.pre.i133 = load i64, ptr %i.an, align 8, !alias.scope !2260
  %.pre6.i134 = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2260
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #25
          to label %.body85 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.cj:                                            ; preds = %._crit_edge.i132, %bb.cf
  %i.jk = phi i64 [ %.pre6.i134, %._crit_edge.i132 ], [ %i.jg, %bb.cf ] ; 2 uses
  %i.jl = phi i64 [ %.pre.i133, %._crit_edge.i132 ], [ %i.jf, %bb.cf ] ; 2 uses
  %i.jm = add i64 %i.jl, 1
  store i64 %i.jm, ptr %i.an, align 8, !alias.scope !2260
  %i.jn = load i64, ptr %i.ao, align 8, !alias.scope !2260, !noundef !6
  %i.jo = add i64 %i.jn, %i.jl                    ; 2 uses
  %.not.i130 = icmp ult i64 %i.jo, %i.jk
  %i.jp = select i1 %.not.i130, i64 0, i64 %i.jk
  %.sroa.03.0.i131 = sub nuw i64 %i.jo, %i.jp
  %i.jq = load ptr, ptr %i.ap, align 8, !alias.scope !2260, !nonnull !6, !noundef !6
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.03.0.i131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.js = load i64, ptr %i.x, align 8, !range !9, !alias.scope !2262, !noundef !6
  %i.jt = icmp eq i64 %i.js, -1
  br i1 %i.jt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body140 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143 unwind label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body140

.body140:                                         ; preds = %bb.cl, %bb.cn
  %eh.lpad-body141 = phi { ptr, i32 } [ %i.jw, %bb.cn ], [ %i.ju, %bb.cl ]
  store i64 -1, ptr %i.x, align 8
  store i8 1, ptr %i.aa, align 8
  br label %.body85

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143: ; preds = %bb.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139
  store i64 -1, ptr %i.x, align 8
  store i8 1, ptr %i.aa, align 8
  br label %bb.ce

bb.co:                                            ; preds = %.thread256, %bb.bc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %bb.cp unwind label %bb.e

bb.cp:                                            ; preds = %bb.cq, %bb.co, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %thread-pre-split

bb.cq:                                            ; preds = %._crit_edge.i89, %bb.av
  %i.jx = phi i64 [ %.pre6.i91, %._crit_edge.i89 ], [ %i.gc, %bb.av ] ; 2 uses
  %i.jy = phi i64 [ %.pre.i90, %._crit_edge.i89 ], [ %i.gb, %bb.av ] ; 2 uses
  %i.jz = add i64 %i.jy, 1
  store i64 %i.jz, ptr %i.an, align 8, !alias.scope !2250
  %i.ka = load i64, ptr %i.ao, align 8, !alias.scope !2250, !noundef !6
  %i.kb = add i64 %i.ka, %i.jy                    ; 2 uses
  %.not.i87 = icmp ult i64 %i.kb, %i.jx
  %i.kc = select i1 %.not.i87, i64 0, i64 %i.jx
  %.sroa.03.0.i88 = sub nuw i64 %i.kb, %i.kc
  %i.kd = load ptr, ptr %i.ap, align 8, !alias.scope !2250, !nonnull !6, !noundef !6
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %.sroa.03.0.i88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cp

bb.cr:                                            ; preds = %.body85
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #25
          to label %.body85.thread unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShQINtNtNtB1Y_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.e = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 9 uses
  br i1 %3, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #30
          to label %bb.r unwind label %bb.s

bb.d:                                             ; preds = %bb.b
  %.29 = select i1 %2, i16 13, i16 15
  store i16 %.29, ptr %i.b, align 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2272, !noundef !6 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !range !5, !alias.scope !2272, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskIqAKC4t9Ft_2yr.exit

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %._crit_edge.i unwind label %bb.f, !noalias !2273

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !2272
  %.pre6.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !2272
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskIqAKC4t9Ft_2yr.exit

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShQINtNtNtB1Y_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0EEEE20process_input_bufferCskIqAKC4t9Ft_2yr:bb.a
bb.ad:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dq = load i64, ptr %i.x, align 8, !range !9, !alias.scope !2332, !noundef !6
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body80 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %bb.af, %bb.ah
  %eh.lpad-body81 = phi { ptr, i32 } [ %i.du, %bb.ah ], [ %i.ds, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 %i.cq, ptr %i.at, align 8
  store i8 %i.cr, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82: ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 %i.cq, ptr %i.at, align 8
  store i8 %i.cr, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.dv = load i16, ptr %i.w, align 8, !range !18, !noundef !6
  switch i16 %i.dv, label %default.unreachable253 [
    i16 0, label %bb.ak
    i16 1, label %bb.ak
    i16 2, label %bb.ak
    i16 3, label %bb.ak
    i16 4, label %bb.ak
    i16 5, label %bb.ak
    i16 6, label %bb.ak
    i16 7, label %bb.ak
    i16 8, label %bb.ak
    i16 9, label %bb.ai
    i16 10, label %bb.ai
    i16 11, label %bb.aj
    i16 12, label %bb.ak
    i16 13, label %bb.ak
    i16 14, label %bb.ak
    i16 15, label %bb.ak
    i16 16, label %bb.ai
    i16 17, label %bb.aj
    i16 18, label %bb.aj
    i16 19, label %bb.aj
    i16 20, label %bb.aj
    i16 21, label %bb.aj
    i16 22, label %bb.aj
  ]

default.unreachable253:                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  unreachable

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  br label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  %i.dw = load i64, ptr %i.bc, align 8, !noundef !6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82
  %.sroa.836.0 = phi i64 [ 1, %bb.ai ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ %i.dw, %bb.aj ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit82 ]
  %i.dx = load i64, ptr %i.aq, align 8, !noundef !6
  %i.dy = add i64 %i.dx, %.sroa.836.0
  store i64 %i.dy, ptr %i.aq, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %bb.al unwind label %bb.e

bb.al:                                            ; preds = %bb.ab, %bb.ac, %bb.am, %bb.an, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %thread-pre-split

bb.am:                                            ; preds = %._crit_edge.i71, %bb.w
  %i.dz = phi i64 [ %.pre6.i73, %._crit_edge.i71 ], [ %i.cu, %bb.w ] ; 2 uses
  %i.ea = phi i64 [ %.pre.i72, %._crit_edge.i71 ], [ %i.ct, %bb.w ] ; 2 uses
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.an, align 8, !alias.scope !2330
  %i.ec = load i64, ptr %i.ao, align 8, !alias.scope !2330, !noundef !6
  %i.ed = add i64 %i.ec, %i.ea                    ; 2 uses
  %.not.i69 = icmp ult i64 %i.ed, %i.dz
  %i.ee = select i1 %.not.i69, i64 0, i64 %i.dz
  %.sroa.03.0.i70 = sub nuw i64 %i.ed, %i.ee
  %i.ef = load ptr, ptr %i.ap, align 8, !alias.scope !2330, !nonnull !6, !noundef !6
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %.sroa.03.0.i70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  store i8 1, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.al

bb.an:                                            ; preds = %._crit_edge.i, %bb.j
  %i.eh = phi i64 [ %.pre6.i, %._crit_edge.i ], [ %i.bv, %bb.j ] ; 2 uses
  %i.ei = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bu, %bb.j ] ; 2 uses
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.an, align 8, !alias.scope !2324
  %i.ek = load i64, ptr %i.ao, align 8, !alias.scope !2324, !noundef !6
  %i.el = add i64 %i.ek, %i.ei                    ; 2 uses
  %.not.i50 = icmp ult i64 %i.el, %i.eh
  %i.em = select i1 %.not.i50, i64 0, i64 %i.eh
  %.sroa.03.0.i = sub nuw i64 %i.el, %i.em
  %i.en = load ptr, ptr %i.ap, align 8, !alias.scope !2324, !nonnull !6, !noundef !6
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %.sroa.03.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.al

bb.ao:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #25
          to label %.body85.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.cr, %bb.bs, %bb.ao, %.body85.thread
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c
  %i.eq = load i64, ptr %i.ad, align 8, !alias.scope !2321, !noundef !6 ; 2 uses
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  %i.es = load i64, ptr %i.ac, align 8, !range !5, !alias.scope !2321, !noundef !6 ; 3 uses
  %.not.i = icmp ult i64 %i.er, %i.es
  %i.et = select i1 %.not.i, i64 0, i64 %i.es
  %.sroa.0.0.i = sub nuw i64 %i.er, %i.et
  store i64 %.sroa.0.0.i, ptr %i.ad, align 8, !alias.scope !2321
  %i.eu = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.ab, align 8, !alias.scope !2321
  %i.ev = icmp ult i64 %i.eu, %i.es
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load ptr, ptr %i.ae, align 8, !alias.scope !2321, !nonnull !6, !noundef !6
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %i.eq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i64 32, i1 false), !noalias !2321
  %.pr145 = load i16, ptr %i.q, align 8
  switch i16 %.pr145, label %bb.av [
    i16 -1, label %.loopexit156
    i16 9, label %.thread256
    i16 10, label %bb.az
    i16 11, label %bb.ba
    i16 16, label %bb.bb
  ]

.loopexit156:                                     ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ey = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ez = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2333
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 384307168202282326) %i.ez, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %.loopexit156
  %i.fa = load i64, ptr %i.g, align 8, !range !19, !noalias !2333, !noundef !6
  %i.fb = trunc nuw i64 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !range !20, !noalias !2333, !noundef !6 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.fb, label %bb.aq, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i, !prof !21

bb.aq:                                            ; preds = %.noexc83
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !2333
  br label %.invoke

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i: ; preds = %.noexc83
  %i.fg = load ptr, ptr %i.fe, align 8, !noalias !2333, !nonnull !6, !noundef !6 ; 2 uses
  %i.fh = icmp samesign ule i64 %i.ez, %i.fd
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2333
  store i64 %i.fd, ptr %i.i, align 8, !noalias !2333
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.fg, ptr %i.fi, align 8, !noalias !2333
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fl = icmp eq i64 %i.fd, 0
  br i1 %i.fl, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i, %bb.as
  %.sroa.012.023.i = phi ptr [ %i.fp, %bb.as ], [ %i.ey, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.fo, %bb.as ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.fm, %bb.as ], [ %i.fd, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i ]
  %i.fm = add i64 %.sroa.10.021.i, -1             ; 2 uses
  %i.fn = icmp eq ptr %.sroa.012.023.i, %i.fk
  br i1 %i.fn, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2333
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.as unwind label %bb.au, !noalias !2334

bb.as:                                            ; preds = %bb.ar
  %i.fo = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2333
  %i.fr = icmp eq i64 %i.fm, 0
  br i1 %i.fr, label %.loopexit, label %.lr.ph.i

bb.at:                                            ; preds = %bb.au
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2334
  unreachable

bb.au:                                            ; preds = %bb.ar
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.fj, align 8, !noalias !2333
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %.body85 unwind label %bb.at, !noalias !2334

.body85:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch, %bb.cd, %bb.bu, %bb.bi, %bb.au, %.body140, %bb.bs, %.body109
  %.pn44 = phi { ptr, i32 } [ %eh.lpad-body141, %.body140 ], [ %i.id, %bb.bs ], [ %eh.lpad-body110, %.body109 ], [ %lpad.loopexit.i, %bb.au ], [ %lpad.loopexit.i124, %bb.cd ], [ %i.ji, %bb.ch ], [ %lpad.loopexit.i101, %bb.bi ], [ %i.ig, %bb.bu ], [ %lpad.loopexit.split-lp305, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ft = load i16, ptr %i.q, align 8, !range !26, !noundef !6
  %.not152 = icmp eq i16 %i.ft, -1
  br i1 %.not152, label %.body85.thread, label %bb.cr

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.by, %bb.bv, %bb.bd, %.loopexit155, %bb.bk, %.loopexit154, %bb.bj, %.invoke, %.loopexit156, %.loopexit
  %lpad.loopexit.split-lp305 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.loopexit:                                        ; preds = %bb.as, %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i
  store i64 %i.ez, ptr %i.fj, align 8, !noalias !2333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2333
  %i.fu = load i8, ptr %i.al, align 8, !range !10, !noundef !6
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 817
  %i.fz = load i8, ptr %i.fy, align 1, !range !10
  %i.ga = trunc nuw i8 %i.fz to i1
  %.sroa.030.0 = select i1 %i.fx, i1 true, i1 %i.ga
  invoke fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShQINtNtNtB1Y_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(824) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, i1 noundef zeroext %i.fv, i1 noundef zeroext %.sroa.030.0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i64 32, i1 false)
  %i.gb = load i64, ptr %i.an, align 8, !alias.scope !2336, !noundef !6 ; 2 uses
  %i.gc = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2336, !noundef !6 ; 2 uses
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.aw, label %bb.cq

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %._crit_edge.i89 unwind label %bb.ax, !noalias !2337

._crit_edge.i89:                                  ; preds = %bb.aw
  %.pre.i90 = load i64, ptr %i.an, align 8, !alias.scope !2336
  %.pre6.i91 = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2336
  br label %bb.cq

bb.ax:                                            ; preds = %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #25
          to label %.body85.thread unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread256:                                       ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gg = load i64, ptr %i.aq, align 8, !noundef !6
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.aq, align 8
  br label %bb.co

bb.az:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gi = load i64, ptr %i.ay, align 8, !noundef !6
  %i.gj = load i64, ptr %i.aq, align 8, !noundef !6
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.aq, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gl = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gm = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.gn = load i64, ptr %i.at, align 8, !noundef !6 ; 2 uses
  %i.go = load i64, ptr %i.aq, align 8, !noundef !6
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.bj, label %bb.bd

bb.bb:                                            ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskIqAKC4t9Ft_2yr.exit
  %i.gq = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.by, label %bb.bx

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit, %bb.ce, %bb.az
  %.pr255 = load i16, ptr %i.q, align 8
  %.not43 = icmp eq i16 %.pr255, -1
  br i1 %.not43, label %bb.cp, label %bb.co

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gs = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gt = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2338
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 384307168202282326) %i.gt, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.bd
  %i.gu = load i64, ptr %i.d, align 8, !range !19, !noalias !2338, !noundef !6
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = load i64, ptr %i.au, align 8, !range !20, !noalias !2338, !noundef !6 ; 5 uses
  br i1 %i.gv, label %bb.be, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96, !prof !21

bb.be:                                            ; preds = %.noexc102
  %i.gx = load i64, ptr %i.av, align 8, !noalias !2338
  br label %.invoke

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96: ; preds = %.noexc102
  %i.gy = load ptr, ptr %i.av, align 8, !noalias !2338, !nonnull !6, !noundef !6 ; 2 uses
  %i.gz = icmp samesign ule i64 %i.gt, %i.gw
  call void @llvm.assume(i1 %i.gz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2338
  store i64 %i.gw, ptr %i.f, align 8, !noalias !2338
  store ptr %i.gy, ptr %i.aw, align 8, !noalias !2338
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gt
  %i.hb = icmp eq i64 %i.gw, 0
  br i1 %i.hb, label %.loopexit154, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96, %bb.bg
  %.sroa.012.023.i98 = phi ptr [ %i.hf, %bb.bg ], [ %i.gs, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96 ] ; 3 uses
  %.sroa.7.022.i99 = phi i64 [ %i.he, %bb.bg ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96 ] ; 3 uses
  %.sroa.10.021.i100 = phi i64 [ %i.hc, %bb.bg ], [ %i.gw, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96 ]
  %i.hc = add i64 %.sroa.10.021.i100, -1          ; 2 uses
  %i.hd = icmp eq ptr %.sroa.012.023.i98, %i.ha
  br i1 %i.hd, label %.loopexit154, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2338
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i98)
          to label %bb.bg unwind label %bb.bi, !noalias !2339

bb.bg:                                            ; preds = %bb.bf
  %i.he = add nuw nsw i64 %.sroa.7.022.i99, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i98, i64 24
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.sroa.7.022.i99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2338
  %i.hh = icmp eq i64 %i.hc, 0
  br i1 %i.hh, label %.loopexit154, label %.lr.ph.i97

bb.bh:                                            ; preds = %bb.bi
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2339
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %lpad.loopexit.i101 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i99, ptr %i.ax, align 8, !noalias !2338
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %.body85 unwind label %bb.bh, !noalias !2339

bb.bj:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.hj = load i64, ptr %i.ay, align 8, !noundef !6
  invoke void @_RNvNtCsbRBQYsxaRdD_10yara_x_fmt8comments19split_comment_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gl, i64 noundef %i.gm, i64 noundef %i.gn, i64 noundef %i.hj)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit154:                                     ; preds = %bb.bg, %.lr.ph.i97, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i96
  store i64 %i.gt, ptr %i.ax, align 8, !noalias !2338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2338
  %i.hk = load i8, ptr %i.al, align 8, !range !10, !noundef !6
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.hn = trunc nuw i8 %i.hm to i1
  invoke fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShQINtNtNtB1Y_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(824) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, i1 noundef zeroext %i.hl, i1 noundef zeroext %i.hn)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %.loopexit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018)
  %i.ho = load i64, ptr %i.aq, align 8, !noundef !6 ; 3 uses
  %i.hp = load i8, ptr %i.af, align 1, !range !10, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.hq = load i64, ptr %i.ay, align 8, !noundef !6
  invoke void @_RNvNtCsbRBQYsxaRdD_10yara_x_fmt8comments19split_comment_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gl, i64 noundef %i.gm, i64 noundef %i.ho, i64 noundef %i.hq)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.hr = load i64, ptr %i.x, align 8, !range !9, !alias.scope !2341, !noundef !6
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body109 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112 unwind label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body109

.body109:                                         ; preds = %bb.bn, %bb.bp
  %eh.lpad-body110 = phi { ptr, i32 } [ %i.hv, %bb.bp ], [ %i.ht, %bb.bn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, i64 24, i1 false)
  store i64 %i.ho, ptr %i.at, align 8
  store i8 %i.hp, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  br label %.body85

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit112: ; preds = %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, i64 24, i1 false)
  store i64 %i.ho, ptr %i.at, align 8
  store i8 %i.hp, ptr %i.al, align 8
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018)
  br label %bb.bc

bb.bq:                                            ; preds = %bb.bj
  %i.hw = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.hx = load i64, ptr %i.ba, align 8, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_hEE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.hx)
          to label %.noexc115 unwind label %bb.bs

.noexc115:                                        ; preds = %bb.bq
  %i.hy = load i64, ptr %i.ag, align 8, !alias.scope !2342, !noundef !6 ; 3 uses
  %i.hz = icmp ult i64 %i.hy, 384307168202282326
  call void @llvm.assume(i1 %i.hz)
  %.not.i113 = icmp eq i64 %i.hx, 0
  br i1 %.not.i113, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %.noexc115
  %i.ia = load ptr, ptr %i.aa, align 8, !alias.scope !2342, !nonnull !6, !noundef !6
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %i.hy
  %i.ic = mul nuw nsw i64 %i.hx, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull readonly align 8 %i.hw, i64 %i.ic, i1 false)
  %.pre.i114 = load i64, ptr %i.ag, align 8, !alias.scope !2342
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #25
          to label %.body85 unwind label %bb.ap

bb.bt:                                            ; preds = %bb.br, %.noexc115
  %i.ie = phi i64 [ %.pre.i114, %bb.br ], [ %i.hy, %.noexc115 ]
  %i.if = add i64 %i.ie, %i.hx
  store i64 %i.if, ptr %i.ag, align 8, !alias.scope !2342
  store i64 0, ptr %i.ba, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body85 unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bu
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 0, ptr %i.af, align 1
  br label %bb.bc

bb.bx:                                            ; preds = %bb.bb
  store i8 1, ptr %i.af, align 1
  br label %bb.ce

bb.by:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ii = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ij = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2343
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.ij, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.by
  %i.ik = load i64, ptr %i.a, align 8, !range !19, !noalias !2343, !noundef !6
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = load i64, ptr %i.ah, align 8, !range !20, !noalias !2343, !noundef !6 ; 5 uses
  br i1 %i.il, label %bb.bz, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119, !prof !21

bb.bz:                                            ; preds = %.noexc125
  %i.in = load i64, ptr %i.ai, align 8, !noalias !2343
  br label %.invoke

.invoke:                                          ; preds = %bb.aq, %bb.be, %bb.bz
  %i.io = phi i64 [ %i.im, %bb.bz ], [ %i.gw, %bb.be ], [ %i.fd, %bb.aq ]
  %i.ip = phi i64 [ %i.in, %bb.bz ], [ %i.gx, %bb.be ], [ %i.ff, %bb.aq ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.io, i64 %i.ip) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119: ; preds = %.noexc125
  %i.iq = load ptr, ptr %i.ai, align 8, !noalias !2343, !nonnull !6, !noundef !6 ; 2 uses
  %i.ir = icmp samesign ule i64 %i.ij, %i.im
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2343
  store i64 %i.im, ptr %i.c, align 8, !noalias !2343
  store ptr %i.iq, ptr %i.aj, align 8, !noalias !2343
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.ij
  %i.it = icmp eq i64 %i.im, 0
  br i1 %i.it, label %.loopexit155, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119, %bb.cb
  %.sroa.012.023.i121 = phi ptr [ %i.ix, %bb.cb ], [ %i.ii, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119 ] ; 3 uses
  %.sroa.7.022.i122 = phi i64 [ %i.iw, %bb.cb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119 ] ; 3 uses
  %.sroa.10.021.i123 = phi i64 [ %i.iu, %bb.cb ], [ %i.im, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119 ]
  %i.iu = add i64 %.sroa.10.021.i123, -1          ; 2 uses
  %i.iv = icmp eq ptr %.sroa.012.023.i121, %i.is
  br i1 %i.iv, label %.loopexit155, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2343
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i121)
          to label %bb.cb unwind label %bb.cd, !noalias !2344

bb.cb:                                            ; preds = %bb.ca
  %i.iw = add nuw nsw i64 %.sroa.7.022.i122, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i121, i64 24
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.sroa.7.022.i122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2343
  %i.iz = icmp eq i64 %i.iu, 0
  br i1 %i.iz, label %.loopexit155, label %.lr.ph.i120

bb.cc:                                            ; preds = %bb.cd
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2344
  unreachable

bb.cd:                                            ; preds = %bb.ca
  %lpad.loopexit.i124 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i122, ptr %i.ak, align 8, !noalias !2343
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %.body85 unwind label %bb.cc, !noalias !2344

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143, %bb.bx
  store i64 0, ptr %i.aq, align 8
  br label %bb.bc

.loopexit155:                                     ; preds = %bb.cb, %.lr.ph.i120, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit.i119
  store i64 %i.ij, ptr %i.ak, align 8, !noalias !2343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2343
  %i.jb = load i8, ptr %i.al, align 8, !range !10, !noundef !6
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = load i8, ptr %i.af, align 1, !range !10, !noundef !6
  %i.je = trunc nuw i8 %i.jd to i1
  invoke fastcc void @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt8commentsINtB2_16CommentProcessorINtNtB4_9processor9ProcessorINtNtB4_6tokens6TokensINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB2Q_6parser6ParserENCINvMs_B4_NtB4_9Formatter6formatRShQINtNtNtB1Y_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE0EEEE12push_commentCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(824) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, i1 noundef zeroext %i.jc, i1 noundef zeroext %i.je)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %.loopexit155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 16, ptr %i.o, align 8
  %i.jf = load i64, ptr %i.an, align 8, !alias.scope !2346, !noundef !6 ; 2 uses
  %i.jg = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2346, !noundef !6 ; 2 uses
  %i.jh = icmp eq i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE4growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %._crit_edge.i132 unwind label %bb.ch, !noalias !2347

._crit_edge.i132:                                 ; preds = %bb.cg
  %.pre.i133 = load i64, ptr %i.an, align 8, !alias.scope !2346
  %.pre6.i134 = load i64, ptr %i.am, align 8, !range !5, !alias.scope !2346
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #25
          to label %.body85 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.cj:                                            ; preds = %._crit_edge.i132, %bb.cf
  %i.jk = phi i64 [ %.pre6.i134, %._crit_edge.i132 ], [ %i.jg, %bb.cf ] ; 2 uses
  %i.jl = phi i64 [ %.pre.i133, %._crit_edge.i132 ], [ %i.jf, %bb.cf ] ; 2 uses
  %i.jm = add i64 %i.jl, 1
  store i64 %i.jm, ptr %i.an, align 8, !alias.scope !2346
  %i.jn = load i64, ptr %i.ao, align 8, !alias.scope !2346, !noundef !6
  %i.jo = add i64 %i.jn, %i.jl                    ; 2 uses
  %.not.i130 = icmp ult i64 %i.jo, %i.jk
  %i.jp = select i1 %.not.i130, i64 0, i64 %i.jk
  %.sroa.03.0.i131 = sub nuw i64 %i.jo, %i.jp
  %i.jq = load ptr, ptr %i.ap, align 8, !alias.scope !2346, !nonnull !6, !noundef !6
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %.sroa.03.0.i131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.js = load i64, ptr %i.x, align 8, !range !9, !alias.scope !2348, !noundef !6
  %i.jt = icmp eq i64 %i.js, -1
  br i1 %i.jt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body140 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143 unwind label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body140

.body140:                                         ; preds = %bb.cl, %bb.cn
  %eh.lpad-body141 = phi { ptr, i32 } [ %i.jw, %bb.cn ], [ %i.ju, %bb.cl ]
  store i64 -1, ptr %i.x, align 8
  store i8 1, ptr %i.aa, align 8
  br label %.body85

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt8comments5StateECskIqAKC4t9Ft_2yr.exit143: ; preds = %bb.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskIqAKC4t9Ft_2yr.exit.i139
  store i64 -1, ptr %i.x, align 8
  store i8 1, ptr %i.aa, align 8
  br label %bb.ce

bb.co:                                            ; preds = %.thread256, %bb.bc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %bb.cp unwind label %bb.e

bb.cp:                                            ; preds = %bb.cq, %bb.co, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %thread-pre-split

bb.cq:                                            ; preds = %._crit_edge.i89, %bb.av
  %i.jx = phi i64 [ %.pre6.i91, %._crit_edge.i89 ], [ %i.gc, %bb.av ] ; 2 uses
  %i.jy = phi i64 [ %.pre.i90, %._crit_edge.i89 ], [ %i.gb, %bb.av ] ; 2 uses
  %i.jz = add i64 %i.jy, 1
  store i64 %i.jz, ptr %i.an, align 8, !alias.scope !2336
  %i.ka = load i64, ptr %i.ao, align 8, !alias.scope !2336, !noundef !6
  %i.kb = add i64 %i.ka, %i.jy                    ; 2 uses
  %.not.i87 = icmp ult i64 %i.kb, %i.jx
  %i.kc = select i1 %.not.i87, i64 0, i64 %i.jx
  %.sroa.03.0.i88 = sub nuw i64 %i.kb, %i.kc
  %i.kd = load ptr, ptr %i.ap, align 8, !alias.scope !2336, !nonnull !6, !noundef !6
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %.sroa.03.0.i88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cp

bb.cr:                                            ; preds = %.body85
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #25
          to label %.body85.thread unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE16build_root_tableCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 768614336404564651) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2351
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 256, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !2351
  %i.b = load i64, ptr %i.a, align 8, !range !19, !noalias !2351, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !20, !noalias !2351, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !2351
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30, !noalias !2351
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !2351, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2351
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %1, align 4, !noundef !6   ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.d
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 256, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

.preheader:                                       ; preds = %bb.d, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ 0, %bb.d ] ; 6 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.j = trunc nuw i64 %indvars.iv to i32
  %i.k = xor i32 %i.i, %i.j                       ; 2 uses
end_hunk_1
