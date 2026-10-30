Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.01?download=true
inline.NumInlined: 672
inline.NumDeleted: 269
begin_hunk_0_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new:bb.a
    #dbg_value(ptr %i.jv, !18827, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19769)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !20764, !noalias !19574
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i, !dbg !20962

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i: ; preds = %bb.dw, %bb.bc, %bb.bb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i
  %.pn117.i = phi { ptr, i32 } [ %i.jz, %bb.dw ], [ %.pn115.i, %bb.bc ], [ %.pn115.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i ], [ %.pn115.i, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19862), !dbg !20755
    #dbg_value(ptr %i.ad, !5013, !DIExpression(), !17748)
  call void @llvm.experimental.noalias.scope.decl(metadata !19863), !dbg !20963
    #dbg_value(ptr %i.ad, !5018, !DIExpression(), !17752)
  call void @llvm.experimental.noalias.scope.decl(metadata !19864), !dbg !20964
    #dbg_value(ptr %i.ad, !5024, !DIExpression(), !17756)
    #dbg_value(ptr %i.ad, !5026, !DIExpression(), !17758)
    #dbg_value(i64 1, !5032, !DIExpression(), !17760)
    #dbg_value(i8 1, !5034, !DIExpression(), !17760)
    #dbg_value(i64 1, !5036, !DIExpression(), !17762)
    #dbg_value(i8 1, !5038, !DIExpression(), !17762)
  %i.jw = load ptr, ptr %i.ad, align 8, !dbg !20965, !alias.scope !19865, !noalias !19574, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.jw, !5033, !DIExpression(), !17764)
    #dbg_value(ptr %i.jw, !5037, !DIExpression(), !17762)
  %i.jx = atomicrmw add ptr %i.jw, i64 -1 release, align 8, !dbg !20966, !noalias !19866
  %i.jy = icmp eq i64 %i.jx, 1, !dbg !20967
  br i1 %i.jy, label %bb.dv, label %.body, !dbg !20967

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i
    #dbg_value(i8 2, !4049, !DIExpression(), !17766)
  fence acquire, !dbg !20968
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %.body unwind label %bb.cg, !dbg !20969, !noalias !19749

bb.dw:                                            ; preds = %bb.ds
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i: ; preds = %bb.ds, %bb.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19867), !dbg !20755
    #dbg_value(ptr %i.ad, !5013, !DIExpression(), !17770)
  call void @llvm.experimental.noalias.scope.decl(metadata !19868), !dbg !20970
    #dbg_value(ptr %i.ad, !5018, !DIExpression(), !17774)
  call void @llvm.experimental.noalias.scope.decl(metadata !19869), !dbg !20971
    #dbg_value(ptr %i.ad, !5024, !DIExpression(), !17778)
    #dbg_value(ptr %i.ad, !5026, !DIExpression(), !17780)
    #dbg_value(i64 1, !5032, !DIExpression(), !17782)
    #dbg_value(i8 1, !5034, !DIExpression(), !17782)
    #dbg_value(i64 1, !5036, !DIExpression(), !17784)
    #dbg_value(i8 1, !5038, !DIExpression(), !17784)
  %i.ka = load ptr, ptr %i.ad, align 8, !dbg !20972, !alias.scope !19870, !noalias !19574, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.ka, !5033, !DIExpression(), !17786)
    #dbg_value(ptr %i.ka, !5037, !DIExpression(), !17784)
  %i.kb = atomicrmw add ptr %i.ka, i64 -1 release, align 8, !dbg !20973, !noalias !19871
  %i.kc = icmp eq i64 %i.kb, 1, !dbg !20974
  br i1 %i.kc, label %bb.dx, label %.thread580, !dbg !20974

bb.dx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i
    #dbg_value(i8 2, !4049, !DIExpression(), !17788)
  fence acquire, !dbg !20975
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %.thread580 unwind label %bb.ed, !dbg !20976

