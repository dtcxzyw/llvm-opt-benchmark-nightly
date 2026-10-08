Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.09?download=true
inline.NumInlined: 928
inline.NumDeleted: 335
begin_hunk_0_@_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera22get_template_variables:bb.a
    #dbg_value(i64 %i.ab, !25156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25171)
    #dbg_value(ptr %i.z, !25157, !DIExpression(), !25172)
    #dbg_value(ptr %i.z, !25166, !DIExpression(), !25169)
  %.idx = mul nuw nsw i64 %i.ab, 24, !dbg !25432
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx, !dbg !25432
    #dbg_value(ptr %i.z, !24846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25173)
    #dbg_value(ptr %i.ac, !24846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25173)
    #dbg_value(ptr undef, !24895, !DIExpression(), !24902)
    #dbg_value(ptr %i.z, !24896, !DIExpression(), !25174)
    #dbg_value(ptr %i.z, !25019, !DIExpression(), !25022)
    #dbg_value(ptr %i.ac, !24897, !DIExpression(), !25175)
    #dbg_value(ptr poison, !25176, !DIExpression(), !25180)
    #dbg_value(ptr poison, !25177, !DIExpression(), !25181)
  %i.ad = icmp eq i64 %i.ab, 0, !dbg !25433
  br i1 %i.ad, label %.lr.ph223.preheader, label %.lr.ph, !dbg !25179

.preheader:                                       ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit
    #dbg_value(ptr %i.h, !25034, !DIExpression(), !25182)
    #dbg_value(ptr %i.h, !25040, !DIExpression(), !25183)
    #dbg_value(ptr %i.h, !25184, !DIExpression(), !25191)
    #dbg_value(ptr %i.h, !25192, !DIExpression(), !25196)
  %i.ae = icmp eq i64 %i.aq, 0, !dbg !25434
  br i1 %i.ae, label %._crit_edge, label %.lr.ph223.preheader, !dbg !25434

.lr.ph223.preheader:                              ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %.preheader
  %.ph = phi i64 [ 1, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit ], [ %i.aq, %.preheader ]
  br label %.lr.ph223, !dbg !25435

.lr.ph:                                           ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit
  %.sroa.018.0222 = phi ptr [ %i.af, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit ], [ %i.z, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit ] ; 3 uses
    #dbg_value(ptr %.sroa.018.0222, !24846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25173)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.0222, i64 24, !dbg !25436 ; 2 uses
    #dbg_value(ptr %i.af, !24846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25173)
    #dbg_value(ptr %.sroa.018.0222, !24847, !DIExpression(), !25211)
    #dbg_value(ptr %.sroa.018.0222, !25212, !DIExpression(), !25215)
    #dbg_value(ptr %.sroa.018.0222, !25216, !DIExpression(), !25219)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.018.0222, i64 8, !dbg !25437
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !25437, !nonnull !1634, !noundef !1634 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.0222, i64 16, !dbg !25438
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !25438, !noundef !1634 ; 2 uses
    #dbg_value(ptr %i.ah, !24908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24913)
    #dbg_value(i64 %i.aj, !24908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24913)
  %i.ak = invoke noundef align 8 ptr @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera12get_template(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !25439 ; 2 uses

.loopexit:                                        ; preds = %bb.z, %bb.ab, %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.x, %bb.w, %bb.v, %.lr.ph223
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph, %bb.k
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit212, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit215, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body unwind label %bb.ai, !dbg !25440

bb.i:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.ak, !25067, !DIExpression(), !25231)
    #dbg_value(ptr poison, !25068, !DIExpression(), !25232)
    #dbg_value(ptr poison, !25076, !DIExpression(), !25235)
  %.not185 = icmp eq ptr %i.ak, null, !dbg !25441
  br i1 %.not185, label %bb.l, label %bb.j, !dbg !25442

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.ak, !24870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25236)
    #dbg_value(i8 -1, !24870, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25236)
    #dbg_value(ptr %i.ak, !24848, !DIExpression(), !25237)
    #dbg_value(ptr %i.ak, !25238, !DIExpression(), !25245)
    #dbg_value(ptr %i.h, !25242, !DIExpression(), !25245)
    #dbg_value(ptr %i.h, !25246, !DIExpression(), !24701)
    #dbg_value(ptr %i.h, !25255, !DIExpression(), !24704)
    #dbg_value(ptr %i.ak, !25251, !DIExpression(), !24701)
    #dbg_value(i64 8, !25260, !DIExpression(), !24709)
  %i.al = load i64, ptr %i.x, align 8, !dbg !25443, !alias.scope !25265, !noalias !25266, !noundef !1634 ; 3 uses
    #dbg_value(i64 %i.al, !25252, !DIExpression(), !24713)
    #dbg_value(i64 %i.al, !25267, !DIExpression(), !24716)
    #dbg_value(ptr %i.h, !25263, !DIExpression(), !24717)
  %i.am = load i64, ptr %i.h, align 8, !dbg !25444, !range !4502, !alias.scope !25265, !noalias !25266, !noundef !1634
  %i.an = icmp eq i64 %i.al, %i.am, !dbg !25445
  br i1 %i.an, label %bb.k, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit, !dbg !25445

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !25446

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit: ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.w, align 8, !dbg !25447, !alias.scope !25265, !noalias !25266, !nonnull !1634, !noundef !1634
    #dbg_value(ptr %i.ao, !25270, !DIExpression(), !24716)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al, !dbg !25448
    #dbg_value(ptr %i.ap, !25253, !DIExpression(), !24725)
    #dbg_value(ptr %i.ap, !25284, !DIExpression(), !24728)
    #dbg_value(ptr %i.ak, !25287, !DIExpression(), !24728)
  store ptr %i.ak, ptr %i.ap, align 8, !dbg !25449, !noalias !25266, !captures !6011
  %i.aq = add i64 %i.al, 1, !dbg !25450           ; 3 uses
  store i64 %i.aq, ptr %i.x, align 8, !dbg !25450, !alias.scope !25265, !noalias !25266
    #dbg_value(ptr %i.af, !24846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25173)
    #dbg_value(ptr undef, !24895, !DIExpression(), !24902)
    #dbg_value(ptr %i.af, !24896, !DIExpression(), !25174)
    #dbg_value(ptr %i.af, !25019, !DIExpression(), !25022)
    #dbg_value(ptr %i.ac, !24897, !DIExpression(), !25175)
    #dbg_value(ptr poison, !25176, !DIExpression(), !25180)
    #dbg_value(ptr poison, !25177, !DIExpression(), !25181)
  %i.ar = icmp eq ptr %i.af, %i.ac, !dbg !25433
  br i1 %i.ar, label %.preheader, label %.lr.ph, !dbg !25179

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !25451
  invoke void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error18template_not_foundReEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !25452

