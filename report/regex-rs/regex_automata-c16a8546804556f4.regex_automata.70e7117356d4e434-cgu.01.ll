Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.01?download=true
inline.NumInlined: 672
inline.NumDeleted: 269
begin_hunk_0_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new:bb.a
  %.pn117.i = phi { ptr, i32 } [ %i.jz, %bb.dw ], [ %.pn115.i, %bb.bc ], [ %.pn115.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i ], [ %.pn115.i, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19890), !dbg !20784
    #dbg_value(ptr %i.ad, !5013, !DIExpression(), !17767)
  call void @llvm.experimental.noalias.scope.decl(metadata !19891), !dbg !20992
    #dbg_value(ptr %i.ad, !5018, !DIExpression(), !17771)
  call void @llvm.experimental.noalias.scope.decl(metadata !19892), !dbg !20993
    #dbg_value(ptr %i.ad, !5024, !DIExpression(), !17775)
    #dbg_value(ptr %i.ad, !5026, !DIExpression(), !17777)
    #dbg_value(i64 1, !5032, !DIExpression(), !17779)
    #dbg_value(i8 1, !5034, !DIExpression(), !17779)
    #dbg_value(i64 1, !5036, !DIExpression(), !17781)
    #dbg_value(i8 1, !5038, !DIExpression(), !17781)
  %i.jw = load ptr, ptr %i.ad, align 8, !dbg !20994, !alias.scope !19893, !noalias !19596, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.jw, !5033, !DIExpression(), !17783)
    #dbg_value(ptr %i.jw, !5037, !DIExpression(), !17781)
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !dbg !20995, !noalias !19894
  %i.jy = icmp eq i64 %i.jx, 1, !dbg !20996
  br i1 %i.jy, label %bb.dv, label %.body, !dbg !20996

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i
    #dbg_value(i8 2, !4049, !DIExpression(), !17785)
  fence acquire, !dbg !20997
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %.body unwind label %bb.cg, !dbg !20998, !noalias !19773

bb.dw:                                            ; preds = %bb.ds
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i: ; preds = %bb.ds, %bb.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19895), !dbg !20784
    #dbg_value(ptr %i.ad, !5013, !DIExpression(), !17789)
  call void @llvm.experimental.noalias.scope.decl(metadata !19896), !dbg !20999
    #dbg_value(ptr %i.ad, !5018, !DIExpression(), !17793)
  call void @llvm.experimental.noalias.scope.decl(metadata !19897), !dbg !21000
    #dbg_value(ptr %i.ad, !5024, !DIExpression(), !17797)
    #dbg_value(ptr %i.ad, !5026, !DIExpression(), !17799)
    #dbg_value(i64 1, !5032, !DIExpression(), !17801)
    #dbg_value(i8 1, !5034, !DIExpression(), !17801)
    #dbg_value(i64 1, !5036, !DIExpression(), !17803)
    #dbg_value(i8 1, !5038, !DIExpression(), !17803)
  %i.ka = load ptr, ptr %i.ad, align 8, !dbg !21001, !alias.scope !19898, !noalias !19596, !nonnull !1995, !noundef !1995
    #dbg_value(ptr %i.ka, !5033, !DIExpression(), !17805)
    #dbg_value(ptr %i.ka, !5037, !DIExpression(), !17803)
  %i.kb = atomicrmw sub ptr %i.ka, i64 1 release, align 8, !dbg !21002, !noalias !19899
  %i.kc = icmp eq i64 %i.kb, 1, !dbg !21003
  br i1 %i.kc, label %bb.dx, label %.thread580, !dbg !21003

bb.dx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i
    #dbg_value(i8 2, !4049, !DIExpression(), !17807)
  fence acquire, !dbg !21004
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %.thread580 unwind label %bb.dy, !dbg !21005

bb.dy:                                            ; preds = %bb.dx
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !21006

