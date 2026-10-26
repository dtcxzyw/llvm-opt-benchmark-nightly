Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog-2e3720e2d56e44fb.qlog.2b827698b949cf29-cgu.4?download=true
inline.NumInlined: 433
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs1_1__NtB2v_7QlogSeqNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %.promoted.i.i.i.i337.i = load i64, ptr %i.gd, align 8, !alias.scope !4534, !noalias !4533 ; 2 uses
  %i.kq = icmp ult i64 %.promoted.i.i.i.i337.i, %i.kp, !dbg !4858
  br i1 %i.kq, label %.lr.ph.i.i.i.i340.i, label %.loopexit.i.i.i338.i, !dbg !4858

.lr.ph.i.i.i.i340.i:                              ; preds = %bb.dj
  %i.kr = load ptr, ptr %i.gc, align 8, !alias.scope !4532, !noalias !4533, !nonnull !594, !noundef !594
  br label %bb.dk, !dbg !4858

bb.dk:                                            ; preds = %bb.dl, %.lr.ph.i.i.i.i340.i
  %i.ks = phi i64 [ %.promoted.i.i.i.i337.i, %.lr.ph.i.i.i.i340.i ], [ %i.kv, %bb.dl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4535), !dbg !4859
    #dbg_value(ptr %i.gc, !989, !DIExpression(), !3903)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ks, !dbg !4860
  %i.ku = load i8, ptr %i.kt, align 1, !dbg !4860, !noalias !4536, !noundef !594
  switch i8 %i.ku, label %bb.dm [
    i8 32, label %bb.dl
    i8 10, label %bb.dl
    i8 9, label %bb.dl
    i8 13, label %bb.dl
    i8 58, label %bb.dn
  ], !dbg !4861, !prof !1428

bb.dl:                                            ; preds = %bb.dk, %bb.dk, %bb.dk, %bb.dk
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3907)
  %i.kv = add i64 %i.ks, 1, !dbg !4862            ; 3 uses
  store i64 %i.kv, ptr %i.gd, align 8, !dbg !4862, !alias.scope !4537, !noalias !4533
    #dbg_value(ptr %i.gb, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3903)
  %exitcond.not.i.i.i.i341.i = icmp eq i64 %i.kv, %i.kp, !dbg !4858
  br i1 %exitcond.not.i.i.i.i341.i, label %.loopexit.i.i.i338.i, label %bb.dk, !dbg !4858

.loopexit.i.i.i338.i:                             ; preds = %bb.dj, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4863, !noalias !4538
  store i64 3, ptr %i.d, align 8, !dbg !4863, !noalias !4538
  %i.kw = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc342.i unwind label %.loopexit.split-lp.i, !dbg !4864, !noalias !4368

.noexc342.i:                                      ; preds = %.loopexit.i.i.i338.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4865, !noalias !4538
  br label %.loopexit423.i, !dbg !4866

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4867, !noalias !4538
  store i64 6, ptr %i.e, align 8, !dbg !4867, !noalias !4538
  %i.kx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc343.i unwind label %.loopexit.split-lp.i, !dbg !4868, !noalias !4368

.noexc343.i:                                      ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4869, !noalias !4538
  br label %.loopexit423.i, !dbg !4870

bb.dn:                                            ; preds = %bb.dk
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3911)
  %i.ky = add i64 %i.ks, 1, !dbg !4871
  store i64 %i.ky, ptr %i.gd, align 8, !dbg !4871, !alias.scope !4539, !noalias !4533
    #dbg_declare(ptr poison, !1571, !DIExpression(), !3915)
    #dbg_value(ptr %i.gb, !1575, !DIExpression(), !3916)
    #dbg_declare(ptr poison, !1574, !DIExpression(), !3915)
  invoke void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2z_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.gb)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit345.i unwind label %.loopexit.i49, !dbg !4872, !noalias !4368

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit345.i: ; preds = %bb.dn
  %.pr413.i = load i64, ptr %i.v, align 8, !dbg !4873, !noalias !4256 ; 3 uses
  %i.kz = icmp eq i64 %.pr413.i, -2, !dbg !4873
  %.pre641.i = load ptr, ptr %.sroa.4175.0..sroa_idx.i, align 8, !dbg !4874, !noalias !4256 ; 3 uses
  br i1 %i.kz, label %.loopexit423.i, label %bb.do, !dbg !4875

.loopexit423.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit345.i, %.noexc343.i, %.noexc342.i
  %i.la = phi ptr [ %i.kx, %.noexc343.i ], [ %i.kw, %.noexc342.i ], [ %.pre641.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit345.i ], !dbg !4876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !4829, !noalias !4256
    #dbg_value(ptr %i.la, !4486, !DIExpression(), !3918)
    #dbg_value(ptr %i.la, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
    #dbg_value(i64 -1, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
  br label %.loopexit, !dbg !4797

bb.do:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit345.i
  %.sroa.5176.0.copyload.i = load i64, ptr %.sroa.5176.0..sroa_idx.i, align 8, !dbg !4877, !noalias !4256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !4829, !noalias !4256
    #dbg_value(ptr %i.aa, !1732, !DIExpression(), !3920)
  %i.lb = load i64, ptr %i.aa, align 8, !dbg !4878, !range !1042, !alias.scope !4541, !noalias !4256, !noundef !594
  %switch.i346.i = icmp ugt i64 %i.lb, -3, !dbg !4878
  br i1 %switch.i346.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit352.i, label %bb.dp, !dbg !4878

bb.dp:                                            ; preds = %bb.do
    #dbg_value(ptr %i.aa, !1044, !DIExpression(), !3925)
    #dbg_value(ptr %i.aa, !1003, !DIExpression(), !3927)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i348.i unwind label %bb.dq, !dbg !4879, !noalias !4368

bb.dq:                                            ; preds = %bb.dp
  %i.lc = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.aa, !1010, !DIExpression(), !3929)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body349.i unwind label %bb.dr, !dbg !4880, !noalias !4368

bb.dr:                                            ; preds = %bb.dq
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !4879, !noalias !4368
  unreachable, !dbg !4879

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i348.i: ; preds = %bb.dp
    #dbg_value(ptr %i.aa, !1010, !DIExpression(), !3931)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit352.i unwind label %bb.ds, !dbg !4881, !noalias !4368

bb.ds:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i348.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body349.i, !dbg !4734

.body349.i:                                       ; preds = %bb.ds, %bb.dq
  %eh.lpad-body350.i = phi { ptr, i32 } [ %i.le, %bb.ds ], [ %i.lc, %bb.dq ]
  store i64 %.pr413.i, ptr %i.aa, align 8, !dbg !4734, !noalias !4256
  store ptr %.pre641.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !dbg !4734, !noalias !4256
  store i64 %.sroa.5176.0.copyload.i, ptr %.sroa.793.0..sroa_idx94.i, align 8, !dbg !4734, !noalias !4256
  br label %bb.bx, !dbg !4734

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit352.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i348.i, %bb.do
  store i64 %.pr413.i, ptr %i.aa, align 8, !dbg !4734, !noalias !4256
  store ptr %.pre641.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !dbg !4734, !noalias !4256
  store i64 %.sroa.5176.0.copyload.i, ptr %.sroa.793.0..sroa_idx94.i, align 8, !dbg !4734, !noalias !4256
  br label %.backedge, !dbg !4734

bb.dt:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7111.i), !dbg !4734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !4734, !noalias !4256
    #dbg_value(ptr poison, !4542, !DIExpression(), !3934)
    #dbg_value(ptr poison, !4547, !DIExpression(), !3939)
    #dbg_declare(ptr poison, !4550, !DIExpression(), !3940)
  call void @llvm.experimental.noalias.scope.decl(metadata !4556), !dbg !4882
    #dbg_value(ptr %i.gb, !1707, !DIExpression(), !3944)
    #dbg_value(ptr %i.gb, !1712, !DIExpression(), !3946)
  call void @llvm.experimental.noalias.scope.decl(metadata !4557), !dbg !4883
    #dbg_value(ptr %i.gb, !957, !DIExpression(), !3950)
    #dbg_value(ptr %i.gb, !976, !DIExpression(), !3952)
    #dbg_value(ptr %i.gb, !979, !DIExpression(), !3954)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.lg = load i64, ptr %i.lf, align 8, !alias.scope !4558, !noalias !4559, !noundef !594 ; 2 uses
  %.promoted.i.i.i.i353.i = load i64, ptr %i.gd, align 8, !alias.scope !4560, !noalias !4559 ; 2 uses
  %i.lh = icmp ult i64 %.promoted.i.i.i.i353.i, %i.lg, !dbg !4884
  br i1 %i.lh, label %.lr.ph.i.i.i.i356.i, label %.loopexit.i.i.i354.i, !dbg !4884

.lr.ph.i.i.i.i356.i:                              ; preds = %bb.dt
  %i.li = load ptr, ptr %i.gc, align 8, !alias.scope !4558, !noalias !4559, !nonnull !594, !noundef !594
  br label %bb.du, !dbg !4884

bb.du:                                            ; preds = %bb.dv, %.lr.ph.i.i.i.i356.i
  %i.lj = phi i64 [ %.promoted.i.i.i.i353.i, %.lr.ph.i.i.i.i356.i ], [ %i.lm, %bb.dv ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4561), !dbg !4885
    #dbg_value(ptr %i.gc, !989, !DIExpression(), !3962)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lj, !dbg !4886
  %i.ll = load i8, ptr %i.lk, align 1, !dbg !4886, !noalias !4562, !noundef !594
  switch i8 %i.ll, label %bb.dw [
    i8 32, label %bb.dv
    i8 10, label %bb.dv
    i8 9, label %bb.dv
    i8 13, label %bb.dv
    i8 58, label %bb.dx
  ], !dbg !4887, !prof !1428

bb.dv:                                            ; preds = %bb.du, %bb.du, %bb.du, %bb.du
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3966)
  %i.lm = add i64 %i.lj, 1, !dbg !4888            ; 3 uses
  store i64 %i.lm, ptr %i.gd, align 8, !dbg !4888, !alias.scope !4563, !noalias !4559
    #dbg_value(ptr %i.gb, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3962)
  %exitcond.not.i.i.i.i357.i = icmp eq i64 %i.lm, %i.lg, !dbg !4884
  br i1 %exitcond.not.i.i.i.i357.i, label %.loopexit.i.i.i354.i, label %bb.du, !dbg !4884

.loopexit.i.i.i354.i:                             ; preds = %bb.dt, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4889, !noalias !4564
  store i64 3, ptr %i.b, align 8, !dbg !4889, !noalias !4564
  %i.ln = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc358.i unwind label %.loopexit.split-lp.i, !dbg !4890, !noalias !4368

.noexc358.i:                                      ; preds = %.loopexit.i.i.i354.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4891, !noalias !4564
  br label %.loopexit417.i, !dbg !4892

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4893, !noalias !4564
  store i64 6, ptr %i.c, align 8, !dbg !4893, !noalias !4564
  %i.lo = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc359.i unwind label %.loopexit.split-lp.i, !dbg !4894, !noalias !4368

.noexc359.i:                                      ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4895, !noalias !4564
  br label %.loopexit417.i, !dbg !4896

bb.dx:                                            ; preds = %bb.du
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3970)
  %i.lp = add i64 %i.lj, 1, !dbg !4897
  store i64 %i.lp, ptr %i.gd, align 8, !dbg !4897, !alias.scope !4565, !noalias !4559
    #dbg_declare(ptr poison, !4241, !DIExpression(), !3974)
    #dbg_value(ptr %i.gb, !4245, !DIExpression(), !3975)
    #dbg_declare(ptr poison, !4244, !DIExpression(), !3974)
  invoke void @_RINvXNvCs3JBf551F2Kj_4qlogs5_1__NtB5_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1L_4read9SliceReadEEB5_(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.gb)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog8TraceSeqEB23_.exit.i unwind label %.loopexit.i49, !dbg !4898, !noalias !4368

.invoke:                                          ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %i.lq = phi ptr [ @5, %bb.cd ], [ @4, %bb.cc ], [ @3, %bb.cb ], [ @2, %bb.ca ], [ @1, %bb.bz ]
  %i.lr = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error15duplicate_fieldCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lq, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !dbg !4734, !noalias !4368

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog8TraceSeqEB23_.exit.i: ; preds = %bb.dx
  %.pr414.i = load i64, ptr %i.u, align 8, !dbg !4899, !noalias !4256 ; 3 uses
  %i.ls = icmp eq i64 %.pr414.i, -1, !dbg !4899
  %.pre.i = load ptr, ptr %.sroa.4178.0..sroa_idx.i, align 8, !dbg !4900, !noalias !4256 ; 3 uses
  br i1 %i.ls, label %.loopexit417.i, label %bb.dy, !dbg !4901

.loopexit417.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog8TraceSeqEB23_.exit.i, %.noexc359.i, %.noexc358.i
  %i.lt = phi ptr [ %i.lo, %.noexc359.i ], [ %i.ln, %.noexc358.i ], [ %.pre.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog8TraceSeqEB23_.exit.i ], !dbg !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !4796, !noalias !4256
    #dbg_value(ptr %i.lt, !4486, !DIExpression(), !3977)
    #dbg_value(ptr %i.lt, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
    #dbg_value(i64 -1, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111.i), !dbg !4796
  br label %.loopexit, !dbg !4797

bb.dy:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog8TraceSeqEB23_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7111.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5179.0..sroa_idx.i, i64 240, i1 false), !dbg !4903, !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !4796, !noalias !4256
    #dbg_value(ptr %i.z, !4568, !DIExpression(), !3980)
  %i.lu = load i64, ptr %i.z, align 8, !dbg !4904, !range !936, !alias.scope !4573, !noalias !4256, !noundef !594
  %i.lv = icmp eq i64 %i.lu, -1, !dbg !4904
  br i1 %i.lv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog8TraceSeqEEBZ_.exit.i, label %bb.dz, !dbg !4904

bb.dz:                                            ; preds = %bb.dy
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog8TraceSeqEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog8TraceSeqEEBZ_.exit.i unwind label %.thread.i, !dbg !4904, !noalias !4368

.thread.i:                                        ; preds = %bb.dz
  %i.lw = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr414.i, ptr %i.z, align 8, !dbg !4734, !noalias !4256
  store ptr %.pre.i, ptr %.sroa.6108.0..sroa_idx109.i, align 8, !dbg !4734, !noalias !4256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7111.0..sroa_idx112.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7111.i, i64 240, i1 false), !dbg !4734, !noalias !4256
  br label %bb.ge, !dbg !4769

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog8TraceSeqEEBZ_.exit.i: ; preds = %bb.dz, %bb.dy
  store i64 %.pr414.i, ptr %i.z, align 8, !dbg !4734, !noalias !4256
  store ptr %.pre.i, ptr %.sroa.6108.0..sroa_idx109.i, align 8, !dbg !4734, !noalias !4256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7111.0..sroa_idx112.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7111.i, i64 240, i1 false), !dbg !4734, !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111.i), !dbg !4796
  br label %.backedge, !dbg !4734

bb.ea:                                            ; preds = %bb.ce
    #dbg_value(ptr %i.im, !4574, !DIExpression(), !3987)
  %.not283.i = icmp eq ptr %i.im, null, !dbg !4905
  br i1 %.not283.i, label %.backedge, label %.loopexit, !dbg !4906

.backedge:                                        ; preds = %bb.ea, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog8TraceSeqEEBZ_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit352.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit325.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i60
  br label %bb.bn, !dbg !4734

bb.eb:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !4580, !noalias !4256
  br label %bb.eg, !dbg !4907

bb.ec:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !4580, !noalias !4256
    #dbg_value(ptr @1, !4304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3988)
    #dbg_value(ptr @1, !4312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3989)
    #dbg_value(ptr @1, !4310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3990)
    #dbg_value(i64 11, !4304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3988)
    #dbg_value(i64 11, !4312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3989)
    #dbg_value(i64 11, !4310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3990)
  invoke void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 11)
          to label %bb.ed unwind label %.loopexit.split-lp.i, !dbg !4908, !noalias !4368

bb.ed:                                            ; preds = %bb.ec
  %i.lx = load i64, ptr %i.s, align 8, !dbg !4909, !range !936, !noalias !4256, !noundef !594 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, -1, !dbg !4909
  %i.lz = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !4910
  %i.ma = load ptr, ptr %i.lz, align 8, !dbg !4910, !noalias !4256 ; 2 uses
  br i1 %i.ly, label %bb.ee, label %bb.ef, !dbg !4911

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !4907, !noalias !4256
    #dbg_value(ptr %i.ma, !4486, !DIExpression(), !3992)
    #dbg_value(ptr %i.ma, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
    #dbg_value(i64 -1, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
  br label %bb.eh, !dbg !4912

bb.ef:                                            ; preds = %bb.ed
  %.sroa.5182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !4913
  %.sroa.5182.0.copyload.i = load i64, ptr %.sroa.5182.0..sroa_idx.i, align 8, !dbg !4913, !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !4907, !noalias !4256
    #dbg_value(i64 %i.lx, !4099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3993)
    #dbg_value(ptr %i.ma, !4099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3993)
    #dbg_value(i64 %.sroa.5182.0.copyload.i, !4099, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3993)
  store i64 %i.lx, ptr %i.t, align 8, !dbg !4914, !noalias !4256
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !4914
  store ptr %i.ma, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !4914, !noalias !4256
  %.sroa.5.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !4914
  store i64 %.sroa.5182.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i57, align 8, !dbg !4914, !noalias !4256
  br label %bb.eg, !dbg !4907

bb.eg:                                            ; preds = %bb.ef, %bb.eb
  %.sroa.0163.4.i = phi i8 [ 0, %bb.eb ], [ 1, %bb.ef ], !dbg !4729 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !4582, !noalias !4256
  %i.mb = load i64, ptr %i.ac, align 8, !dbg !4582, !range !936, !noalias !4256, !noundef !594
  %.not274.i = icmp eq i64 %i.mb, -1, !dbg !4582
  br i1 %.not274.i, label %bb.ej, label %bb.ei, !dbg !4582

bb.eh:                                            ; preds = %bb.eq, %bb.ee
  %.sroa.20.1 = phi ptr [ %i.ma, %bb.ee ], [ %.sroa.20.0, %bb.eq ], !dbg !4915
  %.sroa.0157.4.i = phi i8 [ 1, %bb.ee ], [ %.sroa.0157.7.i, %bb.eq ], !dbg !4732
  %.sroa.0159.4.i = phi i8 [ 1, %bb.ee ], [ %.sroa.0159.7.i, %bb.eq ], !dbg !4731
  %.sroa.0161.4.i = phi i8 [ 1, %bb.ee ], [ %.sroa.0161.8.i, %bb.eq ], !dbg !4730
  %.sroa.0163.5.i = phi i8 [ 1, %bb.ee ], [ %.sroa.0163.4.i, %bb.eq ], !dbg !4729
    #dbg_value(i64 -1, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
    #dbg_value(ptr %.sroa.20.1, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !4907, !noalias !4256
  br label %.loopexit, !dbg !4912

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !dbg !4582, !noalias !4256
  br label %bb.ep, !dbg !4916

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !4582, !noalias !4256
    #dbg_value(ptr @2, !4305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3994)
    #dbg_value(ptr @2, !4312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr @2, !4310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(i64 20, !4305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3994)
    #dbg_value(i64 20, !4312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 20, !4310, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
  invoke void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 20)
          to label %bb.em unwind label %bb.el, !dbg !4917, !noalias !4368

