Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.00?download=true
inline.NumInlined: 1005
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs1_Cs3f36owOmepS_6quicheNtB6_10Connection14do_stream_recvQShECsjfnSKV9Rz3v_3h3i:bb.a
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !10162
  store ptr null, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10162
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !10162
  store i8 %.65, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !10162
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 81, !dbg !10162
  store i8 2, ptr %.sroa.9.0..sroa_idx, align 1, !dbg !10162
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 82, !dbg !10162
  store i8 %., ptr %.sroa.10.0..sroa_idx, align 2, !dbg !10162
  store i64 24, ptr %i.c, align 8, !dbg !10162
  %i.bv = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.af unwind label %bb.ak, !dbg !10163 ; 2 uses

.thread:                                          ; preds = %bb.j, %bb.o, %bb.p, %bb.q, %bb.u, %bb.v, %bb.x, %bb.y, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.aj, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.l, !dbg !10164

bb.af:                                            ; preds = %bb.ae
  %i.bw = extractvalue { i64, i32 } %i.bv, 0, !dbg !10163
  %i.bx = extractvalue { i64, i32 } %i.bv, 1, !dbg !10163
    #dbg_value(i64 %i.bw, !9913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10083)
    #dbg_value(i32 %i.bx, !9913, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false), !dbg !10165
  %i.by = invoke { i64, ptr } @_RNvMNtCs3JBf551F2Kj_4qlog8streamerNtB2_12QlogStreamer27add_event_data_with_instant(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.b, i64 noundef %i.bw, i32 noundef %i.bx)
          to label %bb.ag unwind label %.thread, !dbg !10166 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.bz = extractvalue { i64, ptr } %i.by, 0, !dbg !10167
  %i.ca = extractvalue { i64, ptr } %i.by, 1, !dbg !10167 ; 4 uses
    #dbg_value(i64 %i.bz, !10084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10088)
    #dbg_value(ptr %i.ca, !10084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10088)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10168
  %cond = icmp eq i64 %i.bz, 3, !dbg !10169
  br i1 %cond, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3JBf551F2Kj_4qlog5ErrorEECsjfnSKV9Rz3v_3h3i.exit, !dbg !10169

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(ptr poison, !6457, !DIExpression(), !9809)
    #dbg_value(ptr poison, !6478, !DIExpression(), !9811)
    #dbg_value(ptr poison, !6485, !DIExpression(), !9813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10170
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
    #dbg_value(ptr %i.ca, !6488, !DIExpression(), !9815)
    #dbg_declare(ptr poison, !6492, !DIExpression(), !9816)
    #dbg_value(i64 1, !6503, !DIExpression(), !9818)
    #dbg_value(i64 1, !6511, !DIExpression(), !9820)
    #dbg_value(i64 -1, !6518, !DIExpression(), !9822)
    #dbg_value(ptr %i.ca, !6523, !DIExpression(), !9824)
    #dbg_value(ptr %i.ca, !6509, !DIExpression(), !9818)
  %i.cb = ptrtoint ptr %i.ca to i64, !dbg !10171  ; 2 uses
    #dbg_value(i64 %i.cb, !6493, !DIExpression(), !9825)
  %i.cc = and i64 %i.cb, 3, !dbg !10172
  switch i64 %i.cc, label %default.unreachable72 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i.exit.i.i
    i64 3, label %bb.ai
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i.exit.i.i
    i64 1, label %bb.aj
  ], !dbg !10173, !prof !6527

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(i64 %i.cb, !6495, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9826)
    #dbg_value(i64 %i.cb, !6530, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9828)
  %i.cd = icmp ult ptr %i.ca, inttoptr (i64 188978561024 to ptr), !dbg !10174
    #dbg_value(i8 poison, !6633, !DIExpression(), !9830)
    #dbg_value(ptr poison, !6643, !DIExpression(), !9831)
  %i.ce = and i64 %i.cb, 1095216660480, !dbg !10175
  %i.cf = icmp ne i64 %i.ce, 1095216660480, !dbg !10175
  call void @llvm.assume(i1 %i.cd), !dbg !10176
  call void @llvm.assume(i1 %i.cf), !dbg !10176
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i.exit.i.i, !dbg !10177

bb.aj:                                            ; preds = %bb.ah
    #dbg_value(ptr %i.ca, !6515, !DIExpression(), !9820)
    #dbg_value(ptr %i.ca, !6521, !DIExpression(), !9822)
  %i.cg = getelementptr i8, ptr %i.ca, i64 -1, !dbg !10178 ; 2 uses
    #dbg_value(ptr %i.cg, !6498, !DIExpression(), !9832)
    #dbg_declare(ptr poison, !6646, !DIExpression(), !9834)
    #dbg_value(ptr %i.cg, !6649, !DIExpression(), !9835)
    #dbg_value(ptr %i.cg, !6651, !DIExpression(), !9837)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ], !dbg !10179
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10180 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !dbg !10180, !alias.scope !10089
  store i8 3, ptr %i.a, align 8, !dbg !10181, !alias.scope !10089
    #dbg_value(ptr %i.a, !6657, !DIExpression(), !9841)
    #dbg_value(ptr %i.ch, !6662, !DIExpression(), !9843)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i.exit.i.i unwind label %.thread, !dbg !10182

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i.exit.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10183
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3JBf551F2Kj_4qlog5ErrorEECsjfnSKV9Rz3v_3h3i.exit, !dbg !10184

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3JBf551F2Kj_4qlog5ErrorEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjfnSKV9Rz3v_3h3i.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10164
  br label %bb.ad, !dbg !10185

bb.ak:                                            ; preds = %bb.ae
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9EventDataECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c) #24
          to label %bb.l unwind label %bb.al, !dbg !10164