bb.dz:                                            ; preds = %bb.ay
  %i.ke = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !20762
  %i.kf = load ptr, ptr %i.ke, align 8, !dbg !21007, !alias.scope !19592, !noalias !19593, !nonnull !1995, !align !5920, !noundef !1995
  %i.kg = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !21008
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !21008, !alias.scope !19592, !noalias !19593, !noundef !1995
  store ptr %i.ey, ptr %i.as, align 8, !dbg !21009
  %.sroa.4427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !21009
  store ptr %i.kf, ptr %.sroa.4427.0..sroa_idx, align 8, !dbg !21009
  %.sroa.5428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !21009
  store i64 %i.kh, ptr %.sroa.5428.0..sroa_idx, align 8, !dbg !21009
  br label %bb.ba, !dbg !21010

.thread580:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i, %bb.dx
    #dbg_value(i128 -1, !18847, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19795)
    #dbg_value(i64 %.sroa.10.0, !18847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19795)
    #dbg_value(ptr %.sroa.16.0, !18847, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19795)
    #dbg_value(ptr poison, !18847, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19795)
    #dbg_value(ptr poison, !18847, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19795)
    #dbg_value(ptr poison, !18847, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19795)
    #dbg_value(i8 0, !18847, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19795)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !21006
  br label %bb.eb, !dbg !21012

bb.ea:                                            ; preds = %bb.cf, %bb.cr
  %.sroa.0563.0.copyload = phi i128 [ %.sroa.050.i.sroa.0.0.copyload.pre, %bb.cr ], [ 2, %bb.cf ], !dbg !20898 ; 9 uses
  %i.ki = phi ptr [ %.pre193.i, %bb.cr ], [ %.val121.i, %bb.cf ], !dbg !20899 ; 15 uses
  %.sroa.14.sroa.17.sroa.14.0.copyload459 = phi ptr [ %i.hu, %bb.cr ], [ null, %bb.cf ], !dbg !21013 ; 5 uses
    #dbg_value(i8 0, !18794, !DIExpression(), !17471)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18792, !DIExpression(), !17471)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.050.i.sroa.7), !dbg !20898
  %.sroa.050.i.sroa.7.1440..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1288, !dbg !21014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.050.i.sroa.7.1440..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !dbg !21014, !noalias !19767
  %i.kj = load ptr, ptr %i.ac, align 8, !dbg !21015, !noalias !19596, !nonnull !1995, !noundef !1995 ; 4 uses
  %.sroa.050.i.sroa.7.1472..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1320, !dbg !21016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.i.sroa.7.1472..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !21016, !noalias !19596
  %.sroa.050.i.sroa.7.1520..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1368, !dbg !21017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.050.i.sroa.7.1520..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !dbg !21017, !noalias !19596
  %.sroa.050.i.sroa.7.1576..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1424, !dbg !21018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.050.i.sroa.7.1576..sroa_idx, ptr noundef nonnull align 8 dereferenceable(376) %i.s, i64 376, i1 false), !dbg !21018, !noalias !19596
  %.sroa.050.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !20898
  %.sroa.050.i.sroa.4.0.copyload = load i64, ptr %.sroa.050.i.sroa.4.0..sroa_idx, align 16, !dbg !20898, !noalias !19596 ; 5 uses
  %.sroa.050.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !20898
  %.sroa.050.i.sroa.5.0.copyload = load ptr, ptr %.sroa.050.i.sroa.5.0..sroa_idx, align 8, !dbg !20898, !noalias !19596 ; 5 uses
  %.sroa.050.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !20898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.050.i.sroa.6.0..sroa_idx, i64 120, i1 false), !dbg !20898, !noalias !19794
  %.sroa.050.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 152, !dbg !20898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.050.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.050.i.sroa.7.0..sroa_idx, i64 1288, i1 false), !dbg !20898, !noalias !19596
    #dbg_value(i128 %.sroa.0563.0.copyload, !18847, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19795)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19795)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18847, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19795)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.24, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.050.i.sroa.7, i64 1800, i1 false), !dbg !21019, !noalias !19794
    #dbg_value(ptr %i.ki, !18847, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19795)
    #dbg_value(ptr %i.kj, !18847, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19795)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18847, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19795)
    #dbg_value(i8 0, !18847, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19795)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.050.i.sroa.7), !dbg !21020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !20863, !noalias !19596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !20862, !noalias !19596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !20847, !noalias !19596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !20806, !noalias !19596
    #dbg_value(i128 %.sroa.0563.0.copyload, !18847, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19795)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19795)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18847, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19795)
    #dbg_value(ptr %i.ki, !18847, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19795)
    #dbg_value(ptr %i.kj, !18847, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19795)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18847, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19795)
    #dbg_value(i8 0, !18847, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19795)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !21006
  %i.kk = icmp eq i128 %.sroa.0563.0.copyload, -1, !dbg !21021
  br i1 %i.kk, label %bb.eb, label %bb.ec, !dbg !21012