bb.m:                                             ; preds = %bb.l
  %.sroa.029.0.copyload = load i8, ptr %i.d, align 8, !dbg !25453
    #dbg_value(i8 %.sroa.029.0.copyload, !24870, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25236)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !25453
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4104.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.631.0..sroa_idx, i64 7, i1 false), !dbg !25453
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !25453
  %.sroa.633.0.copyload = load ptr, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !25453
    #dbg_value(ptr %.sroa.633.0.copyload, !24870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25236)
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !25453
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.836.0..sroa_idx, i64 56, i1 false), !dbg !25453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !25455
    #dbg_value(i8 %.sroa.029.0.copyload, !24874, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25289)
    #dbg_value(ptr %.sroa.633.0.copyload, !24874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25289)
    #dbg_value(i8 %.sroa.029.0.copyload, !24849, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25290)
    #dbg_value(i8 %.sroa.029.0.copyload, !24861, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25291)
    #dbg_value(ptr %.sroa.633.0.copyload, !24849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25290)
    #dbg_value(ptr %.sroa.633.0.copyload, !24861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25291)
    #dbg_value(i8 %.sroa.029.0.copyload, !24863, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25292)
    #dbg_value(ptr %.sroa.633.0.copyload, !24863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25292)
  store i8 %.sroa.029.0.copyload, ptr %0, align 8, !dbg !25454
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25454
  store ptr %.sroa.633.0.copyload, ptr %.sroa.5105.0..sroa_idx, align 8, !dbg !25454
  br label %bb.n, !dbg !25456

bb.n:                                             ; preds = %bb.ah, %bb.m
    #dbg_value(ptr %i.h, !4783, !DIExpression(), !24730)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.o, !dbg !25457

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !4788, !DIExpression(), !24732)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.q, !dbg !25458

bb.p:                                             ; preds = %bb.n
    #dbg_value(ptr %i.h, !4788, !DIExpression(), !24734)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB1d_.exit unwind label %bb.h, !dbg !25459

bb.q:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !25457
  unreachable, !dbg !25457

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !25461
  store i8 -1, ptr %0, align 8, !dbg !25460
    #dbg_value(ptr %i.h, !4783, !DIExpression(), !24736)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.s unwind label %bb.r, !dbg !25462

bb.r:                                             ; preds = %._crit_edge
  %i.av = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !4788, !DIExpression(), !24738)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.t, !dbg !25463

bb.s:                                             ; preds = %._crit_edge
    #dbg_value(ptr %i.h, !4788, !DIExpression(), !24740)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB1d_.exit199 unwind label %bb.h, !dbg !25464

bb.t:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !25462
  unreachable, !dbg !25462

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %.backedge
  %i.ax = phi i64 [ %i.bt, %.backedge ], [ %.ph, %.lr.ph223.preheader ] ; 2 uses
  %i.ay = add nsw i64 %i.ax, -1, !dbg !25465      ; 3 uses
  store i64 %i.ay, ptr %i.x, align 8, !dbg !25465
  %i.az = load i64, ptr %i.h, align 8, !dbg !25466, !range !4502, !noundef !1634
  %i.ba = icmp samesign ult i64 %i.ay, %i.az, !dbg !25467
    #dbg_value(i1 true, !25294, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25297)
  call void @llvm.assume(i1 %i.ba), !dbg !25468
  %i.bb = load ptr, ptr %i.w, align 8, !dbg !25469, !nonnull !1634, !noundef !1634
    #dbg_value(ptr %i.bb, !25304, !DIExpression(), !25310)
    #dbg_value(i64 %i.ay, !25307, !DIExpression(), !25310)
  %i.bc = icmp samesign ult i64 %i.ax, 1152921504606846977, !dbg !25470
  call void @llvm.assume(i1 %i.bc), !dbg !25471
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ay, !dbg !25472
    #dbg_value(ptr %i.bd, !25311, !DIExpression(), !25316)
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !25473, !nonnull !1634, !align !5364, !noundef !1634 ; 4 uses
    #dbg_value(ptr %i.be, !24851, !DIExpression(), !25317)
    #dbg_value(ptr %i.i, !25208, !DIExpression(), !25318)
    #dbg_value(ptr %i.be, !25216, !DIExpression(), !25320)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !25474
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !25474, !nonnull !1634, !noundef !1634
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !25475
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !25475, !noundef !1634
    #dbg_value(ptr %i.bg, !25209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25331)
    #dbg_value(ptr %i.bg, !25201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25332)
    #dbg_value(i64 %i.bi, !25209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25331)
    #dbg_value(i64 %i.bi, !25201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25332)
    #dbg_value(ptr %i.i, !25200, !DIExpression(), !25333)
  %i.bj = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapReuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit, !dbg !25435

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB1d_.exit199: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !25440
    #dbg_value(ptr %i.i, !25105, !DIExpression(), !24748)
    #dbg_value(ptr %i.i, !25111, !DIExpression(), !24750)
    #dbg_value(ptr %i.i, !25118, !DIExpression(), !24752)
    #dbg_value(ptr %i.i, !25125, !DIExpression(), !24754)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i), !dbg !25476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !25419
  br label %bb.d, !dbg !25418