bb.al:                                            ; preds = %bb.m, %bb.ak
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !10186
  unreachable, !dbg !10186

bb.am:                                            ; preds = %._crit_edge, %bb.ad
  %i.cj = phi ptr [ %.pre, %._crit_edge ], [ %i.bp, %bb.ad ], !dbg !10187
  call void @llvm.experimental.noalias.scope.decl(metadata !10090), !dbg !10125
    #dbg_value(ptr %i.e, !6311, !DIExpression(), !9850)
  call void @llvm.experimental.noalias.scope.decl(metadata !10091), !dbg !10188
    #dbg_value(ptr %i.e, !6315, !DIExpression(), !9853)
    #dbg_value(ptr %i.e, !6318, !DIExpression(), !9854)
    #dbg_value(i64 1, !6320, !DIExpression(), !9856)
    #dbg_value(i8 1, !6323, !DIExpression(), !9856)
    #dbg_value(i64 1, !6325, !DIExpression(), !9858)
    #dbg_value(i8 1, !6327, !DIExpression(), !9858)
    #dbg_value(ptr %i.cj, !6322, !DIExpression(), !9859)
    #dbg_value(ptr %i.cj, !6326, !DIExpression(), !9858)
  %i.ck = atomicrmw add ptr %i.cj, i64 -1 release, align 8, !dbg !10189, !noalias !10092
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !10190
  br i1 %i.cl, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit68, !dbg !10190

bb.an:                                            ; preds = %bb.am
    #dbg_value(i8 2, !6329, !DIExpression(), !9861)
  fence acquire, !dbg !10191
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #23, !dbg !10192
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit68, !dbg !10192

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit68: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10125
  br label %bb.i, !dbg !10193

bb.ao:                                            ; preds = %bb.ad
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15remove_readableCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.ap unwind label %.thread, !dbg !10194

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15insert_readableCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %._crit_edge unwind label %.thread, !dbg !10195

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load ptr, ptr %i.e, align 8, !dbg !10187, !alias.scope !10092
  br label %bb.am, !dbg !10195

bb.aq:                                            ; preds = %bb.o
  br i1 %i.am, label %bb.ar, label %bb.as, !dbg !10196

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap7collectCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.p, i64 noundef %2, i1 noundef zeroext %i.x)
          to label %bb.as unwind label %.thread, !dbg !10197

bb.as:                                            ; preds = %bb.ar, %bb.aq
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15remove_readableCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.at unwind label %.thread, !dbg !10198

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !10093), !dbg !10125
    #dbg_value(ptr %i.e, !6311, !DIExpression(), !9865)
  call void @llvm.experimental.noalias.scope.decl(metadata !10094), !dbg !10199
    #dbg_value(ptr %i.e, !6315, !DIExpression(), !9869)
    #dbg_value(ptr %i.e, !6318, !DIExpression(), !9871)
    #dbg_value(i64 1, !6320, !DIExpression(), !9873)
    #dbg_value(i8 1, !6323, !DIExpression(), !9873)
    #dbg_value(i64 1, !6325, !DIExpression(), !9875)
    #dbg_value(i8 1, !6327, !DIExpression(), !9875)
  %i.cm = load ptr, ptr %i.e, align 8, !dbg !10200, !alias.scope !10095, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.cm, !6322, !DIExpression(), !9877)
    #dbg_value(ptr %i.cm, !6326, !DIExpression(), !9875)
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !dbg !10201, !noalias !10095
  %i.co = icmp eq i64 %i.cn, 1, !dbg !10202
  br i1 %i.co, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit69, !dbg !10202

bb.au:                                            ; preds = %bb.at
    #dbg_value(i8 2, !6329, !DIExpression(), !9879)
  fence acquire, !dbg !10203
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #23, !dbg !10204
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit69, !dbg !10204

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit69: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10125
  br label %bb.i, !dbg !10111

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn, !dbg !10186
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_Cs3f36owOmepS_6quicheNtB6_10Connection14stream_do_sendRShjNCNvB2_11stream_send0ECsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 16 dereferenceable(15552) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10234 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [272 x i8], align 8               ; 4 uses
  %i.c = alloca [272 x i8], align 8               ; 16 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !10522, !DIExpression(), !10533)
    #dbg_value(ptr poison, !10534, !DIExpression(), !10537)
  %i.e = alloca [8 x i8], align 8                 ; 15 uses
  %i.f = alloca [8 x i8], align 8                 ; 15 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %3, !10487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10538)
    #dbg_value(i64 %4, !10487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10538)
    #dbg_value(i1 %5, !10488, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10538)
    #dbg_value(i1 %5, !10506, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10539)
    #dbg_value(i1 %5, !10540, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10544)
    #dbg_value(ptr %1, !10485, !DIExpression(), !10538)
    #dbg_value(ptr %1, !10545, !DIExpression(), !10550)
    #dbg_value(i64 %2, !10486, !DIExpression(), !10538)
    #dbg_value(i64 %2, !10551, !DIExpression(), !10554)
    #dbg_value(i64 %2, !10555, !DIExpression(), !10559)
    #dbg_value(i64 %2, !10546, !DIExpression(), !10550)
    #dbg_value(i64 %2, !10555, !DIExpression(), !10561)
    #dbg_value(i64 %2, !10551, !DIExpression(), !10563)
    #dbg_value(i64 %2, !10564, !DIExpression(), !10570)
    #dbg_value(i64 %2, !10571, !DIExpression(), !10576)
    #dbg_declare(ptr poison, !10489, !DIExpression(), !10577)
    #dbg_declare(ptr %i.f, !10502, !DIExpression(), !10578)
    #dbg_declare(ptr %i.e, !10513, !DIExpression(), !10579)
    #dbg_declare(ptr %i.c, !10519, !DIExpression(), !10580)
    #dbg_value(i8 1, !10547, !DIExpression(), !10550)
    #dbg_value(i64 1, !10581, !DIExpression(), !10587)
    #dbg_value(i8 0, !10583, !DIExpression(), !10587)
    #dbg_value(i64 1, !10592, !DIExpression(), !10597)
    #dbg_value(i8 0, !10594, !DIExpression(), !10597)
    #dbg_declare(ptr poison, !10598, !DIExpression(), !10602)
    #dbg_value(i64 1, !10581, !DIExpression(), !10606)
    #dbg_value(i8 0, !10583, !DIExpression(), !10606)
    #dbg_value(i64 1, !10592, !DIExpression(), !10609)
    #dbg_value(i8 0, !10594, !DIExpression(), !10609)
    #dbg_declare(ptr poison, !10598, !DIExpression(), !10612)
    #dbg_value(i64 poison, !10613, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10621)
    #dbg_value(i64 poison, !10613, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10621)
    #dbg_value(i8 0, !10541, !DIExpression(), !10544)
  %i.h = and i64 %2, 2, !dbg !10882
  %i.i = icmp eq i64 %i.h, 0, !dbg !10882         ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.b, !dbg !10553

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 15519, !dbg !10883
  %i.k = load i8, ptr %i.j, align 1, !dbg !10883, !range !6234, !noundef !2385
  %i.l = zext nneg i8 %i.k to i64, !dbg !10883
    #dbg_value(i8 %i.k, !10556, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10559)
  %i.m = and i64 %2, 1, !dbg !10884
  %i.n = icmp eq i64 %i.m, %i.l, !dbg !10884
  br i1 %i.n, label %bb.c, label %bb.d, !dbg !10558