bb.eb:                                            ; preds = %.thread580, %bb.ea
  %.sroa.10.3588 = phi i64 [ %.sroa.10.0, %.thread580 ], [ %.sroa.050.i.sroa.4.0.copyload, %bb.ea ]
  %.sroa.16.3587 = phi ptr [ %.sroa.16.0, %.thread580 ], [ %.sroa.050.i.sroa.5.0.copyload, %bb.ea ]
    #dbg_value(i64 %.sroa.10.3588, !18832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19904)
    #dbg_value(ptr %.sroa.16.3587, !18832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19904)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, i64 120, i1 false), !dbg !21022
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !21023
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !21023
    #dbg_value(i64 %.sroa.10.3588, !18708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19905)
    #dbg_value(i64 %.sroa.10.3588, !18826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19906)
    #dbg_value(ptr %.sroa.16.3587, !18708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19905)
    #dbg_value(ptr %.sroa.16.3587, !18826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19906)
  %.sroa.5556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5556.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, i64 120, i1 false), !dbg !21023
    #dbg_value(i64 %.sroa.10.3588, !18823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19907)
    #dbg_value(ptr %.sroa.16.3587, !18823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19907)
  store i64 %.sroa.10.3588, ptr %0, align 8, !dbg !21024
  %.sroa.4555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21024
  store ptr %.sroa.16.3587, ptr %.sroa.4555.0..sroa_idx, align 8, !dbg !21024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !21025
  br label %bb.gb, !dbg !21026

bb.ec:                                            ; preds = %bb.ea
    #dbg_value(i128 %.sroa.0563.0.copyload, !18848, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19909)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18848, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19909)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18848, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19909)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, i64 120, i1 false), !dbg !21027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.24, i64 1800, i1 false), !dbg !21027
    #dbg_value(ptr %i.ki, !18848, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19909)
    #dbg_value(ptr %i.kj, !18848, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19909)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18848, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19909)
    #dbg_value(i8 0, !18848, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19909)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !21023
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !21023
    #dbg_value(i128 %.sroa.0563.0.copyload, !18709, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19910)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18709, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19910)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18709, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19910)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, i64 120, i1 false), !dbg !18850
    #dbg_value(ptr %i.ki, !18709, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19910)
    #dbg_value(ptr %i.kj, !18709, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19910)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18709, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19910)
    #dbg_value(i8 0, !18709, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19910)
    #dbg_value(i128 %.sroa.0563.0.copyload, !18707, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19911)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18707, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19911)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18707, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19911)
    #dbg_value(ptr %i.ki, !18707, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19911)
    #dbg_value(ptr %i.kj, !18707, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19911)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18707, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19911)
    #dbg_value(i8 0, !18707, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19911)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !21025
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !21028
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !21028
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !21028
    #dbg_value(i128 %.sroa.0563.0.copyload, !18950, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19912)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18950, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19912)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18950, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19912)
    #dbg_value(ptr %i.ki, !18950, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19912)
    #dbg_value(ptr %i.kj, !18950, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19912)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18950, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19912)
    #dbg_value(i8 0, !18950, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19912)
    #dbg_value(i32 2, !19913, !DIExpression(), !17812)
    #dbg_value(i32 1, !19913, !DIExpression(), !17816)
    #dbg_value(ptr undef, !19917, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17817)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
    #dbg_value(ptr %i.ki, !19922, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17820)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 184, !dbg !21029 ; 3 uses
  %i.km = load ptr, ptr %i.kl, align 8, !dbg !21029, !noalias !19925, !nonnull !1995, !noundef !1995 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 64, !dbg !21029
  %i.ko = load i32, ptr %i.kn, align 8, !dbg !21029, !noalias !19925, !noundef !1995
    #dbg_value(i32 %i.ko, !19914, !DIExpression(), !17812)
  %i.kp = and i32 %i.ko, 2, !dbg !21030
  %.not.i113 = icmp eq i32 %i.kp, 0, !dbg !21030
  br i1 %.not.i113, label %.thread590, label %bb.ed, !dbg !21031