bb.u:                                             ; preds = %.lr.ph223
  br i1 %i.bj, label %.backedge, label %bb.v, !dbg !25478

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.j, !24960, !DIExpression(), !25334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !25479
    #dbg_value(ptr %i.be, !25336, !DIExpression(DW_OP_plus_uconst, 600, DW_OP_stack_value), !25342)
    #dbg_value(ptr %i.be, !25343, !DIExpression(DW_OP_plus_uconst, 600, DW_OP_stack_value), !25349)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 600, !dbg !25480
    #dbg_value(ptr %i.bk, !25351, !DIExpression(), !25357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25481
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bk)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit, !dbg !25482

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !25483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25484
  invoke void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetReNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1L_8adapters3map3MapINtNtNtNtBW_11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4v_4Tera22get_template_variables0EEB4x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit, !dbg !25485

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !25486
    #dbg_value(ptr %i.be, !25358, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !25361)
    #dbg_value(ptr %i.be, !25362, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !25365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25487
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 504, !dbg !25487
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBR_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1J_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bl)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit, !dbg !25488

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !25489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !25490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25491
  br label %bb.z, !dbg !25492

bb.z:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit203, %bb.y
    #dbg_value(ptr %i.f, !25065, !DIExpression(), !25366)
    #dbg_value(ptr %i.f, !25367, !DIExpression(), !25370)
  %i.bm = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBO_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.aa unwind label %.loopexit, !dbg !25493

bb.aa:                                            ; preds = %bb.z
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0, !dbg !25494 ; 3 uses
    #dbg_value(ptr %i.bn, !25055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25371)
    #dbg_value(ptr poison, !25055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25371)
  %.not186 = icmp eq ptr %i.bn, null, !dbg !25495
  br i1 %.not186, label %bb.ac, label %bb.ab, !dbg !25496

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr poison, !25055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25371)
    #dbg_value(ptr %i.bn, !24853, !DIExpression(), !25372)
    #dbg_value(ptr %i.bn, !25212, !DIExpression(), !25374)
    #dbg_value(ptr %i.bn, !25216, !DIExpression(), !25377)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !25497
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !25497, !nonnull !1634, !noundef !1634 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !25498
  %i.br = load i64, ptr %i.bq, align 8, !dbg !25498, !noundef !1634 ; 2 uses
    #dbg_value(ptr %i.bp, !24908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24915)
    #dbg_value(i64 %i.br, !24908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24915)
  %i.bs = invoke noundef align 8 ptr @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera12get_template(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.br)
          to label %bb.ad unwind label %.loopexit, !dbg !25499 ; 2 uses

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !25500
  br label %.backedge, !dbg !25501

.backedge:                                        ; preds = %bb.ac, %bb.u
    #dbg_value(ptr %i.h, !25034, !DIExpression(), !25182)
    #dbg_value(ptr %i.h, !25040, !DIExpression(), !25183)
    #dbg_value(ptr %i.h, !25184, !DIExpression(), !25191)
    #dbg_value(ptr %i.h, !25192, !DIExpression(), !25196)
  %i.bt = load i64, ptr %i.x, align 8, !dbg !25434, !noundef !1634 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0, !dbg !25434
  br i1 %i.bu, label %._crit_edge, label %.lr.ph223, !dbg !25434

bb.ad:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.bs, !25067, !DIExpression(), !25390)
    #dbg_value(ptr poison, !25068, !DIExpression(), !25391)
    #dbg_value(ptr poison, !25076, !DIExpression(), !25394)
  %.not187 = icmp eq ptr %i.bs, null, !dbg !25502
  br i1 %.not187, label %bb.ag, label %bb.ae, !dbg !25503

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %i.bs, !24870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25395)
    #dbg_value(i8 -1, !24870, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25395)
    #dbg_value(ptr %i.bs, !24854, !DIExpression(), !25396)
    #dbg_value(ptr %i.bs, !25238, !DIExpression(), !25398)
    #dbg_value(ptr %i.h, !25242, !DIExpression(), !25398)
    #dbg_value(ptr %i.h, !25246, !DIExpression(), !24762)
    #dbg_value(ptr %i.h, !25255, !DIExpression(), !24764)
    #dbg_value(ptr %i.bs, !25251, !DIExpression(), !24762)
    #dbg_value(i64 8, !25260, !DIExpression(), !24767)
  %i.bv = load i64, ptr %i.x, align 8, !dbg !25504, !alias.scope !25399, !noalias !25400, !noundef !1634 ; 3 uses
    #dbg_value(i64 %i.bv, !25252, !DIExpression(), !24771)
    #dbg_value(i64 %i.bv, !25267, !DIExpression(), !24773)
    #dbg_value(ptr %i.h, !25263, !DIExpression(), !24774)
  %i.bw = load i64, ptr %i.h, align 8, !dbg !25505, !range !4502, !alias.scope !25399, !noalias !25400, !noundef !1634
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !25506
  br i1 %i.bx, label %bb.af, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit203, !dbg !25506

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit203 unwind label %.loopexit, !dbg !25507

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE8push_mutBK_.exit203: ; preds = %bb.af, %bb.ae
  %i.by = load ptr, ptr %i.w, align 8, !dbg !25508, !alias.scope !25399, !noalias !25400, !nonnull !1634, !noundef !1634
    #dbg_value(ptr %i.by, !25270, !DIExpression(), !24773)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bv, !dbg !25509
    #dbg_value(ptr %i.bz, !25253, !DIExpression(), !24778)
    #dbg_value(ptr %i.bz, !25284, !DIExpression(), !24780)
    #dbg_value(ptr %i.bs, !25287, !DIExpression(), !24780)
  store ptr %i.bs, ptr %i.bz, align 8, !dbg !25510, !noalias !25400, !captures !6011
  %i.ca = add i64 %i.bv, 1, !dbg !25511
  store i64 %i.ca, ptr %i.x, align 8, !dbg !25511, !alias.scope !25399, !noalias !25400
  br label %bb.z, !dbg !25512

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25513
  invoke void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error18template_not_foundReEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.br)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !25514