bb.c:                                             ; preds = %bb.b, %bb.a
    #dbg_value(i64 %4, !10490, !DIExpression(), !10622)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 15360, !dbg !10885
  %i.p = load i64, ptr %i.o, align 16, !dbg !10885, !noundef !2385 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 15352, !dbg !10886 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !10886, !noundef !2385
  %i.s = sub i64 %i.p, %i.r, !dbg !10885
  %i.t = icmp ult i64 %i.s, %4, !dbg !10885
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !10885

bb.d:                                             ; preds = %bb.b
  store i64 6, ptr %0, align 8, !dbg !10887
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10887
  store i64 %2, ptr %i.u, align 8, !dbg !10887
  br label %bb.cb, !dbg !10888

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 13328, !dbg !10889
  store i64 1, ptr %i.v, align 16, !dbg !10889
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13336, !dbg !10889
  store i64 %i.p, ptr %i.w, align 8, !dbg !10889
  br label %bb.f, !dbg !10890

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 15336, !dbg !10891 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !dbg !10891, !noundef !2385 ; 3 uses
    #dbg_value(i64 %i.y, !10491, !DIExpression(), !10624)
    #dbg_value(i64 %i.y, !10505, !DIExpression(), !10539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10892
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 14920, !dbg !10893 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !10894
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 15519, !dbg !10895 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !10895, !range !6234, !noundef !2385
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !10895
  call void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap13get_or_createCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.z, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(256) %i.aa, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(256) %1, i1 noundef zeroext true, i1 noundef zeroext %i.ad), !dbg !10896
  %i.ae = load i64, ptr %i.g, align 8, !dbg !10892, !range !6701, !noundef !2385 ; 2 uses
  switch i64 %i.ae, label %bb.ce [
    i64 -1, label %bb.g
    i64 11, label %bb.cd
  ], !dbg !10897

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !10898
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !10898, !nonnull !2385, !align !6702, !noundef !2385 ; 30 uses
    #dbg_value(ptr %i.ag, !10492, !DIExpression(), !10625)
    #dbg_value(ptr %i.ag, !10626, !DIExpression(), !10629)
    #dbg_value(ptr %i.ag, !10630, !DIExpression(), !10636)
    #dbg_value(ptr %i.ag, !10637, !DIExpression(), !10640)
    #dbg_value(ptr %i.ag, !10630, !DIExpression(), !10642)
    #dbg_value(ptr %i.ag, !10626, !DIExpression(), !10644)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10899
    #dbg_value(ptr %i.ag, !10645, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10649)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128, !dbg !10900 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 304, !dbg !10900 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !10900, !noundef !2385 ; 4 uses
    #dbg_value(i64 %i.aj, !10497, !DIExpression(), !10650)
    #dbg_value(ptr %i.ag, !10651, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10654)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 336, !dbg !10901 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !dbg !10901, !range !6234, !noundef !2385
  %i.am = trunc nuw i8 %i.al to i1, !dbg !10901
  br i1 %i.am, label %bb.k, label %bb.h, !dbg !10902

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.ag, !10655, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10658)
    #dbg_value(ptr %i.ag, !10522, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !10660)
    #dbg_value(ptr poison, !10523, !DIExpression(), !10661)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 144, !dbg !10903
  %i.ao = load i64, ptr %i.an, align 8, !dbg !10903, !range !6333, !noundef !2385
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !10904
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !10904

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 152, !dbg !10903
    #dbg_value(ptr %i.ag, !10524, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !10662)
    #dbg_value(ptr %i.ag, !10663, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !10667)
    #dbg_value(ptr poison, !10525, !DIExpression(), !10668)
    #dbg_value(ptr poison, !10664, !DIExpression(), !10669)
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !10905, !noundef !2385
  %i.as = icmp eq i64 %i.ar, %i.aj, !dbg !10905
  br i1 %i.as, label %bb.k, label %bb.j, !dbg !10659