bb.ed:                                            ; preds = %bb.ec
    #dbg_value(ptr undef, !19919, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17824)
    #dbg_value(ptr %i.ki, !19926, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17827)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 60, !dbg !21032
  %i.kr = load i32, ptr %i.kq, align 4, !dbg !21032, !noalias !19925, !noundef !1995
    #dbg_value(i32 %i.kr, !19914, !DIExpression(), !17816)
  %i.ks = and i32 %i.kr, 1, !dbg !21033
  %.not6.i = icmp eq i32 %i.ks, 0, !dbg !21033
  br i1 %.not6.i, label %bb.ef, label %.thread590, !dbg !21034

bb.ee:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %bb.fp
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !21035

.thread590:                                       ; preds = %bb.ed, %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !19912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !19912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !19912
  br label %bb.eg, !dbg !21036

bb.ef:                                            ; preds = %bb.ed
    #dbg_value(ptr undef, !18973, !DIExpression(), !16831)
    #dbg_value(ptr undef, !18965, !DIExpression(), !16830)
  %.not7.i.not = icmp eq i128 %.sroa.0563.0.copyload, 2, !dbg !21037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !19912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !19912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !19912
  br i1 %.not7.i.not, label %bb.eg, label %bb.fw, !dbg !21036

bb.eg:                                            ; preds = %.thread590, %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, i64 120, i1 false), !dbg !21038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, i64 1800, i1 false), !dbg !21038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, i64 7, i1 false), !dbg !21038
    #dbg_value(i128 %.sroa.0563.0.copyload, !18707, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19911)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !18707, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19911)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !18707, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19911)
    #dbg_value(ptr %i.ki, !18707, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19911)
    #dbg_value(ptr %i.kj, !18707, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19911)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !18707, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19911)
    #dbg_value(i8 0, !18707, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19911)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !21039
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !21039
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !21039
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.16.sroa.17), !dbg !21040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.17), !dbg !21040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.21), !dbg !21040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26223), !dbg !21040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !21041
  store i128 %.sroa.0563.0.copyload, ptr %i.ar, align 16, !dbg !21041
  %.sroa.11.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !21041 ; 2 uses
  store i64 %.sroa.050.i.sroa.4.0.copyload, ptr %.sroa.11.0..sroa_idx165, align 16, !dbg !21041
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx165.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !21041
  store ptr %.sroa.050.i.sroa.5.0.copyload, ptr %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx165.sroa_idx, align 8, !dbg !21041
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !21041 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21041
  %.sroa.12.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ar, i64 152, !dbg !21041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.0..sroa_idx171, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21041
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1952, !dbg !21041
  store ptr %i.ki, ptr %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx171.sroa_idx, align 16, !dbg !21041
  %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1960, !dbg !21041
  store ptr %i.kj, ptr %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !21041
  %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1968, !dbg !21041
  store ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx, align 16, !dbg !21041
  %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1976, !dbg !21041 ; 2 uses
  store i8 0, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !21041
  %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1977, !dbg !21041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx171.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21041
  call void @llvm.experimental.noalias.scope.decl(metadata !19928), !dbg !21040
    #dbg_declare(ptr %i.ar, !18742, !DIExpression(), !17830)
    #dbg_value(ptr %2, !18743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17831)
    #dbg_value(i64 %3, !18743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17831)
    #dbg_declare(ptr %i.l, !18745, !DIExpression(), !17832)
    #dbg_declare(ptr %i.k, !18749, !DIExpression(), !17833)
    #dbg_value(i8 1, !19929, !DIExpression(), !17839)
    #dbg_value(i8 1, !19935, !DIExpression(), !17846)
    #dbg_value(i32 1, !19942, !DIExpression(), !17851)
    #dbg_value(i8 1, !19935, !DIExpression(), !17854)
    #dbg_value(ptr %i.ki, !19933, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17855)
  %i.ku = getelementptr i8, ptr %i.ki, i64 148, !dbg !21042 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 4, !dbg !21042, !range !4000, !noalias !19948, !noundef !1995
    #dbg_value(i8 %i.kv, !19930, !DIExpression(), !17839)
  %cond.i = icmp eq i8 %i.kv, 0, !dbg !21043
  br i1 %cond.i, label %bb.ei, label %bb.eh, !dbg !21043