bb.ah:                                            ; preds = %bb.ag
  %.sroa.053.0.copyload = load i8, ptr %i.a, align 8, !dbg !25515
    #dbg_value(i8 %.sroa.053.0.copyload, !24870, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25395)
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !25515
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4122.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.655.0..sroa_idx, i64 7, i1 false), !dbg !25515
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !25515
  %.sroa.657.0.copyload = load ptr, ptr %.sroa.657.0..sroa_idx, align 8, !dbg !25515
    #dbg_value(ptr %.sroa.657.0.copyload, !24870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25395)
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25515
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.860.0..sroa_idx, i64 56, i1 false), !dbg !25515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25517
    #dbg_value(i8 %.sroa.053.0.copyload, !24869, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25401)
    #dbg_value(ptr %.sroa.657.0.copyload, !24869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25401)
    #dbg_value(i8 %.sroa.053.0.copyload, !24855, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25402)
    #dbg_value(i8 %.sroa.053.0.copyload, !24861, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25403)
    #dbg_value(ptr %.sroa.657.0.copyload, !24855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25402)
    #dbg_value(ptr %.sroa.657.0.copyload, !24861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25403)
    #dbg_value(i8 %.sroa.053.0.copyload, !24858, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25404)
    #dbg_value(ptr %.sroa.657.0.copyload, !24858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25404)
  store i8 %.sroa.053.0.copyload, ptr %0, align 8, !dbg !25516
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25516
  store ptr %.sroa.657.0.copyload, ptr %.sroa.5123.0..sroa_idx, align 8, !dbg !25516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !25500
  br label %bb.n, !dbg !25456

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB1d_.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !25440
    #dbg_value(ptr %i.i, !25105, !DIExpression(), !24782)
    #dbg_value(ptr %i.i, !25111, !DIExpression(), !24784)
    #dbg_value(ptr %i.i, !25118, !DIExpression(), !24786)
    #dbg_value(ptr %i.i, !25125, !DIExpression(), !24788)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECs5yXxDE1DkoT_4tera.exit205 unwind label %.split.thread, !dbg !25518

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECs5yXxDE1DkoT_4tera.exit205: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB1d_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25477
    #dbg_value(ptr %i.j, !25105, !DIExpression(), !24790)
    #dbg_value(ptr %i.j, !25111, !DIExpression(), !24792)
    #dbg_value(ptr %i.j, !25118, !DIExpression(), !24794)
    #dbg_value(ptr %i.j, !25125, !DIExpression(), !24796)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j), !dbg !25519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !25419
  br label %bb.d, !dbg !25520

bb.ai:                                            ; preds = %bb.aj, %.body, %.loopexit.split-lp
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !25521
  unreachable, !dbg !25521

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECs5yXxDE1DkoT_4tera.exit207: ; preds = %bb.aj, %bb.e
end_hunk_0
begin_hunk_1_@_RNvNvNtCs5yXxDE1DkoT_4tera8template20check_include_cycles4walk:bb.a
    #dbg_value(i64 %i.ax, !6211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28578)
    #dbg_value(i64 %i.ax, !6215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28580)
  br i1 %i.ah, label %select.unfold, label %bb.t, !dbg !29432

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.ai, !6216, !DIExpression(), !28580)
  %i.by = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
          to label %.noexc123 unwind label %.loopexit165, !dbg !29433 ; 2 uses

.noexc123:                                        ; preds = %bb.t
    #dbg_value(i64 %i.by, !6212, !DIExpression(), !28581)
    #dbg_value(i64 %i.by, !6222, !DIExpression(), !28583)
    #dbg_value(ptr %i.ae, !6228, !DIExpression(), !28583)
    #dbg_value(ptr %i.aw, !6229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28583)
    #dbg_value(i64 %i.ax, !6229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28583)
    #dbg_value(ptr %i.aw, !6237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28585)
    #dbg_value(i64 %i.ax, !6237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28585)
    #dbg_value(ptr %i.ae, !6235, !DIExpression(), !28585)
    #dbg_value(i64 %i.by, !6236, !DIExpression(), !28585)
    #dbg_value(ptr poison, !3998, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !28588)
    #dbg_value(ptr poison, !4015, !DIExpression(), !28590)
    #dbg_value(ptr %i.ae, !3945, !DIExpression(), !28591)
    #dbg_value(ptr %i.ae, !4027, !DIExpression(), !28593)
    #dbg_value(i64 %i.by, !3946, !DIExpression(), !28591)
    #dbg_value(i64 %i.by, !4035, !DIExpression(), !28595)
    #dbg_value(ptr undef, !3925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28591)
    #dbg_value(ptr poison, !3925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28591)
    #dbg_value(i8 -1, !4041, !DIExpression(), !28598)
  %i.bz = lshr i64 %i.by, 57, !dbg !29434
  %i.ca = trunc nuw nsw i64 %i.bz to i8, !dbg !29435
    #dbg_value(i8 %i.ca, !3947, !DIExpression(), !28599)
    #dbg_value(i8 %i.ca, !4041, !DIExpression(), !28601)
    #dbg_value(!DIArgList(i64 %i.by, i64 %i.ak), !3948, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !28602)
    #dbg_value(i64 0, !3948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28602)
  %i.cb = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u, !dbg !29436