bb.dy:                                            ; preds = %bb.ay
  %i.kd = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !20733
  %i.ke = load ptr, ptr %i.kd, align 8, !dbg !20977, !alias.scope !19571, !nonnull !1995, !align !5920, !noundef !1995
  %i.kf = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !20978
  %i.kg = load i64, ptr %i.kf, align 8, !dbg !20978, !alias.scope !19571, !noundef !1995
  store ptr %i.ey, ptr %i.as, align 8, !dbg !20979
  %.sroa.4427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !20979
  store ptr %i.ke, ptr %.sroa.4427.0..sroa_idx, align 8, !dbg !20979
  %.sroa.5428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !20979
  store i64 %i.kg, ptr %.sroa.5428.0..sroa_idx, align 8, !dbg !20979
  br label %bb.ba, !dbg !20980

.thread580:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i, %bb.dx
    #dbg_value(i128 -1, !18827, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19769)
    #dbg_value(i64 %.sroa.10.0, !18827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19769)
    #dbg_value(ptr %.sroa.16.0, !18827, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19769)
    #dbg_value(ptr poison, !18827, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19769)
    #dbg_value(ptr poison, !18827, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19769)
    #dbg_value(ptr poison, !18827, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19769)
    #dbg_value(i8 0, !18827, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19769)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !20981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !20981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !20982
  br label %bb.ea, !dbg !20983

bb.dz:                                            ; preds = %bb.cf, %bb.cr
  %.sroa.0563.0.copyload = phi i128 [ %.sroa.050.i.sroa.0.0.copyload.pre, %bb.cr ], [ 2, %bb.cf ], !dbg !20869 ; 9 uses
  %i.kh = phi ptr [ %.pre193.i, %bb.cr ], [ %.val121.i, %bb.cf ], !dbg !20870 ; 15 uses
  %.sroa.14.sroa.17.sroa.14.0.copyload459 = phi ptr [ %i.hu, %bb.cr ], [ null, %bb.cf ], !dbg !20984 ; 5 uses
    #dbg_value(i8 0, !18774, !DIExpression(), !17452)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18772, !DIExpression(), !17452)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.050.i.sroa.7), !dbg !20869
  %.sroa.050.i.sroa.7.1440..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1288, !dbg !20985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.050.i.sroa.7.1440..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !dbg !20985, !noalias !19876
  %i.ki = load ptr, ptr %i.ac, align 8, !dbg !20986, !noalias !19574, !nonnull !1995, !noundef !1995 ; 4 uses
  %.sroa.050.i.sroa.7.1472..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1320, !dbg !20987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.i.sroa.7.1472..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !20987, !noalias !19574
  %.sroa.050.i.sroa.7.1520..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1368, !dbg !20988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.050.i.sroa.7.1520..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !dbg !20988, !noalias !19574
  %.sroa.050.i.sroa.7.1576..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1424, !dbg !20989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.050.i.sroa.7.1576..sroa_idx, ptr noundef nonnull align 8 dereferenceable(376) %i.s, i64 376, i1 false), !dbg !20989, !noalias !19574
  %.sroa.050.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !20869
  %.sroa.050.i.sroa.4.0.copyload = load i64, ptr %.sroa.050.i.sroa.4.0..sroa_idx, align 16, !dbg !20869, !noalias !19574 ; 5 uses
  %.sroa.050.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !20869
  %.sroa.050.i.sroa.5.0.copyload = load ptr, ptr %.sroa.050.i.sroa.5.0..sroa_idx, align 8, !dbg !20869, !noalias !19574 ; 5 uses
  %.sroa.050.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !20869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.050.i.sroa.6.0..sroa_idx, i64 120, i1 false), !dbg !20869, !noalias !19768
  %.sroa.050.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 152, !dbg !20869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.050.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.050.i.sroa.7.0..sroa_idx, i64 1288, i1 false), !dbg !20869, !noalias !19574
    #dbg_value(i128 %.sroa.0563.0.copyload, !18827, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19769)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19769)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18827, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19769)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.24, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.050.i.sroa.7, i64 1800, i1 false), !dbg !20990, !noalias !19768
    #dbg_value(ptr %i.kh, !18827, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19769)
    #dbg_value(ptr %i.ki, !18827, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19769)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18827, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19769)
    #dbg_value(i8 0, !18827, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19769)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.050.i.sroa.7), !dbg !20991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !20834, !noalias !19574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !20833, !noalias !19574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !20818, !noalias !19574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !20777, !noalias !19574
    #dbg_value(i128 %.sroa.0563.0.copyload, !18827, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19769)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19769)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18827, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19769)
    #dbg_value(ptr %i.kh, !18827, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19769)
    #dbg_value(ptr %i.ki, !18827, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19769)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18827, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19769)
    #dbg_value(i8 0, !18827, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19769)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !20981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !20981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !20982
  %i.kj = icmp eq i128 %.sroa.0563.0.copyload, -1, !dbg !20992
  br i1 %i.kj, label %bb.ea, label %bb.eb, !dbg !20983