bb.eh:                                            ; preds = %bb.eg
    #dbg_value(ptr %i.ki, !19940, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17858)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ki, i64 146, !dbg !21044
  %i.kx = load i8, ptr %i.kw, align 2, !dbg !21044, !range !4000, !noalias !19949, !noundef !1995
    #dbg_value(i8 %i.kx, !19936, !DIExpression(), !17846)
  %cond43.i = icmp eq i8 %i.kx, 0, !dbg !21045
  br i1 %cond43.i, label %bb.ek, label %bb.ej, !dbg !21045

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21046
  br label %bb.ge, !dbg !21047

bb.ej:                                            ; preds = %bb.eh
    #dbg_value(ptr %i.ar, !19945, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17859)
    #dbg_value(ptr %i.ki, !19951, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17862)
  %4 = load ptr, ptr %i.kl, align 8, !dbg !21048, !noalias !19949, !nonnull !1995, !noundef !1995
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 60, !dbg !21048
  %i.kz = load i32, ptr %i.ky, align 4, !dbg !21048, !noalias !19949, !noundef !1995
    #dbg_value(i32 %i.kz, !19943, !DIExpression(), !17851)
  %i.la = and i32 %i.kz, 1, !dbg !21049
  %.not32.i = icmp eq i32 %i.la, 0, !dbg !21049
  br i1 %.not32.i, label %bb.el, label %bb.em, !dbg !21050

bb.ek:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21051
  br label %bb.ge, !dbg !21047

bb.el:                                            ; preds = %bb.ej
    #dbg_value(ptr %i.ar, !19953, !DIExpression(), !17865)
    #dbg_value(ptr %i.ar, !19955, !DIExpression(), !17868)
  %.not33.i.not = icmp eq i128 %.sroa.0563.0.copyload, 2, !dbg !21052
  br i1 %.not33.i.not, label %bb.eo, label %bb.en, !dbg !21053

bb.em:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21054
  br label %bb.ge, !dbg !21047