bb.u:                                             ; preds = %bb.v, %.noexc123
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc123 ], [ %i.cv, %bb.v ], !dbg !29437
  %.pn.i.i = phi i64 [ %i.by, %.noexc123 ], [ %i.cw, %bb.v ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ak, !dbg !29437 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i, !3948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28602)
    #dbg_value(i64 %.sroa.9.0.i.i.i, !3948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28602)
    #dbg_value(i64 %.sroa.01.0.i.i.i, !4032, !DIExpression(), !28593)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.0.i.i.i, !dbg !29438
    #dbg_value(ptr %i.cd, !4062, !DIExpression(), !28605)
    #dbg_value(ptr %i.cd, !4069, !DIExpression(), !28607)
    #dbg_value(<2 x i64> zeroinitializer, !4073, !DIExpression(), !28608)
    #dbg_value(ptr %i.cd, !4076, !DIExpression(), !28610)
    #dbg_value(ptr undef, !4079, !DIExpression(), !28610)
    #dbg_value(i64 16, !4080, !DIExpression(), !28610)
  %.sroa.0.0.copyload.i30.i.i = load <16 x i8>, ptr %i.cd, align 1, !dbg !29439, !noalias !29289 ; 2 uses
    #dbg_value(<2 x i64> poison, !4073, !DIExpression(), !28608)
    #dbg_value(<2 x i64> poison, !3949, !DIExpression(), !28618)
    #dbg_value(<2 x i64> poison, !4045, !DIExpression(), !28601)
    #dbg_value(<2 x i64> poison, !4052, !DIExpression(), !28619)
    #dbg_value(<2 x i64> poison, !4045, !DIExpression(), !28598)
    #dbg_declare(ptr poison, !4082, !DIExpression(), !28621)
    #dbg_declare(ptr poison, !4085, !DIExpression(), !28622)
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i.i, %i.cc, !dbg !29440
    #dbg_value(<16 x i8> poison, !4046, !DIExpression(), !28623)
    #dbg_declare(ptr poison, !4087, !DIExpression(), !28625)
    #dbg_value(<16 x i8> poison, !4090, !DIExpression(), !28626)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !4091, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !28627)
  %i.cf = bitcast <16 x i1> %i.ce to i16, !dbg !29441 ; 2 uses
    #dbg_value(i16 %i.cf, !3950, !DIExpression(), !28628)
    #dbg_value(ptr undef, !3998, !DIExpression(), !28588)
    #dbg_value(i16 %i.cf, !4102, !DIExpression(), !28630)
  %.not.i.not36.i.i = icmp eq i16 %i.cf, 0, !dbg !29442
  br i1 %.not.i.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !29443