bb.j:                                             ; preds = %bb.h, %bb.i
    #dbg_value(ptr %i.ag, !10645, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10671)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 352, !dbg !10906
  %i.au = load i64, ptr %i.at, align 8, !dbg !10906, !noundef !2385
  %i.av = add i64 %i.au, %i.aj, !dbg !10907
    #dbg_value(ptr %i.ag, !10672, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10675)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 328, !dbg !10908
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !10908, !noundef !2385
  %i.ay = icmp ult i64 %i.av, %i.ax, !dbg !10907
    #dbg_value(i1 %i.ay, !10498, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10676)
  br label %bb.k, !dbg !10909

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j
  %.sroa.018.0 = phi i1 [ %i.ay, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], !dbg !10629 ; 2 uses
    #dbg_value(i8 poison, !10498, !DIExpression(), !10676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10677), !dbg !10910
    #dbg_value(ptr %i.ah, !6719, !DIExpression(), !10266)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 296, !dbg !10911 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !dbg !10911, !alias.scope !10677, !noundef !2385 ; 2 uses
    #dbg_value(i64 %i.ba, !6721, !DIExpression(), !10267)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 288 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10677, !noundef !2385 ; 2 uses
    #dbg_value(ptr %i.ah, !6728, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !10269)
    #dbg_value(ptr %i.ah, !6744, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !10271)
    #dbg_value(ptr %i.ah, !6750, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !10273)
    #dbg_value(i64 %i.ba, !6741, !DIExpression(), !10274)
    #dbg_value(i64 %i.ba, !6748, !DIExpression(), !10275)
    #dbg_value(i64 %i.ba, !6755, !DIExpression(), !10276)
    #dbg_value(i64 %i.ba, !6758, !DIExpression(), !10278)
  %i.bd = icmp ult i64 %i.ba, %i.bc, !dbg !10912
  br i1 %i.bd, label %.lr.ph.i, label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10912

.lr.ph.i:                                         ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 280
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !10677, !noundef !2385
  %i.bh = load i64, ptr %i.be, align 8, !range !6764, !alias.scope !10677, !noundef !2385 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !10677, !nonnull !2385, !noundef !2385
  br label %bb.m, !dbg !10912

bb.l:                                             ; preds = %bb.m
  %i.bk = add nuw i64 %.sroa.01.019.i, 1, !dbg !10913 ; 2 uses
    #dbg_value(i64 %i.bk, !6721, !DIExpression(), !10267)
    #dbg_value(ptr %i.ah, !6728, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !10269)
    #dbg_value(ptr %i.ah, !6744, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !10271)
    #dbg_value(ptr %i.ah, !6750, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !10273)
    #dbg_value(i64 %i.bk, !6741, !DIExpression(), !10274)
    #dbg_value(i64 %i.bk, !6748, !DIExpression(), !10275)
    #dbg_value(i64 %i.bk, !6755, !DIExpression(), !10276)
    #dbg_value(i64 %i.bk, !6758, !DIExpression(), !10278)
  %exitcond.not.i = icmp eq i64 %i.bk, %i.bc, !dbg !10912
  br i1 %exitcond.not.i, label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread, label %bb.m, !dbg !10912

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.01.019.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.bk, %bb.l ] ; 2 uses
    #dbg_value(i64 %.sroa.01.019.i, !6721, !DIExpression(), !10267)
    #dbg_value(i64 %i.bg, !6754, !DIExpression(), !10276)
    #dbg_value(i64 %i.bg, !6762, !DIExpression(), !10278)
  %i.bl = add i64 %.sroa.01.019.i, %i.bg, !dbg !10914 ; 2 uses
    #dbg_value(i64 %i.bl, !6765, !DIExpression(), !10280)
    #dbg_value(i64 %i.bh, !6768, !DIExpression(), !10280)
  %.not.i = icmp ult i64 %i.bl, %i.bh, !dbg !10915
  %i.bm = select i1 %.not.i, i64 0, i64 %i.bh, !dbg !10915
  %.sroa.06.0.i = sub nuw i64 %i.bl, %i.bm, !dbg !10915
    #dbg_value(i64 %.sroa.06.0.i, !6770, !DIExpression(), !10282)
    #dbg_value(i64 %.sroa.06.0.i, !6742, !DIExpression(), !10283)
    #dbg_value(ptr %i.bj, !6774, !DIExpression(), !10282)
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %.sroa.06.0.i, !dbg !10916 ; 4 uses
    #dbg_value(ptr %i.bn, !6723, !DIExpression(), !10284)
    #dbg_value(ptr %i.bn, !6777, !DIExpression(), !10286)
    #dbg_value(ptr %i.bn, !6782, !DIExpression(), !10288)
    #dbg_value(ptr %i.bn, !6787, !DIExpression(), !10290)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32, !dbg !10917
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !10917, !noalias !10677, !noundef !2385
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24, !dbg !10918
  %i.br = load i64, ptr %i.bq, align 8, !dbg !10918, !noalias !10677, !noundef !2385 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !10919
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !10919, !noalias !10677, !noundef !2385 ; 2 uses
  %.neg.i = sub i64 %i.bt, %i.br, !dbg !10920
  %i.bu = sub i64 0, %i.bp, !dbg !10921
  %i.bv = icmp eq i64 %.neg.i, %i.bu, !dbg !10921
    #dbg_value(i64 %.sroa.01.019.i, !6721, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10267)
  br i1 %i.bv, label %bb.l, label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit, !dbg !10922