bb.en:                                            ; preds = %bb.el
    #dbg_value(ptr %i.ar, !19957, !DIExpression(DW_OP_plus_uconst, 1440, DW_OP_stack_value), !17872)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ar, i64 1464, !dbg !21055
  %i.lc = load i8, ptr %i.lb, align 8, !dbg !21055, !range !4000, !alias.scope !19928, !noalias !19960, !noundef !1995
    #dbg_value(ptr poison, !19961, !DIExpression(), !17877)
    #dbg_value(i1 false, !19969, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17877)
    #dbg_declare(ptr poison, !19970, !DIExpression(), !17878)
  %i.ld = and i8 %i.lc, 1, !dbg !21056
  %or.cond68.not.i = icmp eq i8 %i.ld, 0, !dbg !21056
  br i1 %or.cond68.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i, label %bb.eq, !dbg !21056

bb.eo:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21057
  br label %bb.ge, !dbg !21047

bb.ep:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i
  br i1 %.sroa.09.2.i, label %bb.fv, label %.body, !dbg !21058

.body.i117:                                       ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv, !dbg !21058

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i: ; preds = %bb.en
    #dbg_value(ptr %i.ki, !19940, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17879)
    #dbg_value(i8 %i.kx, !19936, !DIExpression(), !17854)
    #dbg_value(i8 poison, !18744, !DIExpression(), !17880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !21059, !noalias !19948
  invoke void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter8suffixesRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3)
          to label %bb.er unwind label %.body.i117, !dbg !21060, !noalias !19949

bb.eq:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !21061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !21061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !21061
  br label %bb.ge, !dbg !21047

bb.er:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs5_NtNtBP_4meta8strategyNtB1Z_13ReverseSuffix3new0EBP_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19973), !dbg !21062
    #dbg_declare(ptr poison, !19976, !DIExpression(DW_OP_LLVM_fragment, 392, 56), !17907)
    #dbg_declare(ptr poison, !20022, !DIExpression(DW_OP_LLVM_fragment, 392, 56), !17908)
    #dbg_value(ptr poison, !20053, !DIExpression(), !17953)
    #dbg_value(ptr poison, !20168, !DIExpression(), !17960)
    #dbg_value(ptr poison, !20180, !DIExpression(), !17961)
    #dbg_value(ptr poison, !20062, !DIExpression(), !17962)
    #dbg_value(ptr poison, !20071, !DIExpression(), !17963)
    #dbg_value(ptr poison, !20092, !DIExpression(), !17964)
    #dbg_value(ptr poison, !20101, !DIExpression(), !17965)
    #dbg_value(ptr poison, !20131, !DIExpression(), !17966)
    #dbg_value(ptr poison, !20158, !DIExpression(), !17967)
    #dbg_value(ptr poison, !20182, !DIExpression(), !17976)
    #dbg_value(ptr poison, !20200, !DIExpression(), !17982)
    #dbg_value(ptr poison, !20197, !DIExpression(), !17983)
    #dbg_value(ptr %i.l, !20038, !DIExpression(), !17984)
    #dbg_value(i64 0, !20205, !DIExpression(), !17987)
  %i.le = load i64, ptr %i.l, align 8, !dbg !21063, !range !4759, !alias.scope !19973, !noalias !19948, !noundef !1995 ; 3 uses
  %.not.i.i118 = icmp eq i64 %i.le, -1, !dbg !21063
  br i1 %.not.i.i118, label %bb.fe, label %bb.es, !dbg !21064

bb.es:                                            ; preds = %bb.er
    #dbg_value(ptr %i.l, !20039, !DIExpression(), !17988)
    #dbg_value(ptr %i.l, !20211, !DIExpression(), !17991)
    #dbg_value(ptr %i.l, !20208, !DIExpression(), !17992)
    #dbg_value(ptr %i.l, !20216, !DIExpression(), !17995)
    #dbg_value(ptr %i.l, !20218, !DIExpression(), !17998)
    #dbg_value(ptr %i.l, !20220, !DIExpression(), !18001)
    #dbg_value(ptr %i.l, !20216, !DIExpression(), !18003)
    #dbg_value(ptr %i.l, !20218, !DIExpression(), !18005)
    #dbg_value(ptr %i.l, !20220, !DIExpression(), !18007)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !21065
  %i.lg = load i64, ptr %i.lf, align 8, !dbg !21065, !alias.scope !19973, !noalias !19948, !noundef !1995 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 288230376151711744, !dbg !21066
  call void @llvm.assume(i1 %i.lh), !dbg !21067
  %i.li = icmp eq i64 %i.lg, 0, !dbg !21068
  br i1 %i.li, label %bb.fe, label %bb.et, !dbg !21068, !prof !20224