bb.ek:                                            ; preds = %bb.fh, %bb.el
  %.sroa.0157.5.i = phi i8 [ %.sroa.0157.6.i, %bb.el ], [ %.sroa.0157.8.i, %bb.fh ], !dbg !4918
  %.sroa.0159.5.i = phi i8 [ %.sroa.0159.6.i, %bb.el ], [ %.sroa.0159.8.i, %bb.fh ], !dbg !4919
  %.sroa.0161.5.i = phi i8 [ %.sroa.0161.6.i, %bb.el ], [ %.sroa.0161.7.i, %bb.fh ], !dbg !4582
  %.pn281.i = phi { ptr, i32 } [ %i.mc, %bb.el ], [ %.pn279.i, %bb.fh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #14
          to label %bb.bx unwind label %bb.fk, !dbg !4907, !noalias !4368

bb.el:                                            ; preds = %bb.fj, %bb.ej
  %.sroa.0157.6.i = phi i8 [ %.sroa.0157.8.i, %bb.fj ], [ 1, %bb.ej ], !dbg !4732
  %.sroa.0159.6.i = phi i8 [ %.sroa.0159.8.i, %bb.fj ], [ 1, %bb.ej ], !dbg !4731
  %.sroa.0161.6.i = phi i8 [ %.sroa.0161.7.i, %bb.fj ], [ 1, %bb.ej ], !dbg !4730
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.em:                                            ; preds = %bb.ej
  %i.md = load i64, ptr %i.q, align 8, !dbg !4920, !range !936, !noalias !4256, !noundef !594 ; 2 uses
  %i.me = icmp eq i64 %i.md, -1, !dbg !4920
  %i.mf = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !4921
  %i.mg = load ptr, ptr %i.mf, align 8, !dbg !4921, !noalias !4256 ; 2 uses
  br i1 %i.me, label %bb.en, label %bb.eo, !dbg !4922

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !4916, !noalias !4256
    #dbg_value(ptr %i.mg, !4486, !DIExpression(), !3998)
    #dbg_value(ptr %i.mg, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
    #dbg_value(i64 -1, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
  br label %bb.eq, !dbg !4923

bb.eo:                                            ; preds = %bb.em
  %.sroa.5185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !4924
  %.sroa.5185.0.copyload.i = load i64, ptr %.sroa.5185.0..sroa_idx.i, align 8, !dbg !4924, !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !4916, !noalias !4256
    #dbg_value(i64 %i.md, !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3999)
    #dbg_value(ptr %i.mg, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3999)
    #dbg_value(i64 %.sroa.5185.0.copyload.i, !4103, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3999)
  store i64 %i.md, ptr %i.r, align 8, !dbg !4925, !noalias !4256
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !4925
  store ptr %i.mg, ptr %.sroa.4134.0..sroa_idx.i, align 8, !dbg !4925, !noalias !4256
  %.sroa.5135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !4925
  store i64 %.sroa.5185.0.copyload.i, ptr %.sroa.5135.0..sroa_idx.i, align 8, !dbg !4925, !noalias !4256
  br label %bb.ep, !dbg !4916

bb.ep:                                            ; preds = %bb.eo, %bb.ei
  %.sroa.0161.7.i = phi i8 [ 0, %bb.ei ], [ 1, %bb.eo ], !dbg !4730 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !4919, !noalias !4256
  %i.mh = load i64, ptr %i.ab, align 8, !dbg !4919, !range !1042, !noalias !4256, !noundef !594
  %.not275.i = icmp eq i64 %i.mh, -2, !dbg !4919
  br i1 %.not275.i, label %bb.es, label %bb.er, !dbg !4919

bb.eq:                                            ; preds = %bb.fj, %bb.en
  %.sroa.20.0 = phi ptr [ %i.mg, %bb.en ], [ %i.mo, %bb.fj ], !dbg !4926
  %.sroa.0157.7.i = phi i8 [ 1, %bb.en ], [ %.sroa.0157.8.i, %bb.fj ], !dbg !4732 ; 2 uses
  %.sroa.0159.7.i = phi i8 [ 1, %bb.en ], [ %.sroa.0159.8.i, %bb.fj ], !dbg !4731 ; 2 uses
  %.sroa.0161.8.i = phi i8 [ 1, %bb.en ], [ %.sroa.0161.7.i, %bb.fj ], !dbg !4730 ; 2 uses
    #dbg_value(i64 -1, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
    #dbg_value(ptr %.sroa.20.0, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !4916, !noalias !4256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.eh unwind label %.loopexit.split-lp.i, !dbg !4907, !noalias !4368

bb.er:                                            ; preds = %bb.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !4919, !noalias !4256
  br label %bb.et, !dbg !4927

bb.es:                                            ; preds = %bb.ep
    #dbg_value(i64 -1, !4269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4001)
    #dbg_value(i64 -1, !4107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4002)
  store i64 -1, ptr %i.p, align 8, !dbg !4928, !noalias !4256
  br label %bb.et, !dbg !4927
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs1_1__NtB2v_7QlogSeqNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %i.ni = trunc nuw i8 %.sroa.0159.11.i to i1, !dbg !4940
  %or.cond15.i = select i1 %i.nh, i1 %i.ni, i1 false, !dbg !4940
  br i1 %or.cond15.i, label %bb.gg, label %.body370.i, !dbg !4940

bb.fs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i363.i
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.body364.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit373.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i369.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit367.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !4940, !noalias !4256
  %i.nk = load i64, ptr %i.ac, align 8, !dbg !4941, !range !936, !noalias !4256, !noundef !594
  %i.nl = icmp ne i64 %i.nk, -1, !dbg !4941
  %i.nm = trunc nuw i8 %.sroa.0161.9.i to i1, !dbg !4941
  %or.cond7.i = select i1 %i.nl, i1 %i.nm, i1 false, !dbg !4941
  br i1 %or.cond7.i, label %bb.fx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55, !dbg !4941

bb.ft:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit367.i
    #dbg_value(ptr %i.ab, !1044, !DIExpression(), !4024)
    #dbg_value(ptr %i.ab, !1003, !DIExpression(), !4026)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i369.i unwind label %bb.fu, !dbg !4946, !noalias !4368

bb.fu:                                            ; preds = %bb.ft
  %i.nn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ab, !1010, !DIExpression(), !4028)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body370.i unwind label %bb.fv, !dbg !4947, !noalias !4368

bb.fv:                                            ; preds = %bb.fu
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !4946, !noalias !4368
  unreachable, !dbg !4946

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i369.i: ; preds = %bb.ft
    #dbg_value(ptr %i.ab, !1010, !DIExpression(), !4030)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit373.i unwind label %bb.fw, !dbg !4948, !noalias !4368

.body370.i:                                       ; preds = %bb.gg, %bb.fw, %bb.fu, %.body364.i
  %.sroa.0161.12.i = phi i8 [ %.sroa.0161.11.i, %.body364.i ], [ %.sroa.0161.11.i, %bb.gg ], [ %.sroa.0161.9.i, %bb.fu ], [ %.sroa.0161.9.i, %bb.fw ], !dbg !4730
  %.sroa.0163.9.i = phi i8 [ %.sroa.0163.8.i, %.body364.i ], [ %.sroa.0163.8.i, %bb.gg ], [ %.sroa.0163.6.i, %bb.fu ], [ %.sroa.0163.6.i, %bb.fw ], !dbg !4729 ; 2 uses
  %.pn297.i = phi { ptr, i32 } [ %.pn295.i, %.body364.i ], [ %.pn295.i, %bb.gg ], [ %i.nn, %bb.fu ], [ %i.ns, %bb.fw ] ; 2 uses
  %i.np = load i64, ptr %i.ac, align 8, !dbg !4941, !range !936, !noalias !4256, !noundef !594
  %i.nq = icmp ne i64 %i.np, -1, !dbg !4941
  %i.nr = trunc nuw i8 %.sroa.0161.12.i to i1, !dbg !4941
  %or.cond17.i = select i1 %i.nq, i1 %i.nr, i1 false, !dbg !4941
  br i1 %or.cond17.i, label %bb.gh, label %.body374.i, !dbg !4941

bb.fw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i369.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body370.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i56, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit373.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !4941, !noalias !4256
  %i.nt = load i64, ptr %i.ad, align 8, !dbg !4942, !range !936, !noalias !4256, !noundef !594
  %i.nu = icmp ne i64 %i.nt, -1, !dbg !4942
  %i.nv = trunc nuw i8 %.sroa.0163.6.i to i1, !dbg !4942
  %or.cond9.i = select i1 %i.nu, i1 %i.nv, i1 false, !dbg !4942
  br i1 %or.cond9.i, label %bb.gb, label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs1_1__NtBb_7QlogSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBP_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2s_4read9SliceReadEEBb_.exit, !dbg !4942

bb.fx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit373.i
    #dbg_value(ptr %i.ac, !1044, !DIExpression(), !4032)
    #dbg_value(ptr %i.ac, !1003, !DIExpression(), !4034)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i56 unwind label %bb.fy, !dbg !4949, !noalias !4368

bb.fy:                                            ; preds = %bb.fx
  %i.nw = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ac, !1010, !DIExpression(), !4036)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body374.i unwind label %bb.fz, !dbg !4950, !noalias !4368

bb.fz:                                            ; preds = %bb.fy
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !4949, !noalias !4368
  unreachable, !dbg !4949

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i56: ; preds = %bb.fx
    #dbg_value(ptr %i.ac, !1010, !DIExpression(), !4038)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55 unwind label %bb.ga, !dbg !4951, !noalias !4368

.body374.i:                                       ; preds = %bb.gh, %bb.ga, %bb.fy, %.body370.i
  %.sroa.0163.10.i = phi i8 [ %.sroa.0163.9.i, %.body370.i ], [ %.sroa.0163.9.i, %bb.gh ], [ %.sroa.0163.6.i, %bb.fy ], [ %.sroa.0163.6.i, %bb.ga ], !dbg !4729
  %.pn299.i = phi { ptr, i32 } [ %.pn297.i, %.body370.i ], [ %.pn297.i, %bb.gh ], [ %i.nw, %bb.fy ], [ %i.ob, %bb.ga ] ; 2 uses
  %i.ny = load i64, ptr %i.ad, align 8, !dbg !4942, !range !936, !noalias !4256, !noundef !594
  %i.nz = icmp ne i64 %i.ny, -1, !dbg !4942
  %i.oa = trunc nuw i8 %.sroa.0163.10.i to i1, !dbg !4942
  %or.cond19.i = select i1 %i.nz, i1 %i.oa, i1 false, !dbg !4942
  br i1 %or.cond19.i, label %bb.gi, label %common.resume, !dbg !4942

bb.ga:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i56
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body374.i

bb.gb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55
    #dbg_value(ptr %i.ad, !1044, !DIExpression(), !4040)
    #dbg_value(ptr %i.ad, !1003, !DIExpression(), !4042)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i unwind label %bb.gc, !dbg !4952, !noalias !4368

bb.gc:                                            ; preds = %bb.gb
  %i.oc = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ad, !1010, !DIExpression(), !4044)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.gd, !dbg !4953, !noalias !4368

bb.gd:                                            ; preds = %bb.gc
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !4952, !noalias !4368
  unreachable, !dbg !4952

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i: ; preds = %bb.gb
    #dbg_value(ptr %i.ad, !1010, !DIExpression(), !4046)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad), !dbg !4954, !noalias !4368
  br label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs1_1__NtBb_7QlogSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBP_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2s_4read9SliceReadEEBb_.exit, !dbg !4942

bb.ge:                                            ; preds = %.thread.i, %bb.bx
  %.pn289391.i = phi { ptr, i32 } [ %i.lw, %.thread.i ], [ %.pn289.ph.i, %bb.bx ]
  %.sroa.0163.1390.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0163.1.ph.i, %bb.bx ]
  %.sroa.0161.1389.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0161.1.ph.i, %bb.bx ]
  %.sroa.0159.1388.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0159.1.ph.i, %bb.bx ]
  %.sroa.0157.1387.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0157.1.ph.i, %bb.bx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog8TraceSeqEBD_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.z) #14
          to label %bb.fn unwind label %bb.fk, !dbg !4769, !noalias !4368

bb.gf:                                            ; preds = %bb.fn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #14
          to label %.body364.i unwind label %bb.fk, !dbg !4939, !noalias !4368

bb.gg:                                            ; preds = %.body364.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #14
          to label %.body370.i unwind label %bb.fk, !dbg !4940, !noalias !4368

bb.gh:                                            ; preds = %.body370.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #14
          to label %.body374.i unwind label %bb.fk, !dbg !4941, !noalias !4368

bb.gi:                                            ; preds = %.body374.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #14
          to label %common.resume unwind label %bb.fk, !dbg !4942, !noalias !4368

_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs1_1__NtBb_7QlogSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBP_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2s_4read9SliceReadEEBb_.exit: ; preds = %bb.fd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i
  %.sroa.35.sroa.0.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55 ], [ %i.mp, %bb.fd ], !dbg !4955
  %.sroa.3569.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55 ], [ %.sroa.0143.0.i, %bb.fd ], !dbg !4955
  %.sroa.20.3 = phi ptr [ %.sroa.20.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i ], [ %.sroa.20.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55 ], [ %.sroa.0150.i.sroa.4.0.copyload, %bb.fd ], !dbg !4580
  %.sroa.066.3 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55 ], [ %.sroa.0150.i.sroa.0.0.copyload, %bb.fd ], !dbg !4580
  %.sroa.36.0 = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit379.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i55 ], [ %.sroa.3145.0.i, %bb.fd ], !dbg !4955
    #dbg_value(i64 %.sroa.35.sroa.0.0, !4063, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4504)
    #dbg_value(ptr %.sroa.36.0, !4063, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !4504)
    #dbg_value(i64 %.sroa.066.3, !4063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4504)
    #dbg_value(ptr %.sroa.20.3, !4063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4504)
    #dbg_value(i64 %.sroa.3569.0, !4063, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4504)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !4942, !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !4956
  %i.oe = load i8, ptr %i.bs, align 8, !dbg !4957, !noundef !594
  %i.of = add i8 %i.oe, 1, !dbg !4957
  store i8 %i.of, ptr %i.bs, align 8, !dbg !4957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !4958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !4959
  store i64 %.sroa.066.3, ptr %i.au, align 8, !dbg !4959
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !4959
  store ptr %.sroa.20.3, ptr %.sroa.20.0..sroa_idx, align 8, !dbg !4959
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !4959
  store i64 %.sroa.35.sroa.0.0, ptr %.sroa.35.0..sroa_idx, align 8, !dbg !4959
  %.sroa.35.sroa.6.0..sroa.35.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !4959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.35.sroa.6.0..sroa.35.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.35.sroa.6, i64 24, i1 false), !dbg !4959
  %.sroa.3569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48, !dbg !4959
  store i64 %.sroa.3569.0, ptr %.sroa.3569.0..sroa_idx, align 8, !dbg !4959
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56, !dbg !4959
  store ptr %.sroa.36.0, ptr %.sroa.36.0..sroa_idx, align 8, !dbg !4959
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64, !dbg !4959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.37.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.4148.i, i64 240, i1 false), !dbg !4959
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 304, !dbg !4959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.38.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.38, i64 24, i1 false), !dbg !4959
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 328, !dbg !4959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, i64 24, i1 false), !dbg !4959
  %i.og = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.gk unwind label %bb.gj, !dbg !4960 ; 5 uses

bb.gj:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs1_1__NtBb_7QlogSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBP_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2s_4read9SliceReadEEBb_.exit
  %i.oh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3JBf551F2Kj_4qlog7QlogSeqNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(352) %i.au) #14
          to label %common.resume unwind label %bb.bi, !dbg !4961

bb.gk:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs1_1__NtBb_7QlogSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBP_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2s_4read9SliceReadEEBb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.av, ptr noundef nonnull align 8 dereferenceable(352) %i.au, i64 352, i1 false), !dbg !4958
  %i.oi = getelementptr inbounds nuw i8, ptr %i.av, i64 352, !dbg !4958
  store ptr %i.og, ptr %i.oi, align 8, !dbg !4958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !4961
  %i.oj = load i64, ptr %i.av, align 8, !dbg !4958, !range !936, !noundef !594 ; 2 uses
  %i.ok = icmp eq i64 %i.oj, -1, !dbg !4958
  br i1 %i.ok, label %bb.gm, label %bb.gl, !dbg !4962

bb.gl:                                            ; preds = %bb.gk
  %.not = icmp eq ptr %i.og, null, !dbg !4958
  br i1 %.not, label %.thread372, label %bb.gn, !dbg !4962

.thread372:                                       ; preds = %bb.gl
    #dbg_value(i64 %i.oj, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4587)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !4963
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !4963
    #dbg_value(ptr %.sroa.421.0.copyload, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4587)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !4963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.522.0..sroa_idx, i64 336, i1 false), !dbg !4963
    #dbg_value(i64 %i.oj, !4059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4182)
    #dbg_value(ptr %.sroa.421.0.copyload, !4059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35.sroa.6), !dbg !4964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38), !dbg !4964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39), !dbg !4964
    #dbg_value(i64 %i.oj, !4059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4182)
    #dbg_value(ptr %.sroa.421.0.copyload, !4059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
  br label %.thread91, !dbg !4964

bb.gm:                                            ; preds = %bb.gk
  %i.ol = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !4965
  %i.om = load ptr, ptr %i.ol, align 8, !dbg !4965, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(ptr %i.om, !4059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
    #dbg_value(i64 -1, !4059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4182)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35.sroa.6), !dbg !4964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38), !dbg !4964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39), !dbg !4964
    #dbg_value(i64 %i.oj, !4059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4182)
    #dbg_value(ptr %i.om, !4059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
  %.not98 = icmp eq ptr %i.og, null, !dbg !4964
  br i1 %.not98, label %.thread91, label %bb.go, !dbg !4964

bb.gn:                                            ; preds = %bb.gl
    #dbg_value(ptr %i.og, !4059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
    #dbg_value(i64 -1, !4059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4182)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35.sroa.6), !dbg !4964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38), !dbg !4964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39), !dbg !4964
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog7QlogSeqEBD_(ptr noalias nofree noundef align 8 dereferenceable(352) %i.av), !dbg !4964
  br label %.thread91, !dbg !4964

.thread91:                                        ; preds = %.thread372, %bb.gn, %bb.go, %bb.gm
  %.sroa.09.297 = phi i64 [ -1, %bb.gm ], [ -1, %bb.go ], [ -1, %bb.gn ], [ %i.oj, %.thread372 ]
  %.sroa.10.296 = phi ptr [ %i.om, %bb.gm ], [ %i.om, %bb.go ], [ %i.og, %bb.gn ], [ %.sroa.421.0.copyload, %.thread372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !4964
  br label %bb.bk, !dbg !4964

bb.go:                                            ; preds = %bb.gm
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.og), !dbg !4964
  br label %.thread91, !dbg !4964

bb.gp:                                            ; preds = %bb.d, %bb.bk
  %.sroa.10.3 = phi ptr [ %i.bn, %bb.d ], [ %.sroa.10.1, %bb.bk ], !dbg !4180
    #dbg_value(ptr %.sroa.10.3, !4059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4182)
    #dbg_value(ptr %.sroa.10.3, !4067, !DIExpression(), !4588)
    #dbg_value(ptr %1, !1432, !DIExpression(), !4048)
    #dbg_value(ptr %.sroa.10.3, !1436, !DIExpression(), !4048)
  %i.on = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs3JBf551F2Kj_4qlog(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !4966
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4967
  store ptr %i.on, ptr %i.oo, align 8, !dbg !4967
  store i64 -1, ptr %0, align 8, !dbg !4967
  br label %bb.gr, !dbg !4968

bb.gq:                                            ; preds = %bb.bk
    #dbg_value(i64 %.sroa.09.1, !4066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4589)
    #dbg_value(ptr %.sroa.10.1, !4066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4589)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.14, i64 336, i1 false), !dbg !4970
  store i64 %.sroa.09.1, ptr %0, align 8, !dbg !4969
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4969
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !4969
  br label %bb.gr, !dbg !4971

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !4719
  br label %bb.gs, !dbg !4972

bb.gs:                                            ; preds = %bb.gr, %.loopexit105, %bb.bc
  ret void, !dbg !4973
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs5_1__NtB2v_8TraceSeqNtB1l_11Deserialize11deserialize9___VisitorEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4987 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [152 x i8], align 8               ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.790.i = alloca [16 x i8], align 8        ; 6 uses
  %i.u = alloca [152 x i8], align 8               ; 7 uses
  %.sroa.773.i = alloca [136 x i8], align 8       ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 20 uses
  %i.y = alloca [32 x i8], align 8                ; 21 uses
  %i.z = alloca [152 x i8], align 8               ; 17 uses
  %i.aa = alloca [24 x i8], align 8               ; 21 uses
  %i.ab = alloca [24 x i8], align 8               ; 20 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [152 x i8], align 8              ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !5875, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !5018)
    #dbg_declare(ptr poison, !5915, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !5031)
  %i.an = alloca [32 x i8], align 8               ; 12 uses
    #dbg_declare(ptr poison, !5891, !DIExpression(DW_OP_LLVM_fragment, 128, 1088), !5032)
    #dbg_declare(ptr poison, !5944, !DIExpression(DW_OP_LLVM_fragment, 128, 1088), !5045)
  %i.ao = alloca [152 x i8], align 8              ; 11 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 11 uses
  %i.ar = alloca [16 x i8], align 8               ; 14 uses
    #dbg_declare(ptr poison, !5871, !DIExpression(DW_OP_LLVM_fragment, 128, 1920), !5973)
    #dbg_declare(ptr poison, !5869, !DIExpression(DW_OP_LLVM_fragment, 128, 1920), !5974)
  %i.as = alloca [256 x i8], align 8              ; 11 uses
  %i.at = alloca [264 x i8], align 8              ; 9 uses
  %.sroa.33 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.34 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.35 = alloca [152 x i8], align 8          ; 6 uses
  %.sroa.36 = alloca [32 x i8], align 8           ; 6 uses
    #dbg_declare(ptr %.sroa.33, !5868, !DIExpression(DW_OP_LLVM_fragment, 192, 192), !5975)
    #dbg_declare(ptr %.sroa.34, !5868, !DIExpression(DW_OP_LLVM_fragment, 384, 192), !5975)
    #dbg_declare(ptr %.sroa.35, !5868, !DIExpression(DW_OP_LLVM_fragment, 576, 1216), !5975)
    #dbg_declare(ptr %.sroa.36, !5868, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !5975)
  %i.au = alloca [24 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !5866, !DIExpression(DW_OP_LLVM_fragment, 128, 1920), !5979)
  %i.av = alloca [256 x i8], align 8              ; 11 uses
  %i.aw = alloca [264 x i8], align 8              ; 9 uses
  %.sroa.17 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.18 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.19 = alloca [152 x i8], align 8          ; 6 uses
  %.sroa.20 = alloca [32 x i8], align 8           ; 6 uses
    #dbg_declare(ptr %.sroa.17, !5865, !DIExpression(DW_OP_LLVM_fragment, 192, 192), !5980)
    #dbg_declare(ptr %.sroa.18, !5865, !DIExpression(DW_OP_LLVM_fragment, 384, 192), !5980)
    #dbg_declare(ptr %.sroa.19, !5865, !DIExpression(DW_OP_LLVM_fragment, 576, 1216), !5980)
    #dbg_declare(ptr %.sroa.20, !5865, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !5980)
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [240 x i8], align 8          ; 6 uses
    #dbg_declare(ptr %.sroa.14, !5864, !DIExpression(DW_OP_LLVM_fragment, 128, 1920), !5981)
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
    #dbg_value(ptr %1, !5856, !DIExpression(), !5982)
    #dbg_value(ptr %1, !5983, !DIExpression(), !5986)
    #dbg_value(ptr %1, !5983, !DIExpression(), !5988)
    #dbg_value(ptr %2, !5857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5982)
    #dbg_value(i64 %3, !5857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5982)
    #dbg_value(ptr %4, !5858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5982)
    #dbg_value(i64 %5, !5858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5982)
    #dbg_declare(ptr %i.a, !5859, !DIExpression(), !5989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5990), !dbg !6554
    #dbg_value(ptr %1, !957, !DIExpression(), !5050)
    #dbg_value(ptr %1, !976, !DIExpression(), !5052)
    #dbg_value(ptr %1, !979, !DIExpression(), !5054)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5991, !noundef !594 ; 2 uses
  %.promoted.i = load i64, ptr %i.az, align 8, !alias.scope !5990 ; 2 uses
  %i.bc = icmp ult i64 %.promoted.i, %i.bb, !dbg !6555
  br i1 %i.bc, label %.lr.ph.i, label %.loopexit105, !dbg !6555

.lr.ph.i:                                         ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !5991, !nonnull !594, !noundef !594
  br label %bb.b, !dbg !6555

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bf = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bi, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5992), !dbg !6556
    #dbg_value(ptr %i.bd, !989, !DIExpression(), !5058)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf, !dbg !6557
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !6557, !noalias !5993, !noundef !594 ; 2 uses
  switch i8 %i.bh, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !6558

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5062)
  %i.bi = add i64 %i.bf, 1, !dbg !6559            ; 3 uses
  store i64 %i.bi, ptr %i.az, align 8, !dbg !6559, !alias.scope !5994
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5058)
  %exitcond.not.i = icmp eq i64 %i.bi, %i.bb, !dbg !6555
  br i1 %exitcond.not.i, label %.loopexit105, label %bb.b, !dbg !6555

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit: ; preds = %bb.b
    #dbg_value(i8 %i.bh, !5860, !DIExpression(), !5995)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14), !dbg !6560
  switch i8 %i.bh, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !dbg !6561, !prof !1502