_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 40, !dbg !10923
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !10923, !noalias !10677, !noundef !2385
  %i.by = sub i64 %i.br, %i.bt, !dbg !10924
  %i.bz = add i64 %i.by, %i.bx, !dbg !10924       ; 2 uses
    #dbg_value(i64 %i.bz, !10632, !DIExpression(), !10678)
    #dbg_value(ptr %i.ag, !10679, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10683)
    #dbg_value(ptr %i.ag, !10685, !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value), !10691)
    #dbg_value(ptr %i.ag, !10645, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10693)
  %i.ca = icmp ult i64 %i.bz, %i.aj
  br i1 %i.ca, label %bb.n, label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10925

bb.n:                                             ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.ag, !10672, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10695)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 328, !dbg !10926
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !10926, !noundef !2385
  %i.cd = icmp ult i64 %i.bz, %i.cc, !dbg !10927
    #dbg_value(i1 %i.cd, !10499, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10696)
  br label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10928

_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread: ; preds = %bb.l, %bb.k, %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit, %bb.n
  %.sroa.020.0 = phi i1 [ %i.cd, %bb.n ], [ false, %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit ], [ false, %bb.k ], [ false, %bb.l ], !dbg !10678
    #dbg_value(i8 poison, !10499, !DIExpression(), !10696)
  %i.ce = tail call noundef zeroext i1 @_RNvMs1_NtCs3f36owOmepS_6quiche6streamNtB5_6Stream11is_completeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(368) %i.ag), !dbg !10929
    #dbg_value(i1 %i.ce, !10500, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10697)
  %i.cf = tail call noundef zeroext i1 @_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf5ready(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ag), !dbg !10930
    #dbg_value(i1 %i.cf, !10501, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10931
    #dbg_value(ptr %i.ag, !10588, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !10699)
    #dbg_value(ptr %i.ag, !10700, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !10703)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 344, !dbg !10932 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !10932, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.ch, !10582, !DIExpression(), !10705)
    #dbg_value(ptr %i.ch, !10593, !DIExpression(), !10597)
  %i.ci = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !dbg !10933
    #dbg_value(i64 %i.ci, !10589, !DIExpression(), !10706)
  %i.cj = icmp slt i64 %i.ci, 0, !dbg !10934
  br i1 %i.cj, label %bb.p, label %bb.o, !dbg !10934

bb.o:                                             ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread
  %i.ck = load ptr, ptr %i.cg, align 8, !dbg !10935, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.ck, !10599, !DIExpression(), !10707)
  store ptr %i.ck, ptr %i.f, align 8, !dbg !10936
    #dbg_value(ptr %i.ag, !10708, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10715)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 248, !dbg !10937
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !10937, !range !6333, !noundef !2385
  %i.cn = trunc nuw i64 %i.cm to i1, !dbg !10938
  br i1 %i.cn, label %bb.q, label %bb.r, !dbg !10938

bb.p:                                             ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufNtB5_7SendBuf9off_frontCsjfnSKV9Rz3v_3h3i.exit.thread
  tail call void @llvm.trap(), !dbg !10939
  unreachable, !dbg !10939

bb.q:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 256, !dbg !10937
  %i.cp = load i64, ptr %i.co, align 8, !dbg !10940, !noundef !2385
    #dbg_value(i64 %i.cp, !10712, !DIExpression(), !10716)
    #dbg_value(i64 %i.cp, !10503, !DIExpression(), !10717)
  %.not = xor i1 %i.ce, true, !dbg !10941
  %brmerge = or i1 %i.cf, %.not, !dbg !10941
  br i1 %brmerge, label %bb.s, label %bb.t, !dbg !10941

bb.r:                                             ; preds = %bb.o
  %i.cq = icmp eq i64 %i.y, 0, !dbg !10942
  %i.cr = icmp ne i64 %4, 0                       ; 2 uses
  %or.cond = and i1 %i.cr, %i.cq, !dbg !10942
  br i1 %or.cond, label %bb.y, label %bb.x, !dbg !10942

bb.s:                                             ; preds = %bb.t, %bb.q
  store i64 12, ptr %0, align 8, !dbg !10943
end_hunk_0
begin_hunk_1_@_RINvMs1_Cs3f36owOmepS_6quicheNtB6_10Connection14stream_do_sendRShjNCNvB2_11stream_send0ECsjfnSKV9Rz3v_3h3i:bb.a
  store i64 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !11056
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !11056
  store ptr null, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !11056
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !11056
  store i8 %.114, ptr %.sroa.834.0..sroa_idx, align 8, !dbg !11056
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 81, !dbg !11056
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 1, !dbg !11056
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 82, !dbg !11056
  store i8 2, ptr %.sroa.1035.0..sroa_idx, align 2, !dbg !11056
  store i64 24, ptr %i.c, align 8, !dbg !11056
  %i.gn = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.bk unwind label %bb.bo, !dbg !11057 ; 2 uses

.thread:                                          ; preds = %bb.as, %bb.ax, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.by, %bb.bz, %bb.bm, %bb.bk
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !11058

bb.bk:                                            ; preds = %bb.bj
  %i.go = extractvalue { i64, i32 } %i.gn, 0, !dbg !11057
  %i.gp = extractvalue { i64, i32 } %i.gn, 1, !dbg !11057
    #dbg_value(i64 %i.go, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10861)
    #dbg_value(i32 %i.gp, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false), !dbg !11059
  %i.gq = invoke { i64, ptr } @_RNvMNtCs3JBf551F2Kj_4qlog8streamerNtB2_12QlogStreamer27add_event_data_with_instant(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.ge, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.b, i64 noundef %i.go, i32 noundef %i.gp)
          to label %bb.bl unwind label %.thread, !dbg !11060 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.gr = extractvalue { i64, ptr } %i.gq, 0, !dbg !11061 ; 2 uses
    #dbg_value(i64 %i.gr, !10862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10866)
    #dbg_value(ptr poison, !10862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10866)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11062
  %.not109 = icmp eq i64 %i.gr, -1, !dbg !11063
  br i1 %.not109, label %bb.bn, label %bb.bm, !dbg !11063