bb.ea:                                            ; preds = %.thread580, %bb.dz
  %.sroa.10.3588 = phi i64 [ %.sroa.10.0, %.thread580 ], [ %.sroa.050.i.sroa.4.0.copyload, %bb.dz ]
  %.sroa.16.3587 = phi ptr [ %.sroa.16.0, %.thread580 ], [ %.sroa.050.i.sroa.5.0.copyload, %bb.dz ]
    #dbg_value(i64 %.sroa.10.3588, !18812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19877)
    #dbg_value(ptr %.sroa.16.3587, !18812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19877)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, i64 120, i1 false), !dbg !20993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !20994
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !20994
    #dbg_value(i64 %.sroa.10.3588, !18688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19878)
    #dbg_value(i64 %.sroa.10.3588, !18806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19879)
    #dbg_value(ptr %.sroa.16.3587, !18688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19878)
    #dbg_value(ptr %.sroa.16.3587, !18806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19879)
  %.sroa.5556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5556.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, i64 120, i1 false), !dbg !20994
    #dbg_value(i64 %.sroa.10.3588, !18803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19880)
    #dbg_value(ptr %.sroa.16.3587, !18803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19880)
  store i64 %.sroa.10.3588, ptr %0, align 8, !dbg !20995
  %.sroa.4555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20995
  store ptr %.sroa.16.3587, ptr %.sroa.4555.0..sroa_idx, align 8, !dbg !20995
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !20996
  br label %bb.ga, !dbg !20997

bb.eb:                                            ; preds = %bb.dz
    #dbg_value(i128 %.sroa.0563.0.copyload, !18828, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19882)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18828, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19882)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18828, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19882)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, i64 120, i1 false), !dbg !20998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.24, i64 1800, i1 false), !dbg !20998
    #dbg_value(ptr %i.kh, !18828, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19882)
    #dbg_value(ptr %i.ki, !18828, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19882)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18828, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19882)
    #dbg_value(i8 0, !18828, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19882)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !20994
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !20994
    #dbg_value(i128 %.sroa.0563.0.copyload, !18689, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19883)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18689, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19883)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18689, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19883)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, i64 120, i1 false), !dbg !18830
    #dbg_value(ptr %i.kh, !18689, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19883)
    #dbg_value(ptr %i.ki, !18689, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19883)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18689, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19883)
    #dbg_value(i8 0, !18689, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19883)
    #dbg_value(i128 %.sroa.0563.0.copyload, !18687, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19884)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19884)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19884)
    #dbg_value(ptr %i.kh, !18687, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19884)
    #dbg_value(ptr %i.ki, !18687, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19884)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18687, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19884)
    #dbg_value(i8 0, !18687, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19884)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !20996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !20999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !20999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !20999
    #dbg_value(i128 %.sroa.0563.0.copyload, !18930, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19885)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19885)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19885)
    #dbg_value(ptr %i.kh, !18930, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19885)
    #dbg_value(ptr %i.ki, !18930, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19885)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18930, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19885)
    #dbg_value(i8 0, !18930, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19885)
    #dbg_value(i32 2, !19886, !DIExpression(), !17793)
    #dbg_value(i32 1, !19886, !DIExpression(), !17797)
    #dbg_value(ptr undef, !19890, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17798)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kh) ]
    #dbg_value(ptr %i.kh, !19895, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17801)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 184, !dbg !21000 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !dbg !21000, !noalias !19898, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 64, !dbg !21000
  %i.kn = load i32, ptr %i.km, align 8, !dbg !21000, !noalias !19898, !noundef !1995
    #dbg_value(i32 %i.kn, !19887, !DIExpression(), !17793)
  %i.ko = and i32 %i.kn, 2, !dbg !21001
  %.not.i113 = icmp eq i32 %i.ko, 0, !dbg !21001
  br i1 %.not.i113, label %.thread590, label %bb.ec, !dbg !21002