.loopexit105:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !6562
  store i64 5, ptr %i.ay, align 8, !dbg !6562
  %i.bj = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay), !dbg !6563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !6564
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6565
  store ptr %i.bj, ptr %i.bk, align 8, !dbg !6565
  store i64 -1, ptr %0, align 8, !dbg !6566
  br label %bb.gn, !dbg !6567

bb.d:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37), !dbg !6568
    #dbg_value(ptr %i.bl, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
    #dbg_value(i64 -1, !5864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
  br label %bb.gk, !dbg !6569

bb.e:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !6570 ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 8, !dbg !6570, !noundef !594
  %i.bo = add i8 %i.bn, -1, !dbg !6570            ; 2 uses
  store i8 %i.bo, ptr %i.bm, align 8, !dbg !6570
  %i.bp = icmp eq i8 %i.bo, 0, !dbg !6571
  br i1 %i.bp, label %bb.g, label %bb.h, !dbg !6571, !prof !1429

bb.f:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !6570 ; 4 uses
  %i.br = load i8, ptr %i.bq, align 8, !dbg !6570, !noundef !594
  %i.bs = add i8 %i.br, -1, !dbg !6570            ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs5_1__NtB2v_8TraceSeqNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %i.kk = icmp ult i64 %.promoted.i.i.i.i328.i, %i.kj, !dbg !6824
  br i1 %i.kk, label %.lr.ph.i.i.i.i331.i, label %.loopexit.i.i.i329.i, !dbg !6824

.lr.ph.i.i.i.i331.i:                              ; preds = %bb.di
  %i.kl = load ptr, ptr %i.gc, align 8, !alias.scope !6499, !noalias !6500, !nonnull !594, !noundef !594
  br label %bb.dj, !dbg !6824

bb.dj:                                            ; preds = %bb.dk, %.lr.ph.i.i.i.i331.i
  %i.km = phi i64 [ %.promoted.i.i.i.i328.i, %.lr.ph.i.i.i.i331.i ], [ %i.kp, %bb.dk ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6502), !dbg !6825
    #dbg_value(ptr %i.gc, !989, !DIExpression(), !5696)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km, !dbg !6826
  %i.ko = load i8, ptr %i.kn, align 1, !dbg !6826, !noalias !6503, !noundef !594
  switch i8 %i.ko, label %bb.dl [
    i8 32, label %bb.dk
    i8 10, label %bb.dk
    i8 9, label %bb.dk
    i8 13, label %bb.dk
    i8 58, label %bb.dm
  ], !dbg !6827, !prof !1428

bb.dk:                                            ; preds = %bb.dj, %bb.dj, %bb.dj, %bb.dj
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5700)
  %i.kp = add i64 %i.km, 1, !dbg !6828            ; 3 uses
  store i64 %i.kp, ptr %i.gd, align 8, !dbg !6828, !alias.scope !6504, !noalias !6500
    #dbg_value(ptr %i.gb, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5696)
  %exitcond.not.i.i.i.i332.i = icmp eq i64 %i.kp, %i.kj, !dbg !6824
  br i1 %exitcond.not.i.i.i.i332.i, label %.loopexit.i.i.i329.i, label %bb.dj, !dbg !6824

.loopexit.i.i.i329.i:                             ; preds = %bb.di, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6829, !noalias !6505
  store i64 3, ptr %i.d, align 8, !dbg !6829, !noalias !6505
  %i.kq = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc333.i unwind label %.loopexit.split-lp.i, !dbg !6830, !noalias !6311

.noexc333.i:                                      ; preds = %.loopexit.i.i.i329.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6831, !noalias !6505
  br label %.loopexit412.i, !dbg !6832

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6833, !noalias !6505
  store i64 6, ptr %i.e, align 8, !dbg !6833, !noalias !6505
  %i.kr = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc334.i unwind label %.loopexit.split-lp.i, !dbg !6834, !noalias !6311

.noexc334.i:                                      ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6835, !noalias !6505
  br label %.loopexit412.i, !dbg !6836

bb.dm:                                            ; preds = %bb.dj
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5704)
  %i.ks = add i64 %i.km, 1, !dbg !6837
  store i64 %i.ks, ptr %i.gd, align 8, !dbg !6837, !alias.scope !6506, !noalias !6500
    #dbg_declare(ptr poison, !6075, !DIExpression(), !5708)
    #dbg_value(ptr %i.gb, !6089, !DIExpression(), !5709)
    #dbg_declare(ptr poison, !6088, !DIExpression(), !5708)
  invoke void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2w_4read9SliceReadEEB1n_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.gb)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEB2F_.exit.i unwind label %.loopexit.i49, !dbg !6838, !noalias !6311

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEB2F_.exit.i: ; preds = %bb.dm
  %.pr403.i = load i64, ptr %i.t, align 8, !dbg !6839, !noalias !6134 ; 3 uses
  %i.kt = icmp eq i64 %.pr403.i, -3, !dbg !6839
  %.pre628.i = load ptr, ptr %.sroa.4154.0..sroa_idx.i, align 8, !dbg !6840, !noalias !6134 ; 3 uses
  br i1 %i.kt, label %.loopexit412.i, label %bb.dn, !dbg !6841

.loopexit412.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEB2F_.exit.i, %.noexc334.i, %.noexc333.i
  %i.ku = phi ptr [ %i.kr, %.noexc334.i ], [ %i.kq, %.noexc333.i ], [ %.pre628.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEB2F_.exit.i ], !dbg !6842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !6743, !noalias !6134
    #dbg_value(ptr %i.ku, !5868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 -1, !5868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.790.i), !dbg !6818
  br label %.loopexit, !dbg !6765

bb.dn:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEB2F_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.790.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5155.0..sroa_idx.i, i64 16, i1 false), !dbg !6843, !noalias !6134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !6743, !noalias !6134
    #dbg_value(ptr %i.y, !6508, !DIExpression(), !5712)
  %i.kv = load i64, ptr %i.y, align 8, !dbg !6844, !range !6092, !alias.scope !6513, !noalias !6134, !noundef !594
    #dbg_value(ptr %i.y, !1038, !DIExpression(), !5716)
  %i.kw = icmp ugt i64 %i.kv, -4, !dbg !6844
  br i1 %i.kw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtCs3JBf551F2Kj_4qlog12VantagePointEEEB13_.exit.i, label %bb.do, !dbg !6844

bb.do:                                            ; preds = %bb.dn
    #dbg_value(ptr %i.y, !1044, !DIExpression(), !5720)
    #dbg_value(ptr %i.y, !1003, !DIExpression(), !5722)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i.i.i unwind label %bb.dp, !dbg !6845, !noalias !6311

bb.dp:                                            ; preds = %bb.do
  %i.kx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.y, !1010, !DIExpression(), !5724)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body336.i unwind label %bb.dq, !dbg !6846, !noalias !6311

bb.dq:                                            ; preds = %bb.dp
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !6845, !noalias !6311
  unreachable, !dbg !6845

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i.i.i: ; preds = %bb.do
    #dbg_value(ptr %i.y, !1010, !DIExpression(), !5726)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtCs3JBf551F2Kj_4qlog12VantagePointEEEB13_.exit.i unwind label %bb.dr, !dbg !6847, !noalias !6311

bb.dr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i.i.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %.body336.i, !dbg !6702

.body336.i:                                       ; preds = %bb.dr, %bb.dp
  %eh.lpad-body337.i = phi { ptr, i32 } [ %i.kz, %bb.dr ], [ %i.kx, %bb.dp ]
  store i64 %.pr403.i, ptr %i.y, align 8, !dbg !6702, !noalias !6134
  store ptr %.pre628.i, ptr %.sroa.687.0..sroa_idx88.i, align 8, !dbg !6702, !noalias !6134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.790.0..sroa_idx91.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.790.i, i64 16, i1 false), !dbg !6702, !noalias !6134
  br label %bb.by, !dbg !6702

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtCs3JBf551F2Kj_4qlog12VantagePointEEEB13_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, %bb.dn
  store i64 %.pr403.i, ptr %i.y, align 8, !dbg !6702, !noalias !6134
  store ptr %.pre628.i, ptr %.sroa.687.0..sroa_idx88.i, align 8, !dbg !6702, !noalias !6134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.790.0..sroa_idx91.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.790.i, i64 16, i1 false), !dbg !6702, !noalias !6134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.790.i), !dbg !6818
  br label %.backedge, !dbg !6702

bb.ds:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !6702, !noalias !6134
    #dbg_value(ptr poison, !6514, !DIExpression(), !5729)
    #dbg_value(ptr poison, !6519, !DIExpression(), !5734)
    #dbg_declare(ptr poison, !6522, !DIExpression(), !5735)
  call void @llvm.experimental.noalias.scope.decl(metadata !6528), !dbg !6848
    #dbg_value(ptr %i.gb, !1707, !DIExpression(), !5739)
    #dbg_value(ptr %i.gb, !1712, !DIExpression(), !5741)
  call void @llvm.experimental.noalias.scope.decl(metadata !6529), !dbg !6849
    #dbg_value(ptr %i.gb, !957, !DIExpression(), !5745)
    #dbg_value(ptr %i.gb, !976, !DIExpression(), !5747)
    #dbg_value(ptr %i.gb, !979, !DIExpression(), !5749)
  %i.la = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !6530, !noalias !6531, !noundef !594 ; 2 uses
  %.promoted.i.i.i.i339.i = load i64, ptr %i.gd, align 8, !alias.scope !6532, !noalias !6531 ; 2 uses
  %i.lc = icmp ult i64 %.promoted.i.i.i.i339.i, %i.lb, !dbg !6850
  br i1 %i.lc, label %.lr.ph.i.i.i.i342.i, label %.loopexit.i.i.i340.i, !dbg !6850

.lr.ph.i.i.i.i342.i:                              ; preds = %bb.ds
  %i.ld = load ptr, ptr %i.gc, align 8, !alias.scope !6530, !noalias !6531, !nonnull !594, !noundef !594
  br label %bb.dt, !dbg !6850

bb.dt:                                            ; preds = %bb.du, %.lr.ph.i.i.i.i342.i
  %i.le = phi i64 [ %.promoted.i.i.i.i339.i, %.lr.ph.i.i.i.i342.i ], [ %i.lh, %bb.du ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6533), !dbg !6851
    #dbg_value(ptr %i.gc, !989, !DIExpression(), !5757)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le, !dbg !6852
  %i.lg = load i8, ptr %i.lf, align 1, !dbg !6852, !noalias !6534, !noundef !594
  switch i8 %i.lg, label %bb.dv [
    i8 32, label %bb.du
    i8 10, label %bb.du
    i8 9, label %bb.du
    i8 13, label %bb.du
    i8 58, label %bb.dw
  ], !dbg !6853, !prof !1428

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5761)
  %i.lh = add i64 %i.le, 1, !dbg !6854            ; 3 uses
  store i64 %i.lh, ptr %i.gd, align 8, !dbg !6854, !alias.scope !6535, !noalias !6531
    #dbg_value(ptr %i.gb, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5757)
  %exitcond.not.i.i.i.i343.i = icmp eq i64 %i.lh, %i.lb, !dbg !6850
  br i1 %exitcond.not.i.i.i.i343.i, label %.loopexit.i.i.i340.i, label %bb.dt, !dbg !6850

.loopexit.i.i.i340.i:                             ; preds = %bb.ds, %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6855, !noalias !6536
  store i64 3, ptr %i.b, align 8, !dbg !6855, !noalias !6536
  %i.li = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc344.i unwind label %.loopexit.split-lp.i, !dbg !6856, !noalias !6311

.noexc344.i:                                      ; preds = %.loopexit.i.i.i340.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6857, !noalias !6536
  br label %.loopexit410.i, !dbg !6858

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6859, !noalias !6536
  store i64 6, ptr %i.c, align 8, !dbg !6859, !noalias !6536
  %i.lj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc345.i unwind label %.loopexit.split-lp.i, !dbg !6860, !noalias !6311

.noexc345.i:                                      ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6861, !noalias !6536
  br label %.loopexit410.i, !dbg !6862

bb.dw:                                            ; preds = %bb.dt
    #dbg_value(ptr %i.gb, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !5765)
  %i.lk = add i64 %i.le, 1, !dbg !6863
  store i64 %i.lk, ptr %i.gd, align 8, !dbg !6863, !alias.scope !6537, !noalias !6531
    #dbg_declare(ptr poison, !6117, !DIExpression(), !5769)
    #dbg_value(ptr %i.gb, !6121, !DIExpression(), !5770)
    #dbg_declare(ptr poison, !6120, !DIExpression(), !5769)
  invoke void @_RINvXsh_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2d_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.gb)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB26_6string6StringEECs3JBf551F2Kj_4qlog.exit.i unwind label %.loopexit.i49, !dbg !6864, !noalias !6311

.invoke:                                          ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %i.ll = phi ptr [ @8, %bb.ce ], [ @7, %bb.cd ], [ @6, %bb.cc ], [ @4, %bb.cb ], [ @3, %bb.ca ]
  %i.lm = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error15duplicate_fieldCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ll, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !dbg !6702, !noalias !6311

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB26_6string6StringEECs3JBf551F2Kj_4qlog.exit.i: ; preds = %bb.dw
  %.pr404.i = load i64, ptr %i.s, align 8, !dbg !6865, !noalias !6134 ; 3 uses
  %i.ln = icmp eq i64 %.pr404.i, -1, !dbg !6865
  %.pre.i = load ptr, ptr %.sroa.4157.0..sroa_idx.i, align 8, !dbg !6866, !noalias !6134 ; 3 uses
  br i1 %i.ln, label %.loopexit410.i, label %bb.dx, !dbg !6867

.loopexit410.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB26_6string6StringEECs3JBf551F2Kj_4qlog.exit.i, %.noexc345.i, %.noexc344.i
  %i.lo = phi ptr [ %i.lj, %.noexc345.i ], [ %i.li, %.noexc344.i ], [ %.pre.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB26_6string6StringEECs3JBf551F2Kj_4qlog.exit.i ], !dbg !6868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !6818, !noalias !6134
    #dbg_value(ptr %i.lo, !5868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 -1, !5868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
  br label %.loopexit, !dbg !6765

bb.dx:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB26_6string6StringEECs3JBf551F2Kj_4qlog.exit.i
  %.sroa.5158.0.copyload.i = load i64, ptr %.sroa.5158.0..sroa_idx.i, align 8, !dbg !6869, !noalias !6134 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !6818, !noalias !6134
    #dbg_value(ptr %i.x, !1019, !DIExpression(), !5772)
  %i.lp = load i64, ptr %i.x, align 8, !dbg !6870, !range !936, !alias.scope !6538, !noalias !6134, !noundef !594
  %i.lq = icmp eq i64 %i.lp, -1, !dbg !6870
  br i1 %i.lq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i, label %bb.dy, !dbg !6870

bb.dy:                                            ; preds = %bb.dx
    #dbg_value(ptr %i.x, !1024, !DIExpression(), !5776)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i unwind label %bb.dz, !dbg !6871, !noalias !6311

bb.dz:                                            ; preds = %bb.dy
  %i.lr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.x, !1029, !DIExpression(), !5778)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread.i unwind label %bb.ea, !dbg !6872, !noalias !6311

bb.ea:                                            ; preds = %bb.dz
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !6871, !noalias !6311
  unreachable, !dbg !6871

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i: ; preds = %bb.dy
    #dbg_value(ptr %i.x, !1029, !DIExpression(), !5780)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i unwind label %bb.eb, !dbg !6873, !noalias !6311

bb.eb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !6702

.thread.i:                                        ; preds = %bb.eb, %bb.dz
  %eh.lpad-body348.i = phi { ptr, i32 } [ %i.lt, %bb.eb ], [ %i.lr, %bb.dz ]
  store i64 %.pr404.i, ptr %i.x, align 8, !dbg !6702, !noalias !6134
  store ptr %.pre.i, ptr %.sroa.6105.0..sroa_idx106.i, align 8, !dbg !6702, !noalias !6134
  store i64 %.sroa.5158.0.copyload.i, ptr %.sroa.7108.0..sroa_idx109.i, align 8, !dbg !6702, !noalias !6134
  br label %bb.fz, !dbg !6737

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i, %bb.dx
  store i64 %.pr404.i, ptr %i.x, align 8, !dbg !6702, !noalias !6134
  store ptr %.pre.i, ptr %.sroa.6105.0..sroa_idx106.i, align 8, !dbg !6702, !noalias !6134
  store i64 %.sroa.5158.0.copyload.i, ptr %.sroa.7108.0..sroa_idx109.i, align 8, !dbg !6702, !noalias !6134
  br label %.backedge, !dbg !6702

bb.ec:                                            ; preds = %bb.cf
    #dbg_value(ptr %i.ik, !6539, !DIExpression(), !5785)
  %.not274.i = icmp eq ptr %i.ik, null, !dbg !6874
  br i1 %.not274.i, label %.backedge, label %.loopexit, !dbg !6875

.backedge:                                        ; preds = %bb.ec, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtCs3JBf551F2Kj_4qlog12VantagePointEEEB13_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtCs3JBf551F2Kj_4qlog12CommonFieldsEEEB13_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit317.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit.i
  br label %bb.bo, !dbg !6702

bb.ed:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !6701, !noalias !6134
  br label %bb.ef, !dbg !6876

bb.ee:                                            ; preds = %bb.bz
    #dbg_value(i64 -1, !6188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5787)
    #dbg_value(i64 -1, !6163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5788)
  store i64 -1, ptr %i.r, align 8, !dbg !6877, !noalias !6134
  br label %bb.ef, !dbg !6876

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sroa.0142.4.i = phi i8 [ 0, %bb.ed ], [ 1, %bb.ee ], !dbg !6696 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !6878, !noalias !6134
  %i.lu = load i64, ptr %i.aa, align 8, !dbg !6878, !range !1042, !noalias !6134, !noundef !594
  %.not265.i = icmp eq i64 %i.lu, -2, !dbg !6878
  br i1 %.not265.i, label %bb.eh, label %bb.eg, !dbg !6878

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !6878, !noalias !6134
  br label %bb.ei, !dbg !6879

bb.eh:                                            ; preds = %bb.ef
    #dbg_value(i64 -1, !6188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5790)
    #dbg_value(i64 -1, !6167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5791)
  store i64 -1, ptr %i.q, align 8, !dbg !6880, !noalias !6134
  br label %bb.ei, !dbg !6879

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.sroa.0140.4.i = phi i8 [ 0, %bb.eg ], [ 1, %bb.eh ], !dbg !6697 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !6881, !noalias !6134
  %i.lv = load i64, ptr %i.z, align 8, !dbg !6881, !range !1042, !noalias !6134, !noundef !594
  %.not266.i = icmp eq i64 %i.lv, -2, !dbg !6881
  br i1 %.not266.i, label %bb.ek, label %bb.ej, !dbg !6881

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.p, ptr noundef nonnull align 8 dereferenceable(152) %i.z, i64 152, i1 false), !dbg !6881, !noalias !6134
  br label %bb.el, !dbg !6882

bb.ek:                                            ; preds = %bb.ei
    #dbg_value(i64 -1, !6199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5793)
    #dbg_value(i64 -1, !6171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5794)
  store i64 -1, ptr %i.p, align 8, !dbg !6883, !noalias !6134
  br label %bb.el, !dbg !6882

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.sroa.0138.4.i = phi i8 [ 0, %bb.ej ], [ 1, %bb.ek ], !dbg !6698 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !6884, !noalias !6134
  %i.lw = load i64, ptr %i.y, align 8, !dbg !6884, !range !6092, !noalias !6134, !noundef !594
  %.not267.i = icmp eq i64 %i.lw, -3, !dbg !6884
  br i1 %.not267.i, label %bb.en, label %bb.em, !dbg !6884

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !dbg !6884, !noalias !6134
  br label %bb.eo, !dbg !6885

bb.en:                                            ; preds = %bb.el
    #dbg_value(i64 -2, !6219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5796)
    #dbg_value(i64 -2, !6175, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5797)
  store i64 -2, ptr %i.o, align 8, !dbg !6886, !noalias !6134
  br label %bb.eo, !dbg !6885

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sroa.0136.4.i = phi i8 [ 0, %bb.em ], [ 1, %bb.en ], !dbg !6699 ; 3 uses
  %i.lx = load i64, ptr %i.x, align 8, !dbg !6887, !range !936, !noalias !6134, !noundef !594 ; 2 uses
  %.not268.i = icmp eq i64 %i.lx, -1, !dbg !6887
  br i1 %.not268.i, label %bb.eq, label %bb.ep, !dbg !6887

bb.ep:                                            ; preds = %bb.eo
    #dbg_value(i64 %i.lx, !6176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5798)
  %.sroa.3124.0.copyload.i = load ptr, ptr %.sroa.6105.0..sroa_idx106.i, align 8, !dbg !6887, !noalias !6134
    #dbg_value(ptr %.sroa.3124.0.copyload.i, !6176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5798)
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.7108.0..sroa_idx109.i, align 8, !dbg !6887, !noalias !6134
    #dbg_value(i64 %.sroa.4.0.copyload.i, !6176, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5798)
  br label %bb.ev, !dbg !6888

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !6887, !noalias !6134
    #dbg_value(ptr @8, !6263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5799)
    #dbg_value(ptr @8, !6271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5800)
    #dbg_value(ptr @8, !6279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5801)
    #dbg_value(i64 13, !6263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5799)
    #dbg_value(i64 13, !6271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5800)
    #dbg_value(i64 13, !6279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5801)
  invoke void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 13)
          to label %bb.es unwind label %bb.er, !dbg !6889, !noalias !6311

bb.er:                                            ; preds = %bb.eq
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #14
          to label %bb.ew unwind label %bb.fg, !dbg !6885, !noalias !6311

bb.es:                                            ; preds = %bb.eq
  %i.lz = load i64, ptr %i.n, align 8, !dbg !6890, !range !936, !noalias !6134, !noundef !594 ; 2 uses
  %i.ma = icmp eq i64 %i.lz, -1, !dbg !6890
  %i.mb = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !6891
  %i.mc = load ptr, ptr %i.mb, align 8, !dbg !6891, !noalias !6134 ; 2 uses
  br i1 %i.ma, label %bb.et, label %bb.eu, !dbg !6892

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6888, !noalias !6134
    #dbg_value(ptr %i.mc, !5868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 -1, !5868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %bb.ez unwind label %bb.ey, !dbg !6885, !noalias !6311