bb.bm:                                            ; preds = %bb.bl
  %i.gs = extractvalue { i64, ptr } %i.gq, 1, !dbg !11061
    #dbg_value(ptr %i.gs, !10862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10866)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3JBf551F2Kj_4qlog5ErrorEECsjfnSKV9Rz3v_3h3i(i64 %i.gr, ptr %i.gs)
          to label %bb.bn unwind label %.thread, !dbg !11063

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11058
  br label %bb.bi, !dbg !11064

bb.bo:                                            ; preds = %bb.bj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9EventDataECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c) #24
          to label %bb.aj unwind label %bb.bp, !dbg !11058

bb.bp:                                            ; preds = %bb.ak, %bb.u, %bb.bo
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !11065
  unreachable, !dbg !11065

bb.bq:                                            ; preds = %bb.bi
  %or.cond10 = and i1 %.sroa.025.0, %i.di, !dbg !11066
  br i1 %or.cond10, label %bb.by, label %bb.bw, !dbg !11066

bb.br:                                            ; preds = %bb.bi
  store i64 0, ptr %0, align 8, !dbg !11067
  call void @llvm.experimental.noalias.scope.decl(metadata !10867), !dbg !10999
    #dbg_value(ptr %i.e, !6311, !DIExpression(), !10408)
  call void @llvm.experimental.noalias.scope.decl(metadata !10868), !dbg !11068
    #dbg_value(ptr %i.e, !6315, !DIExpression(), !10412)
    #dbg_value(ptr %i.e, !6318, !DIExpression(), !10414)
    #dbg_value(i64 1, !6320, !DIExpression(), !10416)
    #dbg_value(i8 1, !6323, !DIExpression(), !10416)
    #dbg_value(i64 1, !6325, !DIExpression(), !10418)
    #dbg_value(i8 1, !6327, !DIExpression(), !10418)
  %i.gu = load ptr, ptr %i.e, align 8, !dbg !11069, !alias.scope !10869, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.gu, !6322, !DIExpression(), !10420)
    #dbg_value(ptr %i.gu, !6326, !DIExpression(), !10418)
  %i.gv = atomicrmw add ptr %i.gu, i64 -1 release, align 8, !dbg !11070, !noalias !10869
  %i.gw = icmp eq i64 %i.gv, 1, !dbg !11071
  br i1 %i.gw, label %bb.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit134, !dbg !11071

bb.bs:                                            ; preds = %bb.br
    #dbg_value(i8 2, !6329, !DIExpression(), !10422)
  fence acquire, !dbg !11072
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit134 unwind label %bb.bt, !dbg !11073

bb.bt:                                            ; preds = %bb.bx, %bb.bs, %bb.x, %bb.t, %bb.aa, %bb.ac
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit132

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit134: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10999
  br label %bb.bu, !dbg !11074

bb.bu:                                            ; preds = %bb.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit134
  call void @llvm.experimental.noalias.scope.decl(metadata !10871), !dbg !10947
    #dbg_value(ptr %i.f, !6311, !DIExpression(), !10426)
  call void @llvm.experimental.noalias.scope.decl(metadata !10872), !dbg !11075
    #dbg_value(ptr %i.f, !6315, !DIExpression(), !10430)
    #dbg_value(ptr %i.f, !6318, !DIExpression(), !10432)
    #dbg_value(i64 1, !6320, !DIExpression(), !10434)
    #dbg_value(i8 1, !6323, !DIExpression(), !10434)
    #dbg_value(i64 1, !6325, !DIExpression(), !10436)
    #dbg_value(i8 1, !6327, !DIExpression(), !10436)
  %i.gy = load ptr, ptr %i.f, align 8, !dbg !11076, !alias.scope !10873, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.gy, !6322, !DIExpression(), !10438)
    #dbg_value(ptr %i.gy, !6326, !DIExpression(), !10436)
  %i.gz = atomicrmw add ptr %i.gy, i64 -1 release, align 8, !dbg !11077, !noalias !10873
  %i.ha = icmp eq i64 %i.gz, 1, !dbg !11078
  br i1 %i.ha, label %bb.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit135, !dbg !11078

bb.bv:                                            ; preds = %bb.bu
    #dbg_value(i8 2, !6329, !DIExpression(), !10440)
  fence acquire, !dbg !11079
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23, !dbg !11080
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit135, !dbg !11080

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit135: ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10947
  br label %bb.cb, !dbg !10960

bb.bw:                                            ; preds = %bb.bz, %bb.bq
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11081
  store i64 %i.df, ptr %i.hb, align 8, !dbg !11081
  store i64 -1, ptr %0, align 8, !dbg !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !10874), !dbg !10999
    #dbg_value(ptr %i.e, !6311, !DIExpression(), !10444)
  call void @llvm.experimental.noalias.scope.decl(metadata !10875), !dbg !11082
    #dbg_value(ptr %i.e, !6315, !DIExpression(), !10448)
    #dbg_value(ptr %i.e, !6318, !DIExpression(), !10450)
    #dbg_value(i64 1, !6320, !DIExpression(), !10452)
    #dbg_value(i8 1, !6323, !DIExpression(), !10452)
    #dbg_value(i64 1, !6325, !DIExpression(), !10454)
    #dbg_value(i8 1, !6327, !DIExpression(), !10454)
  %i.hc = load ptr, ptr %i.e, align 8, !dbg !11083, !alias.scope !10876, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.hc, !6322, !DIExpression(), !10456)
    #dbg_value(ptr %i.hc, !6326, !DIExpression(), !10454)
  %i.hd = atomicrmw add ptr %i.hc, i64 -1 release, align 8, !dbg !11084, !noalias !10876
  %i.he = icmp eq i64 %i.hd, 1, !dbg !11085
  br i1 %i.he, label %bb.bx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit137, !dbg !11085