.lr.ph.i.i:                                       ; preds = %bb.u, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i
  %.sroa.06.0.i37.i.i = phi i16 [ %i.cu, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i ], [ %i.cf, %bb.u ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !3950, !DIExpression(), !28628)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4106, !DIExpression(), !28631)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4113, !DIExpression(), !28633)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4120, !DIExpression(), !28635)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4125, !DIExpression(), !28637)
  %i.cg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i37.i.i, i1 true), !dbg !29444
  %i.ch = zext nneg i16 %i.cg to i64, !dbg !29445
    #dbg_value(i64 %i.ch, !4002, !DIExpression(), !28638)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4131, !DIExpression(), !28640)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i37.i.i, i16 %.sroa.06.0.i37.i.i), !3950, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !28628)
    #dbg_value(i64 %i.ch, !3951, !DIExpression(), !28641)
  %i.ci = add i64 %.sroa.01.0.i.i.i, %i.ch, !dbg !29446
  %i.cj = and i64 %i.ci, %i.ak, !dbg !29446
    #dbg_value(i64 %i.cj, !3952, !DIExpression(), !28642)
    #dbg_value(ptr poison, !6241, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28644)
    #dbg_value(ptr poison, !6246, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28644)
    #dbg_value(i64 %i.cj, !6245, !DIExpression(), !28644)
    #dbg_value(i64 %i.cj, !6248, !DIExpression(), !28646)
    #dbg_value(i64 %i.cj, !6256, !DIExpression(), !28648)
    #dbg_value(i64 %i.cj, !6260, !DIExpression(), !28650)
    #dbg_value(i64 1, !6262, !DIExpression(), !28654)
    #dbg_value(ptr %i.ae, !6249, !DIExpression(), !28646)
    #dbg_value(ptr %i.al, !6257, !DIExpression(), !28648)
    #dbg_value(ptr %i.al, !6261, !DIExpression(), !28650)
  %i.ck = sub nsw i64 0, %i.cj, !dbg !29447
  %i.cl = getelementptr inbounds [688 x i8], ptr %i.al, i64 %i.ck, !dbg !29448 ; 3 uses
    #dbg_value(ptr %i.cl, !6261, !DIExpression(), !28654)
  %i.cm = getelementptr i8, ptr %i.cl, i64 -672, !dbg !29449
  %.val13.i.i.i = load i64, ptr %i.cm, align 8, !dbg !29449, !alias.scope !29290, !noalias !29291, !noundef !1634
    #dbg_value(ptr poison, !6268, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28661)
    #dbg_value(ptr poison, !6272, !DIExpression(), !28661)
    #dbg_value(ptr poison, !4193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28663)
    #dbg_value(i64 %i.ax, !4193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28663)
    #dbg_value(ptr poison, !4197, !DIExpression(), !28663)
    #dbg_value(ptr poison, !4201, !DIExpression(), !28665)
    #dbg_value(ptr poison, !4206, !DIExpression(), !28666)
    #dbg_value(ptr poison, !4211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28668)
    #dbg_value(i64 %i.ax, !4211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28668)
    #dbg_value(ptr poison, !4217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28668)
    #dbg_value(i64 %.val13.i.i.i, !4217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28668)
    #dbg_value(ptr poison, !4220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28671)
    #dbg_value(i64 %i.ax, !4220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28671)
    #dbg_value(ptr poison, !4237, !DIExpression(), !28672)
    #dbg_value(ptr poison, !4229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28671)
    #dbg_value(i64 %.val13.i.i.i, !4229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28671)
    #dbg_value(ptr poison, !4238, !DIExpression(), !28673)
    #dbg_value(i64 %i.ax, !4230, !DIExpression(), !28674)
    #dbg_value(i64 %i.ax, !4240, !DIExpression(), !28676)
    #dbg_value(i64 %i.ax, !4246, !DIExpression(), !28677)
  %i.cn = icmp eq i64 %i.ax, %.val13.i.i.i, !dbg !29450
  br i1 %i.cn, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i, !dbg !29450, !prof !4251

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.co = getelementptr i8, ptr %i.cl, i64 -680, !dbg !29449
  %.val12.i.i.i = load ptr, ptr %i.co, align 8, !dbg !29449, !noalias !29292, !nonnull !1634, !noundef !1634
    #dbg_value(ptr %i.aw, !4193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28663)
    #dbg_value(ptr %i.aw, !4211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28668)
    #dbg_value(ptr %i.aw, !4220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28671)
    #dbg_value(ptr %.val12.i.i.i, !4217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28668)
    #dbg_value(ptr %.val12.i.i.i, !4229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28671)
    #dbg_value(ptr %i.aw, !4244, !DIExpression(), !28676)
    #dbg_value(ptr %.val12.i.i.i, !4245, !DIExpression(), !28676)
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.aw, ptr nonnull readonly %.val12.i.i.i, i64 %i.ax), !dbg !29451, !alias.scope !29293, !noalias !29294
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i.i, 0, !dbg !29451
    #dbg_value(i1 %i.cp, !4253, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !28684)
  br i1 %i.cp, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i, !dbg !29452, !prof !4258

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i, %bb.u
    #dbg_declare(ptr poison, !4082, !DIExpression(), !28686)
    #dbg_declare(ptr poison, !4085, !DIExpression(), !28687)
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i.i, splat (i8 -1), !dbg !29453
    #dbg_value(<16 x i8> poison, !4047, !DIExpression(), !28688)
    #dbg_declare(ptr poison, !4087, !DIExpression(), !28690)
    #dbg_value(<16 x i8> poison, !4090, !DIExpression(), !28691)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !4091, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !28692)
  %i.cr = bitcast <16 x i1> %i.cq to i16, !dbg !29454
    #dbg_value(i16 %i.cr, !4253, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !28694)
  %i.cs = icmp eq i16 %i.cr, 0, !dbg !29455
  br i1 %i.cs, label %bb.v, label %select.unfold, !dbg !29455, !prof !4260

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.i.i, %.lr.ph.i.i
  %i.ct = add i16 %.sroa.06.0.i37.i.i, -1, !dbg !29456
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i37.i.i, i16 %i.ct), !3950, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !28628)
  %i.cu = and i16 %i.ct, %.sroa.06.0.i37.i.i, !dbg !29457 ; 2 uses
    #dbg_value(i16 %i.cu, !3950, !DIExpression(), !28628)
    #dbg_value(ptr undef, !3998, !DIExpression(), !28588)
    #dbg_value(i16 %i.cu, !4102, !DIExpression(), !28630)
  %.not.i.not.i.i = icmp eq i16 %i.cu, 0, !dbg !29442
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !29443

bb.v:                                             ; preds = %._crit_edge.i.i
    #dbg_value(ptr undef, !4015, !DIExpression(), !28590)
    #dbg_value(i64 %i.ak, !4019, !DIExpression(), !28695)
  %i.cv = add i64 %.sroa.9.0.i.i.i, 16, !dbg !29458 ; 2 uses
    #dbg_value(i64 %i.cv, !3948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28602)
  %i.cw = add i64 %.sroa.01.0.i.i.i, %i.cv, !dbg !29459
    #dbg_value(!DIArgList(i64 %i.cw, i64 %i.ak), !3948, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !28602)
  br label %bb.u, !dbg !29436

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit: ; preds = %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.i.i
  %i.cx = getelementptr inbounds i8, ptr %i.cl, i64 -664, !dbg !29460
    #dbg_value(ptr %i.cx, !29029, !DIExpression(), !29034)
  invoke fastcc void @_RNvNvNtCs5yXxDE1DkoT_4tera8template20check_include_cycles4walk(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(664) %i.cx, ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef align 8 dereferenceable(48) %4)
          to label %bb.x unwind label %.loopexit165, !dbg !28884

select.unfold:                                    ; preds = %bb.s, %._crit_edge.i.i
    #dbg_value(ptr null, !29029, !DIExpression(), !29034)
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #30
          to label %bb.w unwind label %.loopexit.split-lp, !dbg !29461

bb.w:                                             ; preds = %bb.am, %select.unfold
  unreachable

bb.x:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit
  %i.cy = load i8, ptr %i.g, align 8, !dbg !29462, !range !4416, !noundef !1634
  %.not113 = icmp eq i8 %i.cy, -1, !dbg !29462
  br i1 %.not113, label %bb.z, label %bb.y, !dbg !29463

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !dbg !29464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !29465
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtBI_6string6StringEECs5yXxDE1DkoT_4tera.exit128, !dbg !29466

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !29465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !29467
  %i.cz = load i64, ptr %i.ab, align 8, !dbg !29468, !noundef !1634 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0, !dbg !29468
  br i1 %i.da, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit, label %bb.aa, !dbg !29468