bb.eu:                                            ; preds = %bb.es
  %.sroa.5201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !6893
  %.sroa.5201.0.copyload.i = load i64, ptr %.sroa.5201.0..sroa_idx.i, align 8, !dbg !6893, !noalias !6134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6888, !noalias !6134
    #dbg_value(i64 %i.lz, !6176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5798)
    #dbg_value(ptr %i.mc, !6176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5798)
    #dbg_value(i64 %.sroa.5201.0.copyload.i, !6176, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5798)
  br label %bb.ev, !dbg !6888

bb.ev:                                            ; preds = %bb.eu, %bb.ep
  %.sroa.0122.0.i = phi i64 [ %i.lx, %bb.ep ], [ %i.lz, %bb.eu ], !dbg !6887
  %.sroa.3124.0.i = phi ptr [ %.sroa.3124.0.copyload.i, %bb.ep ], [ %i.mc, %bb.eu ], !dbg !6887
  %.sroa.4.0.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.ep ], [ %.sroa.5201.0.copyload.i, %bb.eu ], !dbg !6887
    #dbg_value(i64 %.sroa.4.0.i, !6176, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5798)
    #dbg_value(ptr %.sroa.3124.0.i, !6176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5798)
    #dbg_value(i64 %.sroa.0122.0.i, !6176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5798)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !6894, !noalias !6548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !6894, !noalias !6548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(152) %i.p, i64 152, i1 false), !dbg !6894, !noalias !6548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !6894, !noalias !6548
    #dbg_value(i64 %.sroa.0122.0.i, !5868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs5_1__NtB2v_8TraceSeqNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
bb.fn:                                            ; preds = %bb.fm
  %i.my = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.y, !1010, !DIExpression(), !5827)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body357.i unwind label %bb.fo, !dbg !6906, !noalias !6311

bb.fo:                                            ; preds = %bb.fn
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !6905, !noalias !6311
  unreachable, !dbg !6905

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i.i60: ; preds = %bb.fm
    #dbg_value(ptr %i.y, !1010, !DIExpression(), !5829)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEBZ_.exit.i57 unwind label %bb.fp, !dbg !6907, !noalias !6311

.body357.i:                                       ; preds = %bb.ga, %bb.fp, %bb.fn, %.body354.i
  %.sroa.0138.7.i = phi i8 [ %.sroa.0138.6.i, %.body354.i ], [ %.sroa.0138.6.i, %bb.ga ], [ %.sroa.0138.5.i, %bb.fn ], [ %.sroa.0138.5.i, %bb.fp ], !dbg !6698
  %.sroa.0140.7.i = phi i8 [ %.sroa.0140.6.i, %.body354.i ], [ %.sroa.0140.6.i, %bb.ga ], [ %.sroa.0140.5.i, %bb.fn ], [ %.sroa.0140.5.i, %bb.fp ], !dbg !6697 ; 2 uses
  %.sroa.0142.7.i = phi i8 [ %.sroa.0142.6.i, %.body354.i ], [ %.sroa.0142.6.i, %bb.ga ], [ %.sroa.0142.5.i, %bb.fn ], [ %.sroa.0142.5.i, %bb.fp ], !dbg !6696 ; 2 uses
  %.pn286.i = phi { ptr, i32 } [ %.pn284.i, %.body354.i ], [ %.pn284.i, %bb.ga ], [ %i.my, %bb.fn ], [ %i.nd, %bb.fp ] ; 2 uses
  %i.na = load i64, ptr %i.z, align 8, !dbg !6896, !range !1042, !noalias !6134, !noundef !594
  %i.nb = trunc nuw i8 %.sroa.0138.7.i to i1, !dbg !6896
    #dbg_value(ptr %i.z, !1111, !DIExpression(), !5831)
  %i.nc = icmp ult i64 %i.na, -2, !dbg !6896
  %or.cond408.not.i = select i1 %i.nc, i1 %i.nb, i1 false, !dbg !6896
  br i1 %or.cond408.not.i, label %bb.gb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i, !dbg !6896

bb.fp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i.i60
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body357.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit361.i: ; preds = %bb.fq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEBZ_.exit.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !6896, !noalias !6134
  %i.ne = load i64, ptr %i.aa, align 8, !dbg !6897, !range !1042, !noalias !6134, !noundef !594
  %i.nf = trunc nuw i8 %.sroa.0140.5.i to i1, !dbg !6897
    #dbg_value(ptr %i.aa, !1051, !DIExpression(), !5833)
  %i.ng = icmp ult i64 %i.ne, -2, !dbg !6897
  %or.cond406.not.i = select i1 %i.ng, i1 %i.nf, i1 false, !dbg !6897
  br i1 %or.cond406.not.i, label %bb.fs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58, !dbg !6897

bb.fq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEBZ_.exit.i57
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12CommonFieldsEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit361.i unwind label %bb.fr, !dbg !6908, !noalias !6311

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i: ; preds = %bb.gb, %bb.fr, %.body357.i
  %.sroa.0140.8.i = phi i8 [ %.sroa.0140.5.i, %bb.fr ], [ %.sroa.0140.7.i, %.body357.i ], [ %.sroa.0140.7.i, %bb.gb ], !dbg !6697
  %.sroa.0142.8.i = phi i8 [ %.sroa.0142.5.i, %bb.fr ], [ %.sroa.0142.7.i, %.body357.i ], [ %.sroa.0142.7.i, %bb.gb ], !dbg !6696 ; 2 uses
  %.pn288.i = phi { ptr, i32 } [ %i.nk, %bb.fr ], [ %.pn286.i, %.body357.i ], [ %.pn286.i, %bb.gb ] ; 2 uses
  %i.nh = load i64, ptr %i.aa, align 8, !dbg !6897, !range !1042, !noalias !6134, !noundef !594
  %i.ni = icmp ne i64 %i.nh, -2, !dbg !6897
  %i.nj = trunc nuw i8 %.sroa.0140.8.i to i1, !dbg !6897
  %or.cond17.i = select i1 %i.ni, i1 %i.nj, i1 false, !dbg !6897
  br i1 %or.cond17.i, label %bb.gc, label %.body362.i, !dbg !6897

bb.fr:                                            ; preds = %bb.fq
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i59, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit361.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !6897, !noalias !6134
  %i.nl = load i64, ptr %i.ab, align 8, !dbg !6898, !range !1042, !noalias !6134, !noundef !594
  %i.nm = trunc nuw i8 %.sroa.0142.5.i to i1, !dbg !6898
    #dbg_value(ptr %i.ab, !1051, !DIExpression(), !5835)
  %i.nn = icmp ult i64 %i.nl, -2, !dbg !6898
  %or.cond407.not.i = select i1 %i.nn, i1 %i.nm, i1 false, !dbg !6898
  br i1 %or.cond407.not.i, label %bb.fw, label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs5_1__NtBb_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBQ_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2t_4read9SliceReadEEBb_.exit, !dbg !6898

bb.fs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit361.i
    #dbg_value(ptr %i.aa, !1044, !DIExpression(), !5837)
    #dbg_value(ptr %i.aa, !1003, !DIExpression(), !5839)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i59 unwind label %bb.ft, !dbg !6909, !noalias !6311

bb.ft:                                            ; preds = %bb.fs
  %i.no = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.aa, !1010, !DIExpression(), !5841)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body362.i unwind label %bb.fu, !dbg !6910, !noalias !6311

bb.fu:                                            ; preds = %bb.ft
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !6909, !noalias !6311
  unreachable, !dbg !6909

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i59: ; preds = %bb.fs
    #dbg_value(ptr %i.aa, !1010, !DIExpression(), !5843)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58 unwind label %bb.fv, !dbg !6911, !noalias !6311

.body362.i:                                       ; preds = %bb.gc, %bb.fv, %bb.ft, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i
  %.sroa.0142.9.i = phi i8 [ %.sroa.0142.8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i ], [ %.sroa.0142.8.i, %bb.gc ], [ %.sroa.0142.5.i, %bb.ft ], [ %.sroa.0142.5.i, %bb.fv ], !dbg !6696
  %.pn290.i = phi { ptr, i32 } [ %.pn288.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i ], [ %.pn288.i, %bb.gc ], [ %i.no, %bb.ft ], [ %i.nt, %bb.fv ] ; 2 uses
  %i.nq = load i64, ptr %i.ab, align 8, !dbg !6898, !range !1042, !noalias !6134, !noundef !594
  %i.nr = icmp ne i64 %i.nq, -2, !dbg !6898
  %i.ns = trunc nuw i8 %.sroa.0142.9.i to i1, !dbg !6898
  %or.cond19.i = select i1 %i.nr, i1 %i.ns, i1 false, !dbg !6898
  br i1 %or.cond19.i, label %bb.gd, label %common.resume, !dbg !6898

bb.fv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i59
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %.body362.i

bb.fw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58
    #dbg_value(ptr %i.ab, !1044, !DIExpression(), !5845)
    #dbg_value(ptr %i.ab, !1003, !DIExpression(), !5847)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i366.i unwind label %bb.fx, !dbg !6912, !noalias !6311

bb.fx:                                            ; preds = %bb.fw
  %i.nu = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ab, !1010, !DIExpression(), !5849)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.fy, !dbg !6913, !noalias !6311

bb.fy:                                            ; preds = %bb.fx
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !6912, !noalias !6311
  unreachable, !dbg !6912

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i366.i: ; preds = %bb.fw
    #dbg_value(ptr %i.ab, !1010, !DIExpression(), !5851)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !dbg !6914, !noalias !6311
  br label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs5_1__NtBb_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBQ_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2t_4read9SliceReadEEBb_.exit, !dbg !6915

bb.fz:                                            ; preds = %.thread.i, %bb.by
  %.pn280381.i = phi { ptr, i32 } [ %eh.lpad-body348.i, %.thread.i ], [ %.pn280.ph.i, %bb.by ]
  %.sroa.0142.1380.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0142.1.ph.i, %bb.by ]
  %.sroa.0140.1379.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0140.1.ph.i, %bb.by ]
  %.sroa.0138.1378.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0138.1.ph.i, %bb.by ]
  %.sroa.0136.1377.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0136.1.ph.i, %bb.by ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #14
          to label %.body354.i unwind label %bb.fg, !dbg !6737, !noalias !6311

bb.ga:                                            ; preds = %.body354.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #14
          to label %.body357.i unwind label %bb.fg, !dbg !6895, !noalias !6311

bb.gb:                                            ; preds = %.body357.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12CommonFieldsEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i unwind label %bb.fg, !dbg !6916, !noalias !6311

bb.gc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsEEBZ_.exit369.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #14
          to label %.body362.i unwind label %bb.fg, !dbg !6897, !noalias !6311

bb.gd:                                            ; preds = %.body362.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #14
          to label %common.resume unwind label %bb.fg, !dbg !6898, !noalias !6311

_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs5_1__NtBb_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBQ_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2t_4read9SliceReadEEBb_.exit: ; preds = %bb.ev, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i366.i
  %.sroa.1866.1 = phi ptr [ %.sroa.1866.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i366.i ], [ %.sroa.1866.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58 ], [ %.sroa.3124.0.i, %bb.ev ], !dbg !6701
  %.sroa.065.1 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i366.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58 ], [ %.sroa.0122.0.i, %bb.ev ], !dbg !6701
  %.sroa.32.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i366.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i58 ], [ %.sroa.4.0.i, %bb.ev ], !dbg !6917
    #dbg_value(i64 %.sroa.32.0, !5868, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6437)
    #dbg_value(i64 %.sroa.065.1, !5868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(ptr %.sroa.1866.1, !5868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !6898, !noalias !6134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !6918
  %i.nw = load i8, ptr %i.bq, align 8, !dbg !6919, !noundef !594
  %i.nx = add i8 %i.nw, 1, !dbg !6919
  store i8 %i.nx, ptr %i.bq, align 8, !dbg !6919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !6920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !6921
  store i64 %.sroa.065.1, ptr %i.as, align 8, !dbg !6921
  %.sroa.1866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !6921
  store ptr %.sroa.1866.1, ptr %.sroa.1866.0..sroa_idx, align 8, !dbg !6921
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !6921
  store i64 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 8, !dbg !6921
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !6921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33, i64 24, i1 false), !dbg !6921
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !6921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, i64 24, i1 false), !dbg !6921
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 72, !dbg !6921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.35.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.35, i64 152, i1 false), !dbg !6921
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 224, !dbg !6921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36, i64 32, i1 false), !dbg !6921
  %i.ny = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.gf unwind label %bb.ge, !dbg !6922 ; 5 uses

bb.ge:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs5_1__NtBb_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBQ_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2t_4read9SliceReadEEBb_.exit
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3JBf551F2Kj_4qlog8TraceSeqNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.as) #14
          to label %common.resume unwind label %bb.bj, !dbg !6923

bb.gf:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogs5_1__NtBb_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBQ_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2t_4read9SliceReadEEBb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.at, ptr noundef nonnull align 8 dereferenceable(256) %i.as, i64 256, i1 false), !dbg !6920
  %i.oa = getelementptr inbounds nuw i8, ptr %i.at, i64 256, !dbg !6920
  store ptr %i.ny, ptr %i.oa, align 8, !dbg !6920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !6923
  %i.ob = load i64, ptr %i.at, align 8, !dbg !6920, !range !936, !noundef !594 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, -1, !dbg !6920
  br i1 %i.oc, label %bb.gh, label %bb.gg, !dbg !6924

bb.gg:                                            ; preds = %bb.gf
  %.not = icmp eq ptr %i.ny, null, !dbg !6920
  br i1 %.not, label %.thread366, label %bb.gi, !dbg !6924

.thread366:                                       ; preds = %bb.gg
    #dbg_value(i64 %i.ob, !5869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6551)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !6925
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !6925
    #dbg_value(ptr %.sroa.421.0.copyload, !5869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6551)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !6925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.522.0..sroa_idx, i64 240, i1 false), !dbg !6925
    #dbg_value(i64 %i.ob, !5864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
    #dbg_value(ptr %.sroa.421.0.copyload, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36), !dbg !6926
    #dbg_value(i64 %i.ob, !5864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
    #dbg_value(ptr %.sroa.421.0.copyload, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
  br label %.thread91, !dbg !6926

bb.gh:                                            ; preds = %bb.gf
  %i.od = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !6927
  %i.oe = load ptr, ptr %i.od, align 8, !dbg !6927, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(ptr %i.oe, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
    #dbg_value(i64 -1, !5864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36), !dbg !6926
    #dbg_value(i64 %i.ob, !5864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
    #dbg_value(ptr %i.oe, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
  %.not98 = icmp eq ptr %i.ny, null, !dbg !6926
  br i1 %.not98, label %.thread91, label %bb.gj, !dbg !6926

bb.gi:                                            ; preds = %bb.gg
    #dbg_value(ptr %i.ny, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
    #dbg_value(i64 -1, !5864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5997)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !6926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36), !dbg !6926
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog8TraceSeqEBD_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.at), !dbg !6926
  br label %.thread91, !dbg !6926

.thread91:                                        ; preds = %.thread366, %bb.gi, %bb.gj, %bb.gh
  %.sroa.09.297 = phi i64 [ -1, %bb.gh ], [ -1, %bb.gj ], [ -1, %bb.gi ], [ %i.ob, %.thread366 ]
  %.sroa.10.296 = phi ptr [ %i.oe, %bb.gh ], [ %i.oe, %bb.gj ], [ %i.ny, %bb.gi ], [ %.sroa.421.0.copyload, %.thread366 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !6926
  br label %bb.bl, !dbg !6926

bb.gj:                                            ; preds = %bb.gh
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.ny), !dbg !6926
  br label %.thread91, !dbg !6926

bb.gk:                                            ; preds = %bb.d, %bb.bl
  %.sroa.10.3 = phi ptr [ %i.bl, %bb.d ], [ %.sroa.10.1, %bb.bl ], !dbg !5995
    #dbg_value(ptr %.sroa.10.3, !5864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5997)
    #dbg_value(ptr %.sroa.10.3, !5872, !DIExpression(), !6552)
    #dbg_value(ptr %1, !1432, !DIExpression(), !5853)
    #dbg_value(ptr %.sroa.10.3, !1436, !DIExpression(), !5853)
  %i.of = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs3JBf551F2Kj_4qlog(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !6928
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6929
  store ptr %i.of, ptr %i.og, align 8, !dbg !6929
  store i64 -1, ptr %0, align 8, !dbg !6929
  br label %bb.gm, !dbg !6930

bb.gl:                                            ; preds = %bb.bl
    #dbg_value(i64 %.sroa.09.1, !5871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6553)
    #dbg_value(ptr %.sroa.10.1, !5871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6553)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.14, i64 240, i1 false), !dbg !6932
  store i64 %.sroa.09.1, ptr %0, align 8, !dbg !6931
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6931
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !6931
  br label %bb.gm, !dbg !6933

bb.gm:                                            ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !6686
  br label %bb.gn, !dbg !6934

bb.gn:                                            ; preds = %bb.gm, %.loopexit105, %bb.bd
  ret void, !dbg !6935
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB2v_12VantagePointNtB1l_11Deserialize11deserialize9___VisitorEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6949 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !7555, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !7000)
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !7634, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7003)
  %i.m = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !7641, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7006)
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 20 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [16 x i8], align 8                ; 10 uses
    #dbg_declare(ptr poison, !7550, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !7647)
    #dbg_declare(ptr poison, !7548, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !7648)
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [40 x i8], align 8                ; 11 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !7545, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !7649)
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [40 x i8], align 8               ; 11 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 6 uses
    #dbg_declare(ptr %.sroa.14, !7543, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !7650)
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
    #dbg_value(ptr %1, !7535, !DIExpression(), !7651)
    #dbg_value(ptr %1, !7652, !DIExpression(), !7655)
    #dbg_value(ptr %1, !7652, !DIExpression(), !7657)
    #dbg_value(ptr %2, !7536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7651)
    #dbg_value(i64 %3, !7536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7651)
    #dbg_value(ptr %4, !7537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7651)
    #dbg_value(i64 %5, !7537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7651)
    #dbg_declare(ptr %i.a, !7538, !DIExpression(), !7658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7659), !dbg !8030
    #dbg_value(ptr %1, !957, !DIExpression(), !7011)
    #dbg_value(ptr %1, !976, !DIExpression(), !7013)
    #dbg_value(ptr %1, !979, !DIExpression(), !7015)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !7660, !noundef !594 ; 2 uses
  %.promoted.i = load i64, ptr %i.af, align 8, !alias.scope !7659 ; 2 uses
  %i.ai = icmp ult i64 %.promoted.i, %i.ah, !dbg !8031
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit89, !dbg !8031

.lr.ph.i:                                         ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !7660, !nonnull !594, !noundef !594
  br label %bb.b, !dbg !8031

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.al = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ao, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7661), !dbg !8032
    #dbg_value(ptr %i.aj, !989, !DIExpression(), !7019)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al, !dbg !8033
  %i.an = load i8, ptr %i.am, align 1, !dbg !8033, !noalias !7662, !noundef !594 ; 2 uses
  switch i8 %i.an, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !8034

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7023)
  %i.ao = add i64 %i.al, 1, !dbg !8035            ; 3 uses
  store i64 %i.ao, ptr %i.af, align 8, !dbg !8035, !alias.scope !7663
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7019)
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ah, !dbg !8031
  br i1 %exitcond.not.i, label %.loopexit89, label %bb.b, !dbg !8031

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit: ; preds = %bb.b
    #dbg_value(i8 %i.an, !7539, !DIExpression(), !7664)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14), !dbg !8036
  switch i8 %i.an, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !dbg !8037, !prof !1502

.loopexit89:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !8038
  store i64 5, ptr %i.ae, align 8, !dbg !8038
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae), !dbg !8039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !8040
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8041
  store ptr %i.ap, ptr %i.aq, align 8, !dbg !8041
  store i64 -2, ptr %0, align 8, !dbg !8042
  br label %bb.dj, !dbg !8043

bb.d:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38), !dbg !8044
    #dbg_value(ptr %i.ar, !7543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7666)
    #dbg_value(i64 -2, !7543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7666)
  br label %bb.dg, !dbg !8045

bb.e:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !8046 ; 4 uses
  %i.at = load i8, ptr %i.as, align 8, !dbg !8046, !noundef !594
  %i.au = add i8 %i.at, -1, !dbg !8046            ; 2 uses
  store i8 %i.au, ptr %i.as, align 8, !dbg !8046
  %i.av = icmp eq i8 %i.au, 0, !dbg !8047
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !8047, !prof !1429

bb.f:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !8046 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 8, !dbg !8046, !noundef !594
  %i.ay = add i8 %i.ax, -1, !dbg !8046            ; 2 uses
  store i8 %i.ay, ptr %i.aw, align 8, !dbg !8046
  %i.az = icmp eq i8 %i.ay, 0, !dbg !8047
  br i1 %i.az, label %bb.aq, label %bb.ar, !dbg !8047, !prof !1429

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !8048
  store i64 24, ptr %i.ad, align 8, !dbg !8048
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad), !dbg !8049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !8050
  br label %bb.ae, !dbg !8051

bb.h:                                             ; preds = %bb.e
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7027)
  %i.bb = add i64 %i.al, 1, !dbg !8052
  store i64 %i.bb, ptr %i.af, align 8, !dbg !8052, !alias.scope !7668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %1, ptr %i.x, align 8, !noalias !7669
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 1, ptr %i.bc, align 8, !noalias !7669
    #dbg_declare(ptr poison, !7670, !DIExpression(), !7047)
    #dbg_declare(ptr %i.x, !7674, !DIExpression(), !7047)
    #dbg_declare(ptr %i.w, !7675, !DIExpression(), !7048)
    #dbg_declare(ptr poison, !7673, !DIExpression(), !7047)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !8053, !noalias !7669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7688), !dbg !8054
    #dbg_value(ptr %i.x, !1543, !DIExpression(), !7052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7689), !dbg !8055
    #dbg_value(ptr %i.x, !1559, !DIExpression(), !7056)
    #dbg_declare(ptr poison, !1562, !DIExpression(), !7057)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !8056, !noalias !7690
  call fastcc void @_RINvNvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB8_9SeqAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x), !dbg !8056, !noalias !7691
  %i.bd = load i8, ptr %i.v, align 8, !dbg !8056, !range !1418, !noalias !7690, !noundef !594
  %i.be = trunc nuw i8 %i.bd to i1, !dbg !8056
  br i1 %i.be, label %bb.i, label %bb.j, !dbg !8057

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !8058
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !8058, !noalias !7690, !nonnull !594, !align !1416, !noundef !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !8059, !noalias !7690
end_hunk_3
begin_hunk_4_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogsd_1__NtB2v_13ReferenceTimeNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3131.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.0..sroa_idx64.i, i64 16, i1 false), !dbg !9453
  br label %bb.di, !dbg !9454