bb.bx:                                            ; preds = %bb.bw
    #dbg_value(i8 2, !6329, !DIExpression(), !10458)
  fence acquire, !dbg !11086
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit137 unwind label %bb.bt, !dbg !11087

bb.by:                                            ; preds = %bb.bq
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15remove_writableCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.bz unwind label %.thread, !dbg !11088

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15insert_writableCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.bw unwind label %.thread, !dbg !11089

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit137: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10999
  call void @llvm.experimental.noalias.scope.decl(metadata !10877), !dbg !10947
    #dbg_value(ptr %i.f, !6311, !DIExpression(), !10462)
  call void @llvm.experimental.noalias.scope.decl(metadata !10878), !dbg !11090
    #dbg_value(ptr %i.f, !6315, !DIExpression(), !10466)
    #dbg_value(ptr %i.f, !6318, !DIExpression(), !10468)
    #dbg_value(i64 1, !6320, !DIExpression(), !10470)
    #dbg_value(i8 1, !6323, !DIExpression(), !10470)
    #dbg_value(i64 1, !6325, !DIExpression(), !10472)
    #dbg_value(i8 1, !6327, !DIExpression(), !10472)
  %i.hf = load ptr, ptr %i.f, align 8, !dbg !11091, !alias.scope !10879, !nonnull !2385, !noundef !2385
    #dbg_value(ptr %i.hf, !6322, !DIExpression(), !10474)
    #dbg_value(ptr %i.hf, !6326, !DIExpression(), !10472)
  %i.hg = atomicrmw add ptr %i.hf, i64 -1 release, align 8, !dbg !11092, !noalias !10879
  %i.hh = icmp eq i64 %i.hg, 1, !dbg !11093
  br i1 %i.hh, label %bb.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit138, !dbg !11093

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit137
    #dbg_value(i8 2, !6329, !DIExpression(), !10476)
  fence acquire, !dbg !11094
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23, !dbg !11095
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit138, !dbg !11095

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit138: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit137, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10947
  br label %bb.cb, !dbg !10960

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit118, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit135, %bb.ch, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit138
  ret void, !dbg !11096

bb.cc:                                            ; preds = %bb.ac
  store i64 %i.dd, ptr %0, align 8, !dbg !11097
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11097
  store i64 %i.df, ptr %i.hi, align 8, !dbg !11097
  br label %bb.bu, !dbg !11074

bb.cd:                                            ; preds = %bb.f
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 15535, !dbg !11098
  %i.hk = load i8, ptr %i.hj, align 1, !dbg !11098, !range !6234, !noundef !2385
  %i.hl = trunc nuw i8 %i.hk to i1, !dbg !11098
  br i1 %i.hl, label %bb.cg, label %bb.cf, !dbg !11098

bb.ce:                                            ; preds = %bb.f
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !10892
  %7 = load i64, ptr %6, align 8, !dbg !11099
    #dbg_value(i64 %i.ae, !10496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10880)
    #dbg_value(i64 %7, !10496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10880)
  store i64 %i.ae, ptr %0, align 8, !dbg !11100
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11100
  store i64 %7, ptr %8, align 8, !dbg !11100
  br label %bb.ch, !dbg !11101

bb.cf:                                            ; preds = %.sink.split, %bb.cg, %bb.cd
  store i64 11, ptr %0, align 8, !dbg !11102
  br label %bb.ch, !dbg !11103

bb.cg:                                            ; preds = %bb.cd
  %i.hm = load i8, ptr %i.ab, align 1, !dbg !11104, !range !6234, !noundef !2385
  %i.hn = zext nneg i8 %i.hm to i64, !dbg !11104
    #dbg_value(i8 %i.hm, !10556, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10561)
  %i.ho = and i64 %2, 1, !dbg !11105
  %i.hp = icmp eq i64 %i.ho, %i.hn, !dbg !11105
  br i1 %i.hp, label %.sink.split, label %bb.cf, !dbg !10560