bb.aa:                                            ; preds = %bb.z
  %i.db = add nsw i64 %i.cz, -1, !dbg !29469      ; 3 uses
  store i64 %i.db, ptr %i.ab, align 8, !dbg !29469
  %i.dc = load i64, ptr %3, align 8, !dbg !29470, !range !4502, !noundef !1634
    #dbg_value(i64 %i.dc, !29123, !DIExpression(), !29298)
  %i.dd = icmp samesign ult i64 %i.db, %i.dc, !dbg !29471
    #dbg_value(i1 true, !29276, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !29300)
  call void @llvm.assume(i1 %i.dd), !dbg !29472
  %i.de = load ptr, ptr %i.aa, align 8, !dbg !29473, !nonnull !1634, !noundef !1634
    #dbg_value(ptr %i.de, !29307, !DIExpression(), !29311)
    #dbg_value(i64 %i.db, !29308, !DIExpression(), !29311)
  %i.df = icmp ult i64 %i.cz, 384307168202282327, !dbg !29474
  call void @llvm.assume(i1 %i.df), !dbg !29475
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.db, !dbg !29476
    #dbg_value(ptr %i.dg, !29312, !DIExpression(), !29317)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !dbg !29477
  %.pr = load i64, ptr %i.f, align 8, !dbg !29478, !alias.scope !29318
    #dbg_value(ptr %i.f, !4531, !DIExpression(), !28701)
  %i.dh = icmp eq i64 %.pr, -1, !dbg !29478
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit, label %bb.ab, !dbg !29478

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.f, !4537, !DIExpression(), !28703)
    #dbg_value(ptr %i.f, !4541, !DIExpression(), !28705)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.ac, !dbg !29479

bb.ac:                                            ; preds = %bb.ab
  %i.di = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !4546, !DIExpression(), !28707)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.ad, !dbg !29480

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !29479
  unreachable, !dbg !29479

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.ab
    #dbg_value(ptr %i.f, !4546, !DIExpression(), !28709)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %.loopexit165, !dbg !29481

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.z, %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !29482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !29483
    #dbg_value(i64 1, !28968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29258)
    #dbg_value(i64 1, !28981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29082)
    #dbg_value(i64 1, !28968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29258)
    #dbg_value(i64 1, !28981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29484
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ax, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit165, !dbg !29484

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit
  %i.dk = load i64, ptr %i.b, align 8, !dbg !29484, !range !4401, !noundef !1634
  %i.dl = trunc nuw i64 %i.dk to i1, !dbg !29485
  %i.dm = load i64, ptr %i.am, align 8, !dbg !29258, !range !5256, !noundef !1634 ; 3 uses
  br i1 %i.dl, label %bb.af, label %bb.ag, !dbg !29485, !prof !4260

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i64, ptr %i.an, align 8, !dbg !29486
    #dbg_value(i64 %i.dm, !28974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29319)
    #dbg_value(i64 %i.dn, !28974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29319)
  br label %.invoke, !dbg !29487

bb.ag:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %i.an, align 8, !dbg !29488, !nonnull !1634, !noundef !1634 ; 2 uses
    #dbg_value(i64 %i.dm, !28973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29320)
    #dbg_value(ptr %i.do, !28973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29320)
    #dbg_value(ptr poison, !28979, !DIExpression(), !29321)
    #dbg_value(ptr poison, !28750, !DIExpression(), !29322)
    #dbg_value(i64 %i.dm, !29123, !DIExpression(), !29325)
  %i.dp = icmp ule i64 %i.ax, %i.dm, !dbg !29489
    #dbg_value(i1 true, !29276, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !29327)
  call void @llvm.assume(i1 %i.dp), !dbg !29490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29491
    #dbg_value(i64 %i.dm, !29280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29329)
    #dbg_value(i64 %i.dm, !28939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29330)
    #dbg_value(ptr %i.do, !29280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29329)
    #dbg_value(ptr %i.do, !28939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29330)
    #dbg_value(i64 0, !29280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29329)
    #dbg_value(i64 0, !28939, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29330)
  br i1 %.not111, label %bb.ah, label %bb.ai, !dbg !29492

bb.ah:                                            ; preds = %bb.ai, %bb.ag
    #dbg_value(i64 %i.ax, !28939, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29330)
    #dbg_value(i64 %i.ax, !29280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29329)
  store i64 %i.dm, ptr %i.e, align 8, !dbg !29493
  store ptr %i.do, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !29493
  store i64 %i.ax, ptr %.sroa.618.0..sroa_idx, align 8, !dbg !29493
    #dbg_value(ptr %4, !28898, !DIExpression(), !29331)
  %i.dq = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.aj unwind label %.loopexit165, !dbg !29494 ; 0 uses

bb.ai:                                            ; preds = %bb.ag
    #dbg_value(ptr %i.aw, !29237, !DIExpression(), !29254)
    #dbg_value(ptr %i.aw, !29243, !DIExpression(), !29257)
    #dbg_value(ptr %i.do, !29238, !DIExpression(), !29254)
    #dbg_value(ptr %i.do, !29244, !DIExpression(), !29257)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false), !dbg !29495
    #dbg_value(i64 %i.ax, !29280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29329)
    #dbg_value(i64 %i.ax, !28939, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29330)
  br label %bb.ah, !dbg !29496

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !29497
  br label %.backedge, !dbg !29498