bb.di:                                            ; preds = %bb.dh, %bb.df
  %.sroa.0129.0.i = phi i64 [ %i.ji, %bb.dh ], [ -1, %bb.df ], !dbg !9455
    #dbg_value(i64 %.sroa.0129.0.i, !8883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8833)
  %.sroa.063.0.copyload64 = load i64, ptr %i.l, align 8, !dbg !9456, !noalias !9207
    #dbg_value(i64 %.sroa.063.0.copyload64, !8875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9173)
  %.sroa.15.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9456
  %.sroa.15.0.copyload66 = load ptr, ptr %.sroa.15.0..sroa_idx65, align 8, !dbg !9456, !noalias !9207
    #dbg_value(ptr %.sroa.15.0.copyload66, !8875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9173)
  %.sroa.25.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !9456
  %.sroa.25.0.copyload68 = load i64, ptr %.sroa.25.0..sroa_idx67, align 8, !dbg !9456, !noalias !9207
    #dbg_value(i64 %.sroa.25.0.copyload68, !8875, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9173)
    #dbg_value(i64 %.sroa.089.0.i, !8875, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9173)
    #dbg_value(ptr %.sroa.391.0.i, !8875, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9173)
    #dbg_value(i64 %.sroa.494.0.i, !8875, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9173)
    #dbg_value(i64 %.sroa.0129.0.i, !8875, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !9173)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9437, !noalias !8989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !9350, !noalias !8989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9457, !noalias !8989
  br label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEEBb_.exit, !dbg !9458

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit228.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i224.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !9350, !noalias !8989
  %i.jl = load i64, ptr %i.q, align 8, !dbg !9457, !range !936, !noalias !8989, !noundef !594
  %.not186.i = icmp eq i64 %i.jl, -1, !dbg !9457
  br i1 %.not186.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54, label %bb.dn, !dbg !9457

bb.dj:                                            ; preds = %.loopexit
    #dbg_value(ptr %i.p, !1044, !DIExpression(), !8836)
    #dbg_value(ptr %i.p, !1003, !DIExpression(), !8838)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i224.i unwind label %bb.dk, !dbg !9459, !noalias !9053

bb.dk:                                            ; preds = %bb.dj
  %i.jm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.p, !1010, !DIExpression(), !8840)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body225.i unwind label %bb.dl, !dbg !9460, !noalias !9053

bb.dl:                                            ; preds = %bb.dk
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !9459, !noalias !9053
  unreachable, !dbg !9459

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i224.i: ; preds = %bb.dj
    #dbg_value(ptr %i.p, !1010, !DIExpression(), !8842)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit228.i unwind label %bb.dm, !dbg !9461, !noalias !9053

.body225.i:                                       ; preds = %bb.du, %bb.dm, %bb.dk, %bb.bh
  %.sroa.0106.7.i = phi i8 [ %.sroa.0106.1.ph.i, %bb.bh ], [ %.sroa.0106.1239.i, %bb.du ], [ %.sroa.0106.6.i, %bb.dk ], [ %.sroa.0106.6.i, %bb.dm ], !dbg !9309 ; 2 uses
  %.pn183.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.bh ], [ %.pn240.i, %bb.du ], [ %i.jm, %bb.dk ], [ %i.jp, %bb.dm ] ; 2 uses
  %i.jo = load i64, ptr %i.q, align 8, !dbg !9457, !range !936, !noalias !8989, !noundef !594
  %.not185.i = icmp eq i64 %i.jo, -1, !dbg !9457
  br i1 %.not185.i, label %.body229.i, label %bb.dv, !dbg !9457

bb.dm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i224.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body225.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i53, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit228.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9457, !noalias !8989
  %i.jq = load i64, ptr %i.r, align 8, !dbg !9458, !range !936, !noalias !8989, !noundef !594
  %i.jr = icmp ne i64 %i.jq, -1, !dbg !9458
  %i.js = trunc nuw i8 %.sroa.0106.6.i to i1, !dbg !9458
  %or.cond5.i = select i1 %i.jr, i1 %i.js, i1 false, !dbg !9458
  br i1 %or.cond5.i, label %bb.dr, label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEEBb_.exit, !dbg !9458

bb.dn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit228.i
    #dbg_value(ptr %i.q, !1044, !DIExpression(), !8844)
    #dbg_value(ptr %i.q, !1003, !DIExpression(), !8846)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i53 unwind label %bb.do, !dbg !9462, !noalias !9053

bb.do:                                            ; preds = %bb.dn
  %i.jt = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.q, !1010, !DIExpression(), !8848)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body229.i unwind label %bb.dp, !dbg !9463, !noalias !9053

bb.dp:                                            ; preds = %bb.do
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !9462, !noalias !9053
  unreachable, !dbg !9462

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i53: ; preds = %bb.dn
    #dbg_value(ptr %i.q, !1010, !DIExpression(), !8850)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 unwind label %bb.dq, !dbg !9464, !noalias !9053

.body229.i:                                       ; preds = %bb.dv, %bb.dq, %bb.do, %.body225.i
  %.sroa.0106.8.i = phi i8 [ %.sroa.0106.7.i, %.body225.i ], [ %.sroa.0106.7.i, %bb.dv ], [ %.sroa.0106.6.i, %bb.do ], [ %.sroa.0106.6.i, %bb.dq ], !dbg !9309
  %.pn187.i = phi { ptr, i32 } [ %.pn183.i, %.body225.i ], [ %.pn183.i, %bb.dv ], [ %i.jt, %bb.do ], [ %i.jy, %bb.dq ] ; 2 uses
  %i.jv = load i64, ptr %i.r, align 8, !dbg !9458, !range !936, !noalias !8989, !noundef !594
  %i.jw = icmp ne i64 %i.jv, -1, !dbg !9458
  %i.jx = trunc nuw i8 %.sroa.0106.8.i to i1, !dbg !9458
  %or.cond11.i = select i1 %i.jw, i1 %i.jx, i1 false, !dbg !9458
  br i1 %or.cond11.i, label %bb.dw, label %common.resume, !dbg !9458

bb.dq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3JBf551F2Kj_4qlog.exit.i.i53
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body229.i

bb.dr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54
    #dbg_value(ptr %i.r, !1044, !DIExpression(), !8852)
    #dbg_value(ptr %i.r, !1003, !DIExpression(), !8854)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i unwind label %bb.ds, !dbg !9465, !noalias !9053

bb.ds:                                            ; preds = %bb.dr
  %i.jz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.r, !1010, !DIExpression(), !8856)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.dt, !dbg !9466, !noalias !9053

bb.dt:                                            ; preds = %bb.ds
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !9465, !noalias !9053
  unreachable, !dbg !9465

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i: ; preds = %bb.dr
    #dbg_value(ptr %i.r, !1010, !DIExpression(), !8858)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r), !dbg !9467, !noalias !9053
  br label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEEBb_.exit, !dbg !9458

bb.du:                                            ; preds = %.thread.i, %bb.bh
  %.pn240.i = phi { ptr, i32 } [ %eh.lpad-body221.i, %.thread.i ], [ %.pn.ph.i, %bb.bh ]
  %.sroa.0106.1239.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0106.1.ph.i, %bb.bh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #14
          to label %.body225.i unwind label %bb.dg, !dbg !9350, !noalias !9053

bb.dv:                                            ; preds = %.body225.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #14
          to label %.body229.i unwind label %bb.dg, !dbg !9457, !noalias !9053

bb.dw:                                            ; preds = %.body229.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #14
          to label %common.resume unwind label %bb.dg, !dbg !9458, !noalias !9053

_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEEBb_.exit: ; preds = %bb.di, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i
  %.sroa.27.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.494.0.i, %bb.di ], !dbg !9468
  %.sroa.26.0 = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.391.0.i, %bb.di ], !dbg !9468
  %.sroa.2569.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.089.0.i, %bb.di ], !dbg !9468
  %.sroa.25.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.25.0.copyload68, %bb.di ], !dbg !9468
  %.sroa.15.2 = phi ptr [ %.sroa.15.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ %.sroa.15.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.15.0.copyload66, %bb.di ], !dbg !9205
  %.sroa.063.2 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.063.0.copyload64, %bb.di ], !dbg !9205
  %.sroa.28.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit234.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.0129.0.i, %bb.di ], !dbg !9468
    #dbg_value(i64 %.sroa.28.0, !8875, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !9173)
    #dbg_value(i64 %.sroa.063.2, !8875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9173)
    #dbg_value(ptr %.sroa.15.2, !8875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9173)
    #dbg_value(i64 %.sroa.25.0, !8875, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9173)
    #dbg_value(i64 %.sroa.2569.0, !8875, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9173)
    #dbg_value(ptr %.sroa.26.0, !8875, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9173)
    #dbg_value(i64 %.sroa.27.0, !8875, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9173)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9458, !noalias !8989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9469
  %i.kb = load i8, ptr %i.ba, align 8, !dbg !9470, !noundef !594
  %i.kc = add i8 %i.kb, 1, !dbg !9470
  store i8 %i.kc, ptr %i.ba, align 8, !dbg !9470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !9471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !9472
  store i64 %.sroa.063.2, ptr %i.ac, align 8, !dbg !9472
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !9472
  store ptr %.sroa.15.2, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !9472
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !9472
  store i64 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 8, !dbg !9472
  %.sroa.2569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !9472
  store i64 %.sroa.2569.0, ptr %.sroa.2569.0..sroa_idx, align 8, !dbg !9472
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !9472
  store ptr %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8, !dbg !9472
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40, !dbg !9472
  store i64 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx, align 8, !dbg !9472
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48, !dbg !9472
  store i64 %.sroa.28.0, ptr %.sroa.28.0..sroa_idx, align 8, !dbg !9472
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56, !dbg !9472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3131.i, i64 16, i1 false), !dbg !9472
  %i.kd = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.dy unwind label %bb.dx, !dbg !9473 ; 5 uses

bb.dx:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEEBb_.exit
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3JBf551F2Kj_4qlog13ReferenceTimeNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac) #14
          to label %common.resume unwind label %bb.ao, !dbg !9474

bb.dy:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEEBb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !dbg !9471
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ad, i64 72, !dbg !9471
  store ptr %i.kd, ptr %i.kf, align 8, !dbg !9471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !9474
  %i.kg = load i64, ptr %i.ad, align 8, !dbg !9471, !range !936, !noundef !594 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, -1, !dbg !9471
  br i1 %i.kh, label %bb.ea, label %bb.dz, !dbg !9475

bb.dz:                                            ; preds = %bb.dy
  %.not = icmp eq ptr %i.kd, null, !dbg !9471
  br i1 %.not, label %.thread276, label %bb.eb, !dbg !9475

.thread276:                                       ; preds = %bb.dz
    #dbg_value(i64 %i.kg, !8876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9211)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !9476
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !9476
    #dbg_value(ptr %.sroa.421.0.copyload, !8876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9211)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !9476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.522.0..sroa_idx, i64 56, i1 false), !dbg !9476
    #dbg_value(i64 %i.kg, !8871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
    #dbg_value(ptr %.sroa.421.0.copyload, !8871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
    #dbg_value(i64 %i.kg, !8871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
    #dbg_value(ptr %.sroa.421.0.copyload, !8871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
  br label %.thread84, !dbg !9477

bb.ea:                                            ; preds = %bb.dy
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !9478
  %i.kj = load ptr, ptr %i.ki, align 8, !dbg !9478, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(ptr %i.kj, !8871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
    #dbg_value(i64 -1, !8871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
    #dbg_value(i64 %i.kg, !8871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
    #dbg_value(ptr %i.kj, !8871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
  %.not91 = icmp eq ptr %i.kd, null, !dbg !9477
  br i1 %.not91, label %.thread84, label %bb.ec, !dbg !9477

bb.eb:                                            ; preds = %bb.dz
    #dbg_value(ptr %i.kd, !8871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
    #dbg_value(i64 -1, !8871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEBD_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ad), !dbg !9477
  br label %.thread84, !dbg !9477

.thread84:                                        ; preds = %.thread276, %bb.eb, %bb.ec, %bb.ea
  %.sroa.09.290 = phi i64 [ -1, %bb.ea ], [ -1, %bb.ec ], [ -1, %bb.eb ], [ %i.kg, %.thread276 ]
  %.sroa.10.289 = phi ptr [ %i.kj, %bb.ea ], [ %i.kj, %bb.ec ], [ %i.kd, %bb.eb ], [ %.sroa.421.0.copyload, %.thread276 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !9477
  br label %bb.aq, !dbg !9477

bb.ec:                                            ; preds = %bb.ea
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.kd), !dbg !9477
  br label %.thread84, !dbg !9477

bb.ed:                                            ; preds = %bb.d, %bb.aq
  %.sroa.10.3 = phi ptr [ %i.av, %bb.d ], [ %.sroa.10.1, %bb.aq ], !dbg !8942
    #dbg_value(ptr %.sroa.10.3, !8871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
    #dbg_value(ptr %.sroa.10.3, !8879, !DIExpression(), !9212)
    #dbg_value(ptr %1, !1432, !DIExpression(), !8860)
    #dbg_value(ptr %.sroa.10.3, !1436, !DIExpression(), !8860)
  %i.kk = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs3JBf551F2Kj_4qlog(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !9479
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9480
  store ptr %i.kk, ptr %i.kl, align 8, !dbg !9480
  store i64 -1, ptr %0, align 8, !dbg !9480
  br label %bb.ef, !dbg !9481

bb.ee:                                            ; preds = %bb.aq
    #dbg_value(i64 %.sroa.09.1, !8878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9213)
    #dbg_value(ptr %.sroa.10.1, !8878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9213)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, i64 56, i1 false), !dbg !9483
  store i64 %.sroa.09.1, ptr %0, align 8, !dbg !9482
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9482
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !9482
  br label %bb.ef, !dbg !9484

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !9300
  br label %bb.eg, !dbg !9485

bb.eg:                                            ; preds = %bb.ef, %.loopexit96, %bb.ai
  ret void, !dbg !9486
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogsf_1__NtB2v_12CommonFieldsNtB1l_11Deserialize11deserialize9___VisitorEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9500 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [56 x i8], align 8          ; 3 uses
    #dbg_declare(ptr poison, !10327, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !9573)
    #dbg_declare(ptr %.sroa.4.i, !10394, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !9574)
  %i.n = alloca [72 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !10434, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9577)
  %i.s = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.788.i = alloca [56 x i8], align 8        ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [72 x i8], align 8                ; 16 uses
  %i.x = alloca [24 x i8], align 8                ; 21 uses
  %i.y = alloca [24 x i8], align 8                ; 21 uses
  %i.z = alloca [24 x i8], align 8                ; 20 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [72 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.055.i.sroa.5 = alloca [128 x i8], align 8 ; 5 uses
    #dbg_declare(ptr poison, !10440, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !9600)
    #dbg_declare(ptr poison, !10466, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !9613)
  %i.al = alloca [72 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 12 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [16 x i8], align 8               ; 14 uses
    #dbg_declare(ptr poison, !10322, !DIExpression(DW_OP_LLVM_fragment, 128, 1088), !10494)
    #dbg_declare(ptr poison, !10320, !DIExpression(DW_OP_LLVM_fragment, 128, 1088), !10495)
  %i.aq = alloca [152 x i8], align 8              ; 11 uses
  %i.ar = alloca [160 x i8], align 8              ; 9 uses
  %.sroa.33 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.34 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.35 = alloca [24 x i8], align 8           ; 6 uses
    #dbg_declare(ptr %.sroa.4.i, !10319, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !10496)
    #dbg_declare(ptr %.sroa.33, !10319, !DIExpression(DW_OP_LLVM_fragment, 576, 192), !10496)
    #dbg_declare(ptr %.sroa.34, !10319, !DIExpression(DW_OP_LLVM_fragment, 768, 192), !10496)
    #dbg_declare(ptr %.sroa.35, !10319, !DIExpression(DW_OP_LLVM_fragment, 960, 192), !10496)
  %i.as = alloca [24 x i8], align 8               ; 4 uses
    #dbg_declare(ptr poison, !10317, !DIExpression(DW_OP_LLVM_fragment, 128, 1088), !10500)
  %i.at = alloca [152 x i8], align 8              ; 8 uses
  %i.au = alloca [160 x i8], align 8              ; 9 uses
    #dbg_declare(ptr %.sroa.055.i.sroa.5, !10316, !DIExpression(DW_OP_LLVM_fragment, 128, 1024), !10502)
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [136 x i8], align 8          ; 6 uses
    #dbg_declare(ptr %.sroa.14, !10315, !DIExpression(DW_OP_LLVM_fragment, 128, 1088), !10503)
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
    #dbg_value(ptr %1, !10307, !DIExpression(), !10504)
    #dbg_value(ptr %1, !10505, !DIExpression(), !10508)
    #dbg_value(ptr %1, !10505, !DIExpression(), !10510)
    #dbg_value(ptr %2, !10308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10504)
    #dbg_value(i64 %3, !10308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10504)
    #dbg_value(ptr %4, !10309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10504)
    #dbg_value(i64 %5, !10309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10504)
    #dbg_declare(ptr %i.a, !10310, !DIExpression(), !10511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10512), !dbg !10992
    #dbg_value(ptr %1, !957, !DIExpression(), !9618)
    #dbg_value(ptr %1, !976, !DIExpression(), !9620)
    #dbg_value(ptr %1, !979, !DIExpression(), !9622)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !10513, !noundef !594 ; 2 uses
  %.promoted.i = load i64, ptr %i.ax, align 8, !alias.scope !10512 ; 2 uses
  %i.ba = icmp ult i64 %.promoted.i, %i.az, !dbg !10993
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit99, !dbg !10993

.lr.ph.i:                                         ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !10513, !nonnull !594, !noundef !594
  br label %bb.b, !dbg !10993

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bd = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bg, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10514), !dbg !10994
    #dbg_value(ptr %i.bb, !989, !DIExpression(), !9626)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd, !dbg !10995
  %i.bf = load i8, ptr %i.be, align 1, !dbg !10995, !noalias !10515, !noundef !594 ; 2 uses
  switch i8 %i.bf, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !10996

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9630)
  %i.bg = add i64 %i.bd, 1, !dbg !10997           ; 3 uses
  store i64 %i.bg, ptr %i.ax, align 8, !dbg !10997, !alias.scope !10516
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9626)
  %exitcond.not.i = icmp eq i64 %i.bg, %i.az, !dbg !10993
  br i1 %exitcond.not.i, label %.loopexit99, label %bb.b, !dbg !10993

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit: ; preds = %bb.b
    #dbg_value(i8 %i.bf, !10311, !DIExpression(), !10517)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14), !dbg !10998
  switch i8 %i.bf, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !dbg !10999, !prof !1502

.loopexit99:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !11000
  store i64 5, ptr %i.aw, align 8, !dbg !11000
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw), !dbg !11001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !11002
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11003
  store ptr %i.bh, ptr %i.bi, align 8, !dbg !11003
  store i64 -1, ptr %0, align 8, !dbg !11004
  br label %bb.fy, !dbg !11005

bb.d:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.bj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40), !dbg !11006
    #dbg_value(ptr %i.bj, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i64 -1, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
  br label %bb.fv, !dbg !11007

bb.e:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !11008 ; 4 uses
  %i.bl = load i8, ptr %i.bk, align 8, !dbg !11008, !noundef !594
  %i.bm = add i8 %i.bl, -1, !dbg !11008           ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 8, !dbg !11008
  %i.bn = icmp eq i8 %i.bm, 0, !dbg !11009
  br i1 %i.bn, label %bb.g, label %bb.h, !dbg !11009, !prof !1429

bb.f:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !11008 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !11008, !noundef !594
  %i.bq = add i8 %i.bp, -1, !dbg !11008           ; 2 uses
  store i8 %i.bq, ptr %i.bo, align 8, !dbg !11008
  %i.br = icmp eq i8 %i.bq, 0, !dbg !11009
  br i1 %i.br, label %bb.bm, label %bb.bn, !dbg !11009, !prof !1429

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !11010
  store i64 24, ptr %i.av, align 8, !dbg !11010
  %i.bs = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.av), !dbg !11011
end_hunk_4
begin_hunk_5_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogsf_1__NtB2v_12CommonFieldsNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
bb.bg:                                            ; preds = %bb.bf
  %.not44 = icmp eq ptr %i.fd, null, !dbg !11116
  br i1 %.not44, label %.thread409, label %bb.bi, !dbg !11122

.thread409:                                       ; preds = %bb.bg
    #dbg_value(i64 %i.fh, !10317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10653)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !11123
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11123
    #dbg_value(ptr %.sroa.4.0.copyload, !10317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10653)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !11123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, i64 136, i1 false), !dbg !11123
    #dbg_value(i64 %i.fh, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %.sroa.4.0.copyload, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i64 %i.fh, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %.sroa.4.0.copyload, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
  br label %.thread78, !dbg !11124