.sink.split:                                      ; preds = %bb.cg
  %.194 = select i1 %i.i, i64 15112, i64 15120, !dbg !11106
  %.195 = select i1 %i.i, i64 13344, i64 13376, !dbg !11106
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 %.194, !dbg !10624
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !10624, !noundef !2385
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %.195, !dbg !10624
  tail call void @_RNvMs_Cs3f36owOmepS_6quicheNtB4_19StreamsBlockedState9update_at(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hs, i64 noundef %i.hr), !dbg !10624
  br label %bb.cf, !dbg !11102

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10899
  br label %bb.cb, !dbg !10960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsjfnSKV9Rz3v_3h3i.exit132, %bb.u
  resume { ptr, i32 } %.pn111, !dbg !11065
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCs3f36owOmepS_6quiche6packet11PktNumSpacej3_ECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 16 dereferenceable(528) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1202 {
bb.a:
    #dbg_value(ptr %0, !6800, !DIExpression(), !11127)
    #dbg_value(ptr %0, !6804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11108)
    #dbg_value(i64 3, !6804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11108)
    #dbg_value(ptr %0, !6816, !DIExpression(), !11110)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11129
    #dbg_value(ptr %i.a, !6823, !DIExpression(), !11112)
  %i.b = load i64, ptr %i.a, align 16, !dbg !11130, !range !6333, !alias.scope !11128, !noundef !2385
  %i.c = icmp eq i64 %i.b, 0, !dbg !11130
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11130 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !11130

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.d, !6830, !DIExpression(), !11120)
    #dbg_value(ptr %i.d, !6837, !DIExpression(), !11122)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.i unwind label %bb.i, !dbg !11131

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.d, !6844, !DIExpression(), !11124)
    #dbg_value(ptr %i.d, !6851, !DIExpression(), !11126)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.i unwind label %bb.i, !dbg !11132

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.c, %bb.b
    #dbg_value(ptr %0, !6816, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !11110)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !11129
    #dbg_value(ptr %i.e, !6823, !DIExpression(), !11112)
  %i.f = load i64, ptr %i.e, align 16, !dbg !11130, !range !6333, !alias.scope !11128, !noundef !2385
  %i.g = icmp eq i64 %i.f, 0, !dbg !11130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !11130 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d, !dbg !11130

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.i
    #dbg_value(ptr %i.h, !6844, !DIExpression(), !11124)
    #dbg_value(ptr %i.h, !6851, !DIExpression(), !11126)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.1.i unwind label %bb.i, !dbg !11132

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.i
    #dbg_value(ptr %i.h, !6830, !DIExpression(), !11120)
    #dbg_value(ptr %i.h, !6837, !DIExpression(), !11122)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.1.i unwind label %bb.i, !dbg !11131

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.1.i: ; preds = %bb.e, %bb.d
    #dbg_value(ptr %0, !6816, !DIExpression(DW_OP_plus_uconst, 352, DW_OP_stack_value), !11110)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !11129
    #dbg_value(ptr %i.i, !6823, !DIExpression(), !11112)
  %i.j = load i64, ptr %i.i, align 16, !dbg !11130, !range !6333, !alias.scope !11128, !noundef !2385
  %i.k = icmp eq i64 %i.j, 0, !dbg !11130
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424, !dbg !11130 ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !11130

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.1.i
    #dbg_value(ptr %i.l, !6844, !DIExpression(), !11124)
    #dbg_value(ptr %i.l, !6851, !DIExpression(), !11126)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit unwind label %bb.i, !dbg !11132

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit.1.i
    #dbg_value(ptr %i.l, !6830, !DIExpression(), !11120)
    #dbg_value(ptr %i.l, !6837, !DIExpression(), !11122)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit unwind label %bb.i, !dbg !11131

bb.h:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.0.1.i1, 1, !dbg !11133 ; 2 uses
  %i.n = icmp eq i64 %i.m, 3, !dbg !11133
  br i1 %i.n, label %._crit_edge, label %.lr.ph, !dbg !11133

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.o = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], !dbg !11133
  %.lcssa.i = phi i64 [ 1, %bb.c ], [ 1, %bb.b ], [ 2, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ], !dbg !11133
  %i.p = landingpad { ptr, i32 }
          cleanup
  br i1 %i.o, label %._crit_edge, label %.lr.ph, !dbg !11133

.lr.ph:                                           ; preds = %bb.i, %bb.h
  %.sroa.0.1.i1 = phi i64 [ %i.m, %bb.h ], [ %.lcssa.i, %bb.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %.sroa.0.1.i1, !dbg !11133
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 16 dereferenceable(176) %i.q) #24
          to label %bb.h unwind label %bb.j, !dbg !11133

._crit_edge:                                      ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.p, !dbg !11133

bb.j:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !11133
  unreachable, !dbg !11133

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche6packet11PktNumSpaceECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f, %bb.g
  ret void, !dbg !11134
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCs3f36owOmepS_6quiche6packet13CryptoContextj3_ECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(12240) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1211 {
bb.a:
    #dbg_value(ptr %0, !6862, !DIExpression(), !11137)
    #dbg_value(ptr %0, !6866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11136)
    #dbg_value(i64 3, !6866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11136)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(4080) %0)
          to label %bb.b unwind label %bb.e, !dbg !11138

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4080, !dbg !11138
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(4080) %i.a)
          to label %bb.c unwind label %bb.e, !dbg !11138

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8160, !dbg !11138
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(4080) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECsjfnSKV9Rz3v_3h3i.exit unwind label %bb.e, !dbg !11138

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c
  ret void, !dbg !11139

bb.d:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i64 %.sroa.0.1.i2, 1, !dbg !11138 ; 2 uses
  %i.d = icmp eq i64 %i.c, 3, !dbg !11138
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !dbg !11138

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], !dbg !11138
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], !dbg !11138
  %i.f = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !11138

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i2 = phi i64 [ %i.c, %bb.d ], [ %.lcssa, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4080 x i8], ptr %0, i64 %.sroa.0.1.i2, !dbg !11138
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet13CryptoContextECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(4080) %i.g) #24
          to label %bb.d unwind label %bb.f, !dbg !11138

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f, !dbg !11138

bb.f:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !11138
  unreachable, !dbg !11138
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8IntoIterATyjEj1_EECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11140 {
bb.a:
    #dbg_value(ptr %0, !11147, !DIExpression(), !11151)
  invoke void @_RNvXsG_Cs5kGgRUzsVpH_8smallvecINtB5_8IntoIterATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b, !dbg !11152

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6922, !DIExpression(), !11142)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecATyjEj1_EECsjfnSKV9Rz3v_3h3i.exit unwind label %bb.d, !dbg !11153

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6922, !DIExpression(), !11144)
  tail call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !11154
  ret void, !dbg !11152

bb.d:                                             ; preds = %bb.b
end_hunk_1