.backedge:                                        ; preds = %bb.g, %bb.i, %bb.aj
    #dbg_value(ptr %i.m, !6766, !DIExpression(), !28710)
    #dbg_value(i64 1, !6780, !DIExpression(), !28496)
    #dbg_value(ptr %i.m, !6759, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28711)
  %i.dr = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29499, !alias.scope !29332, !nonnull !1634, !noundef !1634
    #dbg_value(ptr poison, !6760, !DIExpression(), !28713)
  %i.ds = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29378, !alias.scope !29332, !nonnull !1634, !noundef !1634 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dr, !dbg !29378
  br i1 %i.dt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtBI_6string6StringEECs5yXxDE1DkoT_4tera.exit120, label %bb.e, !dbg !29379

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtBI_6string6StringEECs5yXxDE1DkoT_4tera.exit128: ; preds = %bb.au, %bb.y
    #dbg_value(ptr %i.m, !6770, !DIExpression(), !28715)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterRNtNtB9_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m), !dbg !29500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !29388
  br label %bb.f, !dbg !29390

bb.ak:                                            ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtCs5yXxDE1DkoT_4tera8template20check_include_cycles4walk0EB2k_.exit
    #dbg_value(ptr %i.l, !28811, !DIExpression(), !29333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !29501
    #dbg_value(ptr %i.aw, !28928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29334)
    #dbg_value(ptr %i.aw, !28930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29335)
    #dbg_value(ptr %i.aw, !28907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29336)
    #dbg_value(ptr %i.aw, !28933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29337)
    #dbg_value(i64 %i.ax, !28928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29334)
    #dbg_value(i64 %i.ax, !28930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29335)
    #dbg_value(i64 %i.ax, !28907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29336)
    #dbg_value(i64 %i.ax, !28933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29337)
    #dbg_value(i64 %i.ax, !28934, !DIExpression(), !29338)
    #dbg_value(i64 %i.ax, !28944, !DIExpression(), !29339)
    #dbg_value(i64 %i.ax, !28949, !DIExpression(), !29340)
    #dbg_value(i64 %i.ax, !29236, !DIExpression(), !29342)
    #dbg_value(i64 %i.ax, !29242, !DIExpression(), !29344)
    #dbg_value(i64 %i.ax, !28967, !DIExpression(), !29345)
    #dbg_value(i64 %i.ax, !28980, !DIExpression(), !28984)
    #dbg_value(i64 1, !28968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29345)
    #dbg_value(i64 1, !28981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28984)
    #dbg_value(i64 1, !28968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29345)
    #dbg_value(i64 1, !28981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28984)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !29502
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ax, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.al unwind label %.body129.thread161, !dbg !29502

.body129.thread161:                               ; preds = %bb.am, %bb.ak
  %lpad.thr_comm159 = landingpad { ptr, i32 }
          cleanup
  br label %.body129.thread, !dbg !29503

.body129:                                         ; preds = %bb.at
  %lpad.thr_comm.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !29503

bb.al:                                            ; preds = %bb.ak
  %i.du = load i64, ptr %i.d, align 8, !dbg !29502, !range !4401, !noundef !1634
  %i.dv = trunc nuw i64 %i.du to i1, !dbg !29504
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !29345
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !29345, !range !5256, !noundef !1634 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !29345 ; 2 uses
  br i1 %i.dv, label %bb.am, label %bb.an, !dbg !29504, !prof !4260

bb.am:                                            ; preds = %bb.al
  %i.dz = load i64, ptr %i.dy, align 8, !dbg !29505
    #dbg_value(i64 %i.dx, !28970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29346)
    #dbg_value(i64 %i.dz, !28970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29346)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dx, i64 %i.dz) #30
          to label %bb.w unwind label %.body129.thread161, !dbg !29506

bb.an:                                            ; preds = %bb.al
  %i.ea = load ptr, ptr %i.dy, align 8, !dbg !29507, !nonnull !1634, !noundef !1634 ; 2 uses
    #dbg_value(i64 %i.dx, !28969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29347)
    #dbg_value(ptr %i.ea, !28969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29347)
    #dbg_value(ptr poison, !28979, !DIExpression(), !29348)
    #dbg_value(ptr poison, !28750, !DIExpression(), !29349)
    #dbg_value(i64 %i.dx, !29123, !DIExpression(), !29352)
  %i.eb = icmp ule i64 %i.ax, %i.dx, !dbg !29508
    #dbg_value(i1 true, !29276, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !29354)
  call void @llvm.assume(i1 %i.eb), !dbg !29509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !29510
    #dbg_value(i64 %i.dx, !29280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29356)
    #dbg_value(i64 %i.dx, !28935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29357)
    #dbg_value(ptr %i.ea, !29280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29356)
    #dbg_value(ptr %i.ea, !28935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29357)
    #dbg_value(i64 0, !29280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29356)
    #dbg_value(i64 0, !28935, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29357)
  %.not114 = icmp eq i64 %i.ax, 0, !dbg !29511
  br i1 %.not114, label %bb.ao, label %bb.as, !dbg !29511

bb.ao:                                            ; preds = %bb.as, %bb.an
    #dbg_value(i64 %i.ax, !28935, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29357)
    #dbg_value(i64 %i.ax, !29280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29356)
  store i64 %i.dx, ptr %i.k, align 8, !dbg !29512
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !29512
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !29512
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !29512
  store i64 %i.ax, ptr %.sroa.610.0..sroa_idx, align 8, !dbg !29512
    #dbg_value(ptr %i.l, !6984, !DIExpression(), !28717)
    #dbg_value(ptr %i.l, !6992, !DIExpression(), !28719)
    #dbg_declare(ptr %i.k, !6988, !DIExpression(), !28720)
    #dbg_value(i64 24, !6994, !DIExpression(), !28723)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !29513 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !29513, !alias.scope !29358, !noalias !29359, !noundef !1634 ; 3 uses
    #dbg_value(i64 %i.ed, !6989, !DIExpression(), !28727)
    #dbg_value(i64 %i.ed, !7002, !DIExpression(), !28729)
    #dbg_value(ptr %i.l, !7000, !DIExpression(), !28730)
  %i.ee = load i64, ptr %i.l, align 8, !dbg !29514, !range !4502, !alias.scope !29358, !noalias !29359, !noundef !1634
end_hunk_1