bb.et:                                            ; preds = %bb.es
  %i.lj = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !21069
  %i.lk = load ptr, ptr %i.lj, align 8, !dbg !21069, !alias.scope !19973, !noalias !19948, !nonnull !1995, !noundef !1995 ; 4 uses
    #dbg_value(ptr %i.lk, !20225, !DIExpression(), !18016)
    #dbg_value(ptr %i.lk, !20231, !DIExpression(), !18019)
    #dbg_value(ptr %i.lk, !20235, !DIExpression(), !18022)
    #dbg_value(ptr %i.lk, !20239, !DIExpression(), !18025)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8, !dbg !21070
  %i.lm = load ptr, ptr %i.ll, align 8, !dbg !21070, !noalias !20259, !nonnull !1995, !noundef !1995 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16, !dbg !21071
  %i.lo = load i64, ptr %i.ln, align 8, !dbg !21071, !noalias !20259, !noundef !1995 ; 8 uses
    #dbg_value(ptr %i.lm, !20041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18032)
    #dbg_value(ptr %i.lm, !20260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18036)
    #dbg_value(ptr %i.lm, !20269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18041)
    #dbg_value(ptr %i.lm, !20278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18044)
    #dbg_value(ptr %i.lm, !20260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18046)
    #dbg_value(ptr %i.lm, !20269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18048)
    #dbg_value(ptr %i.lm, !20278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18050)
    #dbg_value(i64 %i.lo, !20041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18032)
    #dbg_value(i64 %i.lo, !20260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18036)
    #dbg_value(i64 %i.lo, !20269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18041)
    #dbg_value(i64 %i.lo, !20278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18044)
    #dbg_value(i64 %i.lo, !20260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18046)
    #dbg_value(i64 %i.lo, !20269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18048)
    #dbg_value(i64 %i.lo, !20278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18050)
    #dbg_value(i64 %i.lo, !20042, !DIExpression(), !18051)
    #dbg_value(i64 %i.lg, !20286, !DIExpression(), !18060)
    #dbg_value(i64 %i.lg, !20296, !DIExpression(), !18063)
    #dbg_value(ptr %i.lk, !20294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18064)
    #dbg_value(ptr %i.lk, !20287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18065)
    #dbg_value(i64 %i.lg, !20294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18064)
    #dbg_value(i64 %i.lg, !20287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18065)
    #dbg_value(ptr %i.lk, !20288, !DIExpression(), !18066)
    #dbg_value(ptr %i.lk, !20297, !DIExpression(), !18063)
  %i.lp = getelementptr inbounds nuw [32 x i8], ptr %i.lk, i64 %i.lg, !dbg !21072 ; 2 uses
    #dbg_value(ptr %i.lk, !20043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18067)
    #dbg_value(ptr %i.lp, !20043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18067)
    #dbg_value(i64 1, !20043, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18067)
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lo
  br label %bb.eu, !dbg !21073