bb.bh:                                            ; preds = %bb.bf
  %i.fj = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !11125
  %i.fk = load ptr, ptr %i.fj, align 8, !dbg !11125, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(ptr %i.fk, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i64 -1, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(i64 %i.fh, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %i.fk, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
  %.not93 = icmp eq ptr %i.fd, null, !dbg !11124
  br i1 %.not93, label %.thread78, label %bb.bk, !dbg !11124

bb.bi:                                            ; preds = %bb.bg
    #dbg_value(ptr %i.fd, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i64 -1, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12CommonFieldsEBD_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.au), !dbg !11124
  br label %.thread78, !dbg !11124

bb.bj:                                            ; preds = %bb.fp, %bb.be
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11126
  unreachable, !dbg !11126

.thread78:                                        ; preds = %.thread409, %bb.bi, %bb.bk, %bb.bh
  %.sroa.09.084 = phi i64 [ -1, %bb.bh ], [ -1, %bb.bk ], [ -1, %bb.bi ], [ %i.fh, %.thread409 ]
  %.sroa.10.083 = phi ptr [ %i.fk, %bb.bh ], [ %i.fk, %bb.bk ], [ %i.fd, %bb.bi ], [ %.sroa.4.0.copyload, %.thread409 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !11124
  br label %bb.bl, !dbg !11124

bb.bk:                                            ; preds = %bb.bh
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.fd), !dbg !11124
  br label %.thread78, !dbg !11124

bb.bl:                                            ; preds = %.thread85, %.thread78
  %.sroa.10.1 = phi ptr [ %.sroa.10.083, %.thread78 ], [ %.sroa.10.290, %.thread85 ], !dbg !10517 ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.084, %.thread78 ], [ %.sroa.09.291, %.thread85 ], !dbg !10517 ; 2 uses
    #dbg_value(i64 %.sroa.09.1, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %.sroa.10.1, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
  %i.fm = icmp eq i64 %.sroa.09.1, -1, !dbg !11127
  br i1 %i.fm, label %bb.fv, label %bb.fw, !dbg !11007, !prof !1429

bb.bm:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !11010
  store i64 24, ptr %i.as, align 8, !dbg !11010
  %i.fn = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.as), !dbg !11011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !11012
  br label %bb.bd, !dbg !11013

bb.bn:                                            ; preds = %bb.f
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9787)
  %i.fo = add i64 %i.bd, 1, !dbg !11128
  store i64 %i.fo, ptr %i.ax, align 8, !dbg !11128, !alias.scope !10654
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33), !dbg !11129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34), !dbg !11129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35), !dbg !11129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %1, ptr %i.aa, align 8, !noalias !10655
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.fp, align 8, !noalias !10655
    #dbg_declare(ptr poison, !10402, !DIExpression(), !9793)
    #dbg_declare(ptr %i.aa, !10361, !DIExpression(), !9793)
    #dbg_declare(ptr %i.z, !10362, !DIExpression(), !9794)
    #dbg_declare(ptr %i.y, !10363, !DIExpression(), !9795)
    #dbg_declare(ptr %i.x, !10364, !DIExpression(), !9796)
    #dbg_declare(ptr %i.w, !10365, !DIExpression(), !9797)
    #dbg_declare(ptr %i.v, !10656, !DIExpression(), !9808)
    #dbg_declare(ptr %i.u, !10656, !DIExpression(), !9810)
    #dbg_declare(ptr %i.t, !10666, !DIExpression(), !9821)
    #dbg_declare(ptr %i.s, !10686, !DIExpression(), !9832)
    #dbg_declare(ptr %i.r, !10327, !DIExpression(), !9834)
    #dbg_declare(ptr %i.q, !10382, !DIExpression(), !9835)
    #dbg_declare(ptr %i.p, !10386, !DIExpression(), !9836)
    #dbg_declare(ptr %i.o, !10390, !DIExpression(), !9837)
    #dbg_declare(ptr %i.n, !10686, !DIExpression(), !9839)
    #dbg_declare(ptr poison, !10360, !DIExpression(), !9793)
    #dbg_value(ptr @18, !10708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9843)
    #dbg_value(i64 14, !10708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9843)
    #dbg_value(ptr poison, !10717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9848)
    #dbg_value(i64 13, !10717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9848)
    #dbg_value(ptr poison, !10721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9848)
    #dbg_value(i64 3, !10721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9848)
    #dbg_declare(ptr poison, !10722, !DIExpression(), !9849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !11130, !noalias !10655
  store i64 -2, ptr %i.z, align 8, !dbg !11130, !noalias !10655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !11131, !noalias !10655
  store i64 -2, ptr %i.y, align 8, !dbg !11131, !noalias !10655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !11132, !noalias !10655
  store i64 -2, ptr %i.x, align 8, !dbg !11132, !noalias !10655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !11133, !noalias !10655
  store i64 -1, ptr %i.w, align 8, !dbg !11133, !noalias !10655
    #dbg_value(i8 -1, !10366, !DIExpression(), !9850)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.4143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.685.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.788.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.667.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.770.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.648.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.751.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.630.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br label %.outer, !dbg !11134

.outer:                                           ; preds = %bb.dw, %bb.bn
  %.sroa.090.0.i.ph = phi i8 [ %i.li, %bb.dw ], [ -1, %bb.bn ] ; 3 uses
  br label %bb.bo, !dbg !11135

bb.bo:                                            ; preds = %.backedge, %.outer
    #dbg_value(i8 %.sroa.090.0.i.ph, !10366, !DIExpression(), !9850)
  call void @llvm.experimental.noalias.scope.decl(metadata !10756), !dbg !11136
    #dbg_value(ptr %i.aa, !10754, !DIExpression(), !9866)
  call void @llvm.experimental.noalias.scope.decl(metadata !10757), !dbg !11137
    #dbg_value(ptr %i.aa, !10743, !DIExpression(), !9869)
    #dbg_declare(ptr poison, !10744, !DIExpression(), !9870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11135, !noalias !10758
  invoke fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc.i51 unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11135, !noalias !10759

.noexc.i51:                                       ; preds = %bb.bo
  %i.fu = load i8, ptr %i.m, align 8, !dbg !11135, !range !1418, !noalias !10758, !noundef !594
  %i.fv = trunc nuw i8 %i.fu to i1, !dbg !11135
  br i1 %i.fv, label %bb.bp, label %bb.bq, !dbg !11138

bb.bp:                                            ; preds = %.noexc.i51
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !11139
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !11139, !noalias !10758, !nonnull !594, !align !1416, !noundef !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11140, !noalias !10758
  br label %.loopexit, !dbg !11141

bb.bq:                                            ; preds = %.noexc.i51
  %i.fy = load i8, ptr %i.fq, align 1, !dbg !11142, !range !1418, !noalias !10758, !noundef !594
  %i.fz = trunc nuw i8 %i.fy to i1, !dbg !11142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11140, !noalias !10758
  br i1 %i.fz, label %bb.br, label %bb.bz, !dbg !11138

bb.br:                                            ; preds = %bb.bq
  %i.ga = load ptr, ptr %i.aa, align 8, !dbg !11143, !alias.scope !10761, !noalias !10655, !nonnull !594, !align !1416, !noundef !594 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10762), !dbg !11144
    #dbg_declare(ptr poison, !10763, !DIExpression(), !9881)
    #dbg_value(ptr %i.ga, !10776, !DIExpression(), !9882)
    #dbg_declare(ptr poison, !10775, !DIExpression(), !9881)
  call void @llvm.experimental.noalias.scope.decl(metadata !10778), !dbg !11145
    #dbg_value(ptr %i.ga, !10779, !DIExpression(), !9887)
  call void @llvm.experimental.noalias.scope.decl(metadata !10783), !dbg !11146
    #dbg_value(ptr %i.ga, !10784, !DIExpression(), !9893)
    #dbg_declare(ptr poison, !10787, !DIExpression(), !9894)
  call void @llvm.experimental.noalias.scope.decl(metadata !10791), !dbg !11147
    #dbg_value(ptr %i.ga, !10792, !DIExpression(), !9903)
    #dbg_declare(ptr poison, !10793, !DIExpression(), !9904)
    #dbg_value(ptr %i.ga, !10799, !DIExpression(), !9907)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24, !dbg !11148 ; 6 uses
    #dbg_value(ptr %i.gb, !993, !DIExpression(), !9909)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 40, !dbg !11149 ; 17 uses
  %i.gd = load i64, ptr %i.gc, align 8, !dbg !11149, !alias.scope !10801, !noalias !10802, !noundef !594
  %i.ge = add i64 %i.gd, 1, !dbg !11149
  store i64 %i.ge, ptr %i.gc, align 8, !dbg !11149, !alias.scope !10801, !noalias !10802
    #dbg_value(ptr %i.ga, !10803, !DIExpression(), !9915)
    #dbg_value(ptr %i.ga, !10806, !DIExpression(), !9918)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16, !dbg !11150
    #dbg_value(ptr poison, !10804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9919)
    #dbg_value(i64 poison, !10804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9919)
  store i64 0, ptr %i.gf, align 8, !dbg !11151, !alias.scope !10808, !noalias !10802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !11152, !noalias !10809
  invoke void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ga)
          to label %.noexc276.i unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11153, !noalias !10759

.noexc276.i:                                      ; preds = %bb.br
  %i.gg = load i64, ptr %i.l, align 8, !dbg !11152, !range !1469, !noalias !10809, !noundef !594
  %i.gh = icmp eq i64 %i.gg, 2, !dbg !11152
  %i.gi = load ptr, ptr %i.fr, align 8, !dbg !11154, !noalias !10809, !nonnull !594, !noundef !594 ; 10 uses
  br i1 %i.gh, label %bb.by, label %bb.bs, !dbg !11155

bb.bs:                                            ; preds = %.noexc276.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !11156, !noalias !10809 ; 5 uses
    #dbg_declare(ptr poison, !10811, !DIExpression(), !9926)
    #dbg_value(ptr %i.gi, !10815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9927)
    #dbg_value(ptr %i.gi, !10817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9930)
    #dbg_value(ptr %i.gi, !10817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9932)
    #dbg_value(ptr %i.gi, !10817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9934)
    #dbg_value(ptr %i.gi, !10817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9936)
    #dbg_value(ptr %i.gi, !10817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9927)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9930)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9932)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9934)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9936)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_declare(ptr poison, !10814, !DIExpression(), !9926)
    #dbg_value(ptr @15, !10818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9930)
    #dbg_value(i64 5, !10818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9930)
    #dbg_value(ptr @16, !10818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9932)
    #dbg_value(i64 8, !10818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9932)
    #dbg_value(ptr @17, !10818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9934)
    #dbg_value(i64 14, !10818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9934)
    #dbg_value(ptr @18, !10818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9936)
    #dbg_value(i64 14, !10818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9936)
    #dbg_value(ptr @19, !10818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(i64 11, !10818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(ptr %i.gi, !10820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9948)
    #dbg_value(ptr %i.gi, !10820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9951)
    #dbg_value(ptr %i.gi, !10820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9954)
    #dbg_value(ptr %i.gi, !10820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9957)
    #dbg_value(ptr %i.gi, !10820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9960)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9948)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9951)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9954)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9957)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9960)
    #dbg_value(ptr poison, !10828, !DIExpression(), !9961)
    #dbg_value(ptr @15, !10821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9948)
    #dbg_value(i64 5, !10821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9948)
    #dbg_value(ptr poison, !10829, !DIExpression(), !9962)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10822, !DIExpression(), !9963)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10839, !DIExpression(), !9971)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10842, !DIExpression(), !9972)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10823, !DIExpression(), !9973)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10839, !DIExpression(), !9975)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10843, !DIExpression(), !9976)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10824, !DIExpression(), !9977)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10839, !DIExpression(), !9979)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10844, !DIExpression(), !9980)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10825, !DIExpression(), !9981)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10839, !DIExpression(), !9983)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10845, !DIExpression(), !9984)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10826, !DIExpression(), !9985)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10839, !DIExpression(), !9987)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10846, !DIExpression(), !9988)
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.cf [
    i64 5, label %bb.bt
    i64 8, label %bb.bu
    i64 14, label %bb.bv
    i64 11, label %bb.bx
  ], !dbg !11157

bb.bt:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.gi, !10840, !DIExpression(), !9971)
    #dbg_value(ptr @15, !10841, !DIExpression(), !9971)
  %i.gj = load i32, ptr %i.gi, align 1, !dbg !11158
  %i.gk = xor i32 %i.gj, 1819309428, !dbg !11158
  %i.gl = getelementptr i8, ptr %i.gi, i64 4, !dbg !11158
  %i.gm = load i8, ptr %i.gl, align 1, !dbg !11158
  %i.gn = zext i8 %i.gm to i32, !dbg !11158
  %i.go = xor i32 %i.gn, 101, !dbg !11158
  %i.gp = or i32 %i.gk, %i.go, !dbg !11158
  %i.gq = icmp ne i32 %i.gp, 0, !dbg !11158
  %i.gr = zext i1 %i.gq to i32, !dbg !11158
  %i.gs = icmp eq i32 %i.gr, 0, !dbg !11158
  br i1 %i.gs, label %bb.ca, label %bb.cf, !dbg !11159

bb.bu:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.gi, !10840, !DIExpression(), !9975)
    #dbg_value(ptr @16, !10841, !DIExpression(), !9975)
  %i.gt = load i64, ptr %i.gi, align 1, !dbg !11160
  %i.gu = icmp ne i64 %i.gt, 7235419212958626407, !dbg !11160
  %i.gv = zext i1 %i.gu to i32, !dbg !11160
  %i.gw = icmp eq i32 %i.gv, 0, !dbg !11160
  br i1 %i.gw, label %bb.cb, label %bb.cf, !dbg !11161

bb.bv:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.gi, !10840, !DIExpression(), !9979)
    #dbg_value(ptr @17, !10841, !DIExpression(), !9979)
  %i.gx = load i64, ptr %i.gi, align 1, !dbg !11162
  %i.gy = xor i64 %i.gx, 7813573208857080432, !dbg !11162
  %i.gz = getelementptr i8, ptr %i.gi, i64 6, !dbg !11162
  %i.ha = load i64, ptr %i.gz, align 1, !dbg !11162
  %i.hb = xor i64 %i.ha, 8315175953955253359, !dbg !11162
  %i.hc = or i64 %i.gy, %i.hb, !dbg !11162
  %i.hd = icmp ne i64 %i.hc, 0, !dbg !11162
  %i.he = zext i1 %i.hd to i32, !dbg !11162
  %i.hf = icmp eq i32 %i.he, 0, !dbg !11162
  br i1 %i.hf, label %bb.cc, label %bb.bw, !dbg !11163

bb.bw:                                            ; preds = %bb.bv
    #dbg_value(ptr poison, !10828, !DIExpression(), !9989)
    #dbg_value(ptr @18, !10821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9957)
    #dbg_value(i64 14, !10821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9957)
    #dbg_value(ptr poison, !10829, !DIExpression(), !9990)
    #dbg_value(ptr %i.gi, !10840, !DIExpression(), !9983)
    #dbg_value(ptr @18, !10841, !DIExpression(), !9983)
  %i.hg = load i64, ptr %i.gi, align 1, !dbg !11164
  %i.hh = xor i64 %i.hg, 7164775599194924402, !dbg !11164
  %i.hi = getelementptr i8, ptr %i.gi, i64 6, !dbg !11164
  %i.hj = load i64, ptr %i.hi, align 1, !dbg !11164
  %i.hk = xor i64 %i.hj, 7308613718829785966, !dbg !11164
  %i.hl = or i64 %i.hh, %i.hk, !dbg !11164
  %i.hm = icmp ne i64 %i.hl, 0, !dbg !11164
  %i.hn = zext i1 %i.hm to i32, !dbg !11164
  %i.ho = icmp eq i32 %i.hn, 0, !dbg !11164
  br i1 %i.ho, label %bb.cd, label %bb.cf, !dbg !11165

bb.bx:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.gi, !10840, !DIExpression(), !9987)
    #dbg_value(ptr @19, !10841, !DIExpression(), !9987)
  %i.hp = load i64, ptr %i.gi, align 1, !dbg !11166
  %i.hq = xor i64 %i.hp, 8245922002648263028, !dbg !11166
  %i.hr = getelementptr i8, ptr %i.gi, i64 3, !dbg !11166
  %i.hs = load i64, ptr %i.hr, align 1, !dbg !11166
  %i.ht = xor i64 %i.hs, 8386104319403253605, !dbg !11166
  %i.hu = or i64 %i.hq, %i.ht, !dbg !11166
  %i.hv = icmp ne i64 %i.hu, 0, !dbg !11166
  %i.hw = zext i1 %i.hv to i32, !dbg !11166
  %i.hx = icmp eq i32 %i.hw, 0, !dbg !11166
  br i1 %i.hx, label %bb.ce, label %bb.cf, !dbg !11167

bb.by:                                            ; preds = %.noexc276.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
  br label %.loopexit, !dbg !11169