bb.ec:                                            ; preds = %bb.eb
    #dbg_value(ptr undef, !19892, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17805)
    #dbg_value(ptr %i.kh, !19899, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17808)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 60, !dbg !21003
  %i.kq = load i32, ptr %i.kp, align 4, !dbg !21003, !noalias !19898, !noundef !1995
    #dbg_value(i32 %i.kq, !19887, !DIExpression(), !17797)
  %i.kr = and i32 %i.kq, 1, !dbg !21004
  %.not6.i = icmp eq i32 %i.kr, 0, !dbg !21004
  br i1 %.not6.i, label %bb.ee, label %.thread590, !dbg !21005

bb.ed:                                            ; preds = %bb.dx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %bb.fo
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !21006

.thread590:                                       ; preds = %bb.ec, %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !19885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !19885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !19885
  br label %bb.ef, !dbg !21007

bb.ee:                                            ; preds = %bb.ec
    #dbg_value(ptr undef, !18953, !DIExpression(), !16814)
    #dbg_value(ptr undef, !18945, !DIExpression(), !16813)
  %.not7.i.not = icmp eq i128 %.sroa.0563.0.copyload, 2, !dbg !21008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !19885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !19885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !19885
  br i1 %.not7.i.not, label %bb.ef, label %bb.fv, !dbg !21007