bb.eu:                                            ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, %bb.et
  %.not64.i.i = phi i1 [ false, %bb.et ], [ true, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21074
  %.sroa.11.0.i.i = phi i64 [ 1, %bb.et ], [ 0, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21074 ; 2 uses
  %.sroa.0.074.i.i = phi ptr [ %i.lk, %bb.et ], [ %.sroa.0.1.i.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21074 ; 4 uses
  %.sroa.04.0.i.i119 = phi i64 [ %i.lo, %bb.et ], [ %.sroa.0.1.i.i.i.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !21075 ; 8 uses
    #dbg_value(ptr %.sroa.0.074.i.i, !20043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18067)
    #dbg_value(i64 %.sroa.11.0.i.i, !20043, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18067)
    #dbg_value(i64 %.sroa.04.0.i.i119, !20042, !DIExpression(), !18051)
    #dbg_value(ptr undef, !20197, !DIExpression(), !17983)
    #dbg_value(i1 %.not64.i.i, !20300, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18070)
  br i1 %.not64.i.i, label %bb.ev, label %bb.ew, !dbg !21076, !prof !5498

bb.ev:                                            ; preds = %bb.eu
    #dbg_value(ptr undef, !20200, !DIExpression(), !17982)
    #dbg_value(ptr %.sroa.0.074.i.i, !20201, !DIExpression(), !18071)
    #dbg_value(ptr %i.lp, !20202, !DIExpression(), !18072)
    #dbg_value(ptr poison, !20302, !DIExpression(), !18075)
    #dbg_value(ptr poison, !20303, !DIExpression(), !18076)
  %i.ls = icmp eq ptr %.sroa.0.074.i.i, %i.lp, !dbg !21077
  br i1 %i.ls, label %bb.ey, label %bb.ex, !dbg !21078

bb.ew:                                            ; preds = %bb.eu
    #dbg_value(i64 0, !20043, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18067)
    #dbg_value(ptr undef, !20182, !DIExpression(), !17976)
    #dbg_value(i64 %.sroa.11.0.i.i, !20185, !DIExpression(), !17976)
    #dbg_value(i64 32, !20306, !DIExpression(), !18084)
    #dbg_value(ptr %i.lp, !20187, !DIExpression(), !18085)
    #dbg_value(ptr %i.lp, !20322, !DIExpression(), !18086)
    #dbg_value(ptr %.sroa.0.074.i.i, !20323, !DIExpression(), !18086)
    #dbg_value(ptr %i.lp, !20316, !DIExpression(), !18087)
    #dbg_value(ptr %.sroa.0.074.i.i, !20317, !DIExpression(), !18087)
    #dbg_value(ptr %.sroa.0.074.i.i, !20312, !DIExpression(), !18088)
    #dbg_value(ptr %i.lp, !20311, !DIExpression(), !18088)
  %i.lt = ptrtoint ptr %.sroa.0.074.i.i to i64, !dbg !21079
  %i.lu = sub nuw i64 %i.lq, %i.lt, !dbg !21079
  %i.lv = lshr exact i64 %i.lu, 5, !dbg !21079
  %.not.i.not.i.i = icmp samesign ult i64 %.sroa.11.0.i.i, %i.lv, !dbg !21080
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.074.i.i, i64 %.sroa.11.0.i.i, !dbg !21080
    #dbg_value(ptr poison, !20043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18067)
  br i1 %.not.i.not.i.i, label %bb.ex, label %bb.ey, !dbg !21081

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.sroa.02.0.i44.i = phi ptr [ %i.lw, %bb.ew ], [ %.sroa.0.074.i.i, %bb.ev ], !dbg !21082 ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i44.i, i64 32, !dbg !21082
    #dbg_value(ptr %.sroa.0.1.i.i, !20043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18067)
    #dbg_value(i64 0, !20043, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18067)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20044, !DIExpression(), !18089)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20225, !DIExpression(), !18091)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20231, !DIExpression(), !18093)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20235, !DIExpression(), !18095)
    #dbg_value(ptr %.sroa.02.0.i44.i, !20239, !DIExpression(), !18097)
    #dbg_value(i64 poison, !20328, !DIExpression(), !18108)
    #dbg_value(i64 poison, !20342, !DIExpression(), !18111)
    #dbg_value(ptr poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18112)
    #dbg_value(ptr poison, !20332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18113)
    #dbg_value(i64 poison, !20340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18112)
end_hunk_0