.loopexit.loopexit.split-lp.i.loopexit.split-lp:  ; preds = %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.er, %.body306.i, %.body293.i, %.body.i57, %.loopexit.split-lp.i
  %.sroa.0127.1.ph.i = phi i8 [ %.sroa.0127.4.i, %bb.er ], [ 1, %.body306.i ], [ 1, %.body293.i ], [ 1, %.body.i57 ], [ %.sroa.0127.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.sroa.0129.1.ph.i = phi i8 [ %.sroa.0129.4.i, %bb.er ], [ 1, %.body306.i ], [ 1, %.body293.i ], [ 1, %.body.i57 ], [ %.sroa.0129.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.sroa.0131.1.ph.i = phi i8 [ %.sroa.0131.4.i, %bb.er ], [ 1, %.body306.i ], [ 1, %.body293.i ], [ 1, %.body.i57 ], [ %.sroa.0131.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.pn261.ph.i = phi { ptr, i32 } [ %.pn252.i, %bb.er ], [ %eh.lpad-body307.i, %.body306.i ], [ %eh.lpad-body294.i, %.body293.i ], [ %eh.lpad-body.i, %.body.i57 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.pr.i = load i64, ptr %i.w, align 8, !dbg !11170, !noalias !10655
  %.not263.i = icmp eq i64 %.pr.i, -1, !dbg !11170
  br i1 %.not263.i, label %bb.ey, label %bb.fl, !dbg !11170

.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.loopexit.i.i.i319.i, %bb.du, %bb.bo, %bb.br, %bb.cf, %bb.ck, %bb.cu, %bb.de, %bb.do, %bb.dv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit.split-lp.i.loopexit.split-lp

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.et, %bb.dn, %.loopexit.i.i.i310.i, %bb.dd, %.loopexit.i.i.i298.i, %bb.ct, %.loopexit.i.i.i282.i, %bb.cj, %.loopexit.i.i.i.i
  %.sroa.0127.2.ph.i = phi i8 [ 1, %bb.dn ], [ 1, %.loopexit.i.i.i310.i ], [ %.sroa.0127.4.i, %bb.et ], [ 1, %bb.dd ], [ 1, %.loopexit.i.i.i298.i ], [ 1, %.invoke ], [ 1, %bb.ct ], [ 1, %bb.cj ], [ 1, %.loopexit.i.i.i282.i ], [ 1, %.loopexit.i.i.i.i ]
  %.sroa.0129.2.ph.i = phi i8 [ 1, %bb.dn ], [ 1, %.loopexit.i.i.i310.i ], [ %.sroa.0129.4.i, %bb.et ], [ 1, %bb.dd ], [ 1, %.loopexit.i.i.i298.i ], [ 1, %.invoke ], [ 1, %bb.ct ], [ 1, %bb.cj ], [ 1, %.loopexit.i.i.i282.i ], [ 1, %.loopexit.i.i.i.i ]
  %.sroa.0131.2.ph.i = phi i8 [ 1, %bb.dn ], [ 1, %.loopexit.i.i.i310.i ], [ %.sroa.0131.4.i, %bb.et ], [ 1, %bb.dd ], [ 1, %.loopexit.i.i.i298.i ], [ 1, %.invoke ], [ 1, %bb.ct ], [ 1, %bb.cj ], [ 1, %.loopexit.i.i.i282.i ], [ 1, %.loopexit.i.i.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit.split-lp.i.loopexit.split-lp

bb.bz:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !11134, !noalias !10655
  %i.hy = load i64, ptr %i.z, align 8, !dbg !11134, !range !1042, !noalias !10655, !noundef !594
  %.not247.i = icmp eq i64 %i.hy, -2, !dbg !11134
  br i1 %.not247.i, label %bb.dz, label %bb.dy, !dbg !11134

bb.ca:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
    #dbg_value(ptr %i.z, !10853, !DIExpression(), !9993)
  %i.hz = load i64, ptr %i.z, align 8, !dbg !11171, !range !1042, !noalias !10655, !noundef !594
  %.not260.i = icmp eq i64 %i.hz, -2, !dbg !11171
  br i1 %.not260.i, label %bb.cg, label %.invoke, !dbg !11136, !prof !1419

bb.cb:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
    #dbg_value(ptr %i.y, !10853, !DIExpression(), !9995)
  %i.ia = load i64, ptr %i.y, align 8, !dbg !11172, !range !1042, !noalias !10655, !noundef !594
  %.not259.i = icmp eq i64 %i.ia, -2, !dbg !11172
  br i1 %.not259.i, label %bb.cq, label %.invoke, !dbg !11136, !prof !1419

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
    #dbg_value(ptr %i.x, !10857, !DIExpression(), !9998)
  %i.ib = load i64, ptr %i.x, align 8, !dbg !11173, !range !1042, !noalias !10655, !noundef !594
  %.not258.i = icmp eq i64 %i.ib, -2, !dbg !11173
  br i1 %.not258.i, label %bb.da, label %.invoke, !dbg !11136, !prof !1419

bb.cd:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
    #dbg_value(ptr %i.w, !10863, !DIExpression(), !10001)
  %i.ic = load i64, ptr %i.w, align 8, !dbg !11174, !range !936, !noalias !10655, !noundef !594
  %.not257.i = icmp eq i64 %i.ic, -1, !dbg !11174
  br i1 %.not257.i, label %bb.dk, label %.invoke, !dbg !11136, !prof !1419

bb.ce:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
    #dbg_value(ptr undef, !10434, !DIExpression(), !9577)
  %.not256.i = icmp eq i8 %.sroa.090.0.i.ph, -1, !dbg !11175
  br i1 %.not256.i, label %bb.dr, label %.invoke, !dbg !11136, !prof !1419

bb.cf:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11168, !noalias !10809
  %i.id = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs3JBf551F2Kj_4qlog(ptr nonnull %i.ga)
          to label %bb.dx unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11136, !noalias !10759 ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogsf_1__NtB2v_12CommonFieldsNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  store i64 %.sroa.5141.0.copyload.i, ptr %.sroa.770.0..sroa_idx71.i, align 8, !dbg !11136, !noalias !10655
  br label %.loopexit.loopexit.split-lp.i.loopexit.split-lp, !dbg !11136

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB16_6string6StringEEEECs3JBf551F2Kj_4qlog.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i.i, %bb.df
  store i64 %.pr365.i, ptr %i.x, align 8, !dbg !11136, !noalias !10655
  store ptr %.pre620.i, ptr %.sroa.667.0..sroa_idx68.i, align 8, !dbg !11136, !noalias !10655
  store i64 %.sroa.5141.0.copyload.i, ptr %.sroa.770.0..sroa_idx71.i, align 8, !dbg !11136, !noalias !10655
  br label %.backedge, !dbg !11136

bb.dk:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.788.i), !dbg !11136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !11136, !noalias !10655
    #dbg_value(ptr poison, !10924, !DIExpression(), !10166)
    #dbg_value(ptr poison, !10929, !DIExpression(), !10171)
    #dbg_declare(ptr poison, !10932, !DIExpression(), !10172)
  call void @llvm.experimental.noalias.scope.decl(metadata !10938), !dbg !11256
    #dbg_value(ptr %i.ga, !1707, !DIExpression(), !10176)
    #dbg_value(ptr %i.ga, !1712, !DIExpression(), !10178)
  call void @llvm.experimental.noalias.scope.decl(metadata !10939), !dbg !11257
    #dbg_value(ptr %i.ga, !957, !DIExpression(), !10182)
    #dbg_value(ptr %i.ga, !976, !DIExpression(), !10184)
    #dbg_value(ptr %i.ga, !979, !DIExpression(), !10186)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !10940, !noalias !10941, !noundef !594 ; 2 uses
  %.promoted.i.i.i.i309.i = load i64, ptr %i.gc, align 8, !alias.scope !10942, !noalias !10941 ; 2 uses
  %i.kf = icmp ult i64 %.promoted.i.i.i.i309.i, %i.ke, !dbg !11258
  br i1 %i.kf, label %.lr.ph.i.i.i.i312.i, label %.loopexit.i.i.i310.i, !dbg !11258

.lr.ph.i.i.i.i312.i:                              ; preds = %bb.dk
  %i.kg = load ptr, ptr %i.gb, align 8, !alias.scope !10940, !noalias !10941, !nonnull !594, !noundef !594
  br label %bb.dl, !dbg !11258

bb.dl:                                            ; preds = %bb.dm, %.lr.ph.i.i.i.i312.i
  %i.kh = phi i64 [ %.promoted.i.i.i.i309.i, %.lr.ph.i.i.i.i312.i ], [ %i.kk, %bb.dm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10943), !dbg !11259
    #dbg_value(ptr %i.gb, !989, !DIExpression(), !10194)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kh, !dbg !11260
  %i.kj = load i8, ptr %i.ki, align 1, !dbg !11260, !noalias !10944, !noundef !594
  switch i8 %i.kj, label %bb.dn [
    i8 32, label %bb.dm
    i8 10, label %bb.dm
    i8 9, label %bb.dm
    i8 13, label %bb.dm
    i8 58, label %bb.do
  ], !dbg !11261, !prof !1428

bb.dm:                                            ; preds = %bb.dl, %bb.dl, %bb.dl, %bb.dl
    #dbg_value(ptr %i.ga, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10198)
  %i.kk = add i64 %i.kh, 1, !dbg !11262           ; 3 uses
  store i64 %i.kk, ptr %i.gc, align 8, !dbg !11262, !alias.scope !10945, !noalias !10941
    #dbg_value(ptr %i.ga, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10194)
  %exitcond.not.i.i.i.i313.i = icmp eq i64 %i.kk, %i.ke, !dbg !11258
  br i1 %exitcond.not.i.i.i.i313.i, label %.loopexit.i.i.i310.i, label %bb.dl, !dbg !11258

.loopexit.i.i.i310.i:                             ; preds = %bb.dk, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11263, !noalias !10946
  store i64 3, ptr %i.d, align 8, !dbg !11263, !noalias !10946
  %i.kl = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ga, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc314.i unwind label %.loopexit.split-lp.i, !dbg !11264, !noalias !10759

.noexc314.i:                                      ; preds = %.loopexit.i.i.i310.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11265, !noalias !10946
  br label %.loopexit370.i, !dbg !11266

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11267, !noalias !10946
  store i64 6, ptr %i.e, align 8, !dbg !11267, !noalias !10946
  %i.km = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ga, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc315.i unwind label %.loopexit.split-lp.i, !dbg !11268, !noalias !10759

.noexc315.i:                                      ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11269, !noalias !10946
  br label %.loopexit370.i, !dbg !11270

bb.do:                                            ; preds = %bb.dl
    #dbg_value(ptr %i.ga, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10202)
  %i.kn = add i64 %i.kh, 1, !dbg !11271
  store i64 %i.kn, ptr %i.gc, align 8, !dbg !11271, !alias.scope !10947, !noalias !10941
    #dbg_declare(ptr poison, !10598, !DIExpression(), !10206)
    #dbg_value(ptr %i.ga, !10602, !DIExpression(), !10207)
    #dbg_declare(ptr poison, !10601, !DIExpression(), !10206)
  invoke void @_RINvXNvCs3JBf551F2Kj_4qlogsd_1__NtB5_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1R_4read9SliceReadEEB5_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ga)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEB23_.exit.i unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11272, !noalias !10759

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEB23_.exit.i: ; preds = %bb.do
  %.pr366.i = load i64, ptr %i.s, align 8, !dbg !11273, !noalias !10655 ; 3 uses
  %i.ko = icmp eq i64 %.pr366.i, -1, !dbg !11273
  %.pre619.i = load ptr, ptr %.sroa.4143.0..sroa_idx.i, align 8, !dbg !11274, !noalias !10655 ; 3 uses
  br i1 %i.ko, label %.loopexit370.i, label %bb.dp, !dbg !11275

.loopexit370.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEB23_.exit.i, %.noexc315.i, %.noexc314.i
  %i.kp = phi ptr [ %i.km, %.noexc315.i ], [ %i.kl, %.noexc314.i ], [ %.pre619.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEB23_.exit.i ], !dbg !11276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11277, !noalias !10655
    #dbg_value(ptr %i.kp, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
    #dbg_value(i64 -1, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.788.i), !dbg !11277
  br label %.loopexit, !dbg !11198

bb.dp:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEB23_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.788.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5144.0..sroa_idx.i, i64 56, i1 false), !dbg !11278, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !11277, !noalias !10655
    #dbg_value(ptr %i.w, !10949, !DIExpression(), !10210)
  %i.kq = load i64, ptr %i.w, align 8, !dbg !11279, !range !936, !alias.scope !10954, !noalias !10655, !noundef !594
  %i.kr = icmp eq i64 %i.kq, -1, !dbg !11279
  br i1 %i.kr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog13ReferenceTimeEEBZ_.exit.i, label %bb.dq, !dbg !11279

bb.dq:                                            ; preds = %bb.dp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog13ReferenceTimeEEBZ_.exit.i unwind label %.thread.i, !dbg !11279, !noalias !10759

.thread.i:                                        ; preds = %bb.dq
  %i.ks = landingpad { ptr, i32 }
          cleanup
  store i64 %.pr366.i, ptr %i.w, align 8, !dbg !11136, !noalias !10655
  store ptr %.pre619.i, ptr %.sroa.685.0..sroa_idx86.i, align 8, !dbg !11136, !noalias !10655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.788.0..sroa_idx89.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.788.i, i64 56, i1 false), !dbg !11136, !noalias !10655
  br label %bb.fl, !dbg !11170

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog13ReferenceTimeEEBZ_.exit.i: ; preds = %bb.dq, %bb.dp
  store i64 %.pr366.i, ptr %i.w, align 8, !dbg !11136, !noalias !10655
  store ptr %.pre619.i, ptr %.sroa.685.0..sroa_idx86.i, align 8, !dbg !11136, !noalias !10655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.788.0..sroa_idx89.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.788.i, i64 56, i1 false), !dbg !11136, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.788.i), !dbg !11277
  br label %.backedge, !dbg !11136

bb.dr:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !11176, !noalias !10655
    #dbg_value(ptr poison, !10955, !DIExpression(), !10215)
    #dbg_value(ptr poison, !10961, !DIExpression(), !10220)
    #dbg_declare(ptr poison, !10964, !DIExpression(), !10221)
  call void @llvm.experimental.noalias.scope.decl(metadata !10970), !dbg !11280
    #dbg_value(ptr %i.ga, !1707, !DIExpression(), !10225)
    #dbg_value(ptr %i.ga, !1712, !DIExpression(), !10227)
  call void @llvm.experimental.noalias.scope.decl(metadata !10971), !dbg !11281
    #dbg_value(ptr %i.ga, !957, !DIExpression(), !10231)
    #dbg_value(ptr %i.ga, !976, !DIExpression(), !10233)
    #dbg_value(ptr %i.ga, !979, !DIExpression(), !10235)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.ku = load i64, ptr %i.kt, align 8, !alias.scope !10972, !noalias !10973, !noundef !594 ; 2 uses
  %.promoted.i.i.i.i318.i = load i64, ptr %i.gc, align 8, !alias.scope !10974, !noalias !10973 ; 2 uses
  %i.kv = icmp ult i64 %.promoted.i.i.i.i318.i, %i.ku, !dbg !11282
  br i1 %i.kv, label %.lr.ph.i.i.i.i321.i, label %.loopexit.i.i.i319.i, !dbg !11282

.lr.ph.i.i.i.i321.i:                              ; preds = %bb.dr
  %i.kw = load ptr, ptr %i.gb, align 8, !alias.scope !10972, !noalias !10973, !nonnull !594, !noundef !594
  br label %bb.ds, !dbg !11282

bb.ds:                                            ; preds = %bb.dt, %.lr.ph.i.i.i.i321.i
  %i.kx = phi i64 [ %.promoted.i.i.i.i318.i, %.lr.ph.i.i.i.i321.i ], [ %i.la, %bb.dt ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10975), !dbg !11283
    #dbg_value(ptr %i.gb, !989, !DIExpression(), !10243)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kx, !dbg !11284
  %i.kz = load i8, ptr %i.ky, align 1, !dbg !11284, !noalias !10976, !noundef !594
  switch i8 %i.kz, label %bb.du [
    i8 32, label %bb.dt
    i8 10, label %bb.dt
    i8 9, label %bb.dt
    i8 13, label %bb.dt
    i8 58, label %bb.dv
  ], !dbg !11285, !prof !1428

bb.dt:                                            ; preds = %bb.ds, %bb.ds, %bb.ds, %bb.ds
    #dbg_value(ptr %i.ga, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10247)
  %i.la = add i64 %i.kx, 1, !dbg !11286           ; 3 uses
  store i64 %i.la, ptr %i.gc, align 8, !dbg !11286, !alias.scope !10977, !noalias !10973
    #dbg_value(ptr %i.ga, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10243)
  %exitcond.not.i.i.i.i322.i = icmp eq i64 %i.la, %i.ku, !dbg !11282
  br i1 %exitcond.not.i.i.i.i322.i, label %.loopexit.i.i.i319.i, label %bb.ds, !dbg !11282

.loopexit.i.i.i319.i:                             ; preds = %bb.dr, %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11287, !noalias !10978
  store i64 3, ptr %i.b, align 8, !dbg !11287, !noalias !10978
  %i.lb = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ga, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc323.i unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11288, !noalias !10759

.noexc323.i:                                      ; preds = %.loopexit.i.i.i319.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11289, !noalias !10978
  br label %.loopexit638.i, !dbg !11290

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11291, !noalias !10978
  store i64 6, ptr %i.c, align 8, !dbg !11291, !noalias !10978
  %i.lc = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ga, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc324.i unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11292, !noalias !10759

.noexc324.i:                                      ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11293, !noalias !10978
  br label %.loopexit638.i, !dbg !11294

bb.dv:                                            ; preds = %bb.ds
    #dbg_value(ptr %i.ga, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10251)
  %i.ld = add i64 %i.kx, 1, !dbg !11295
  store i64 %i.ld, ptr %i.gc, align 8, !dbg !11295, !alias.scope !10979, !noalias !10973
    #dbg_declare(ptr poison, !10639, !DIExpression(), !10255)
    #dbg_value(ptr %i.ga, !10643, !DIExpression(), !10256)
    #dbg_declare(ptr poison, !10642, !DIExpression(), !10255)
  invoke void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2u_4read9SliceReadEEB1n_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ga)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEEB2F_.exit.i unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !11296, !noalias !10759

.invoke:                                          ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %.sroa.4.0.copyload.i.i.i.i.i.i.i909 = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.cd ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.ca ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.cb ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.cc ], [ 11, %bb.ce ]
  %i.le = phi ptr [ @18, %bb.cd ], [ @15, %bb.ca ], [ @16, %bb.cb ], [ @17, %bb.cc ], [ @19, %bb.ce ]
  %i.lf = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error15duplicate_fieldCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.le, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i909)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !dbg !11136, !noalias !10759

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEEB2F_.exit.i: ; preds = %bb.dv
  %.pre.i = load i8, ptr %i.r, align 8, !dbg !11297, !range !1418, !noalias !10655
  %i.lg = trunc nuw i8 %.pre.i to i1, !dbg !11297
  br i1 %i.lg, label %.loopexit638.i.loopexit, label %bb.dw, !dbg !11298

.loopexit638.i.loopexit:                          ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEEB2F_.exit.i
  %.pre = load ptr, ptr %i.fs, align 8, !dbg !11299, !noalias !10655
  br label %.loopexit638.i, !dbg !11299

.loopexit638.i:                                   ; preds = %.noexc323.i, %.noexc324.i, %.loopexit638.i.loopexit
  %i.lh = phi ptr [ %.pre, %.loopexit638.i.loopexit ], [ %i.lb, %.noexc323.i ], [ %i.lc, %.noexc324.i ], !dbg !11299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11176, !noalias !10655
    #dbg_value(ptr %i.lh, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
    #dbg_value(i64 -1, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
  br label %.loopexit, !dbg !11198

bb.dw:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEEB2F_.exit.i
  %i.li = load i8, ptr %i.ft, align 1, !dbg !11300, !range !10647, !noalias !10655, !noundef !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !11176, !noalias !10655
    #dbg_value(i8 %i.li, !10366, !DIExpression(), !9850)
  br label %.outer, !dbg !11136

bb.dx:                                            ; preds = %bb.cf
    #dbg_value(ptr %i.id, !10980, !DIExpression(), !10261)
  %.not255.i = icmp eq ptr %i.id, null, !dbg !11301
  br i1 %.not255.i, label %.backedge, label %.loopexit, !dbg !11302

.backedge:                                        ; preds = %bb.dx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3JBf551F2Kj_4qlog13ReferenceTimeEEBZ_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB16_6string6StringEEEECs3JBf551F2Kj_4qlog.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit296.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit.i
  br label %bb.bo, !dbg !11136

bb.dy:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !11134, !noalias !10655
  br label %bb.ea, !dbg !11303

bb.dz:                                            ; preds = %bb.bz
    #dbg_value(i64 -1, !10656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10263)
    #dbg_value(i64 -1, !10385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10264)
  store i64 -1, ptr %i.q, align 8, !dbg !11304, !noalias !10655
  br label %bb.ea, !dbg !11303

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.0131.4.i = phi i8 [ 0, %bb.dy ], [ 1, %bb.dz ], !dbg !11130 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !11305, !noalias !10655
  %i.lj = load i64, ptr %i.y, align 8, !dbg !11305, !range !1042, !noalias !10655, !noundef !594
  %.not248.i = icmp eq i64 %i.lj, -2, !dbg !11305
  br i1 %.not248.i, label %bb.ec, label %bb.eb, !dbg !11305

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !11305, !noalias !10655
  br label %bb.ed, !dbg !11306

bb.ec:                                            ; preds = %bb.ea
    #dbg_value(i64 -1, !10656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10266)
    #dbg_value(i64 -1, !10389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10267)
  store i64 -1, ptr %i.p, align 8, !dbg !11307, !noalias !10655
  br label %bb.ed, !dbg !11306

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sroa.0129.4.i = phi i8 [ 0, %bb.eb ], [ 1, %bb.ec ], !dbg !11131 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !11308, !noalias !10655
  %i.lk = load i64, ptr %i.x, align 8, !dbg !11308, !range !1042, !noalias !10655, !noundef !594
  %.not249.i = icmp eq i64 %i.lk, -2, !dbg !11308
  br i1 %.not249.i, label %bb.ef, label %bb.ee, !dbg !11308

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !11308, !noalias !10655
  br label %bb.eg, !dbg !11309

bb.ef:                                            ; preds = %bb.ed
    #dbg_value(i64 -1, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10269)
    #dbg_value(i64 -1, !10393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10270)
  store i64 -1, ptr %i.o, align 8, !dbg !11310, !noalias !10655
  br label %bb.eg, !dbg !11309

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.0127.4.i = phi i8 [ 0, %bb.ee ], [ 1, %bb.ef ], !dbg !11132 ; 3 uses
  %i.ll = load i64, ptr %i.w, align 8, !dbg !11311, !range !936, !noalias !10655, !noundef !594 ; 2 uses
  %.not250.i = icmp eq i64 %i.ll, -1, !dbg !11311
  br i1 %.not250.i, label %bb.ei, label %bb.eh, !dbg !11311

bb.eh:                                            ; preds = %bb.eg
    #dbg_value(i64 %i.ll, !10394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10271)
  %.sroa.3108.0.copyload.i = load ptr, ptr %.sroa.685.0..sroa_idx86.i, align 8, !dbg !11311, !noalias !10655
    #dbg_value(ptr %.sroa.3108.0.copyload.i, !10394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10271)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.788.0..sroa_idx89.i, i64 56, i1 false), !dbg !11311
  br label %bb.en, !dbg !11312

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !11311, !noalias !10655
    #dbg_value(ptr @18, !10711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10272)
    #dbg_value(ptr @18, !10727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10273)
    #dbg_value(ptr @18, !10720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9848)
    #dbg_value(i64 14, !10711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10272)
    #dbg_value(i64 14, !10727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10273)
    #dbg_value(i64 14, !10720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9848)
  invoke void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCs3JBf551F2Kj_4qlogsd_1__NtB3f_13ReferenceTimeNtB28_11Deserialize11deserialize9___VisitorEB3f_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 14)
          to label %bb.ek unwind label %bb.ej, !dbg !11313, !noalias !10759

bb.ej:                                            ; preds = %bb.ei
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #14
          to label %bb.eo unwind label %bb.ev, !dbg !11309, !noalias !10759

bb.ek:                                            ; preds = %bb.ei
  %i.ln = load i64, ptr %i.n, align 8, !dbg !11314, !range !936, !noalias !10655, !noundef !594 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, -1, !dbg !11314
  %i.lp = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !11315
  %i.lq = load ptr, ptr %i.lp, align 8, !dbg !11315, !noalias !10655 ; 2 uses
  br i1 %i.lo, label %bb.el, label %bb.em, !dbg !11316

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11312, !noalias !10655
    #dbg_value(ptr %i.lq, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
    #dbg_value(i64 -1, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %bb.eq unwind label %bb.ep, !dbg !11309, !noalias !10759

bb.em:                                            ; preds = %bb.ek
  %.sroa.5177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !11317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5177.0..sroa_idx.i, i64 56, i1 false), !dbg !11317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !11312, !noalias !10655
    #dbg_value(i64 %i.ln, !10394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10271)
    #dbg_value(ptr %i.lq, !10394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10271)
  br label %bb.en, !dbg !11312

bb.en:                                            ; preds = %bb.em, %bb.eh
  %.sroa.0106.0.i = phi i64 [ %i.ll, %bb.eh ], [ %i.ln, %bb.em ], !dbg !11311
  %.sroa.3108.0.i = phi ptr [ %.sroa.3108.0.copyload.i, %bb.eh ], [ %i.lq, %bb.em ], !dbg !11311
    #dbg_value(ptr %.sroa.3108.0.i, !10394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10271)
    #dbg_value(i64 %.sroa.0106.0.i, !10394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10271)
  %.not254.i = icmp eq i8 %.sroa.090.0.i.ph, -1, !dbg !11318
  %..sroa.090.0.i = select i1 %.not254.i, i8 2, i8 %.sroa.090.0.i.ph, !dbg !11319
    #dbg_value(i8 %..sroa.090.0.i, !10398, !DIExpression(), !10274)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !11320, !noalias !10988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !11320, !noalias !10988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !11320, !noalias !10988
    #dbg_value(i64 %.sroa.0106.0.i, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
    #dbg_value(ptr %.sroa.3108.0.i, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
    #dbg_value(i8 %..sroa.090.0.i, !10319, !DIExpression(DW_OP_LLVM_fragment, 1152, 8), !10879)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !11309, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !11306, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11303, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11170, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11321, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !11322, !noalias !10655
  br label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsf_1__NtBb_12CommonFieldsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBV_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2y_4read9SliceReadEEBb_.exit, !dbg !11323