bb.ef:                                            ; preds = %.thread590, %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, i64 120, i1 false), !dbg !21009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, i64 1800, i1 false), !dbg !21009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, i64 7, i1 false), !dbg !21009
    #dbg_value(i128 %.sroa.0563.0.copyload, !18687, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19884)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19884)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18687, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19884)
    #dbg_value(ptr %i.kh, !18687, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19884)
    #dbg_value(ptr %i.ki, !18687, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19884)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18687, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19884)
    #dbg_value(i8 0, !18687, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19884)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !21010
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !21010
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !21010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.16.sroa.17), !dbg !21011
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.17), !dbg !21011
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.21), !dbg !21011
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26223), !dbg !21011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !21012
  store i128 %.sroa.0563.0.copyload, ptr %i.ar, align 16, !dbg !21012
  %.sroa.11.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !21012 ; 2 uses
  store i64 %.sroa.050.i.sroa.4.0.copyload, ptr %.sroa.11.0..sroa_idx165, align 16, !dbg !21012
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx165.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !21012
  store ptr %.sroa.050.i.sroa.5.0.copyload, ptr %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx165.sroa_idx, align 8, !dbg !21012
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !21012 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21012
  %.sroa.12.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ar, i64 152, !dbg !21012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.0..sroa_idx171, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21012
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1952, !dbg !21012
  store ptr %i.kh, ptr %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx171.sroa_idx, align 16, !dbg !21012
  %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1960, !dbg !21012
  store ptr %i.ki, ptr %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !21012
  %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1968, !dbg !21012
  store ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx, align 16, !dbg !21012
  %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1976, !dbg !21012 ; 2 uses
  store i8 0, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !21012
  %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1977, !dbg !21012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx171.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21012
  call void @llvm.experimental.noalias.scope.decl(metadata !19901), !dbg !21011
    #dbg_declare(ptr %i.ar, !18722, !DIExpression(), !17811)
    #dbg_value(ptr %2, !18723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17812)
    #dbg_value(i64 %3, !18723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17812)
    #dbg_declare(ptr %i.l, !18725, !DIExpression(), !17813)
    #dbg_declare(ptr %i.k, !18729, !DIExpression(), !17814)
    #dbg_value(i8 1, !19902, !DIExpression(), !17820)
    #dbg_value(i8 1, !19908, !DIExpression(), !17827)
    #dbg_value(i32 1, !19915, !DIExpression(), !17832)
    #dbg_value(i8 1, !19908, !DIExpression(), !17835)
    #dbg_value(ptr %i.kh, !19906, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17836)
  %i.kt = getelementptr i8, ptr %i.kh, i64 148, !dbg !21013 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 4, !dbg !21013, !range !4000, !noalias !19921, !noundef !1995
    #dbg_value(i8 %i.ku, !19903, !DIExpression(), !17820)
  %cond.i = icmp eq i8 %i.ku, 0, !dbg !21014
  br i1 %cond.i, label %bb.eh, label %bb.eg, !dbg !21014

bb.eg:                                            ; preds = %bb.ef
    #dbg_value(ptr %i.kh, !19913, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17839)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 146, !dbg !21015
  %i.kw = load i8, ptr %i.kv, align 2, !dbg !21015, !range !4000, !noalias !19922, !noundef !1995
    #dbg_value(i8 %i.kw, !19909, !DIExpression(), !17827)
  %cond43.i = icmp eq i8 %i.kw, 0, !dbg !21016
  br i1 %cond43.i, label %bb.ej, label %bb.ei, !dbg !21016

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21017
  br label %bb.gd, !dbg !21018

bb.ei:                                            ; preds = %bb.eg
    #dbg_value(ptr %i.ar, !19918, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17840)
    #dbg_value(ptr %i.kh, !19924, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17843)
  %4 = load ptr, ptr %i.kk, align 8, !dbg !21019, !noalias !19922, !nonnull !1995, !noundef !1995
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 60, !dbg !21019
  %i.ky = load i32, ptr %i.kx, align 4, !dbg !21019, !noalias !19922, !noundef !1995
    #dbg_value(i32 %i.ky, !19916, !DIExpression(), !17832)
  %i.kz = and i32 %i.ky, 1, !dbg !21020
  %.not32.i = icmp eq i32 %i.kz, 0, !dbg !21020
  br i1 %.not32.i, label %bb.ek, label %bb.el, !dbg !21021

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21022
  br label %bb.gd, !dbg !21018

bb.ek:                                            ; preds = %bb.ei
    #dbg_value(ptr %i.ar, !19926, !DIExpression(), !17846)
    #dbg_value(ptr %i.ar, !19928, !DIExpression(), !17849)
  %.not33.i.not = icmp eq i128 %.sroa.0563.0.copyload, 2, !dbg !21023
  br i1 %.not33.i.not, label %bb.en, label %bb.em, !dbg !21024

bb.el:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21025
  br label %bb.gd, !dbg !21018