bb.eo:                                            ; preds = %bb.ep, %bb.ej
  %.pn.i52 = phi { ptr, i32 } [ %i.lr, %bb.ep ], [ %i.lm, %bb.ej ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #14
          to label %bb.er unwind label %bb.ev, !dbg !11306, !noalias !10759

bb.ep:                                            ; preds = %bb.el
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eq:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !11309, !noalias !10655
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %bb.et unwind label %bb.es, !dbg !11306, !noalias !10759

bb.er:                                            ; preds = %bb.es, %bb.eo
  %.pn252.i = phi { ptr, i32 } [ %i.ls, %bb.es ], [ %.pn.i52, %bb.eo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #14
          to label %.loopexit.loopexit.split-lp.i.loopexit.split-lp unwind label %bb.ev, !dbg !11303, !noalias !10759

bb.es:                                            ; preds = %bb.eq
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.et:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !11306, !noalias !10655
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.eu unwind label %.loopexit.split-lp.i, !dbg !11303, !noalias !10759

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !11303, !noalias !10655
  br label %.loopexit, !dbg !11324

.loopexit:                                        ; preds = %bb.dx, %.invoke, %bb.bp, %bb.by, %bb.eu, %.loopexit638.i, %.loopexit370.i, %.loopexit372.i, %.loopexit374.i, %.loopexit376.i
  %.sroa.18.0 = phi ptr [ %i.lq, %bb.eu ], [ %i.lf, %.invoke ], [ %i.iq, %.loopexit376.i ], [ %i.fx, %bb.bp ], [ %i.jh, %.loopexit374.i ], [ %i.lh, %.loopexit638.i ], [ %i.jy, %.loopexit372.i ], [ %i.gi, %bb.by ], [ %i.kp, %.loopexit370.i ], [ %i.id, %bb.dx ], !dbg !11324 ; 2 uses
  %.sroa.0127.5.i = phi i8 [ %.sroa.0127.4.i, %bb.eu ], [ 1, %.invoke ], [ 1, %.loopexit376.i ], [ 1, %bb.bp ], [ 1, %.loopexit374.i ], [ 1, %.loopexit638.i ], [ 1, %.loopexit372.i ], [ 1, %bb.by ], [ 1, %.loopexit370.i ], [ 1, %bb.dx ], !dbg !11132 ; 2 uses
  %.sroa.0129.5.i = phi i8 [ %.sroa.0129.4.i, %bb.eu ], [ 1, %.invoke ], [ 1, %.loopexit376.i ], [ 1, %bb.bp ], [ 1, %.loopexit374.i ], [ 1, %.loopexit638.i ], [ 1, %.loopexit372.i ], [ 1, %bb.by ], [ 1, %.loopexit370.i ], [ 1, %bb.dx ], !dbg !11131 ; 4 uses
  %.sroa.0131.5.i = phi i8 [ %.sroa.0131.4.i, %bb.eu ], [ 1, %.invoke ], [ 1, %.loopexit376.i ], [ 1, %bb.bp ], [ 1, %.loopexit374.i ], [ 1, %.loopexit638.i ], [ 1, %.loopexit372.i ], [ 1, %bb.by ], [ 1, %.loopexit370.i ], [ 1, %bb.dx ], !dbg !11130 ; 6 uses
    #dbg_value(i64 -1, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
    #dbg_value(ptr %.sroa.18.0, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
  %i.lt = load i64, ptr %i.w, align 8, !dbg !11170, !range !936, !noalias !10655, !noundef !594
  %.not264.i = icmp eq i64 %i.lt, -1, !dbg !11170
  br i1 %.not264.i, label %bb.ew, label %bb.ex, !dbg !11170

bb.ev:                                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.er, %bb.eo, %bb.ej
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11130, !noalias !10759
  unreachable, !dbg !11130
end_hunk_6
begin_hunk_7_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogsf_1__NtB2v_12CommonFieldsNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a

bb.ex:                                            ; preds = %.loopexit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEBD_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.w)
          to label %bb.ew unwind label %bb.ez, !dbg !11170, !noalias !10759

bb.ey:                                            ; preds = %bb.fl, %bb.ez, %.loopexit.loopexit.split-lp.i.loopexit.split-lp
  %.sroa.0127.6.i = phi i8 [ %.sroa.0127.5.i, %bb.ez ], [ %.sroa.0127.1341.i, %bb.fl ], [ %.sroa.0127.1.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ], !dbg !11132
  %.sroa.0129.6.i = phi i8 [ %.sroa.0129.5.i, %bb.ez ], [ %.sroa.0129.1342.i, %bb.fl ], [ %.sroa.0129.1.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ], !dbg !11131 ; 2 uses
  %.sroa.0131.6.i = phi i8 [ %.sroa.0131.5.i, %bb.ez ], [ %.sroa.0131.1343.i, %bb.fl ], [ %.sroa.0131.1.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ], !dbg !11130 ; 2 uses
  %.pn265.i = phi { ptr, i32 } [ %i.mb, %bb.ez ], [ %.pn261344.i, %bb.fl ], [ %.pn261.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %i.ly = load i64, ptr %i.x, align 8, !dbg !11321, !range !1042, !noalias !10655, !noundef !594
  %i.lz = icmp ne i64 %i.ly, -2, !dbg !11321
  %i.ma = trunc nuw i8 %.sroa.0127.6.i to i1, !dbg !11321
  %or.cond11.i = select i1 %i.lz, i1 %i.ma, i1 false, !dbg !11321
  br i1 %or.cond11.i, label %bb.fm, label %.body326.i, !dbg !11321

bb.ez:                                            ; preds = %bb.ex
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i53: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i56, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !11321, !noalias !10655
  %i.mc = load i64, ptr %i.y, align 8, !dbg !11322, !range !1042, !noalias !10655, !noundef !594
  %i.md = trunc nuw i8 %.sroa.0129.5.i to i1, !dbg !11322
    #dbg_value(ptr %i.y, !1051, !DIExpression(), !10278)
  %i.me = icmp ult i64 %i.mc, -2, !dbg !11322
  %or.cond367.not.i = select i1 %i.me, i1 %i.md, i1 false, !dbg !11322
  br i1 %or.cond367.not.i, label %bb.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54, !dbg !11322

bb.fa:                                            ; preds = %bb.ew
    #dbg_value(ptr %i.x, !1024, !DIExpression(), !10280)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i56 unwind label %bb.fb, !dbg !11325, !noalias !10759

bb.fb:                                            ; preds = %bb.fa
  %i.mf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.x, !1029, !DIExpression(), !10282)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body326.i unwind label %bb.fc, !dbg !11326, !noalias !10759

bb.fc:                                            ; preds = %bb.fb
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11325, !noalias !10759
  unreachable, !dbg !11325

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i56: ; preds = %bb.fa
    #dbg_value(ptr %i.x, !1029, !DIExpression(), !10284)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i53 unwind label %bb.fd, !dbg !11327, !noalias !10759

.body326.i:                                       ; preds = %bb.fm, %bb.fd, %bb.fb, %bb.ey
  %.sroa.0129.7.i = phi i8 [ %.sroa.0129.6.i, %bb.ey ], [ %.sroa.0129.6.i, %bb.fm ], [ %.sroa.0129.5.i, %bb.fb ], [ %.sroa.0129.5.i, %bb.fd ], !dbg !11131
  %.sroa.0131.7.i = phi i8 [ %.sroa.0131.6.i, %bb.ey ], [ %.sroa.0131.6.i, %bb.fm ], [ %.sroa.0131.5.i, %bb.fb ], [ %.sroa.0131.5.i, %bb.fd ], !dbg !11130 ; 2 uses
  %.pn267.i = phi { ptr, i32 } [ %.pn265.i, %bb.ey ], [ %.pn265.i, %bb.fm ], [ %i.mf, %bb.fb ], [ %i.mk, %bb.fd ] ; 2 uses
  %i.mh = load i64, ptr %i.y, align 8, !dbg !11322, !range !1042, !noalias !10655, !noundef !594
  %i.mi = icmp ne i64 %i.mh, -2, !dbg !11322
  %i.mj = trunc nuw i8 %.sroa.0129.7.i to i1, !dbg !11322
  %or.cond13.i = select i1 %i.mi, i1 %i.mj, i1 false, !dbg !11322
  br i1 %or.cond13.i, label %bb.fn, label %.body329.i, !dbg !11322

bb.fd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3JBf551F2Kj_4qlog.exit.i.i56
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %.body326.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i55, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !11322, !noalias !10655
  %i.ml = load i64, ptr %i.z, align 8, !dbg !11323, !range !1042, !noalias !10655, !noundef !594
  %i.mm = trunc nuw i8 %.sroa.0131.5.i to i1, !dbg !11323
    #dbg_value(ptr %i.z, !1051, !DIExpression(), !10286)
  %i.mn = icmp ult i64 %i.ml, -2, !dbg !11323
  %or.cond368.not.i = select i1 %i.mn, i1 %i.mm, i1 false, !dbg !11323
  br i1 %or.cond368.not.i, label %bb.fi, label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsf_1__NtBb_12CommonFieldsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBV_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2y_4read9SliceReadEEBb_.exit, !dbg !11323

bb.fe:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog.exit.i53
    #dbg_value(ptr %i.y, !1044, !DIExpression(), !10288)
    #dbg_value(ptr %i.y, !1003, !DIExpression(), !10290)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i55 unwind label %bb.ff, !dbg !11328, !noalias !10759

bb.ff:                                            ; preds = %bb.fe
  %i.mo = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.y, !1010, !DIExpression(), !10292)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body329.i unwind label %bb.fg, !dbg !11329, !noalias !10759

bb.fg:                                            ; preds = %bb.ff
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11328, !noalias !10759
  unreachable, !dbg !11328

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i55: ; preds = %bb.fe
    #dbg_value(ptr %i.y, !1010, !DIExpression(), !10294)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54 unwind label %bb.fh, !dbg !11330, !noalias !10759

.body329.i:                                       ; preds = %bb.fn, %bb.fh, %bb.ff, %.body326.i
  %.sroa.0131.8.i = phi i8 [ %.sroa.0131.7.i, %.body326.i ], [ %.sroa.0131.7.i, %bb.fn ], [ %.sroa.0131.5.i, %bb.ff ], [ %.sroa.0131.5.i, %bb.fh ], !dbg !11130
  %.pn269.i = phi { ptr, i32 } [ %.pn267.i, %.body326.i ], [ %.pn267.i, %bb.fn ], [ %i.mo, %bb.ff ], [ %i.mt, %bb.fh ] ; 2 uses
  %i.mq = load i64, ptr %i.z, align 8, !dbg !11323, !range !1042, !noalias !10655, !noundef !594
  %i.mr = icmp ne i64 %i.mq, -2, !dbg !11323
  %i.ms = trunc nuw i8 %.sroa.0131.8.i to i1, !dbg !11323
  %or.cond15.i = select i1 %i.mr, i1 %i.ms, i1 false, !dbg !11323
  br i1 %or.cond15.i, label %bb.fo, label %common.resume, !dbg !11323

bb.fh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i55
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body329.i

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54
    #dbg_value(ptr %i.z, !1044, !DIExpression(), !10296)
    #dbg_value(ptr %i.z, !1003, !DIExpression(), !10298)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i333.i unwind label %bb.fj, !dbg !11331, !noalias !10759

bb.fj:                                            ; preds = %bb.fi
  %i.mu = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.z, !1010, !DIExpression(), !10300)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.fk, !dbg !11332, !noalias !10759

bb.fk:                                            ; preds = %bb.fj
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !11331, !noalias !10759
  unreachable, !dbg !11331

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i333.i: ; preds = %bb.fi
    #dbg_value(ptr %i.z, !1010, !DIExpression(), !10302)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z), !dbg !11333, !noalias !10759
  br label %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsf_1__NtBb_12CommonFieldsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBV_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2y_4read9SliceReadEEBb_.exit, !dbg !11334

bb.fl:                                            ; preds = %.thread.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp
  %.pn261344.i = phi { ptr, i32 } [ %i.ks, %.thread.i ], [ %.pn261.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.0131.1343.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0131.1.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.0129.1342.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0129.1.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.0127.1341.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0127.1.ph.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEBD_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.w) #14
          to label %bb.ey unwind label %bb.ev, !dbg !11170, !noalias !10759

bb.fm:                                            ; preds = %bb.ey
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #14
          to label %.body326.i unwind label %bb.ev, !dbg !11321, !noalias !10759

bb.fn:                                            ; preds = %.body326.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #14
          to label %.body329.i unwind label %bb.ev, !dbg !11322, !noalias !10759

bb.fo:                                            ; preds = %.body329.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #14
          to label %common.resume unwind label %bb.ev, !dbg !11323, !noalias !10759

_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsf_1__NtBb_12CommonFieldsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBV_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2y_4read9SliceReadEEBb_.exit: ; preds = %bb.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i333.i
  %.sroa.18.1 = phi ptr [ %.sroa.18.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i333.i ], [ %.sroa.18.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.3108.0.i, %bb.en ], !dbg !11134
  %.sroa.063.1 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i333.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54 ], [ %.sroa.0106.0.i, %bb.en ], !dbg !11134
  %.sroa.36.0 = phi i8 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i333.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i54 ], [ %..sroa.090.0.i, %bb.en ], !dbg !11335
    #dbg_value(i8 %.sroa.36.0, !10319, !DIExpression(DW_OP_LLVM_fragment, 1152, 8), !10879)
    #dbg_value(i64 %.sroa.063.1, !10319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
    #dbg_value(ptr %.sroa.18.1, !10319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !11323, !noalias !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !11336
  %i.mw = load i8, ptr %i.bo, align 8, !dbg !11337, !noundef !594
  %i.mx = add i8 %i.mw, 1, !dbg !11337
  store i8 %i.mx, ptr %i.bo, align 8, !dbg !11337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !11338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !11339
  store i64 %.sroa.063.1, ptr %i.aq, align 8, !dbg !11339
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !11339
  store ptr %.sroa.18.1, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !11339
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !11339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.32.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i, i64 56, i1 false), !dbg !11339
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 72, !dbg !11339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33, i64 24, i1 false), !dbg !11339
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 96, !dbg !11339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, i64 24, i1 false), !dbg !11339
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 120, !dbg !11339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.35.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.35, i64 24, i1 false), !dbg !11339
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 144, !dbg !11339
  store i8 %.sroa.36.0, ptr %.sroa.36.0..sroa_idx, align 8, !dbg !11339
  %i.my = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.fq unwind label %bb.fp, !dbg !11340 ; 5 uses

bb.fp:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsf_1__NtBb_12CommonFieldsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBV_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2y_4read9SliceReadEEBb_.exit
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3JBf551F2Kj_4qlog12CommonFieldsNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.aq) #14
          to label %common.resume unwind label %bb.bj, !dbg !11341

bb.fq:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsf_1__NtBb_12CommonFieldsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBV_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2y_4read9SliceReadEEBb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ar, ptr noundef nonnull align 8 dereferenceable(152) %i.aq, i64 152, i1 false), !dbg !11338
  %i.na = getelementptr inbounds nuw i8, ptr %i.ar, i64 152, !dbg !11338
  store ptr %i.my, ptr %i.na, align 8, !dbg !11338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !11341
  %i.nb = load i64, ptr %i.ar, align 8, !dbg !11338, !range !936, !noundef !594 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, -1, !dbg !11338
  br i1 %i.nc, label %bb.fs, label %bb.fr, !dbg !11342

bb.fr:                                            ; preds = %bb.fq
  %.not = icmp eq ptr %i.my, null, !dbg !11338
  br i1 %.not, label %.thread412, label %bb.ft, !dbg !11342

.thread412:                                       ; preds = %bb.fr
    #dbg_value(i64 %i.nb, !10320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10989)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !11343
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !11343
    #dbg_value(ptr %.sroa.421.0.copyload, !10320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10989)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !11343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.522.0..sroa_idx, i64 136, i1 false), !dbg !11343
    #dbg_value(i64 %i.nb, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %.sroa.421.0.copyload, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !11344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !11344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !11344
    #dbg_value(i64 %i.nb, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %.sroa.421.0.copyload, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
  br label %.thread85, !dbg !11344

bb.fs:                                            ; preds = %bb.fq
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !11345
  %i.ne = load ptr, ptr %i.nd, align 8, !dbg !11345, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(ptr %i.ne, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i64 -1, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !11344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !11344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !11344
    #dbg_value(i64 %i.nb, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(ptr %i.ne, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
  %.not92 = icmp eq ptr %i.my, null, !dbg !11344
  br i1 %.not92, label %.thread85, label %bb.fu, !dbg !11344

bb.ft:                                            ; preds = %bb.fr
    #dbg_value(ptr %i.my, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i64 -1, !10315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33), !dbg !11344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !11344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !11344
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12CommonFieldsEBD_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.ar), !dbg !11344
  br label %.thread85, !dbg !11344

.thread85:                                        ; preds = %.thread412, %bb.ft, %bb.fu, %bb.fs
  %.sroa.09.291 = phi i64 [ -1, %bb.fs ], [ -1, %bb.fu ], [ -1, %bb.ft ], [ %i.nb, %.thread412 ]
  %.sroa.10.290 = phi ptr [ %i.ne, %bb.fs ], [ %i.ne, %bb.fu ], [ %i.my, %bb.ft ], [ %.sroa.421.0.copyload, %.thread412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !11344
  br label %bb.bl, !dbg !11344

bb.fu:                                            ; preds = %bb.fs
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.my), !dbg !11344
  br label %.thread85, !dbg !11344

bb.fv:                                            ; preds = %bb.d, %bb.bl
  %.sroa.10.3 = phi ptr [ %i.bj, %bb.d ], [ %.sroa.10.1, %bb.bl ], !dbg !10517
    #dbg_value(ptr %.sroa.10.3, !10315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(ptr %.sroa.10.3, !10323, !DIExpression(), !10990)
    #dbg_value(ptr %1, !1432, !DIExpression(), !10304)
    #dbg_value(ptr %.sroa.10.3, !1436, !DIExpression(), !10304)
  %i.nf = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs3JBf551F2Kj_4qlog(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !11346
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11347
  store ptr %i.nf, ptr %i.ng, align 8, !dbg !11347
  store i64 -1, ptr %0, align 8, !dbg !11347
  br label %bb.fx, !dbg !11348

bb.fw:                                            ; preds = %bb.bl
    #dbg_value(i64 %.sroa.09.1, !10322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10991)
    #dbg_value(ptr %.sroa.10.1, !10322, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10991)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.14, i64 136, i1 false), !dbg !11350
  store i64 %.sroa.09.1, ptr %0, align 8, !dbg !11349
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11349
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !11349
  br label %bb.fx, !dbg !11351

bb.fx:                                            ; preds = %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !11120
  br label %bb.fy, !dbg !11352

bb.fy:                                            ; preds = %bb.fx, %.loopexit99, %bb.bd
  ret void, !dbg !11353
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !309 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !1521, !DIExpression(), !11357)
    #dbg_declare(ptr poison, !1524, !DIExpression(), !11358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11361
  call fastcc void @_RINvNvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB8_9SeqAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1), !dbg !11361
  %i.c = load i8, ptr %i.b, align 8, !dbg !11361, !range !1418, !noundef !594
  %i.d = trunc nuw i8 %i.c to i1, !dbg !11361
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !11362

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11363
  %i.f = load ptr, ptr %i.e, align 8, !dbg !11363, !nonnull !594, !align !1416, !noundef !594
    #dbg_value(ptr %i.f, !1526, !DIExpression(), !11359)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11364
  store ptr %i.f, ptr %i.g, align 8, !dbg !11364
  store i64 -2, ptr %0, align 8, !dbg !11364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11365
  br label %bb.f, !dbg !11366

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !11367
  %i.i = load i8, ptr %i.h, align 1, !dbg !11367, !range !1418, !noundef !594
  %i.j = trunc nuw i8 %i.i to i1, !dbg !11367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11365
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !11362

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !dbg !11368
  br label %bb.f, !dbg !11366

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11369
  %i.k = load ptr, ptr %1, align 8, !dbg !11370, !nonnull !594, !align !1416, !noundef !594
    #dbg_declare(ptr poison, !1533, !DIExpression(), !11355)
    #dbg_value(ptr %i.k, !1538, !DIExpression(), !11356)
    #dbg_declare(ptr poison, !1537, !DIExpression(), !11355)
  call void @_RINvXs6_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k), !dbg !11371
  %i.l = load i64, ptr %i.a, align 8, !dbg !11369, !range !936, !noundef !594
  %i.m = icmp eq i64 %i.l, -1, !dbg !11369
  br i1 %i.m, label %bb.g, label %bb.h, !dbg !11362

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void, !dbg !11372

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11363
  %i.o = load ptr, ptr %i.n, align 8, !dbg !11363, !nonnull !594, !align !1416, !noundef !594
    #dbg_value(ptr %i.o, !1528, !DIExpression(), !11360)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11373
  store ptr %i.o, ptr %i.p, align 8, !dbg !11373
  store i64 -2, ptr %0, align 8, !dbg !11373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11374
  br label %bb.f, !dbg !11375

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !11367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11374
  br label %bb.f, !dbg !11376
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsb_NtCsenfyI6F4F2A_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs3JBf551F2Kj_4qlogs9_1__NtB35_16VantagePointTypeNtB1l_11Deserialize11deserialize7___FieldEEB35_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11389 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !11501, !DIExpression(), !11511)
    #dbg_declare(ptr poison, !11502, !DIExpression(), !11512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11513), !dbg !11573
    #dbg_value(ptr %1, !957, !DIExpression(), !11393)
    #dbg_value(ptr %1, !976, !DIExpression(), !11395)
    #dbg_value(ptr %1, !979, !DIExpression(), !11397)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11514, !noundef !594 ; 2 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !11513 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j, !dbg !11574
  br i1 %i.k, label %.lr.ph.i, label %.loopexit, !dbg !11574

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11514, !nonnull !594, !noundef !594
  br label %bb.b, !dbg !11574

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11515), !dbg !11575
    #dbg_value(ptr %i.l, !989, !DIExpression(), !11401)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n, !dbg !11576
  %i.p = load i8, ptr %i.o, align 1, !dbg !11576, !noalias !11516, !noundef !594
  switch i8 %i.p, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.e
    i8 125, label %bb.f
  ], !dbg !11577, !prof !1425

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11405)
  %i.q = add i64 %i.n, 1, !dbg !11578             ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !dbg !11578, !alias.scope !11517
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11401)
  %exitcond.not.i = icmp eq i64 %i.q, %i.j, !dbg !11574
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !11574

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11579
  store i64 3, ptr %i.e, align 8, !dbg !11579
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !11580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11581
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11582
  store ptr %i.r, ptr %i.s, align 8, !dbg !11582
  store i8 -1, ptr %0, align 8, !dbg !11582
  br label %bb.n, !dbg !11583

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11584
  store i64 17, ptr %i.f, align 8, !dbg !11584
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !11585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11586
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11587
  store ptr %i.t, ptr %i.u, align 8, !dbg !11587
  store i8 -1, ptr %0, align 8, !dbg !11587
  br label %bb.n, !dbg !11588

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11518), !dbg !11590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11519), !dbg !11590
    #dbg_declare(ptr poison, !11520, !DIExpression(), !11413)
    #dbg_value(ptr %1, !11524, !DIExpression(), !11414)
    #dbg_declare(ptr poison, !11523, !DIExpression(), !11413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11527), !dbg !11591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11528), !dbg !11591
    #dbg_value(ptr %1, !11529, !DIExpression(), !11420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11533), !dbg !11592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11534), !dbg !11592
    #dbg_value(ptr %1, !11535, !DIExpression(), !11426)
    #dbg_declare(ptr poison, !11538, !DIExpression(), !11427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11540), !dbg !11593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11541), !dbg !11593
    #dbg_value(ptr %1, !11542, !DIExpression(), !11437)
    #dbg_declare(ptr poison, !11543, !DIExpression(), !11438)
    #dbg_value(ptr %1, !11549, !DIExpression(), !11441)
    #dbg_value(ptr %i.l, !993, !DIExpression(), !11443)
  %i.v = add i64 %i.n, 1, !dbg !11594
  store i64 %i.v, ptr %i.h, align 8, !dbg !11594, !alias.scope !11551
    #dbg_value(ptr %1, !11552, !DIExpression(), !11449)
    #dbg_value(ptr %1, !11555, !DIExpression(), !11452)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11595
    #dbg_value(ptr poison, !11553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11453)
    #dbg_value(i64 poison, !11553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11453)
end_hunk_7