bb.em:                                            ; preds = %bb.ek
    #dbg_value(ptr %i.ar, !19930, !DIExpression(DW_OP_plus_uconst, 1440, DW_OP_stack_value), !17853)
  %i.la = getelementptr inbounds nuw i8, ptr %i.ar, i64 1464, !dbg !21026
  %i.lb = load i8, ptr %i.la, align 8, !dbg !21026, !range !4000, !alias.scope !19901, !noundef !1995
    #dbg_value(ptr poison, !19933, !DIExpression(), !17858)
    #dbg_value(i1 false, !19941, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17858)
    #dbg_declare(ptr poison, !19942, !DIExpression(), !17859)
  %i.lc = and i8 %i.lb, 1, !dbg !21027
  %or.cond68.not.i = icmp eq i8 %i.lc, 0, !dbg !21027
  br i1 %or.cond68.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i, label %bb.ep, !dbg !21027

bb.en:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21028
  br label %bb.gd, !dbg !21018

bb.eo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i
  br i1 %.sroa.09.2.i, label %bb.fu, label %.body, !dbg !21029

.body.i117:                                       ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu, !dbg !21029

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i: ; preds = %bb.em
    #dbg_value(ptr %i.kh, !19913, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17860)
    #dbg_value(i8 %i.kw, !19909, !DIExpression(), !17835)
    #dbg_value(i8 poison, !18724, !DIExpression(), !17861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !21030, !noalias !19921
  invoke void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter8suffixesRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3)
          to label %bb.eq unwind label %.body.i117, !dbg !21031, !noalias !19922

bb.ep:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21032
  br label %bb.gd, !dbg !21018

bb.eq:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19945), !dbg !21033
    #dbg_declare(ptr poison, !19948, !DIExpression(DW_OP_LLVM_fragment, 392, 56), !17888)
    #dbg_declare(ptr poison, !19994, !DIExpression(DW_OP_LLVM_fragment, 392, 56), !17889)
    #dbg_value(ptr poison, !20025, !DIExpression(), !17934)
    #dbg_value(ptr poison, !20140, !DIExpression(), !17941)
    #dbg_value(ptr poison, !20152, !DIExpression(), !17942)
    #dbg_value(ptr poison, !20034, !DIExpression(), !17943)
    #dbg_value(ptr poison, !20043, !DIExpression(), !17944)
    #dbg_value(ptr poison, !20064, !DIExpression(), !17945)
    #dbg_value(ptr poison, !20073, !DIExpression(), !17946)
    #dbg_value(ptr poison, !20103, !DIExpression(), !17947)
    #dbg_value(ptr poison, !20130, !DIExpression(), !17948)
    #dbg_value(ptr poison, !20154, !DIExpression(), !17957)
    #dbg_value(ptr poison, !20172, !DIExpression(), !17963)
    #dbg_value(ptr poison, !20169, !DIExpression(), !17964)
    #dbg_value(ptr %i.l, !20010, !DIExpression(), !17965)
    #dbg_value(i64 0, !20177, !DIExpression(), !17968)
  %i.ld = load i64, ptr %i.l, align 8, !dbg !21034, !range !4759, !alias.scope !19945, !noalias !19921, !noundef !1995 ; 3 uses
  %.not.i.i118 = icmp eq i64 %i.ld, -1, !dbg !21034
  br i1 %.not.i.i118, label %bb.fd, label %bb.er, !dbg !21035

bb.er:                                            ; preds = %bb.eq
    #dbg_value(ptr %i.l, !20011, !DIExpression(), !17969)
    #dbg_value(ptr %i.l, !20183, !DIExpression(), !17972)
    #dbg_value(ptr %i.l, !20180, !DIExpression(), !17973)
    #dbg_value(ptr %i.l, !20188, !DIExpression(), !17976)
    #dbg_value(ptr %i.l, !20190, !DIExpression(), !17979)
    #dbg_value(ptr %i.l, !20192, !DIExpression(), !17982)
    #dbg_value(ptr %i.l, !20188, !DIExpression(), !17984)
    #dbg_value(ptr %i.l, !20190, !DIExpression(), !17986)
    #dbg_value(ptr %i.l, !20192, !DIExpression(), !17988)
  %i.le = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !21036
  %i.lf = load i64, ptr %i.le, align 8, !dbg !21036, !alias.scope !19945, !noalias !19921, !noundef !1995 ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 288230376151711744, !dbg !21037
  call void @llvm.assume(i1 %i.lg), !dbg !21038
  %i.lh = icmp eq i64 %i.lf, 0, !dbg !21039
  br i1 %i.lh, label %bb.fd, label %bb.es, !dbg !21039, !prof !20196

bb.es:                                            ; preds = %bb.er
  %i.li = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !21040
  %i.lj = load ptr, ptr %i.li, align 8, !dbg !21040, !alias.scope !19945, !noalias !19921, !nonnull !1995, !noundef !1995 ; 4 uses
    #dbg_value(ptr %i.lj, !20197, !DIExpression(), !17997)
    #dbg_value(ptr %i.lj, !20203, !DIExpression(), !18000)
    #dbg_value(ptr %i.lj, !20207, !DIExpression(), !18003)
    #dbg_value(ptr %i.lj, !20211, !DIExpression(), !18006)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8, !dbg !21041
  %i.ll = load ptr, ptr %i.lk, align 8, !dbg !21041, !noalias !20231, !nonnull !1995, !noundef !1995 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16, !dbg !21042
  %i.ln = load i64, ptr %i.lm, align 8, !dbg !21042, !noalias !20231, !noundef !1995 ; 8 uses
    #dbg_value(ptr %i.ll, !20013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18013)
    #dbg_value(ptr %i.ll, !20232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18017)
    #dbg_value(ptr %i.ll, !20241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18022)
    #dbg_value(ptr %i.ll, !20250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18025)
    #dbg_value(ptr %i.ll, !20232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18027)
    #dbg_value(ptr %i.ll, !20241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18029)
    #dbg_value(ptr %i.ll, !20250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18031)
    #dbg_value(i64 %i.ln, !20013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18013)
    #dbg_value(i64 %i.ln, !20232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18017)
    #dbg_value(i64 %i.ln, !20241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18022)
    #dbg_value(i64 %i.ln, !20250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18025)
    #dbg_value(i64 %i.ln, !20232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18027)
    #dbg_value(i64 %i.ln, !20241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18029)
    #dbg_value(i64 %i.ln, !20250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18031)
    #dbg_value(i64 %i.ln, !20014, !DIExpression(), !18032)
    #dbg_value(i64 %i.lf, !20258, !DIExpression(), !18041)
    #dbg_value(i64 %i.lf, !20268, !DIExpression(), !18044)
    #dbg_value(ptr %i.lj, !20266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18045)
    #dbg_value(ptr %i.lj, !20259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18046)
    #dbg_value(i64 %i.lf, !20266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18045)
    #dbg_value(i64 %i.lf, !20259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18046)
    #dbg_value(ptr %i.lj, !20260, !DIExpression(), !18047)
    #dbg_value(ptr %i.lj, !20269, !DIExpression(), !18044)
  %i.lo = getelementptr inbounds nuw [32 x i8], ptr %i.lj, i64 %i.lf, !dbg !21043 ; 2 uses
    #dbg_value(ptr %i.lj, !20015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18048)
    #dbg_value(ptr %i.lo, !20015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18048)
    #dbg_value(i64 1, !20015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18048)
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ln
  br label %bb.et, !dbg !21044

bb.et:                                            ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, %bb.es
  %.not64.i.i = phi i1 [ false, %bb.es ], [ true, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21045
  %.sroa.11.0.i.i = phi i64 [ 1, %bb.es ], [ 0, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21045 ; 2 uses
  %.sroa.0.074.i.i = phi ptr [ %i.lj, %bb.es ], [ %.sroa.0.1.i.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21045 ; 4 uses
  %.sroa.04.0.i.i119 = phi i64 [ %i.ln, %bb.es ], [ %.sroa.0.1.i.i.i.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21046 ; 8 uses
    #dbg_value(ptr %.sroa.0.074.i.i, !20015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18048)
    #dbg_value(i64 %.sroa.11.0.i.i, !20015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18048)
    #dbg_value(i64 %.sroa.04.0.i.i119, !20014, !DIExpression(), !18032)
    #dbg_value(ptr undef, !20169, !DIExpression(), !17964)
    #dbg_value(i1 %.not64.i.i, !20272, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18051)
  br i1 %.not64.i.i, label %bb.eu, label %bb.ev, !dbg !21047, !prof !5498

bb.eu:                                            ; preds = %bb.et
    #dbg_value(ptr undef, !20172, !DIExpression(), !17963)
    #dbg_value(ptr %.sroa.0.074.i.i, !20173, !DIExpression(), !18052)
    #dbg_value(ptr %i.lo, !20174, !DIExpression(), !18053)
    #dbg_value(ptr poison, !20274, !DIExpression(), !18056)
    #dbg_value(ptr poison, !20275, !DIExpression(), !18057)
  %i.lr = icmp eq ptr %.sroa.0.074.i.i, %i.lo, !dbg !21048
  br i1 %i.lr, label %bb.ex, label %bb.ew, !dbg !21049

bb.ev:                                            ; preds = %bb.et
    #dbg_value(i64 0, !20015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18048)
    #dbg_value(ptr undef, !20154, !DIExpression(), !17957)
    #dbg_value(i64 %.sroa.11.0.i.i, !20157, !DIExpression(), !17957)
    #dbg_value(i64 32, !20278, !DIExpression(), !18065)
    #dbg_value(ptr %i.lo, !20159, !DIExpression(), !18066)
    #dbg_value(ptr %i.lo, !20294, !DIExpression(), !18067)
    #dbg_value(ptr %.sroa.0.074.i.i, !20295, !DIExpression(), !18067)
    #dbg_value(ptr %i.lo, !20288, !DIExpression(), !18068)
    #dbg_value(ptr %.sroa.0.074.i.i, !20289, !DIExpression(), !18068)
    #dbg_value(ptr %.sroa.0.074.i.i, !20284, !DIExpression(), !18069)
    #dbg_value(ptr %i.lo, !20283, !DIExpression(), !18069)
  %i.ls = ptrtoint ptr %.sroa.0.074.i.i to i64, !dbg !21050
  %i.lt = sub nuw i64 %i.lp, %i.ls, !dbg !21050
  %i.lu = lshr exact i64 %i.lt, 5, !dbg !21050
  %.not.i.not.i.i = icmp samesign ult i64 %.sroa.11.0.i.i, %i.lu, !dbg !21051
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.074.i.i, i64 %.sroa.11.0.i.i, !dbg !21051
    #dbg_value(ptr poison, !20015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18048)
  br i1 %.not.i.not.i.i, label %bb.ew, label %bb.ex, !dbg !21052

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.sroa.02.0.i44.i = phi ptr [ %i.lv, %bb.ev ], [ %.sroa.0.074.i.i, %bb.eu ], !dbg !21053 ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i44.i, i64 32, !dbg !21053
    #dbg_value(ptr %.sroa.0.1.i.i, !20015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18048)
    #dbg_value(i64 0, !20015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18048)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20016, !DIExpression(), !18070)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20197, !DIExpression(), !18072)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20203, !DIExpression(), !18074)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20207, !DIExpression(), !18076)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20211, !DIExpression(), !18078)
    #dbg_value(i64 poison, !20300, !DIExpression(), !18089)
    #dbg_value(i64 poison, !20314, !DIExpression(), !18092)
    #dbg_value(ptr poison, !20312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18093)
    #dbg_value(ptr poison, !20304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18094)
    #dbg_value(i64 poison, !20312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18093)
end_hunk_0
